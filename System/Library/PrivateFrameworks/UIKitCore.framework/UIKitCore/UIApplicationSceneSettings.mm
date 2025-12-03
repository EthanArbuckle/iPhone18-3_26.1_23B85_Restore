@interface UIApplicationSceneSettings
- (BOOL)_containsSetting:(int64_t)setting;
- (BOOL)canShowAlerts;
- (BOOL)deviceOrientationEventsEnabled;
- (BOOL)enhancedWindowingEnabled;
- (BOOL)forcedStatusBarForegroundTransparent;
- (BOOL)idleModeEnabled;
- (BOOL)inLiveResize;
- (BOOL)isCapturingContentForAdditionalRenderingDestination;
- (BOOL)screenBoundsIgnoresSceneOrientation;
- (BOOL)statusBarDisabled;
- (BOOL)underLock;
- (BSCornerRadiusConfiguration)cornerRadiusConfiguration;
- (BSInterfaceOrientationMapResolving)interfaceOrientationMapResolver;
- (CGRect)statusBarAvoidanceFrame;
- (NSNumber)forcedStatusBarStyle;
- (NSSet)targetOfEventDeferringEnvironments;
- (NSString)persistenceIdentifier;
- (UIEdgeInsets)peripheryInsets;
- (UIEdgeInsets)safeAreaInsetsLandscapeLeft;
- (UIEdgeInsets)safeAreaInsetsLandscapeRight;
- (UIEdgeInsets)safeAreaInsetsPortrait;
- (UIEdgeInsets)safeAreaInsetsPortraitUpsideDown;
- (double)angleFromHostReferenceUprightDirection;
- (double)defaultStatusBarHeightForOrientation:(int64_t)orientation;
- (double)homeAffordanceOverlayAllowance;
- (double)statusBarHeight;
- (double)systemMinimumMargin;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)accessibilityContrast;
- (int64_t)deviceOrientation;
- (int64_t)interfaceOrientationMode;
- (int64_t)pointerLockStatus;
- (int64_t)screenReferenceDisplayModeStatus;
- (int64_t)statusBarParts;
- (int64_t)userInterfaceStyle;
- (unint64_t)artworkSubtype;
- (unint64_t)deactivationReasons;
- (unint64_t)hostReferenceAngleMode;
- (unint64_t)scenePresenterRenderIdentifierForSnapshotting;
- (unint64_t)statusBarStyleOverridesToSuppress;
- (unsigned)hostContextIdentifierForSnapshotting;
@end

@implementation UIApplicationSceneSettings

- (unint64_t)deactivationReasons
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)underLock
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [otherSettings BOOLForSetting:1];

  return v4 | ([(UIApplicationSceneSettings *)self deactivationReasons]>> 30) & 1;
}

- (BOOL)deviceOrientationEventsEnabled
{
  interfaceOrientationMode = [(UIApplicationSceneSettings *)self interfaceOrientationMode];
  if (interfaceOrientationMode)
  {
    return interfaceOrientationMode == 100;
  }

  otherSettings = [(FBSSettings *)self otherSettings];
  v6 = [otherSettings BOOLForSetting:6];

  return v6;
}

- (int64_t)interfaceOrientationMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:35];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)userInterfaceStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:10];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSNumber)forcedStatusBarStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4];

  return v3;
}

- (CGRect)statusBarAvoidanceFrame
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:20];
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

- (BOOL)isCapturingContentForAdditionalRenderingDestination
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:44];

  return v3;
}

- (BSInterfaceOrientationMapResolving)interfaceOrientationMapResolver
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:37];

  return v3;
}

- (int64_t)deviceOrientation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:13];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSString)persistenceIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:29];

  return v3;
}

- (BOOL)enhancedWindowingEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:40];

  return v3;
}

- (BSCornerRadiusConfiguration)cornerRadiusConfiguration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:23];

  return v3;
}

- (double)systemMinimumMargin
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:14];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)inLiveResize
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:39];

  return v3;
}

- (int64_t)screenReferenceDisplayModeStatus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:38];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (UIEdgeInsets)safeAreaInsetsPortrait
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:15];
  [v3 UIEdgeInsetsValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (BOOL)statusBarDisabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:9];

  return v3;
}

- (UIEdgeInsets)peripheryInsets
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:12];
  [v3 UIEdgeInsetsValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (double)homeAffordanceOverlayAllowance
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:22];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)accessibilityContrast
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:32];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (unint64_t)statusBarStyleOverridesToSuppress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)forcedStatusBarForegroundTransparent
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:11];

  return v3;
}

- (int64_t)statusBarParts
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:19];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0xFFFFLL;
  }

  return integerValue;
}

- (double)statusBarHeight
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:24];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)defaultStatusBarHeightForOrientation:(int64_t)orientation
{
  if ((orientation - 1) > 3)
  {
    return 0.0;
  }

  v3 = qword_18A67B868[orientation - 1];
  otherSettings = [(FBSSettings *)self otherSettings];
  v5 = [otherSettings objectForSetting:v3];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (UIEdgeInsets)safeAreaInsetsLandscapeLeft
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [otherSettings objectForSetting:16];

  if (v4 || (-[FBSSettings otherSettings](self, "otherSettings"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForSetting:18], v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    [v4 UIEdgeInsetsValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = v7;
    v15 = v9;
    v16 = v11;
    v17 = v13;
  }

  else
  {

    [(UIApplicationSceneSettings *)self safeAreaInsetsPortrait];
  }

  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsPortraitUpsideDown
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [otherSettings objectForSetting:17];

  if (v4)
  {
    [v4 UIEdgeInsetsValue];
  }

  else
  {
    [(UIApplicationSceneSettings *)self safeAreaInsetsPortrait];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsLandscapeRight
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [otherSettings objectForSetting:18];

  if (v4 || (-[FBSSettings otherSettings](self, "otherSettings"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForSetting:16], v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    [v4 UIEdgeInsetsValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = v7;
    v15 = v9;
    v16 = v11;
    v17 = v13;
  }

  else
  {

    [(UIApplicationSceneSettings *)self safeAreaInsetsPortrait];
  }

  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (BOOL)canShowAlerts
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:7];

  return v3;
}

- (BOOL)idleModeEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:8];

  return v3;
}

- (unint64_t)artworkSubtype
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:21];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unsigned)hostContextIdentifierForSnapshotting
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:30];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)scenePresenterRenderIdentifierForSnapshotting
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:31];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)pointerLockStatus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:33];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)screenBoundsIgnoresSceneOrientation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:41];

  return v3;
}

- (unint64_t)hostReferenceAngleMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:43];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)angleFromHostReferenceUprightDirection
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (NSSet)targetOfEventDeferringEnvironments
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:36];

  environments = [(_UIEventDeferringEnvironmentsContainer *)v3 environments];

  return environments;
}

- (BOOL)_containsSetting:(int64_t)setting
{
  otherSettings = [(FBSSettings *)self otherSettings];
  allSettings = [otherSettings allSettings];
  LOBYTE(setting) = [allSettings containsValue:setting];

  return setting;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UIMutableApplicationSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end