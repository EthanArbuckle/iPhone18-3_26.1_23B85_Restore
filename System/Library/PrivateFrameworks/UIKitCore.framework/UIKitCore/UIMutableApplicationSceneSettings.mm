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
- (double)defaultStatusBarHeightForOrientation:(int64_t)orientation;
- (double)homeAffordanceOverlayAllowance;
- (double)statusBarHeight;
- (double)systemMinimumMargin;
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)setAccessibilityContrast:(int64_t)contrast;
- (void)setAngleFromHostReferenceUprightDirection:(double)direction;
- (void)setArtworkSubtype:(unint64_t)subtype;
- (void)setCanShowAlerts:(BOOL)alerts;
- (void)setCornerRadiusConfiguration:(id)configuration;
- (void)setDeactivationReasons:(unint64_t)reasons;
- (void)setDefaultStatusBarHeight:(double)height forOrientation:(int64_t)orientation;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setDeviceOrientationEventsEnabled:(BOOL)enabled;
- (void)setEnhancedWindowingEnabled:(BOOL)enabled;
- (void)setForcedStatusBarForegroundTransparent:(BOOL)transparent;
- (void)setForcedStatusBarStyle:(id)style;
- (void)setHomeAffordanceOverlayAllowance:(double)allowance;
- (void)setHostContextIdentifierForSnapshotting:(unsigned int)snapshotting;
- (void)setHostReferenceAngleMode:(unint64_t)mode;
- (void)setIdleModeEnabled:(BOOL)enabled;
- (void)setInLiveResize:(BOOL)resize;
- (void)setInterfaceOrientationMapResolver:(id)resolver;
- (void)setInterfaceOrientationMode:(int64_t)mode;
- (void)setIsCapturingContentForAdditionalRenderingDestination:(BOOL)destination;
- (void)setPeripheryInsets:(UIEdgeInsets)insets;
- (void)setPersistenceIdentifier:(id)identifier;
- (void)setPointerLockStatus:(int64_t)status;
- (void)setSafeAreaInsetsLandscapeLeft:(UIEdgeInsets)left;
- (void)setSafeAreaInsetsLandscapeRight:(UIEdgeInsets)right;
- (void)setSafeAreaInsetsPortrait:(UIEdgeInsets)portrait;
- (void)setSafeAreaInsetsPortraitUpsideDown:(UIEdgeInsets)down;
- (void)setScenePresenterRenderIdentifierForSnapshotting:(unint64_t)snapshotting;
- (void)setScreenBoundsIgnoresSceneOrientation:(BOOL)orientation;
- (void)setScreenReferenceDisplayModeStatus:(int64_t)status;
- (void)setStatusBarAvoidanceFrame:(CGRect)frame;
- (void)setStatusBarDisabled:(BOOL)disabled;
- (void)setStatusBarHeight:(double)height;
- (void)setStatusBarParts:(int64_t)parts;
- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)suppress;
- (void)setSystemMinimumMargin:(double)margin;
- (void)setTargetOfEventDeferringEnvironments:(id)environments;
- (void)setUnderLock:(BOOL)lock;
- (void)setUserInterfaceStyle:(int64_t)style;
@end

@implementation UIMutableApplicationSceneSettings

- (BOOL)isCapturingContentForAdditionalRenderingDestination
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:44];

  return v3;
}

- (unint64_t)deactivationReasons
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSString)persistenceIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:29];

  return v3;
}

- (void)setPersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:identifierCopy forSetting:29];
}

- (BOOL)underLock
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [otherSettings BOOLForSetting:1];

  return v4 | ([(UIMutableApplicationSceneSettings *)self deactivationReasons]>> 30) & 1;
}

- (void)setUnderLock:(BOOL)lock
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:1];
}

- (unint64_t)statusBarStyleOverridesToSuppress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)suppress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:suppress];
  [otherSettings setObject:v4 forSetting:2];
}

