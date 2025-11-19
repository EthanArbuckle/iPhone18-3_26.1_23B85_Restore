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
  v2 = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [v2 deviceType];

  if (v3 != 2)
  {
    v4 = [MEMORY[0x1E699BE70] sharedInstance];
    v5 = [v4 deviceType];

    if (v5 != 4)
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
  v2 = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [v2 deviceType];

  if (v3 != 2)
  {
    v4 = [MEMORY[0x1E699BE70] sharedInstance];
    v5 = [v4 deviceType];

    if (v5 != 4)
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
  v2 = [(TUFeatureFlags *)self lagunaEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)lagunaIncomingCallsEnabled
{
  v2 = [(TUFeatureFlags *)self lagunaEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)lagunaLiveCaptionsEnabled
{
  v2 = [(TUFeatureFlags *)self lagunaEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)lagunaAudioCallsEnabled
{
  v2 = [(TUFeatureFlags *)self lagunaEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)lagunaContinuityCompanionModeEnabled
{
  v2 = [(TUFeatureFlags *)self lagunaEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)lagunaContinuityCompanionModeMessageSupport
{
  v2 = [(TUFeatureFlags *)self lagunaEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)continuityEmergencyMultiDeviceDiscoveryEnabled
{
  v2 = [(TUFeatureFlags *)self lagunaEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
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
  v2 = [(TUFeatureFlags *)self gelatoEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
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
  v2 = [(TUFeatureFlags *)self expanseEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
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
  v2 = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [v2 deviceType];

  if (v3 == 4)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)phoneRecentsAvatarsCarplayEnabled
{
  v2 = [(TUFeatureFlags *)self phoneRecentsAvatarsEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)videoCallTranslationEnabled
{
  v2 = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [v2 deviceType];

  if (v3 != 2)
  {
    v4 = [MEMORY[0x1E699BE70] sharedInstance];
    v5 = [v4 deviceType];

    if (v5 != 4)
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
  v2 = [(TUFeatureFlags *)self junkFilteringEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
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
  v2 = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [v2 deviceType];

  if (v3 != 2)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

@end