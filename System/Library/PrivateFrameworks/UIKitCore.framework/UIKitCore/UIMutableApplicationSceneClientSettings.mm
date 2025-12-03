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
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)setActivationConditionsData:(id)data;
- (void)setAudioCategoriesDisablingVolumeHUD:(id)d;
- (void)setBackgroundStyle:(int64_t)style;
- (void)setBrightnessLevel:(double)level;
- (void)setCompatibilityMode:(int64_t)mode;
- (void)setContainsSearchView:(BOOL)view;
- (void)setControlCenterAmbiguousActivationMargin:(double)margin;
- (void)setControlCenterRevealMode:(int64_t)mode;
- (void)setDefaultPNGExpirationTime:(double)time;
- (void)setDefaultPNGName:(id)name;
- (void)setDefaultStatusBarHidden:(BOOL)hidden;
- (void)setDefaultStatusBarStyle:(int64_t)style;
- (void)setDeviceOrientationEventsEnabled:(BOOL)enabled;
- (void)setDisablesMirroring:(BOOL)mirroring;
- (void)setDiscardSessionOnUserDisconnect:(BOOL)disconnect;
- (void)setDisplayConfigurationRequest:(id)request;
- (void)setEditingInteractionConfiguration:(int64_t)configuration;
- (void)setHomeIndicatorAutoHidden:(BOOL)hidden;
- (void)setIdleModeVisualEffectsEnabled:(BOOL)enabled;
- (void)setIdleTimerDisabled:(BOOL)disabled;
- (void)setInterfaceOrientation:(int64_t)orientation;
- (void)setInterfaceOrientationChangesDisabled:(BOOL)disabled;
- (void)setMultitaskingDragExclusionRects:(id)rects;
- (void)setNotificationCenterRevealMode:(int64_t)mode;
- (void)setPhysicalButtonConfigurations:(id)configurations;
- (void)setPlaybackControlsState:(int64_t)state;
- (void)setPreferredPointerLockStatus:(int64_t)status;
- (void)setPrimaryWindowOverlayInsets:(UIEdgeInsets)insets;
- (void)setProximityDetectionModes:(unint64_t)modes;
- (void)setReachabilitySupported:(BOOL)supported;
- (void)setRequestedDisplayMode:(id)mode;
- (void)setSceneActivationBias:(int64_t)bias;
- (void)setSceneTitle:(id)title;
- (void)setScreenEdgesDeferringSystemGestures:(unint64_t)gestures;
- (void)setScreenFocusedFrame:(CGRect)frame;
- (void)setStatusBarAlpha:(double)alpha;
- (void)setStatusBarContextID:(unsigned int)d;
- (void)setStatusBarForegroundTransparent:(BOOL)transparent;
- (void)setStatusBarHidden:(BOOL)hidden;
- (void)setStatusBarModernStyle:(int64_t)style;
- (void)setStatusBarPartStyles:(id)styles;
- (void)setStatusBarStyle:(int64_t)style;
- (void)setSupportedInterfaceOrientations:(unint64_t)orientations;
- (void)setSystemInputActive:(BOOL)active;
- (void)setUserInterfaceStyle:(int64_t)style;
- (void)setVisibleMiniAlertCount:(unint64_t)count;
- (void)setWantsExclusiveForeground:(BOOL)foreground;
- (void)setWhitePointAdaptivityStyle:(int64_t)style;
@end

@implementation UIMutableApplicationSceneClientSettings

- (int64_t)interfaceOrientation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:12];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSArray)audioCategoriesDisablingVolumeHUD
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:31];

  return v3;
}

- (int64_t)statusBarStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setStatusBarStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:1];
}

- (int64_t)statusBarModernStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:35];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setStatusBarModernStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:35];
}

- (NSDictionary)statusBarPartStyles
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:34];

  return v3;
}

- (void)setStatusBarPartStyles:(id)styles
{
  stylesCopy = styles;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:stylesCopy forSetting:34];
}

