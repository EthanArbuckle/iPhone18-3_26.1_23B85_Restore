@interface UIMutableApplicationSceneClientSettings
- (BOOL)containsSearchView;
- (BOOL)defaultStatusBarHidden;
- (BOOL)deviceOrientationEventsEnabled;
- (BOOL)disablesMirroring;
- (BOOL)homeIndicatorAutoHidden;
- (BOOL)idleModeVisualEffectsEnabled;
- (BOOL)idleTimerDisabled;
- (BOOL)interfaceOrientationChangesDisabled;
- (BOOL)isReachabilitySupported;
- (BOOL)statusBarHidden;
- (BOOL)systemInputActive;
- (BOOL)wantsExclusiveForeground;
- (CGRect)screenFocusedFrame;
- (FBSDisplayConfigurationRequest)displayConfigurationRequest;
- (FBSDisplayMode)requestedDisplayMode;
- (NSArray)audioCategoriesDisablingVolumeHUD;
- (NSArray)multitaskingDragExclusionRects;
- (NSData)activationConditionsData;
- (NSDictionary)statusBarPartStyles;
- (NSString)defaultPNGName;
- (NSString)sceneTitle;
- (UIEdgeInsets)primaryWindowOverlayInsets;
- (_UIPhysicalButtonConfigurationSet)physicalButtonConfigurations;
- (double)brightnessLevel;
- (double)controlCenterAmbiguousActivationMargin;
- (double)defaultPNGExpirationTime;
- (double)statusBarAlpha;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)backgroundStyle;
- (int64_t)compatibilityMode;
- (int64_t)controlCenterRevealMode;
- (int64_t)defaultStatusBarStyle;
- (int64_t)editingInteractionConfiguration;
- (int64_t)interfaceOrientation;
- (int64_t)notificationCenterRevealMode;
- (int64_t)playbackControlsState;
- (int64_t)preferredPointerLockStatus;
- (int64_t)statusBarModernStyle;
- (int64_t)statusBarStyle;
- (int64_t)userInterfaceStyle;
- (int64_t)whitePointAdaptivityStyle;
- (unint64_t)proximityDetectionModes;
- (unint64_t)screenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)visibleMiniAlertCount;
- (unsigned)statusBarContextID;
- (void)setActivationConditionsData:(id)a3;
- (void)setAudioCategoriesDisablingVolumeHUD:(id)a3;
- (void)setBackgroundStyle:(int64_t)a3;
- (void)setBrightnessLevel:(double)a3;
- (void)setCompatibilityMode:(int64_t)a3;
- (void)setContainsSearchView:(BOOL)a3;
- (void)setControlCenterAmbiguousActivationMargin:(double)a3;
- (void)setControlCenterRevealMode:(int64_t)a3;
- (void)setDefaultPNGExpirationTime:(double)a3;
- (void)setDefaultPNGName:(id)a3;
- (void)setDefaultStatusBarHidden:(BOOL)a3;
- (void)setDefaultStatusBarStyle:(int64_t)a3;
- (void)setDeviceOrientationEventsEnabled:(BOOL)a3;
- (void)setDisablesMirroring:(BOOL)a3;
- (void)setDiscardSessionOnUserDisconnect:(BOOL)a3;
- (void)setDisplayConfigurationRequest:(id)a3;
- (void)setEditingInteractionConfiguration:(int64_t)a3;
- (void)setHomeIndicatorAutoHidden:(BOOL)a3;
- (void)setIdleModeVisualEffectsEnabled:(BOOL)a3;
- (void)setIdleTimerDisabled:(BOOL)a3;
- (void)setInterfaceOrientation:(int64_t)a3;
- (void)setInterfaceOrientationChangesDisabled:(BOOL)a3;
- (void)setMultitaskingDragExclusionRects:(id)a3;
- (void)setNotificationCenterRevealMode:(int64_t)a3;
- (void)setPhysicalButtonConfigurations:(id)a3;
- (void)setPlaybackControlsState:(int64_t)a3;
- (void)setPreferredPointerLockStatus:(int64_t)a3;
- (void)setPrimaryWindowOverlayInsets:(UIEdgeInsets)a3;
- (void)setProximityDetectionModes:(unint64_t)a3;
- (void)setReachabilitySupported:(BOOL)a3;
- (void)setRequestedDisplayMode:(id)a3;
- (void)setSceneActivationBias:(int64_t)a3;
- (void)setSceneTitle:(id)a3;
- (void)setScreenEdgesDeferringSystemGestures:(unint64_t)a3;
- (void)setScreenFocusedFrame:(CGRect)a3;
- (void)setStatusBarAlpha:(double)a3;
- (void)setStatusBarContextID:(unsigned int)a3;
- (void)setStatusBarForegroundTransparent:(BOOL)a3;
- (void)setStatusBarHidden:(BOOL)a3;
- (void)setStatusBarModernStyle:(int64_t)a3;
- (void)setStatusBarPartStyles:(id)a3;
- (void)setStatusBarStyle:(int64_t)a3;
- (void)setSupportedInterfaceOrientations:(unint64_t)a3;
- (void)setSystemInputActive:(BOOL)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
- (void)setVisibleMiniAlertCount:(unint64_t)a3;
- (void)setWantsExclusiveForeground:(BOOL)a3;
- (void)setWhitePointAdaptivityStyle:(int64_t)a3;
@end