- (void)setDeactivationReasons:(unint64_t)reasons
{
  if ((([(UIMutableApplicationSceneSettings *)self deactivationReasons]>> 11) & 1) != ((reasons >> 11) & 1))
  {
    [(UIMutableApplicationSceneSettings *)self setOccluded:(reasons & 0x800) != 0];
  }

  otherSettings = [(FBSSettings *)self otherSettings];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reasons];
  [otherSettings setObject:v5 forSetting:3];
}

- (int64_t)userInterfaceStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:10];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:10];
}

- (NSNumber)forcedStatusBarStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4];

  return v3;
}

- (void)setForcedStatusBarStyle:(id)style
{
  styleCopy = style;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:styleCopy forSetting:4];
}

- (BOOL)forcedStatusBarForegroundTransparent
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:11];

  return v3;
}

- (void)setForcedStatusBarForegroundTransparent:(BOOL)transparent
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:11];
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

- (void)setPeripheryInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [otherSettings setObject:v8 forSetting:12];
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

- (void)setStatusBarParts:(int64_t)parts
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:parts];
  [otherSettings setObject:v4 forSetting:19];
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

- (void)setStatusBarAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v9 = x;
  *&v9[1] = y;
  *&v9[2] = width;
  *&v9[3] = height;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [otherSettings setObject:v8 forSetting:20];
}

- (double)statusBarHeight
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:24];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setStatusBarHeight:(double)height
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  [otherSettings setObject:v4 forSetting:24];
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

- (void)setDefaultStatusBarHeight:(double)height forOrientation:(int64_t)orientation
{
  if ((orientation - 1) <= 3)
  {
    v6 = qword_18A67B868[orientation - 1];
    otherSettings = [(FBSSettings *)self otherSettings];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:height];
    [otherSettings setObject:v7 forSetting:v6];
  }
}

- (double)systemMinimumMargin
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:14];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setSystemMinimumMargin:(double)margin
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:margin];
  [otherSettings setObject:v4 forSetting:14];
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

- (void)setSafeAreaInsetsPortrait:(UIEdgeInsets)portrait
{
  right = portrait.right;
  bottom = portrait.bottom;
  left = portrait.left;
  top = portrait.top;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [otherSettings setObject:v8 forSetting:15];
}

- (double)homeAffordanceOverlayAllowance
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:22];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomeAffordanceOverlayAllowance:(double)allowance
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:allowance];
  [otherSettings setObject:v4 forSetting:22];
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

    [(UIMutableApplicationSceneSettings *)self safeAreaInsetsPortrait];
  }

  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)setSafeAreaInsetsLandscapeLeft:(UIEdgeInsets)left
{
  right = left.right;
  bottom = left.bottom;
  left = left.left;
  top = left.top;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [otherSettings setObject:v8 forSetting:16];
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

- (void)setSafeAreaInsetsPortraitUpsideDown:(UIEdgeInsets)down
{
  right = down.right;
  bottom = down.bottom;
  left = down.left;
  top = down.top;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [otherSettings setObject:v8 forSetting:17];
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

    [(UIMutableApplicationSceneSettings *)self safeAreaInsetsPortrait];
  }

  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)setSafeAreaInsetsLandscapeRight:(UIEdgeInsets)right
{
  right = right.right;
  bottom = right.bottom;
  left = right.left;
  top = right.top;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [otherSettings setObject:v8 forSetting:18];
}

- (BSCornerRadiusConfiguration)cornerRadiusConfiguration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:23];

  return v3;
}

- (void)setCornerRadiusConfiguration:(id)configuration
{
  configurationCopy = configuration;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:configurationCopy forSetting:23];
}

- (BOOL)deviceOrientationEventsEnabled
{
  interfaceOrientationMode = [(UIMutableApplicationSceneSettings *)self interfaceOrientationMode];
  if (interfaceOrientationMode)
  {
    return interfaceOrientationMode == 100;
  }

  otherSettings = [(FBSSettings *)self otherSettings];
  v6 = [otherSettings BOOLForSetting:6];

  return v6;
}