- (BOOL)statusBarHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2];

  return v3;
}

- (void)setStatusBarHidden:(BOOL)hidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:2];
}

- (double)statusBarAlpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:36];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setStatusBarAlpha:(double)alpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:alpha];
  [otherSettings setObject:v4 forSetting:36];
}

- (void)setStatusBarForegroundTransparent:(BOOL)transparent
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:3];
}

- (unsigned)statusBarContextID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setStatusBarContextID:(unsigned int)d
{
  v3 = *&d;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [otherSettings setObject:v4 forSetting:4];
}

- (int64_t)defaultStatusBarStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:5];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setDefaultStatusBarStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:5];
}

- (BOOL)defaultStatusBarHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:6];

  return v3;
}

- (void)setDefaultStatusBarHidden:(BOOL)hidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:6];
}

- (NSString)defaultPNGName
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:7];

  return v3;
}

- (void)setDefaultPNGName:(id)name
{
  nameCopy = name;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:nameCopy forSetting:7];
}

- (double)defaultPNGExpirationTime
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:8];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setDefaultPNGExpirationTime:(double)time
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:v5 forSetting:8];
}

- (int64_t)compatibilityMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:9];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setCompatibilityMode:(int64_t)mode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [otherSettings setObject:v4 forSetting:9];
}

- (BOOL)deviceOrientationEventsEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:10];

  return v3;
}

- (void)setDeviceOrientationEventsEnabled:(BOOL)enabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:10];
}

- (BOOL)interfaceOrientationChangesDisabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:11];

  return v3;
}

- (void)setInterfaceOrientationChangesDisabled:(BOOL)disabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:11];
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
  [otherSettings setObject:v4 forSetting:12];
}

- (unint64_t)supportedInterfaceOrientations
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:13];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setSupportedInterfaceOrientations:(unint64_t)orientations
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:orientations];
  [otherSettings setObject:v4 forSetting:13];
}

- (BOOL)idleTimerDisabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:14];

  return v3;
}

- (void)setIdleTimerDisabled:(BOOL)disabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:14];
}

- (unint64_t)proximityDetectionModes
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:15];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setProximityDetectionModes:(unint64_t)modes
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:modes];
  [otherSettings setObject:v4 forSetting:15];
}

- (double)controlCenterAmbiguousActivationMargin
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:16];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setControlCenterAmbiguousActivationMargin:(double)margin
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:margin];
  [otherSettings setObject:v4 forSetting:16];
}

- (int64_t)controlCenterRevealMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:17];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setControlCenterRevealMode:(int64_t)mode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [otherSettings setObject:v4 forSetting:17];
}

- (int64_t)notificationCenterRevealMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setNotificationCenterRevealMode:(int64_t)mode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [otherSettings setObject:v4 forSetting:18];
}

- (int64_t)editingInteractionConfiguration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:45];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setEditingInteractionConfiguration:(int64_t)configuration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:configuration];
  [otherSettings setObject:v4 forSetting:45];
}

- (UIEdgeInsets)primaryWindowOverlayInsets
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:19];
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

- (void)setPrimaryWindowOverlayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  otherSettings = [(FBSSettings *)self otherSettings];
  v10.top = top;
  v10.left = left;
  v10.bottom = bottom;
  v10.right = right;
  v7 = NSStringFromUIEdgeInsets(v10);
  [otherSettings setObject:v7 forSetting:19];
}

- (int64_t)backgroundStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:20];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setBackgroundStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:20];
}

- (BOOL)idleModeVisualEffectsEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:21];

  return v3;
}

- (void)setIdleModeVisualEffectsEnabled:(BOOL)enabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:21];
}

- (int64_t)whitePointAdaptivityStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:22];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setWhitePointAdaptivityStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:22];
}

- (FBSDisplayMode)requestedDisplayMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:23];

  return v3;
}

