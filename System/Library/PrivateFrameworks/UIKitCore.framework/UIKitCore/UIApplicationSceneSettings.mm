@interface UIApplicationSceneSettings
- (BOOL)_containsSetting:(int64_t)a3;
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
- (double)defaultStatusBarHeightForOrientation:(int64_t)a3;
- (double)homeAffordanceOverlayAllowance;
- (double)statusBarHeight;
- (double)systemMinimumMargin;
- (id)mutableCopyWithZone:(_NSZone *)a3;
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)underLock
{
  v3 = [(FBSSettings *)self otherSettings];
  v4 = [v3 BOOLForSetting:1];

  return v4 | ([(UIApplicationSceneSettings *)self deactivationReasons]>> 30) & 1;
}

- (BOOL)deviceOrientationEventsEnabled
{
  v3 = [(UIApplicationSceneSettings *)self interfaceOrientationMode];
  if (v3)
  {
    return v3 == 100;
  }

  v5 = [(FBSSettings *)self otherSettings];
  v6 = [v5 BOOLForSetting:6];

  return v6;
}

- (int64_t)interfaceOrientationMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:35];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (int64_t)userInterfaceStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:10];
  v4 = [v3 integerValue];

  return v4;
}

- (NSNumber)forcedStatusBarStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4];

  return v3;
}

- (CGRect)statusBarAvoidanceFrame
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:20];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:44];

  return v3;
}

- (BSInterfaceOrientationMapResolving)interfaceOrientationMapResolver
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:37];

  return v3;
}

- (int64_t)deviceOrientation
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:13];
  v4 = [v3 integerValue];

  return v4;
}

- (NSString)persistenceIdentifier
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:29];

  return v3;
}

- (BOOL)enhancedWindowingEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:40];

  return v3;
}

- (BSCornerRadiusConfiguration)cornerRadiusConfiguration
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:23];

  return v3;
}

- (double)systemMinimumMargin
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:14];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)inLiveResize
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:39];

  return v3;
}

- (int64_t)screenReferenceDisplayModeStatus
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:38];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (UIEdgeInsets)safeAreaInsetsPortrait
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:15];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:9];

  return v3;
}

- (UIEdgeInsets)peripheryInsets
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:12];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:22];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)accessibilityContrast
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:32];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unint64_t)statusBarStyleOverridesToSuppress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)forcedStatusBarForegroundTransparent
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:11];

  return v3;
}

- (int64_t)statusBarParts
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:19];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0xFFFFLL;
  }

  return v4;
}

- (double)statusBarHeight
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:24];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)defaultStatusBarHeightForOrientation:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 0.0;
  }

  v3 = qword_18A67B868[a3 - 1];
  v4 = [(FBSSettings *)self otherSettings];
  v5 = [v4 objectForSetting:v3];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (UIEdgeInsets)safeAreaInsetsLandscapeLeft
{
  v3 = [(FBSSettings *)self otherSettings];
  v4 = [v3 objectForSetting:16];

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
  v3 = [(FBSSettings *)self otherSettings];
  v4 = [v3 objectForSetting:17];

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
  v3 = [(FBSSettings *)self otherSettings];
  v4 = [v3 objectForSetting:18];

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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:7];

  return v3;
}

- (BOOL)idleModeEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:8];

  return v3;
}

- (unint64_t)artworkSubtype
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:21];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unsigned)hostContextIdentifierForSnapshotting
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:30];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)scenePresenterRenderIdentifierForSnapshotting
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:31];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (int64_t)pointerLockStatus
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:33];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)screenBoundsIgnoresSceneOrientation
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:41];

  return v3;
}

- (unint64_t)hostReferenceAngleMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:43];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (double)angleFromHostReferenceUprightDirection
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:42];

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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:36];

  v4 = [(_UIEventDeferringEnvironmentsContainer *)v3 environments];

  return v4;
}

- (BOOL)_containsSetting:(int64_t)a3
{
  v4 = [(FBSSettings *)self otherSettings];
  v5 = [v4 allSettings];
  LOBYTE(a3) = [v5 containsValue:a3];

  return a3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UIMutableApplicationSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end