@implementation UIMutableApplicationSceneClientSettings

- (int64_t)interfaceOrientation
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:12];
  v4 = [v3 integerValue];

  return v4;
}

- (NSArray)audioCategoriesDisablingVolumeHUD
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:31];

  return v3;
}

- (int64_t)statusBarStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setStatusBarStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:1];
}

- (int64_t)statusBarModernStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:35];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setStatusBarModernStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:35];
}

- (NSDictionary)statusBarPartStyles
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:34];

  return v3;
}

- (void)setStatusBarPartStyles:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:34];
}

- (BOOL)statusBarHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2];

  return v3;
}

- (void)setStatusBarHidden:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:2];
}

- (double)statusBarAlpha
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:36];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setStatusBarAlpha:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:36];
}

- (void)setStatusBarForegroundTransparent:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:3];
}

- (unsigned)statusBarContextID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)setStatusBarContextID:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 setObject:v4 forSetting:4];
}

- (int64_t)defaultStatusBarStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:5];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setDefaultStatusBarStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:5];
}

- (BOOL)defaultStatusBarHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:6];

  return v3;
}

- (void)setDefaultStatusBarHidden:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:6];
}

- (NSString)defaultPNGName
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:7];

  return v3;
}

- (void)setDefaultPNGName:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:7];
}

- (double)defaultPNGExpirationTime
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:8];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setDefaultPNGExpirationTime:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:8];
}

- (int64_t)compatibilityMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:9];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setCompatibilityMode:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:9];
}

- (BOOL)deviceOrientationEventsEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:10];

  return v3;
}

- (void)setDeviceOrientationEventsEnabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:10];
}

- (BOOL)interfaceOrientationChangesDisabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:11];

  return v3;
}

- (void)setInterfaceOrientationChangesDisabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:11];
}

- (void)setInterfaceOrientation:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:12];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:13];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setSupportedInterfaceOrientations:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:13];
}

- (BOOL)idleTimerDisabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:14];

  return v3;
}

- (void)setIdleTimerDisabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:14];
}

- (unint64_t)proximityDetectionModes
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:15];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setProximityDetectionModes:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:15];
}

- (double)controlCenterAmbiguousActivationMargin
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:16];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setControlCenterAmbiguousActivationMargin:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:16];
}

- (int64_t)controlCenterRevealMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:17];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setControlCenterRevealMode:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:17];
}

- (int64_t)notificationCenterRevealMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:18];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setNotificationCenterRevealMode:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:18];
}

- (int64_t)editingInteractionConfiguration
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:45];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setEditingInteractionConfiguration:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:45];
}

