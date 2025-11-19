@interface UIMutableApplicationSceneSettings
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
- (id)copyWithZone:(_NSZone *)a3;
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
- (void)setAccessibilityContrast:(int64_t)a3;
- (void)setAngleFromHostReferenceUprightDirection:(double)a3;
- (void)setArtworkSubtype:(unint64_t)a3;
- (void)setCanShowAlerts:(BOOL)a3;
- (void)setCornerRadiusConfiguration:(id)a3;
- (void)setDeactivationReasons:(unint64_t)a3;
- (void)setDefaultStatusBarHeight:(double)a3 forOrientation:(int64_t)a4;
- (void)setDeviceOrientation:(int64_t)a3;
- (void)setDeviceOrientationEventsEnabled:(BOOL)a3;
- (void)setEnhancedWindowingEnabled:(BOOL)a3;
- (void)setForcedStatusBarForegroundTransparent:(BOOL)a3;
- (void)setForcedStatusBarStyle:(id)a3;
- (void)setHomeAffordanceOverlayAllowance:(double)a3;
- (void)setHostContextIdentifierForSnapshotting:(unsigned int)a3;
- (void)setHostReferenceAngleMode:(unint64_t)a3;
- (void)setIdleModeEnabled:(BOOL)a3;
- (void)setInLiveResize:(BOOL)a3;
- (void)setInterfaceOrientationMapResolver:(id)a3;
- (void)setInterfaceOrientationMode:(int64_t)a3;
- (void)setIsCapturingContentForAdditionalRenderingDestination:(BOOL)a3;
- (void)setPeripheryInsets:(UIEdgeInsets)a3;
- (void)setPersistenceIdentifier:(id)a3;
- (void)setPointerLockStatus:(int64_t)a3;
- (void)setSafeAreaInsetsLandscapeLeft:(UIEdgeInsets)a3;
- (void)setSafeAreaInsetsLandscapeRight:(UIEdgeInsets)a3;
- (void)setSafeAreaInsetsPortrait:(UIEdgeInsets)a3;
- (void)setSafeAreaInsetsPortraitUpsideDown:(UIEdgeInsets)a3;
- (void)setScenePresenterRenderIdentifierForSnapshotting:(unint64_t)a3;
- (void)setScreenBoundsIgnoresSceneOrientation:(BOOL)a3;
- (void)setScreenReferenceDisplayModeStatus:(int64_t)a3;
- (void)setStatusBarAvoidanceFrame:(CGRect)a3;
- (void)setStatusBarDisabled:(BOOL)a3;
- (void)setStatusBarHeight:(double)a3;
- (void)setStatusBarParts:(int64_t)a3;
- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)a3;
- (void)setSystemMinimumMargin:(double)a3;
- (void)setTargetOfEventDeferringEnvironments:(id)a3;
- (void)setUnderLock:(BOOL)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation UIMutableApplicationSceneSettings

- (BOOL)isCapturingContentForAdditionalRenderingDestination
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:44];

  return v3;
}

- (unint64_t)deactivationReasons
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (NSString)persistenceIdentifier
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:29];

  return v3;
}

- (void)setPersistenceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:29];
}

- (BOOL)underLock
{
  v3 = [(FBSSettings *)self otherSettings];
  v4 = [v3 BOOLForSetting:1];

  return v4 | ([(UIMutableApplicationSceneSettings *)self deactivationReasons]>> 30) & 1;
}

- (void)setUnderLock:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:1];
}

- (unint64_t)statusBarStyleOverridesToSuppress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [v5 setObject:v4 forSetting:2];
}

- (void)setDeactivationReasons:(unint64_t)a3
{
  if ((([(UIMutableApplicationSceneSettings *)self deactivationReasons]>> 11) & 1) != ((a3 >> 11) & 1))
  {
    [(UIMutableApplicationSceneSettings *)self setOccluded:(a3 & 0x800) != 0];
  }

  v6 = [(FBSSettings *)self otherSettings];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v6 setObject:v5 forSetting:3];
}

- (int64_t)userInterfaceStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:10];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:10];
}

- (NSNumber)forcedStatusBarStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4];

  return v3;
}

- (void)setForcedStatusBarStyle:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:4];
}

- (BOOL)forcedStatusBarForegroundTransparent
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:11];

  return v3;
}

- (void)setForcedStatusBarForegroundTransparent:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:11];
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

- (void)setPeripheryInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [v7 setObject:v8 forSetting:12];
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

- (void)setStatusBarParts:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:19];
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

- (void)setStatusBarAvoidanceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(FBSSettings *)self otherSettings];
  *v9 = x;
  *&v9[1] = y;
  *&v9[2] = width;
  *&v9[3] = height;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v7 setObject:v8 forSetting:20];
}

