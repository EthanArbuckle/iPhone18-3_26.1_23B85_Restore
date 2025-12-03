@interface AASettingsTelemetry
+ (id)sharedInstance;
- (AASettingsTelemetry)init;
- (void)_sendSettingsChanges:(id)changes device:(id)device;
- (void)sendSettingsChanges:(id)changes device:(id)device;
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

- (void)sendSettingsChanges:(id)changes device:(id)device
{
  changesCopy = changes;
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D49F8;
  block[3] = &unk_1002B6CF0;
  block[4] = self;
  v12 = changesCopy;
  v13 = deviceCopy;
  v9 = deviceCopy;
  v10 = changesCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendSettingsChanges:(id)changes device:(id)device
{
  changesCopy = changes;
  deviceCopy = device;
  if (changesCopy && deviceCopy)
  {
    if ([changesCopy acceptReplyPlayPauseConfig])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy acceptReplyPlayPauseConfig], @"HeadGesturesAccept", deviceCopy);
    }

    if ([changesCopy allowTemporaryManagedPairing])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy allowTemporaryManagedPairing], @"TemporaryManagedPairing", deviceCopy);
    }

    if ([changesCopy autoANCStrength])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy autoANCStrength], @"AdaptiveTransparency", deviceCopy);
    }

    if ([changesCopy changeDynamicEndOfChargeState])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy changeDynamicEndOfChargeState], @"BatteryDEOC", deviceCopy);
    }

    if ([changesCopy changeOptimizedBatteryChargingState])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy changeOptimizedBatteryChargingState], @"BatteryOBC", deviceCopy);
    }

    if ([changesCopy declineDismissSkipConfig])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy declineDismissSkipConfig], @"HeadGesturesDecline", deviceCopy);
    }

    if ([changesCopy enableChargingReminder])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy enableChargingReminder], @"BatteryChargingReminder", deviceCopy);
    }

    if ([changesCopy enableHearingAidGainSwipe])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy enableHearingAidGainSwipe], @"HearingAidGainSwipe", deviceCopy);
    }

    if ([changesCopy enableHearingProtectionPPE])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy enableHearingProtectionPPE], @"HearingProtectionPPE", deviceCopy);
    }

    if ([changesCopy allowHealthKitDataWrite])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy allowHealthKitDataWrite], @"HeartRate", deviceCopy);
    }

    if ([changesCopy enableSleepDetection])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy enableSleepDetection], @"PauseMediaWhenSleep", deviceCopy);
    }

    if ([changesCopy headGestureToggle])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy headGestureToggle], @"HeadGestureToggle", deviceCopy);
    }

    if ([changesCopy hearingAidEnrolled])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy hearingAidEnrolled], @"HearingAidEnrolled", deviceCopy);
    }

    if ([changesCopy hearingAidToggle])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy hearingAidToggle], @"HearingAidToggle", deviceCopy);
    }

    if ([changesCopy remoteCameraControlConfig])
    {
      -[AASettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy remoteCameraControlConfig], @"CameraControl", deviceCopy);
    }
  }

  else
  {
    sub_1001FA84C();
  }
}

@end