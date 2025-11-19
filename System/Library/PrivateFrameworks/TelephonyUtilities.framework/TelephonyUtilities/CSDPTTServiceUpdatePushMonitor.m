@interface CSDPTTServiceUpdatePushMonitor
+ (BOOL)isPayloadPTTServiceUpdateMessage:(id)a3;
- (CSDPTTServiceUpdatePushMonitor)initWithServiceUpdatePushBudgetDataSource:(id)a3;
- (int64_t)remainingPTTWakingServiceUpdateBudgetForApplication:(id)a3;
- (void)_resetPTTWakingServiceUpdateCountForApplication:(id)a3;
- (void)displayPTTServiceUpdateOverBugetAlert:(id)a3;
- (void)incrementPTTWakingServiceUpdateCountForApplication:(id)a3;
@end

@implementation CSDPTTServiceUpdatePushMonitor

- (CSDPTTServiceUpdatePushMonitor)initWithServiceUpdatePushBudgetDataSource:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = CSDPTTServiceUpdatePushMonitor;
  v6 = [(CSDPTTServiceUpdatePushMonitor *)&v8 init];
  if (v6)
  {
    if (!v5)
    {
      [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDPTTServiceUpdatePushMonitor initWithServiceUpdatePushBudgetDataSource:]", @"dataSource"];
    }

    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v6;
}

+ (BOOL)isPayloadPTTServiceUpdateMessage:(id)a3
{
  v3 = [a3 objectForKey:@"aps"];
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

- (void)_resetPTTWakingServiceUpdateCountForApplication:(id)a3
{
  v4 = a3;
  v5 = [CSDPTTServiceUpdatePushBudget alloc];
  v6 = [v4 bundleIdentifier];

  v7 = +[NSDate date];
  v8 = [(CSDPTTServiceUpdatePushBudget *)v5 initWithApplicationBundleIdentifier:v6 budgetStartTime:v7 serviceUpdatesDelivered:0];

  [(CSDPTTServiceUpdatePushBudgetDataSource *)self->_dataSource saveServiceUpdatePushBudget:v8];
}

- (void)incrementPTTWakingServiceUpdateCountForApplication:(id)a3
{
  v4 = [(CSDPTTServiceUpdatePushBudgetDataSource *)self->_dataSource serviceUpdatePushBudgetForApplication:a3];
  [v4 setServiceUpdatesDelivered:{objc_msgSend(v4, "serviceUpdatesDelivered") + 1}];
  [(CSDPTTServiceUpdatePushBudgetDataSource *)self->_dataSource saveServiceUpdatePushBudget:v4];
}

- (int64_t)remainingPTTWakingServiceUpdateBudgetForApplication:(id)a3
{
  v4 = a3;
  v5 = [(CSDPTTServiceUpdatePushBudgetDataSource *)self->_dataSource serviceUpdatePushBudgetForApplication:v4];
  v6 = +[NSDate date];
  v7 = [v5 budgetStartTime];
  [v6 timeIntervalSinceDate:v7];
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
    [(CSDPTTServiceUpdatePushMonitor *)self _resetPTTWakingServiceUpdateCountForApplication:v4];
    v10 = 6;
  }

  return v10;
}

- (void)displayPTTServiceUpdateOverBugetAlert:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"PUSH_TO_TALK_SERVICE_UPDATE_BUDGET_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];
  v7 = [NSString stringWithFormat:v6, v3];

  [v4 setObject:v7 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
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