@interface NCNotificationAction(Siri)
- (uint64_t)_isSiriAction;
- (uint64_t)isDrivingFocusEnabled;
- (uint64_t)isSiriAction;
- (uint64_t)isSiriAvailable;
- (uint64_t)isSiriEnabled;
- (uint64_t)isSiriRestricted;
- (uint64_t)isSiriSupported;
- (uint64_t)isUserConnectedToBluetoothDevice;
- (uint64_t)isUserConnectedToCarPlay;
@end

@implementation NCNotificationAction(Siri)

- (uint64_t)isSiriAction
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return [self _isSiriAction];
  }

  return result;
}

- (uint64_t)_isSiriAction
{
  isSiriActionCandidate = [self isSiriActionCandidate];
  isSiriAvailable = [self isSiriAvailable];
  isDrivingFocusEnabled = [self isDrivingFocusEnabled];
  v5 = isDrivingFocusEnabled & ([self isUserConnectedToCarPlay] ^ 1);
  if (!isSiriAvailable)
  {
    v5 = 0;
  }

  if (isSiriActionCandidate)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)isSiriAvailable
{
  result = [self isSiriEnabled];
  if (result)
  {
    result = [self isSiriSupported];
    if (result)
    {
      return [self isSiriRestricted] ^ 1;
    }
  }

  return result;
}

- (uint64_t)isSiriEnabled
{
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  siriIsEnabled = [mEMORY[0x277D551B0] siriIsEnabled];

  return siriIsEnabled;
}

- (uint64_t)isSiriRestricted
{
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  siriIsRestricted = [mEMORY[0x277D551B0] siriIsRestricted];

  return siriIsRestricted;
}

- (uint64_t)isSiriSupported
{
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  siriIsSupported = [mEMORY[0x277D551B0] siriIsSupported];

  return siriIsSupported;
}

- (uint64_t)isDrivingFocusEnabled
{
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  carDNDActive = [mEMORY[0x277D551B0] carDNDActive];

  return carDNDActive;
}

- (uint64_t)isUserConnectedToBluetoothDevice
{
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  isConnectedToEyesFreeDevice = [mEMORY[0x277D551B0] isConnectedToEyesFreeDevice];

  return isConnectedToEyesFreeDevice;
}

- (uint64_t)isUserConnectedToCarPlay
{
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  isConnectedToCarPlay = [mEMORY[0x277D551B0] isConnectedToCarPlay];

  return isConnectedToCarPlay;
}

@end