@interface UIApplicationSceneClientSettings
- (BOOL)containsSearchView;
- (BOOL)defaultStatusBarHidden;
- (BOOL)deviceOrientationEventsEnabled;
- (BOOL)disablesMirroring;
- (BOOL)discardSessionOnUserDisconnect;
- (BOOL)homeIndicatorAutoHidden;
- (BOOL)idleModeVisualEffectsEnabled;
- (BOOL)idleTimerDisabled;
- (BOOL)interfaceOrientationChangesDisabled;
- (BOOL)isReachabilitySupported;
- (BOOL)isStatusBarForegroundTransparent;
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
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)backgroundStyle;
- (int64_t)compatibilityMode;
- (int64_t)controlCenterRevealMode;
- (int64_t)defaultStatusBarStyle;
- (int64_t)editingInteractionConfiguration;
- (int64_t)interfaceOrientation;
- (int64_t)notificationCenterRevealMode;
- (int64_t)playbackControlsState;
- (int64_t)preferredPointerLockStatus;
- (int64_t)sceneActivationBias;
- (int64_t)statusBarModernStyle;
- (int64_t)statusBarStyle;
- (int64_t)userInterfaceStyle;
- (int64_t)whitePointAdaptivityStyle;
- (unint64_t)proximityDetectionModes;
- (unint64_t)screenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)visibleMiniAlertCount;
- (unsigned)statusBarContextID;
@end

@implementation UIApplicationSceneClientSettings

- (int64_t)interfaceOrientation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:12];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)idleTimerDisabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:14];

  return v3;
}

- (BOOL)homeIndicatorAutoHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:27];

  return v3;
}

- (unint64_t)screenEdgesDeferringSystemGestures
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:26];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)statusBarHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2];

  return v3;
}

- (int64_t)backgroundStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:20];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (unsigned)statusBarContextID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (int64_t)statusBarModernStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:35];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (double)statusBarAlpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:36];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (FBSDisplayConfigurationRequest)displayConfigurationRequest
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:24];

  return v3;
}

- (NSData)activationConditionsData
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:38];

  return v3;
}

- (NSDictionary)statusBarPartStyles
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:34];

  return v3;
}

- (NSString)sceneTitle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:37];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:13];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)proximityDetectionModes
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:15];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
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

- (int64_t)statusBarStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (_UIPhysicalButtonConfigurationSet)physicalButtonConfigurations
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:46];

  return v3;
}

- (NSArray)audioCategoriesDisablingVolumeHUD
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:31];

  return v3;
}

- (BOOL)disablesMirroring
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:33];

  return v3;
}

- (BOOL)isStatusBarForegroundTransparent
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:3];

  return v3;
}

- (int64_t)defaultStatusBarStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:5];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)defaultStatusBarHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:6];

  return v3;
}

- (NSString)defaultPNGName
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:7];

  return v3;
}

- (double)defaultPNGExpirationTime
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:8];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)compatibilityMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:9];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)deviceOrientationEventsEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:10];

  return v3;
}

- (BOOL)interfaceOrientationChangesDisabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:11];

  return v3;
}

- (double)controlCenterAmbiguousActivationMargin
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:16];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)controlCenterRevealMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:17];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)notificationCenterRevealMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)editingInteractionConfiguration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:45];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (BOOL)idleModeVisualEffectsEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:21];

  return v3;
}

- (int64_t)whitePointAdaptivityStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:22];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (FBSDisplayMode)requestedDisplayMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:23];

  return v3;
}

- (BOOL)isReachabilitySupported
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:25];

  return v3;
}

- (BOOL)wantsExclusiveForeground
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:28];

  return v3;
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

- (double)brightnessLevel
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:32];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)sceneActivationBias
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:39];
  integerValue = [v3 integerValue];

  return integerValue;
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

- (int64_t)preferredPointerLockStatus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:41];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSArray)multitaskingDragExclusionRects
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (int64_t)playbackControlsState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:43];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)containsSearchView
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:47];

  return v3;
}

- (BOOL)discardSessionOnUserDisconnect
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:44];

  return v3;
}

- (BOOL)systemInputActive
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:48];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UIMutableApplicationSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end