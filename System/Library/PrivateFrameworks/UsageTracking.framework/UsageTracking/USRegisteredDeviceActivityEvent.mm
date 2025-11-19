@interface USRegisteredDeviceActivityEvent
- (BOOL)validateBudget:(id *)a3 error:(id *)a4;
- (NSNumber)nextWarningTime;
- (id)nextThresholdDate:(id *)a3;
- (id)queryForInterval:(id)a3;
@end

@implementation USRegisteredDeviceActivityEvent

- (BOOL)validateBudget:(id *)a3 error:(id *)a4
{
  v4 = *a3;
  if (!*a3)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"USRegisteredDeviceActivityEvent.m" lineNumber:37 description:@"Tried to set a nil budget!"];

    if (a4)
    {
      *a4 = [NSError errorWithDomain:NSCocoaErrorDomain code:1024 userInfo:0];
    }
  }

  return v4 != 0;
}

- (NSNumber)nextWarningTime
{
  v3 = [(USRegisteredDeviceActivityEvent *)self budget];
  v4 = [v3 warningTime];
  if (v4 && ([(USRegisteredDeviceActivityEvent *)self didWarnForThreshold]& 1) == 0)
  {
    v6 = [(USRegisteredDeviceActivityEvent *)self nextThresholdDate:0];
    if (v6)
    {
      v7 = [USDeviceActivitySchedule nextWarningDateForComponents:v4 referenceDate:v6];
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
          sub_100065CE0(self, v3);
        }

        v5 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100065DB4(v3);
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

- (id)nextThresholdDate:(id *)a3
{
  v5 = [(USRegisteredDeviceActivityEvent *)self budget];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intervalStart];
    v8 = [v6 intervalEnd];
    v9 = [USDeviceActivitySchedule nextIntervalForStartComponents:v7 endComponents:v8];

    if (v9)
    {
      v10 = [(USRegisteredDeviceActivityEvent *)self threshold];
      v11 = [v10 calendar];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = +[NSCalendar currentCalendar];
      }

      v16 = v13;

      v17 = [v10 timeZone];
      if (v17)
      {
        [v16 setTimeZone:v17];
      }

      else
      {
        v18 = +[NSTimeZone localTimeZone];
        [v16 setTimeZone:v18];
      }

      v19 = [v9 startDate];
      v15 = [v16 dateByAddingComponents:v10 toDate:v19 options:0];

      if (a3)
      {
        v20 = v9;
        *a3 = v9;
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
      v14 = [(USRegisteredDeviceActivityEvent *)self name];
      v22 = 138543362;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "The parent budget for event named %{public}@ has been deleted. Returning nil threshold date.", &v22, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (id)queryForInterval:(id)a3
{
  v4 = a3;
  v5 = [(USRegisteredDeviceActivityEvent *)self budgetedApplications];
  v6 = [v5 valueForKey:@"bundleIdentifier"];

  v7 = [(USRegisteredDeviceActivityEvent *)self exemptApplications];
  v8 = [v7 valueForKey:@"bundleIdentifier"];

  v9 = [(USRegisteredDeviceActivityEvent *)self budgetedWebDomains];
  v10 = [v9 valueForKey:@"webDomain"];

  v11 = [(USRegisteredDeviceActivityEvent *)self budgetedCategories];
  v12 = [v11 valueForKey:@"categoryIdentifier"];

  if (![v6 count] && !objc_msgSend(v10, "count") && !objc_msgSend(v12, "count"))
  {
    v13 = [NSSet alloc];
    v14 = +[CTCategories sharedCategories];
    v15 = [v14 availableCategoryIDs];
    v16 = [v13 initWithArray:v15];

    v12 = v16;
  }

  v17 = [[_TtC18UsageTrackingAgent19DeviceActivityQuery alloc] initWithBundleIdentifiers:v6 exemptBundleIdentifiers:v8 categoryIdentifiers:v12 domains:v10 interval:v4];

  return v17;
}

@end