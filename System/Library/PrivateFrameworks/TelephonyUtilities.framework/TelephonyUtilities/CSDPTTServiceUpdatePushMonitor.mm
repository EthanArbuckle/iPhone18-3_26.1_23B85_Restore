@interface CSDPTTServiceUpdatePushMonitor
+ (BOOL)isPayloadPTTServiceUpdateMessage:(id)message;
- (CSDPTTServiceUpdatePushMonitor)initWithServiceUpdatePushBudgetDataSource:(id)source;
- (int64_t)remainingPTTWakingServiceUpdateBudgetForApplication:(id)application;
- (void)_resetPTTWakingServiceUpdateCountForApplication:(id)application;
- (void)displayPTTServiceUpdateOverBugetAlert:(id)alert;
- (void)incrementPTTWakingServiceUpdateCountForApplication:(id)application;
@end

@implementation CSDPTTServiceUpdatePushMonitor

- (CSDPTTServiceUpdatePushMonitor)initWithServiceUpdatePushBudgetDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = CSDPTTServiceUpdatePushMonitor;
  v6 = [(CSDPTTServiceUpdatePushMonitor *)&v8 init];
  if (v6)
  {
    if (!sourceCopy)
    {
      [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDPTTServiceUpdatePushMonitor initWithServiceUpdatePushBudgetDataSource:]", @"dataSource"];
    }

    objc_storeStrong(&v6->_dataSource, source);
  }

  return v6;
}

+ (BOOL)isPayloadPTTServiceUpdateMessage:(id)message
{
  v3 = [message objectForKey:@"aps"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"ptt-push-type"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 isEqualToString:@"service-update"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_resetPTTWakingServiceUpdateCountForApplication:(id)application
{
  applicationCopy = application;
  v5 = [CSDPTTServiceUpdatePushBudget alloc];
  bundleIdentifier = [applicationCopy bundleIdentifier];

  v7 = +[NSDate date];
  v8 = [(CSDPTTServiceUpdatePushBudget *)v5 initWithApplicationBundleIdentifier:bundleIdentifier budgetStartTime:v7 serviceUpdatesDelivered:0];

  [(CSDPTTServiceUpdatePushBudgetDataSource *)self->_dataSource saveServiceUpdatePushBudget:v8];
}

- (void)incrementPTTWakingServiceUpdateCountForApplication:(id)application
{
  v4 = [(CSDPTTServiceUpdatePushBudgetDataSource *)self->_dataSource serviceUpdatePushBudgetForApplication:application];
  [v4 setServiceUpdatesDelivered:{objc_msgSend(v4, "serviceUpdatesDelivered") + 1}];
  [(CSDPTTServiceUpdatePushBudgetDataSource *)self->_dataSource saveServiceUpdatePushBudget:v4];
}

- (int64_t)remainingPTTWakingServiceUpdateBudgetForApplication:(id)application
{
  applicationCopy = application;
  v5 = [(CSDPTTServiceUpdatePushBudgetDataSource *)self->_dataSource serviceUpdatePushBudgetForApplication:applicationCopy];
  v6 = +[NSDate date];
  budgetStartTime = [v5 budgetStartTime];
  [v6 timeIntervalSinceDate:budgetStartTime];
  v9 = v8;

  if (v9 <= 3600.0)
  {
    if ([v5 serviceUpdatesDelivered] <= 5)
    {
      v10 = 6 - [v5 serviceUpdatesDelivered];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [(CSDPTTServiceUpdatePushMonitor *)self _resetPTTWakingServiceUpdateCountForApplication:applicationCopy];
    v10 = 6;
  }

  return v10;
}

- (void)displayPTTServiceUpdateOverBugetAlert:(id)alert
{
  alertCopy = alert;
  v4 = +[NSMutableDictionary dictionary];
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"PUSH_TO_TALK_SERVICE_UPDATE_BUDGET_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];
  alertCopy = [NSString stringWithFormat:v6, alertCopy];

  [v4 setObject:alertCopy forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  v8 = TUBundle();
  v9 = [v8 localizedStringForKey:@"PUSH_TO_TALK_SERVICE_UPDATE_BUDGET_MESSAGE" value:&stru_100631E68 table:@"TelephonyUtilities"];
  [v4 setObject:v9 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

  v10 = TUBundle();
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];
  [v4 setObject:v11 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationForcesModalAlertAppearance];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDisplayActionButtonOnLockScreen];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationAllowMenuButtonDismissal];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDismissOnLock];
  error = 0;
  v12 = CFUserNotificationCreate(0, 0.0, 0, &error, v4);
  if (v12)
  {
    CFRelease(v12);
  }
}

@end