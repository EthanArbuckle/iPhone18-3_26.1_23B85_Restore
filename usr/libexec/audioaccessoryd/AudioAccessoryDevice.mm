@interface AudioAccessoryDevice
- (BOOL)updateWithAADeviceRecord:(id)a3;
@end

@implementation AudioAccessoryDevice

- (BOOL)updateWithAADeviceRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 allowNoiseManagementOff];
  if (_os_feature_enabled_impl() && v6 != [(AudioAccessoryDevice *)v5 listeningModeOffAllowed])
  {
    [(AudioAccessoryDevice *)v5 setListeningModeOffAllowed:v6];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 chargingReminderEnabled];
  if (v8 != [(AudioAccessoryDevice *)v5 chargingReminderEnabled])
  {
    [(AudioAccessoryDevice *)v5 setChargingReminderEnabled:v8];
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    v9 = [v4 cameraControlConfig];
    if (v9 != [(AudioAccessoryDevice *)v5 remoteCameraControlConfig])
    {
      [(AudioAccessoryDevice *)v5 setRemoteCameraControlConfig:v9];
      v7 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v10 = [v4 audiogramCreationTimestamp];
    if (v10)
    {
      v11 = [(AudioAccessoryDevice *)v5 audiogramEnrolledTimestamp];
      v12 = [v10 isEqualToDate:v11];

      if ((v12 & 1) == 0)
      {
        [(AudioAccessoryDevice *)v5 setAudiogramEnrolledTimestamp:v10];
        v7 = 1;
      }
    }
  }

  v13 = [v4 healthKitDataWriteAllowed];
  if (v13 != [(AudioAccessoryDevice *)v5 healthKitDataWriteAllowed])
  {
    [(AudioAccessoryDevice *)v5 setHealthKitDataWriteAllowed:v13];
    v7 = 1;
  }

  if (([(AudioAccessoryDevice *)v5 heartRateMonitorCapabilityValueOriginatedFromDevice]& 1) == 0)
  {
    v14 = [v4 heartRateMonitorCapability];
    if (v14)
    {
      if (v14 != [(AudioAccessoryDevice *)v5 heartRateMonitorCapability])
      {
        [(AudioAccessoryDevice *)v5 setHeartRateMonitorCapability:v14];
        v7 = 1;
      }
    }
  }

  v15 = [v4 headGestureMode];
  if (v15 != [(AudioAccessoryDevice *)v5 headGestureToggle])
  {
    [(AudioAccessoryDevice *)v5 setHeadGestureToggle:v15];
    v7 = 1;
  }

  v16 = [v4 acceptReplyPlayPauseConfig];
  if (v16 != [(AudioAccessoryDevice *)v5 acceptReplyPlayPauseConfig])
  {
    [(AudioAccessoryDevice *)v5 setAcceptReplyPlayPauseConfig:v16];
    v7 = 1;
  }

  v17 = [v4 declineDismissSkipConfig];
  if (v17 != [(AudioAccessoryDevice *)v5 declineDismissSkipConfig])
  {
    [(AudioAccessoryDevice *)v5 setDeclineDismissSkipConfig:v17];
    v7 = 1;
  }

  objc_sync_exit(v5);

  return v7;
}

@end