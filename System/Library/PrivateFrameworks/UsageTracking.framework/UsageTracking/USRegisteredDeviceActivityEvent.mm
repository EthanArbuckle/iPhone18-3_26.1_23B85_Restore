@interface USRegisteredDeviceActivityEvent
- (BOOL)validateBudget:(id *)budget error:(id *)error;
- (NSNumber)nextWarningTime;
- (id)nextThresholdDate:(id *)date;
- (id)queryForInterval:(id)interval;
@end

@implementation USRegisteredDeviceActivityEvent

- (BOOL)validateBudget:(id *)budget error:(id *)error
{
  v4 = *budget;
  if (!*budget)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"USRegisteredDeviceActivityEvent.m" lineNumber:37 description:@"Tried to set a nil budget!"];

    if (error)
    {
      *error = [NSError errorWithDomain:NSCocoaErrorDomain code:1024 userInfo:0];
    }
  }

  return v4 != 0;
}

- (NSNumber)nextWarningTime
{
  budget = [(USRegisteredDeviceActivityEvent *)self budget];
  warningTime = [budget warningTime];
  if (warningTime && ([(USRegisteredDeviceActivityEvent *)self didWarnForThreshold]& 1) == 0)
  {
    v6 = [(USRegisteredDeviceActivityEvent *)self nextThresholdDate:0];
    if (v6)
    {
      v7 = [USDeviceActivitySchedule nextWarningDateForComponents:warningTime referenceDate:v6];
      v8 = v7;
      if (v7)
      {
        [v7 timeIntervalSinceDate:v6];
        if (v9 < 0.0)
        {
          v9 = -v9;
        }

        v5 = [NSNumber numberWithDouble:v9];
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100065CE0(self, budget);
        }

        v5 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100065DB4(budget);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)nextThresholdDate:(id *)date
{
  budget = [(USRegisteredDeviceActivityEvent *)self budget];
  v6 = budget;
  if (budget)
  {
    intervalStart = [budget intervalStart];
    intervalEnd = [v6 intervalEnd];
    v9 = [USDeviceActivitySchedule nextIntervalForStartComponents:intervalStart endComponents:intervalEnd];

    if (v9)
    {
      threshold = [(USRegisteredDeviceActivityEvent *)self threshold];
      calendar = [threshold calendar];
      v12 = calendar;
      if (calendar)
      {
        v13 = calendar;
      }

      else
      {
        v13 = +[NSCalendar currentCalendar];
      }

      v16 = v13;

      timeZone = [threshold timeZone];
      if (timeZone)
      {
        [v16 setTimeZone:timeZone];
      }

      else
      {
        v18 = +[NSTimeZone localTimeZone];
        [v16 setTimeZone:v18];
      }

      startDate = [v9 startDate];
      v15 = [v16 dateByAddingComponents:threshold toDate:startDate options:0];

      if (date)
      {
        v20 = v9;
        *date = v9;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100065E64(v6);
      }

      v15 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      name = [(USRegisteredDeviceActivityEvent *)self name];
      v22 = 138543362;
      v23 = name;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "The parent budget for event named %{public}@ has been deleted. Returning nil threshold date.", &v22, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (id)queryForInterval:(id)interval
{
  intervalCopy = interval;
  budgetedApplications = [(USRegisteredDeviceActivityEvent *)self budgetedApplications];
  v6 = [budgetedApplications valueForKey:@"bundleIdentifier"];

  exemptApplications = [(USRegisteredDeviceActivityEvent *)self exemptApplications];
  v8 = [exemptApplications valueForKey:@"bundleIdentifier"];

  budgetedWebDomains = [(USRegisteredDeviceActivityEvent *)self budgetedWebDomains];
  v10 = [budgetedWebDomains valueForKey:@"webDomain"];

  budgetedCategories = [(USRegisteredDeviceActivityEvent *)self budgetedCategories];
  v12 = [budgetedCategories valueForKey:@"categoryIdentifier"];

  if (![v6 count] && !objc_msgSend(v10, "count") && !objc_msgSend(v12, "count"))
  {
    v13 = [NSSet alloc];
    v14 = +[CTCategories sharedCategories];
    availableCategoryIDs = [v14 availableCategoryIDs];
    v16 = [v13 initWithArray:availableCategoryIDs];

    v12 = v16;
  }

  v17 = [[_TtC18UsageTrackingAgent19DeviceActivityQuery alloc] initWithBundleIdentifiers:v6 exemptBundleIdentifiers:v8 categoryIdentifiers:v12 domains:v10 interval:intervalCopy];

  return v17;
}

@end