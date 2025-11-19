@interface AASettingsTelemetry
+ (id)sharedInstance;
- (AASettingsTelemetry)init;
- (void)_sendSettingsChanges:(id)a3 device:(id)a4;
- (void)sendSettingsChanges:(id)a3 device:(id)a4;
@end

@implementation AASettingsTelemetry

+ (id)sharedInstance
{
  if (qword_1002FA228 != -1)
  {
    sub_1001FA838();
  }

  v3 = qword_1002FA220;

  return v3;
}

- (AASettingsTelemetry)init
{
  v8.receiver = self;
  v8.super_class = AASettingsTelemetry;
  v2 = [(AASettingsTelemetry *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AASettingsTelemetry", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)sendSettingsChanges:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D49F8;
  block[3] = &unk_1002B6CF0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendSettingsChanges:(id)a3 device:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7 && v6)
  {
    if ([v7 acceptReplyPlayPauseConfig])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 acceptReplyPlayPauseConfig], @"HeadGesturesAccept", v6);
    }

    if ([v7 allowTemporaryManagedPairing])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 allowTemporaryManagedPairing], @"TemporaryManagedPairing", v6);
    }

    if ([v7 autoANCStrength])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 autoANCStrength], @"AdaptiveTransparency", v6);
    }

    if ([v7 changeDynamicEndOfChargeState])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 changeDynamicEndOfChargeState], @"BatteryDEOC", v6);
    }

    if ([v7 changeOptimizedBatteryChargingState])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 changeOptimizedBatteryChargingState], @"BatteryOBC", v6);
    }

    if ([v7 declineDismissSkipConfig])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 declineDismissSkipConfig], @"HeadGesturesDecline", v6);
    }

    if ([v7 enableChargingReminder])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 enableChargingReminder], @"BatteryChargingReminder", v6);
    }

    if ([v7 enableHearingAidGainSwipe])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 enableHearingAidGainSwipe], @"HearingAidGainSwipe", v6);
    }

    if ([v7 enableHearingProtectionPPE])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 enableHearingProtectionPPE], @"HearingProtectionPPE", v6);
    }

    if ([v7 allowHealthKitDataWrite])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 allowHealthKitDataWrite], @"HeartRate", v6);
    }

    if ([v7 enableSleepDetection])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 enableSleepDetection], @"PauseMediaWhenSleep", v6);
    }

    if ([v7 headGestureToggle])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 headGestureToggle], @"HeadGestureToggle", v6);
    }

    if ([v7 hearingAidEnrolled])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 hearingAidEnrolled], @"HearingAidEnrolled", v6);
    }

    if ([v7 hearingAidToggle])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 hearingAidToggle], @"HearingAidToggle", v6);
    }

    if ([v7 remoteCameraControlConfig])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v7 remoteCameraControlConfig], @"CameraControl", v6);
    }
  }

  else
  {
    sub_1001FA84C();
  }
}

@end