- (void)setRequestedDisplayMode:(id)mode
{
  modeCopy = mode;
  otherSettings = [(FBSSettings *)self otherSettings];
  v5 = [modeCopy copy];

  [otherSettings setObject:v5 forSetting:23];
}

- (FBSDisplayConfigurationRequest)displayConfigurationRequest
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:24];

  return v3;
}

- (void)setDisplayConfigurationRequest:(id)request
{
  requestCopy = request;
  otherSettings = [(FBSSettings *)self otherSettings];
  v5 = [requestCopy copy];

  [otherSettings setObject:v5 forSetting:24];
}

- (BOOL)isReachabilitySupported
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:25];

  return v3;
}

- (void)setReachabilitySupported:(BOOL)supported
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:25];
}

- (unint64_t)screenEdgesDeferringSystemGestures
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:26];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setScreenEdgesDeferringSystemGestures:(unint64_t)gestures
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:gestures];
  [otherSettings setObject:v4 forSetting:26];
}

- (BOOL)homeIndicatorAutoHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:27];

  return v3;
}

- (void)setHomeIndicatorAutoHidden:(BOOL)hidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:27];
}

- (BOOL)wantsExclusiveForeground
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:28];

  return v3;
}

- (void)setWantsExclusiveForeground:(BOOL)foreground
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:28];
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:29];
}

- (int64_t)userInterfaceStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:29];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (unint64_t)visibleMiniAlertCount
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:30];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setVisibleMiniAlertCount:(unint64_t)count
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [otherSettings setObject:v4 forSetting:30];
}

- (void)setAudioCategoriesDisablingVolumeHUD:(id)d
{
  dCopy = d;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:dCopy forSetting:31];
}

- (double)brightnessLevel
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:32];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setBrightnessLevel:(double)level
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:level];
  [otherSettings setObject:v4 forSetting:32];
}

- (BOOL)disablesMirroring
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:33];

  return v3;
}

- (void)setDisablesMirroring:(BOOL)mirroring
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:33];
}

- (NSString)sceneTitle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:37];

  return v3;
}

- (void)setSceneTitle:(id)title
{
  titleCopy = title;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:titleCopy forSetting:37];
}

- (NSData)activationConditionsData
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:38];

  return v3;
}

- (void)setActivationConditionsData:(id)data
{
  dataCopy = data;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:dataCopy forSetting:38];
}

- (void)setSceneActivationBias:(int64_t)bias
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:bias];
  [otherSettings setObject:v4 forSetting:39];
}

- (CGRect)screenFocusedFrame
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:40];
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

- (void)setScreenFocusedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  otherSettings = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [otherSettings setObject:v7 forSetting:40];
}

- (int64_t)preferredPointerLockStatus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:41];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setPreferredPointerLockStatus:(int64_t)status
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [otherSettings setObject:v4 forSetting:41];
}

- (_UIPhysicalButtonConfigurationSet)physicalButtonConfigurations
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:46];

  return v3;
}

- (void)setPhysicalButtonConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  otherSettings = [(FBSSettings *)self otherSettings];
  v5 = [configurationsCopy copy];

  [otherSettings setObject:v5 forSetting:46];
}

- (NSArray)multitaskingDragExclusionRects
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42];

  return v3;
}

- (void)setMultitaskingDragExclusionRects:(id)rects
{
  rectsCopy = rects;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:rectsCopy forSetting:42];
}

- (int64_t)playbackControlsState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:43];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setPlaybackControlsState:(int64_t)state
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [otherSettings setObject:v4 forSetting:43];
}

- (BOOL)containsSearchView
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:47];

  return v3;
}

- (void)setContainsSearchView:(BOOL)view
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:47];
}

- (void)setDiscardSessionOnUserDisconnect:(BOOL)disconnect
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:44];
}

- (BOOL)systemInputActive
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:48];

  return v3;
}

- (void)setSystemInputActive:(BOOL)active
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:48];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIApplicationSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end