- (UIEdgeInsets)primaryWindowOverlayInsets
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:19];
  v12 = UIEdgeInsetsFromString(v3);
  top = v12.top;
  left = v12.left;
  bottom = v12.bottom;
  right = v12.right;

  v8 = top;
  v9 = left;
  v10 = bottom;
  v11 = right;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)setPrimaryWindowOverlayInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(FBSSettings *)self otherSettings];
  v10.top = top;
  v10.left = left;
  v10.bottom = bottom;
  v10.right = right;
  v7 = NSStringFromUIEdgeInsets(v10);
  [v8 setObject:v7 forSetting:19];
}

- (int64_t)backgroundStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:20];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setBackgroundStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:20];
}

- (BOOL)idleModeVisualEffectsEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:21];

  return v3;
}

- (void)setIdleModeVisualEffectsEnabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:21];
}

- (int64_t)whitePointAdaptivityStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:22];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setWhitePointAdaptivityStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:22];
}

- (FBSDisplayMode)requestedDisplayMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:23];

  return v3;
}

- (void)setRequestedDisplayMode:(id)a3
{
  v4 = a3;
  v6 = [(FBSSettings *)self otherSettings];
  v5 = [v4 copy];

  [v6 setObject:v5 forSetting:23];
}

- (FBSDisplayConfigurationRequest)displayConfigurationRequest
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:24];

  return v3;
}

- (void)setDisplayConfigurationRequest:(id)a3
{
  v4 = a3;
  v6 = [(FBSSettings *)self otherSettings];
  v5 = [v4 copy];

  [v6 setObject:v5 forSetting:24];
}

- (BOOL)isReachabilitySupported
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:25];

  return v3;
}

- (void)setReachabilitySupported:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:25];
}

- (unint64_t)screenEdgesDeferringSystemGestures
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:26];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setScreenEdgesDeferringSystemGestures:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:26];
}

- (BOOL)homeIndicatorAutoHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:27];

  return v3;
}

- (void)setHomeIndicatorAutoHidden:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:27];
}

- (BOOL)wantsExclusiveForeground
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:28];

  return v3;
}

- (void)setWantsExclusiveForeground:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:28];
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:29];
}

- (int64_t)userInterfaceStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:29];
  v4 = [v3 integerValue];

  return v4;
}

- (unint64_t)visibleMiniAlertCount
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:30];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setVisibleMiniAlertCount:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:30];
}

- (void)setAudioCategoriesDisablingVolumeHUD:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:31];
}

- (double)brightnessLevel
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:32];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setBrightnessLevel:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:32];
}

- (BOOL)disablesMirroring
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:33];

  return v3;
}

- (void)setDisablesMirroring:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:33];
}

- (NSString)sceneTitle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:37];

  return v3;
}

- (void)setSceneTitle:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:37];
}

- (NSData)activationConditionsData
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:38];

  return v3;
}

- (void)setActivationConditionsData:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:38];
}

- (void)setSceneActivationBias:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:39];
}

- (CGRect)screenFocusedFrame
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:40];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setScreenFocusedFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v8 setObject:v7 forSetting:40];
}

- (int64_t)preferredPointerLockStatus
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:41];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setPreferredPointerLockStatus:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:41];
}

- (_UIPhysicalButtonConfigurationSet)physicalButtonConfigurations
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:46];

  return v3;
}

- (void)setPhysicalButtonConfigurations:(id)a3
{
  v4 = a3;
  v6 = [(FBSSettings *)self otherSettings];
  v5 = [v4 copy];

  [v6 setObject:v5 forSetting:46];
}

- (NSArray)multitaskingDragExclusionRects
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:42];

  return v3;
}

- (void)setMultitaskingDragExclusionRects:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:42];
}

- (int64_t)playbackControlsState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:43];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setPlaybackControlsState:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:43];
}

- (BOOL)containsSearchView
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:47];

  return v3;
}

- (void)setContainsSearchView:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:47];
}

- (void)setDiscardSessionOnUserDisconnect:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:44];
}

- (BOOL)systemInputActive
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:48];

  return v3;
}

- (void)setSystemInputActive:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:48];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIApplicationSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end