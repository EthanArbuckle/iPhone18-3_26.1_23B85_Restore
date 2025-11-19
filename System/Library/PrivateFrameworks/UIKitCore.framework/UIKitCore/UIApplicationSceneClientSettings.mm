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
- (id)mutableCopyWithZone:(_NSZone *)a3;
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:12];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)idleTimerDisabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:14];

  return v3;
}

- (BOOL)homeIndicatorAutoHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:27];

  return v3;
}

- (unint64_t)screenEdgesDeferringSystemGestures
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:26];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)statusBarHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2];

  return v3;
}

- (int64_t)backgroundStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:20];
  v4 = [v3 integerValue];

  return v4;
}

- (unsigned)statusBarContextID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (int64_t)statusBarModernStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:35];
  v4 = [v3 integerValue];

  return v4;
}

- (double)statusBarAlpha
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:36];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (FBSDisplayConfigurationRequest)displayConfigurationRequest
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:24];

  return v3;
}

- (NSData)activationConditionsData
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:38];

  return v3;
}

- (NSDictionary)statusBarPartStyles
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:34];

  return v3;
}

- (NSString)sceneTitle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:37];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:13];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)proximityDetectionModes
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:15];
  v4 = [v3 unsignedIntegerValue];

  return v4;
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

- (int64_t)statusBarStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (_UIPhysicalButtonConfigurationSet)physicalButtonConfigurations
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:46];

  return v3;
}

- (NSArray)audioCategoriesDisablingVolumeHUD
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:31];

  return v3;
}

- (BOOL)disablesMirroring
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:33];

  return v3;
}

- (BOOL)isStatusBarForegroundTransparent
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:3];

  return v3;
}

- (int64_t)defaultStatusBarStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:5];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)defaultStatusBarHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:6];

  return v3;
}

- (NSString)defaultPNGName
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:7];

  return v3;
}

- (double)defaultPNGExpirationTime
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:8];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)compatibilityMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:9];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)deviceOrientationEventsEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:10];

  return v3;
}

- (BOOL)interfaceOrientationChangesDisabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:11];

  return v3;
}

- (double)controlCenterAmbiguousActivationMargin
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:16];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)controlCenterRevealMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:17];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)notificationCenterRevealMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:18];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)editingInteractionConfiguration
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:45];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)idleModeVisualEffectsEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:21];

  return v3;
}

- (int64_t)whitePointAdaptivityStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:22];
  v4 = [v3 integerValue];

  return v4;
}

- (FBSDisplayMode)requestedDisplayMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:23];

  return v3;
}

- (BOOL)isReachabilitySupported
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:25];

  return v3;
}

- (BOOL)wantsExclusiveForeground
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:28];

  return v3;
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

- (double)brightnessLevel
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:32];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)sceneActivationBias
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:39];
  v4 = [v3 integerValue];

  return v4;
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

- (int64_t)preferredPointerLockStatus
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:41];
  v4 = [v3 integerValue];

  return v4;
}

- (NSArray)multitaskingDragExclusionRects
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:42];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:43];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)containsSearchView
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:47];

  return v3;
}

- (BOOL)discardSessionOnUserDisconnect
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:44];

  return v3;
}

- (BOOL)systemInputActive
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:48];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UIMutableApplicationSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end