- (double)statusBarHeight
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:24];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setStatusBarHeight:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:24];
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

- (void)setDefaultStatusBarHeight:(double)a3 forOrientation:(int64_t)a4
{
  if ((a4 - 1) <= 3)
  {
    v6 = qword_18A67B868[a4 - 1];
    v8 = [(FBSSettings *)self otherSettings];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v8 setObject:v7 forSetting:v6];
  }
}

- (double)systemMinimumMargin
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:14];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setSystemMinimumMargin:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:14];
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

- (void)setSafeAreaInsetsPortrait:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [v7 setObject:v8 forSetting:15];
}

- (double)homeAffordanceOverlayAllowance
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:22];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomeAffordanceOverlayAllowance:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:22];
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

    [(UIMutableApplicationSceneSettings *)self safeAreaInsetsPortrait];
  }

  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)setSafeAreaInsetsLandscapeLeft:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [v7 setObject:v8 forSetting:16];
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
    [(UIMutableApplicationSceneSettings *)self safeAreaInsetsPortrait];
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

- (void)setSafeAreaInsetsPortraitUpsideDown:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [v7 setObject:v8 forSetting:17];
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

    [(UIMutableApplicationSceneSettings *)self safeAreaInsetsPortrait];
  }

  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)setSafeAreaInsetsLandscapeRight:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [v7 setObject:v8 forSetting:18];
}

- (BSCornerRadiusConfiguration)cornerRadiusConfiguration
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:23];

  return v3;
}

- (void)setCornerRadiusConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:23];
}

- (BOOL)deviceOrientationEventsEnabled
{
  v3 = [(UIMutableApplicationSceneSettings *)self interfaceOrientationMode];
  if (v3)
  {
    return v3 == 100;
  }

  v5 = [(FBSSettings *)self otherSettings];
  v6 = [v5 BOOLForSetting:6];

  return v6;
}

- (void)setDeviceOrientationEventsEnabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:6];
}

- (BOOL)canShowAlerts
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:7];

  return v3;
}

- (void)setCanShowAlerts:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:7];
}

- (BOOL)idleModeEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:8];

  return v3;
}

- (void)setIdleModeEnabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:8];
}

- (BOOL)statusBarDisabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:9];

  return v3;
}

- (void)setStatusBarDisabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:9];
}

- (int64_t)deviceOrientation
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:13];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setDeviceOrientation:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:13];
}

- (unint64_t)artworkSubtype
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:21];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setArtworkSubtype:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:21];
}

- (unsigned)hostContextIdentifierForSnapshotting
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:30];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setHostContextIdentifierForSnapshotting:(unsigned int)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  else
  {
    v5 = 0;
  }

  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:30];
}

- (unint64_t)scenePresenterRenderIdentifierForSnapshotting
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:31];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setScenePresenterRenderIdentifierForSnapshotting:(unint64_t)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  }

  else
  {
    v5 = 0;
  }

  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:31];
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

- (void)setAccessibilityContrast:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:32];
}

- (int64_t)pointerLockStatus
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:33];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setPointerLockStatus:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:33];
}

- (int64_t)interfaceOrientationMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:35];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setInterfaceOrientationMode:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:35];
}

- (BOOL)screenBoundsIgnoresSceneOrientation
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:41];

  return v3;
}

- (void)setScreenBoundsIgnoresSceneOrientation:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:41];
}

- (int64_t)screenReferenceDisplayModeStatus
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:38];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setScreenReferenceDisplayModeStatus:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:38];
}

- (BOOL)enhancedWindowingEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:40];

  return v3;
}

- (void)setEnhancedWindowingEnabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:40];
}

- (unint64_t)hostReferenceAngleMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:43];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setHostReferenceAngleMode:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:43];
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

- (void)setAngleFromHostReferenceUprightDirection:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:42];
}

- (NSSet)targetOfEventDeferringEnvironments
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:36];

  v4 = [(_UIEventDeferringEnvironmentsContainer *)v3 environments];

  return v4;
}

- (void)setTargetOfEventDeferringEnvironments:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 && [v4 count])
  {
    v5 = [[_UIEventDeferringEnvironmentsContainer alloc] _initWithEnvironments:v7];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(FBSSettings *)self otherSettings];
  [v6 setObject:v5 forSetting:36];
}

- (BSInterfaceOrientationMapResolving)interfaceOrientationMapResolver
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:37];

  return v3;
}

- (void)setInterfaceOrientationMapResolver:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:37];
}

- (BOOL)inLiveResize
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:39];

  return v3;
}

- (void)setInLiveResize:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:39];
}

- (void)setIsCapturingContentForAdditionalRenderingDestination:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:44];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIApplicationSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end