- (void)setDeviceOrientationEventsEnabled:(BOOL)enabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:6];
}

- (BOOL)canShowAlerts
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:7];

  return v3;
}

- (void)setCanShowAlerts:(BOOL)alerts
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:7];
}

- (BOOL)idleModeEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:8];

  return v3;
}

- (void)setIdleModeEnabled:(BOOL)enabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:8];
}

- (BOOL)statusBarDisabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:9];

  return v3;
}

- (void)setStatusBarDisabled:(BOOL)disabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:9];
}

- (int64_t)deviceOrientation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:13];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
  [otherSettings setObject:v4 forSetting:13];
}

- (unint64_t)artworkSubtype
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:21];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setArtworkSubtype:(unint64_t)subtype
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:subtype];
  [otherSettings setObject:v4 forSetting:21];
}

- (unsigned)hostContextIdentifierForSnapshotting
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:30];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setHostContextIdentifierForSnapshotting:(unsigned int)snapshotting
{
  if (snapshotting)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  else
  {
    v5 = 0;
  }

  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:v5 forSetting:30];
}

- (unint64_t)scenePresenterRenderIdentifierForSnapshotting
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:31];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setScenePresenterRenderIdentifierForSnapshotting:(unint64_t)snapshotting
{
  if (snapshotting)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  }

  else
  {
    v5 = 0;
  }

  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:v5 forSetting:31];
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

- (void)setAccessibilityContrast:(int64_t)contrast
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:contrast];
  [otherSettings setObject:v4 forSetting:32];
}

- (int64_t)pointerLockStatus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:33];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setPointerLockStatus:(int64_t)status
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [otherSettings setObject:v4 forSetting:33];
}

- (int64_t)interfaceOrientationMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:35];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setInterfaceOrientationMode:(int64_t)mode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [otherSettings setObject:v4 forSetting:35];
}

- (BOOL)screenBoundsIgnoresSceneOrientation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:41];

  return v3;
}

- (void)setScreenBoundsIgnoresSceneOrientation:(BOOL)orientation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:41];
}

- (int64_t)screenReferenceDisplayModeStatus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:38];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setScreenReferenceDisplayModeStatus:(int64_t)status
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [otherSettings setObject:v4 forSetting:38];
}

- (BOOL)enhancedWindowingEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:40];

  return v3;
}

- (void)setEnhancedWindowingEnabled:(BOOL)enabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:40];
}

- (unint64_t)hostReferenceAngleMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:43];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setHostReferenceAngleMode:(unint64_t)mode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
  [otherSettings setObject:v4 forSetting:43];
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

- (void)setAngleFromHostReferenceUprightDirection:(double)direction
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:direction];
  [otherSettings setObject:v4 forSetting:42];
}

- (NSSet)targetOfEventDeferringEnvironments
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:36];

  environments = [(_UIEventDeferringEnvironmentsContainer *)v3 environments];

  return environments;
}

- (void)setTargetOfEventDeferringEnvironments:(id)environments
{
  environmentsCopy = environments;
  v7 = environmentsCopy;
  if (environmentsCopy && [environmentsCopy count])
  {
    v5 = [[_UIEventDeferringEnvironmentsContainer alloc] _initWithEnvironments:v7];
  }

  else
  {
    v5 = 0;
  }

  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:v5 forSetting:36];
}

- (BSInterfaceOrientationMapResolving)interfaceOrientationMapResolver
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:37];

  return v3;
}

- (void)setInterfaceOrientationMapResolver:(id)resolver
{
  resolverCopy = resolver;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:resolverCopy forSetting:37];
}

- (BOOL)inLiveResize
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:39];

  return v3;
}

- (void)setInLiveResize:(BOOL)resize
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:39];
}

- (void)setIsCapturingContentForAdditionalRenderingDestination:(BOOL)destination
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:44];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIApplicationSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end