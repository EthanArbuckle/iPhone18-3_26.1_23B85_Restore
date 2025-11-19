@interface SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems
- (SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems)initWithAirplaneModeController:(id)a3 telephonyManager:(id)a4;
- (id)_airplaneModeController;
- (id)_telephonyManager;
- (unint64_t)shouldShowLaunchAlertForApplication:(id)a3;
@end

@implementation SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems

- (id)_telephonyManager
{
  telephonyManager = self->_telephonyManager;
  if (telephonyManager)
  {
    v3 = telephonyManager;
  }

  else
  {
    v3 = +[SBTelephonyManager sharedTelephonyManager];
  }

  return v3;
}

- (id)_airplaneModeController
{
  airplaneModeController = self->_airplaneModeController;
  if (airplaneModeController)
  {
    v3 = airplaneModeController;
  }

  else
  {
    v3 = +[SBAirplaneModeController sharedInstance];
  }

  return v3;
}

- (SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems)initWithAirplaneModeController:(id)a3 telephonyManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems;
  v9 = [(SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_airplaneModeController, a3);
    objc_storeStrong(&v10->_telephonyManager, a4);
  }

  return v10;
}

- (unint64_t)shouldShowLaunchAlertForApplication:(id)a3
{
  v4 = a3;
  v5 = [(SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems *)self _telephonyManager];
  v6 = [(SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems *)self _airplaneModeController];
  v7 = [v4 bundleIdentifier];
  v8 = [v4 dataUsage];
  if (([@"com.apple.InCallService" isEqualToString:v7] & 1) != 0 || (v8 & 4) == 0 && (v8 & 1) == 0 && (v8 & 2) == 0)
  {
    goto LABEL_5;
  }

  if (![v6 isInAirplaneMode])
  {
    if ((v8 & 1) == 0)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_6;
    }

LABEL_18:
    if (([@"com.apple.MobileSMS" isEqualToString:v7] & 1) == 0)
    {
      v13 = [v5 dataConnectionAvailabilityWithCurrentCalls];
      if (v13 == 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 4 * (v13 == 2);
      }

      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = [v5 hasNonCellularNetworkConnection] ^ 1 | ((v8 & 4) >> 2);
  if (v12)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (v12 & 1) == 0 && (v8)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ([v4 hasDisplayedLaunchAlertForType:v9])
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

@end