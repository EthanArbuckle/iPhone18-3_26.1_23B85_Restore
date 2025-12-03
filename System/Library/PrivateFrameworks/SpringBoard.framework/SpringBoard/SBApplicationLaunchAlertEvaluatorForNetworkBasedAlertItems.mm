@interface SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems
- (SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems)initWithAirplaneModeController:(id)controller telephonyManager:(id)manager;
- (id)_airplaneModeController;
- (id)_telephonyManager;
- (unint64_t)shouldShowLaunchAlertForApplication:(id)application;
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

- (SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems)initWithAirplaneModeController:(id)controller telephonyManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems;
  v9 = [(SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_airplaneModeController, controller);
    objc_storeStrong(&v10->_telephonyManager, manager);
  }

  return v10;
}

- (unint64_t)shouldShowLaunchAlertForApplication:(id)application
{
  applicationCopy = application;
  _telephonyManager = [(SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems *)self _telephonyManager];
  _airplaneModeController = [(SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems *)self _airplaneModeController];
  bundleIdentifier = [applicationCopy bundleIdentifier];
  dataUsage = [applicationCopy dataUsage];
  if (([@"com.apple.InCallService" isEqualToString:bundleIdentifier] & 1) != 0 || (dataUsage & 4) == 0 && (dataUsage & 1) == 0 && (dataUsage & 2) == 0)
  {
    goto LABEL_5;
  }

  if (![_airplaneModeController isInAirplaneMode])
  {
    if ((dataUsage & 1) == 0)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_6;
    }

LABEL_18:
    if (([@"com.apple.MobileSMS" isEqualToString:bundleIdentifier] & 1) == 0)
    {
      dataConnectionAvailabilityWithCurrentCalls = [_telephonyManager dataConnectionAvailabilityWithCurrentCalls];
      if (dataConnectionAvailabilityWithCurrentCalls == 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 4 * (dataConnectionAvailabilityWithCurrentCalls == 2);
      }

      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = [_telephonyManager hasNonCellularNetworkConnection] ^ 1 | ((dataUsage & 4) >> 2);
  if (v12)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (v12 & 1) == 0 && (dataUsage)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ([applicationCopy hasDisplayedLaunchAlertForType:v9])
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