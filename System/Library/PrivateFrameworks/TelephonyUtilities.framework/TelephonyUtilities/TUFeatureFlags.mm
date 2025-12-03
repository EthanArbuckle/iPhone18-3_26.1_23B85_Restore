@interface TUFeatureFlags
- (BOOL)FTUserScore;
- (BOOL)TTRBannerEnabled;
- (BOOL)aTVHandoff;
- (BOOL)acceptedContactsLabelsEnabled;
- (BOOL)audioCallTranslationEnabled;
- (BOOL)callManagerEnabled;
- (BOOL)collaborateTogetherEnabled;
- (BOOL)communicationDetailsEnabled;
- (BOOL)continuityEmergencyMultiDeviceDiscoveryEnabled;
- (BOOL)dialerInterceptEnabled;
- (BOOL)expanseEnabledForMusic;
- (BOOL)incomingBannerOverSixUpEnabled;
- (BOOL)intelligentRoutingEnabled;
- (BOOL)lagunaAudioCallsEnabled;
- (BOOL)lagunaContinuityCompanionModeEnabled;
- (BOOL)lagunaContinuityCompanionModeMessageSupport;
- (BOOL)lagunaIncomingCallsEnabled;
- (BOOL)lagunaLiveCaptionsEnabled;
- (BOOL)lagunaPullBackEnabled;
- (BOOL)phoneRecentsAvatarsCarplayEnabled;
- (BOOL)receptionistEnabled;
- (BOOL)relayCallRecordingEnabled;
- (BOOL)simLinePickerEnabled;
- (BOOL)uPlusNDowngrade;
- (BOOL)videoCallTranslationEnabled;
- (BOOL)videoMessagingCalalystEnabled;
@end

@implementation TUFeatureFlags

- (BOOL)receptionistEnabled
{
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  deviceType = [mEMORY[0x1E699BE70] deviceType];

  if (deviceType != 2)
  {
    mEMORY[0x1E699BE70]2 = [MEMORY[0x1E699BE70] sharedInstance];
    deviceType2 = [mEMORY[0x1E699BE70]2 deviceType];

    if (deviceType2 != 4)
    {
      return 0;
    }
  }

  return _os_feature_enabled_impl();
}

- (BOOL)FTUserScore
{
  v2 = _TUIsInternalInstall();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)TTRBannerEnabled
{
  v2 = _TUIsInternalInstall();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)audioCallTranslationEnabled
{
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  deviceType = [mEMORY[0x1E699BE70] deviceType];

  if (deviceType != 2)
  {
    mEMORY[0x1E699BE70]2 = [MEMORY[0x1E699BE70] sharedInstance];
    deviceType2 = [mEMORY[0x1E699BE70]2 deviceType];

    if (deviceType2 != 4)
    {
      return 0;
    }
  }

  return _os_feature_enabled_impl();
}

- (BOOL)callManagerEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x1EEE425D8]();
  }

  return v2;
}

- (BOOL)videoMessagingCalalystEnabled
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)lagunaPullBackEnabled
{
  lagunaEnabled = [(TUFeatureFlags *)self lagunaEnabled];
  if (lagunaEnabled)
  {

    LOBYTE(lagunaEnabled) = _os_feature_enabled_impl();
  }

  return lagunaEnabled;
}

- (BOOL)lagunaIncomingCallsEnabled
{
  lagunaEnabled = [(TUFeatureFlags *)self lagunaEnabled];
  if (lagunaEnabled)
  {

    LOBYTE(lagunaEnabled) = _os_feature_enabled_impl();
  }

  return lagunaEnabled;
}

- (BOOL)lagunaLiveCaptionsEnabled
{
  lagunaEnabled = [(TUFeatureFlags *)self lagunaEnabled];
  if (lagunaEnabled)
  {

    LOBYTE(lagunaEnabled) = _os_feature_enabled_impl();
  }

  return lagunaEnabled;
}

