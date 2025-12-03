@interface AudioAccessoryDevice
- (BOOL)updateWithAADeviceRecord:(id)record;
@end

@implementation AudioAccessoryDevice

- (BOOL)updateWithAADeviceRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allowNoiseManagementOff = [recordCopy allowNoiseManagementOff];
  if (_os_feature_enabled_impl() && allowNoiseManagementOff != [(AudioAccessoryDevice *)selfCopy listeningModeOffAllowed])
  {
    [(AudioAccessoryDevice *)selfCopy setListeningModeOffAllowed:allowNoiseManagementOff];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  chargingReminderEnabled = [recordCopy chargingReminderEnabled];
  if (chargingReminderEnabled != [(AudioAccessoryDevice *)selfCopy chargingReminderEnabled])
  {
    [(AudioAccessoryDevice *)selfCopy setChargingReminderEnabled:chargingReminderEnabled];
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    cameraControlConfig = [recordCopy cameraControlConfig];
    if (cameraControlConfig != [(AudioAccessoryDevice *)selfCopy remoteCameraControlConfig])
    {
      [(AudioAccessoryDevice *)selfCopy setRemoteCameraControlConfig:cameraControlConfig];
      v7 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    audiogramCreationTimestamp = [recordCopy audiogramCreationTimestamp];
    if (audiogramCreationTimestamp)
    {
      audiogramEnrolledTimestamp = [(AudioAccessoryDevice *)selfCopy audiogramEnrolledTimestamp];
      v12 = [audiogramCreationTimestamp isEqualToDate:audiogramEnrolledTimestamp];

      if ((v12 & 1) == 0)
      {
        [(AudioAccessoryDevice *)selfCopy setAudiogramEnrolledTimestamp:audiogramCreationTimestamp];
        v7 = 1;
      }
    }
  }

  healthKitDataWriteAllowed = [recordCopy healthKitDataWriteAllowed];
  if (healthKitDataWriteAllowed != [(AudioAccessoryDevice *)selfCopy healthKitDataWriteAllowed])
  {
    [(AudioAccessoryDevice *)selfCopy setHealthKitDataWriteAllowed:healthKitDataWriteAllowed];
    v7 = 1;
  }

  if (([(AudioAccessoryDevice *)selfCopy heartRateMonitorCapabilityValueOriginatedFromDevice]& 1) == 0)
  {
    heartRateMonitorCapability = [recordCopy heartRateMonitorCapability];
    if (heartRateMonitorCapability)
    {
      if (heartRateMonitorCapability != [(AudioAccessoryDevice *)selfCopy heartRateMonitorCapability])
      {
        [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorCapability:heartRateMonitorCapability];
        v7 = 1;
      }
    }
  }

  headGestureMode = [recordCopy headGestureMode];
  if (headGestureMode != [(AudioAccessoryDevice *)selfCopy headGestureToggle])
  {
    [(AudioAccessoryDevice *)selfCopy setHeadGestureToggle:headGestureMode];
    v7 = 1;
  }

  acceptReplyPlayPauseConfig = [recordCopy acceptReplyPlayPauseConfig];
  if (acceptReplyPlayPauseConfig != [(AudioAccessoryDevice *)selfCopy acceptReplyPlayPauseConfig])
  {
    [(AudioAccessoryDevice *)selfCopy setAcceptReplyPlayPauseConfig:acceptReplyPlayPauseConfig];
    v7 = 1;
  }

  declineDismissSkipConfig = [recordCopy declineDismissSkipConfig];
  if (declineDismissSkipConfig != [(AudioAccessoryDevice *)selfCopy declineDismissSkipConfig])
  {
    [(AudioAccessoryDevice *)selfCopy setDeclineDismissSkipConfig:declineDismissSkipConfig];
    v7 = 1;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

@end