- (BOOL)lagunaAudioCallsEnabled
{
  lagunaEnabled = [(TUFeatureFlags *)self lagunaEnabled];
  if (lagunaEnabled)
  {

    LOBYTE(lagunaEnabled) = _os_feature_enabled_impl();
  }

  return lagunaEnabled;
}

- (BOOL)lagunaContinuityCompanionModeEnabled
{
  lagunaEnabled = [(TUFeatureFlags *)self lagunaEnabled];
  if (lagunaEnabled)
  {

    LOBYTE(lagunaEnabled) = _os_feature_enabled_impl();
  }

  return lagunaEnabled;
}

- (BOOL)lagunaContinuityCompanionModeMessageSupport
{
  lagunaEnabled = [(TUFeatureFlags *)self lagunaEnabled];
  if (lagunaEnabled)
  {

    LOBYTE(lagunaEnabled) = _os_feature_enabled_impl();
  }

  return lagunaEnabled;
}

- (BOOL)continuityEmergencyMultiDeviceDiscoveryEnabled
{
  lagunaEnabled = [(TUFeatureFlags *)self lagunaEnabled];
  if (lagunaEnabled)
  {

    LOBYTE(lagunaEnabled) = _os_feature_enabled_impl();
  }

  return lagunaEnabled;
}

- (BOOL)intelligentRoutingEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)collaborateTogetherEnabled
{
  gelatoEnabled = [(TUFeatureFlags *)self gelatoEnabled];
  if (gelatoEnabled)
  {

    LOBYTE(gelatoEnabled) = _os_feature_enabled_impl();
  }

  return gelatoEnabled;
}

- (BOOL)expanseEnabledForMusic
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)aTVHandoff
{
  expanseEnabled = [(TUFeatureFlags *)self expanseEnabled];
  if (expanseEnabled)
  {

    LOBYTE(expanseEnabled) = _os_feature_enabled_impl();
  }

  return expanseEnabled;
}

- (BOOL)uPlusNDowngrade
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)incomingBannerOverSixUpEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x1EEE425D8]();
  }

  return v2;
}

- (BOOL)simLinePickerEnabled
{
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  deviceType = [mEMORY[0x1E699BE70] deviceType];

  if (deviceType == 4)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)phoneRecentsAvatarsCarplayEnabled
{
  phoneRecentsAvatarsEnabled = [(TUFeatureFlags *)self phoneRecentsAvatarsEnabled];
  if (phoneRecentsAvatarsEnabled)
  {

    LOBYTE(phoneRecentsAvatarsEnabled) = _os_feature_enabled_impl();
  }

  return phoneRecentsAvatarsEnabled;
}

- (BOOL)videoCallTranslationEnabled
{
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  deviceType = [mEMORY[0x1E699BE70] deviceType];

  if (deviceType != 2)
  {
    mEMORY[0x1E699BE70]2 = [MEMORY[0x1E699BE70] sharedInstance];
    deviceType2 = [mEMORY[0x1E699BE70]2 deviceType];

    if (deviceType2 != 4)
    {
      return 0;
    }
  }

  return _os_feature_enabled_impl();
}

- (BOOL)communicationDetailsEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)acceptedContactsLabelsEnabled
{
  junkFilteringEnabled = [(TUFeatureFlags *)self junkFilteringEnabled];
  if (junkFilteringEnabled)
  {

    LOBYTE(junkFilteringEnabled) = _os_feature_enabled_impl();
  }

  return junkFilteringEnabled;
}

- (BOOL)relayCallRecordingEnabled
{
  if ([(TUFeatureFlags *)self iPadCallRecordingEnabled]|| [(TUFeatureFlags *)self macCallRecordingEnabled])
  {
    return 1;
  }

  return [(TUFeatureFlags *)self visionCallRecordingEnabled];
}

- (BOOL)dialerInterceptEnabled
{
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  deviceType = [mEMORY[0x1E699BE70] deviceType];

  if (deviceType != 2)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

@end