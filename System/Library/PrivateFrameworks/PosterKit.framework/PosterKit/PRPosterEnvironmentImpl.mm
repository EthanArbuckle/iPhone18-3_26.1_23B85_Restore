@interface PRPosterEnvironmentImpl
- (BOOL)isAdaptiveTimeDisabled;
- (BOOL)isDepthEffectDisabled;
- (BOOL)isDepthEffectDisabledInConfiguredProperties;
- (BOOL)isFloatingViewSnapshot;
- (BOOL)isPreview;
- (BOOL)isSnapshot;
- (BOOL)isWallpaperObscured;
- (BOOL)showsComplications;
- (BOOL)showsHeaderElements;
- (BOOL)updateFromSceneSettings:(id)settings traitCollection:(id)collection overrides:(id)overrides;
- (CGPoint)userTapLocation;
- (CGRect)contentCutoutBounds;
- (CGRect)floatingObscurableBounds;
- (CGRect)salientContentRectangle;
- (CGRect)screenBounds;
- (CGRect)titleBoundsForLayout:(unint64_t)layout;
- (CGSize)canvasSize;
- (CGSize)desiredContentSize;
- (CGSize)minimumContentSize;
- (NSString)description;
- (NSString)role;
- (PRPosterAmbientEnvironment)ambientEnvironment;
- (PRPosterConfigurableOptions)sourceConfigurableOptions;
- (PRPosterContents)contents;
- (PRPosterEnvironmentImpl)initWithSceneSettings:(id)settings traitCollection:(id)collection targetConfig:(id)config extensionBundleURL:(id)l;
- (PRTimeFontConfiguration)sourceTimeFontConfiguration;
- (UIColor)caseColor;
- (double)devicePitch;
- (double)deviceRoll;
- (double)deviceYaw;
- (id)_targetConfiguredProperties;
- (id)environmentSnapshot;
- (int64_t)mode;
- (int64_t)userInterfaceStyle;
- (unint64_t)effectiveMotionEffectsMode;
- (unint64_t)significantEventsCounter;
- (unint64_t)userTapEventsCounter;
- (void)_appendDescriptionToStream:(id)stream;
- (void)_applyToSceneSettings:(id)settings;
- (void)_lock_hydratePosterContents:(id *)contents sourceConfigurableOptions:(id *)options sourceTitleFontConfiguration:(id *)configuration targetConfigurableProperties:(id *)properties;
- (void)_resetSnapshot;
- (void)deviceMotionRotation;
- (void)invalidate;
- (void)setAppliesCountertransformForRotation:(BOOL)rotation;
- (void)setBacklightProgress:(double)progress;
- (void)setDepthEffectDisabled:(BOOL)disabled;
- (void)setDeviceMotionRotation:(float64x2_t *)rotation;
- (void)setDevicePitch:(double)pitch;
- (void)setDeviceRoll:(double)roll;
- (void)setDeviceYaw:(double)yaw;
- (void)setLinearBacklightProgress:(double)progress;
- (void)setOverrides:(id)overrides;
- (void)setUnlockProgress:(double)progress;
- (void)setWakeSourceIsSwipeToUnlock:(BOOL)unlock;
@end

@implementation PRPosterEnvironmentImpl

- (void)_resetSnapshot
{
  obj = self;
  objc_sync_enter(obj);
  snapshot = obj->_snapshot;
  obj->_snapshot = 0;

  objc_sync_exit(obj);
}

- (id)environmentSnapshot
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  snapshot = selfCopy->_snapshot;
  if (!snapshot)
  {
    v4 = [[_PRPosterEnvironmentSnapshot alloc] initWithEnvironment:selfCopy layoutController:selfCopy->_layoutController];
    v5 = selfCopy->_snapshot;
    selfCopy->_snapshot = v4;

    snapshot = selfCopy->_snapshot;
  }

  v6 = snapshot;
  objc_sync_exit(selfCopy);

  return v6;
}

- (PRPosterAmbientEnvironment)ambientEnvironment
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [PRPosterAmbientEnvironmentImpl alloc];
    traitCollection = [(PRPosterEnvironmentImpl *)self traitCollection];
    v5 = [(PRPosterAmbientEnvironmentImpl *)v3 initWithTraitCollection:traitCollection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPreview
{
  [(FBSSceneSettings *)self->_settings pui_content];

  return PUIRenderingContentIsPreview();
}

- (BOOL)isSnapshot
{
  v3 = NSStringFromSelector(a2);
  pui_isSnapshot = [(FBSSceneSettings *)self->_settings pui_isSnapshot];
  v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];

  if (v5)
  {
    v6 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];
    pui_isSnapshot = [v6 BOOLValue];
  }

  return pui_isSnapshot;
}

- (PRPosterContents)contents
{
  os_unfair_lock_lock(&self->_lock);
  v5 = 0;
  [(PRPosterEnvironmentImpl *)self _lock_hydratePosterContents:&v5 sourceConfigurableOptions:0 sourceTitleFontConfiguration:0 targetConfigurableProperties:0];
  v3 = v5;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)effectiveMotionEffectsMode
{
  effectiveMotionEffectsMode = self->_effectiveMotionEffectsMode;
  v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"effectiveMotionEffectsMode"];

  if (v4)
  {
    v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"effectiveMotionEffectsMode"];
    effectiveMotionEffectsMode = [v5 unsignedIntegerValue];
  }

  return effectiveMotionEffectsMode;
}

- (CGSize)minimumContentSize
{
  v3 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"minimumContentSize"];

  if (v3)
  {
    v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"minimumContentSize"];
    v5 = CGSizeFromString(v4);
    width = v5.width;
    height = v5.height;
  }

  else
  {
    [(PRPosterEnvironmentImpl *)self screenBounds];
    width = v8;
    height = v9;
    if ([(PRPosterEnvironmentImpl *)self effectiveMotionEffectsMode])
    {
      [(UITraitCollection *)self->_traitCollection userInterfaceIdiom];
      PUIPosterParallaxRequiredOverhangForDeviceClass();
      width = width + v10 + v10;
      height = height + v11 + v11;
    }
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGRect)screenBounds
{
  width = self->_screenBounds.size.width;
  height = self->_screenBounds.size.height;
  if (PUIDynamicRotationIsActive() && ([(PRPosterEnvironmentImpl *)self role], v5 = objc_claimAutoreleasedReturnValue(), v6 = PFPosterRoleSupportsDynamicRotation(), v5, v6))
  {
    if (([(FBSSceneSettings *)self->_settings pui_deviceOrientation]- 3) >= 2)
    {
LABEL_4:
      if (height >= width)
      {
        v7 = width;
      }

      else
      {
        v7 = height;
      }

      if (height >= width)
      {
        v8 = height;
      }

      else
      {
        v8 = width;
      }

      goto LABEL_17;
    }
  }

  else
  {
    [(FBSSceneSettings *)self->_settings interfaceOrientation];
    if (!BSInterfaceOrientationIsLandscape())
    {
      goto LABEL_4;
    }
  }

  if (height >= width)
  {
    v7 = height;
  }

  else
  {
    v7 = width;
  }

  if (height >= width)
  {
    v8 = width;
  }

  else
  {
    v8 = height;
  }

LABEL_17:
  v9 = 0.0;
  v10 = 0.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGSize)desiredContentSize
{
  v3 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"desiredContentSize"];

  if (v3)
  {
    v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"desiredContentSize"];
    v5 = CGSizeFromString(v4);
    width = v5.width;
    height = v5.height;
  }

  else
  {
    [(PRPosterEnvironmentImpl *)self screenBounds];
    if (v8 >= v9)
    {
      height = v8;
    }

    else
    {
      height = v9;
    }

    if ([(PRPosterEnvironmentImpl *)self effectiveMotionEffectsMode])
    {
      [(UITraitCollection *)self->_traitCollection userInterfaceIdiom];
      PUIPosterParallaxDesiredOverhangForDeviceClass();
      width = height + v10 + v10;
      height = height + v11 + v11;
    }

    else
    {
      width = height;
    }
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGRect)salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  v7 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"salientContentRectangle"];

  if (v7)
  {
    v8 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"salientContentRectangle"];
    v13 = CGRectFromString(v8);
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
  }

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIColor)caseColor
{
  pr_caseColor = [(FBSSceneSettings *)self->_settings pr_caseColor];
  uIColor = [pr_caseColor UIColor];

  return uIColor;
}

- (int64_t)userInterfaceStyle
{
  traitCollection = [(PRPosterEnvironmentImpl *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

- (CGRect)contentCutoutBounds
{
  if ([(FBSSceneSettings *)self->_settings pui_isComplicationRowConfigured])
  {
    if ([(FBSSceneSettings *)self->_settings pui_isComplicationRowAtBottom])
    {
      v3 = 35;
    }

    else
    {
      v3 = 11;
    }
  }

  else
  {
    v3 = 3;
  }

  [(PRPosterEnvironmentImpl *)self screenBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PREditorElementLayoutController *)self->_layoutController frameForElements:v3 variant:1 withBoundingRect:?];
  MaxY = CGRectGetMaxY(v21);
  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  Width = CGRectGetWidth(v22);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v14 = CGRectGetHeight(v23) - MaxY;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v15 = CGRectGetWidth(v24);
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  Height = CGRectGetHeight(v25);
  v17 = MaxY / Height;
  v18 = Width / v15;
  v19 = v14 / Height;
  v20 = 0.0 / v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v20;
  return result;
}

- (CGRect)floatingObscurableBounds
{
  [(PRPosterEnvironmentImpl *)self screenBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PREditorElementLayoutController *)self->_layoutController frameForElements:1 variant:1 withBoundingRect:?];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v15 = MinY + CGRectGetHeight(v26) * 0.75;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v16 = CGRectGetWidth(v27);
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v17 = CGRectGetHeight(v28) - v15;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v18 = CGRectGetWidth(v29);
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  v19 = CGRectGetHeight(v30);
  v20 = v15 / v19;
  v21 = v16 / v18;
  v22 = v17 / v19;
  v23 = 0.0 / v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v23;
  return result;
}

- (unint64_t)significantEventsCounter
{
  v3 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"significantEventsCounter"];

  if (v3)
  {
    v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"significantEventsCounter"];
    unsignedIntegerValue = [v4 unsignedIntegerValue];

    return unsignedIntegerValue;
  }

  else
  {
    settings = self->_settings;

    return [(FBSSceneSettings *)settings pui_significantEventsCounter];
  }
}

- (NSString)role
{
  contents = [(PRPosterEnvironmentImpl *)self contents];
  role = [contents role];

  return role;
}

- (PRTimeFontConfiguration)sourceTimeFontConfiguration
{
  os_unfair_lock_lock(&self->_lock);
  v5 = 0;
  [(PRPosterEnvironmentImpl *)self _lock_hydratePosterContents:0 sourceConfigurableOptions:0 sourceTitleFontConfiguration:&v5 targetConfigurableProperties:0];
  v3 = v5;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)deviceRoll
{
  deviceRoll = self->_deviceRoll;
  v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"deviceMotionRotation"];

  if (v4)
  {
    [(PRPosterEnvironmentImpl *)self deviceMotionRotation];
    v5 = vmuld_lane_f64(0.0, 0, 1);
    *&v5 = v5 + 0.0 * 0.0 + v5 + 0.0 * 0.0;
    v6 = (vmuld_lane_f64(0.0, 0, 1) + 0.0 * 0.0) * -2.0 + 1.0;
    return atan2f(*&v5, v6);
  }

  return deviceRoll;
}

- (double)devicePitch
{
  devicePitch = self->_devicePitch;
  v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"deviceMotionRotation"];

  if (v4)
  {
    [(PRPosterEnvironmentImpl *)self deviceMotionRotation];
    v5 = vmuld_lane_f64(0.0, 0, 1);
    return atan2(v5 + 0.0 * 0.0 + v5 + 0.0 * 0.0, (v5 + 0.0 * 0.0) * -2.0 + 1.0);
  }

  return devicePitch;
}

- (double)deviceYaw
{
  deviceYaw = self->_deviceYaw;
  v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"deviceMotionRotation"];

  if (v4)
  {
    [(PRPosterEnvironmentImpl *)self deviceMotionRotation];
    _V1.D[1] = 0;
    _D2 = 0;
    __asm { FMLA            D0, D2, V1.D[1] }

    v12 = _D0 + _D0;
    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    if (v12 < -1.0)
    {
      v12 = -1.0;
    }

    return asin(v12);
  }

  return deviceYaw;
}

- (void)deviceMotionRotation
{
  v3 = *(self + 288);
  *a2 = *(self + 272);
  a2[1] = v3;
  v4 = [*(self + 88) objectForKey:@"deviceMotionRotation"];

  if (v4)
  {
    v5 = MEMORY[0x1E69C5110];
    v6 = [*(self + 88) objectForKey:@"deviceMotionRotation"];
    [v5 rotationFromSerializedRepresentation:v6];
  }
}

- (id)_targetConfiguredProperties
{
  os_unfair_lock_lock(&self->_lock);
  lock_targetConfiguredProperties = self->_lock_targetConfiguredProperties;
  if (!lock_targetConfiguredProperties)
  {
    obj = 0;
    [(PRPosterEnvironmentImpl *)self _lock_hydratePosterContents:0 sourceConfigurableOptions:0 sourceTitleFontConfiguration:0 targetConfigurableProperties:&obj];
    objc_storeStrong(&self->_lock_targetConfiguredProperties, obj);
    lock_targetConfiguredProperties = self->_lock_targetConfiguredProperties;
  }

  v4 = lock_targetConfiguredProperties;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (PRPosterConfigurableOptions)sourceConfigurableOptions
{
  os_unfair_lock_lock(&self->_lock);
  v5 = 0;
  [(PRPosterEnvironmentImpl *)self _lock_hydratePosterContents:0 sourceConfigurableOptions:&v5 sourceTitleFontConfiguration:0 targetConfigurableProperties:0];
  v3 = v5;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)showsComplications
{
  v3 = NSStringFromSelector(a2);
  showsComplications = self->_showsComplications;
  v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];

  if (v5)
  {
    showsComplications = [(NSDictionary *)self->_environmentOverrides bs_BOOLForKey:v3];
  }

  return showsComplications & 1;
}

- (BOOL)showsHeaderElements
{
  v3 = NSStringFromSelector(a2);
  showsHeaderElements = self->_showsHeaderElements;
  v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];

  if (v5)
  {
    showsHeaderElements = [(NSDictionary *)self->_environmentOverrides bs_BOOLForKey:v3];
  }

  return showsHeaderElements & 1;
}

- (CGPoint)userTapLocation
{
  x = self->_userTapLocation.x;
  y = self->_userTapLocation.y;
  v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"userTapLocation"];

  if (v5)
  {
    v6 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"userTapLocation"];
    v7 = CGPointFromString(v6);
    x = v7.x;
    y = v7.y;
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (unint64_t)userTapEventsCounter
{
  userTapEventsCounter = self->_userTapEventsCounter;
  v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"userTapEventsCounter"];

  if (v4)
  {
    v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"userTapEventsCounter"];
    userTapEventsCounter = [v5 unsignedIntegerValue];
  }

  return userTapEventsCounter;
}

- (BOOL)isWallpaperObscured
{
  wallpaperObscured = self->_wallpaperObscured;
  v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"wallpaperObscured"];

  if (v4)
  {
    v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"wallpaperObscured"];
    wallpaperObscured = [v5 BOOLValue];
  }

  return wallpaperObscured;
}

- (BOOL)isDepthEffectDisabled
{
  depthEffectDisabled = self->_depthEffectDisabled;
  v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"depthEffectDisabled"];

  if (v4)
  {
    v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"depthEffectDisabled"];
    depthEffectDisabled = [v5 BOOLValue];
  }

  return depthEffectDisabled;
}

- (PRPosterEnvironmentImpl)initWithSceneSettings:(id)settings traitCollection:(id)collection targetConfig:(id)config extensionBundleURL:(id)l
{
  settingsCopy = settings;
  collectionCopy = collection;
  configCopy = config;
  lCopy = l;
  v24.receiver = self;
  v24.super_class = PRPosterEnvironmentImpl;
  v14 = [(PRPosterEnvironmentImpl *)&v24 init];
  if (v14)
  {
    v15 = [settingsCopy copy];
    settings = v14->_settings;
    v14->_settings = v15;

    v17 = [collectionCopy copy];
    traitCollection = v14->_traitCollection;
    v14->_traitCollection = v17;

    v19 = [lCopy copy];
    bundleURL = v14->_bundleURL;
    v14->_bundleURL = v19;

    objc_storeStrong(&v14->_targetConfig, config);
    v14->_lock._os_unfair_lock_opaque = 0;
    luminance = [(PRPosterEnvironmentImpl *)v14 luminance];
    v22 = 0.0;
    if (luminance == 2)
    {
      v22 = 1.0;
    }

    v14->_backlightProgress = v22;
    v14->_linearBacklightProgress = v22;
    v14->_depthEffectDisabled = [(PRPosterEnvironmentImpl *)v14 isDepthEffectDisabledInConfiguredProperties];
    *v14->_anon_110 = SPRotation3DIdentity_0;
    *&v14->_anon_110[16] = unk_1A8BF7D30;
    [(PRPosterEnvironmentImpl *)v14 updateFromSceneSettings:settingsCopy traitCollection:collectionCopy overrides:MEMORY[0x1E695E0F8]];
  }

  return v14;
}

- (void)setOverrides:(id)overrides
{
  if (overrides)
  {
    overridesCopy = overrides;
  }

  else
  {
    overridesCopy = MEMORY[0x1E695E0F8];
  }

  [(PRPosterEnvironmentImpl *)self updateFromSceneSettings:self->_settings traitCollection:self->_traitCollection overrides:overridesCopy];
}

- (BOOL)updateFromSceneSettings:(id)settings traitCollection:(id)collection overrides:(id)overrides
{
  settingsCopy = settings;
  collectionCopy = collection;
  overridesCopy = overrides;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = BSEqualObjects();
  if ((v12 & 1) == 0)
  {
    v13 = [settingsCopy copy];
    settings = selfCopy->_settings;
    selfCopy->_settings = v13;
  }

  if (BSEqualObjects())
  {
    v15 = v12 ^ 1;
  }

  else
  {
    v16 = [collectionCopy copy];
    traitCollection = selfCopy->_traitCollection;
    selfCopy->_traitCollection = v16;

    v15 = 1;
  }

  if (BSEqualObjects())
  {
    if (!v15)
    {
      v18 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v19 = [overridesCopy copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&selfCopy->_environmentOverrides, v21);
  }

  [settingsCopy pr_unlockProgress];
  selfCopy->_unlockProgress = v22;
  selfCopy->_effectiveMotionEffectsMode = [settingsCopy pr_effectiveMotionEffectsMode];
  selfCopy->_wakeSourceIsSwipeToUnlock = [settingsCopy pr_wakeSourceIsSwipeToUnlock];
  v23 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:selfCopy];
  layoutController = selfCopy->_layoutController;
  selfCopy->_layoutController = v23;

  selfCopy->_boundingShape = PRPosterBoundingShapeFromPUIPosterBoundingShape([settingsCopy pui_posterBoundingShape]);
  selfCopy->_appliesCountertransformForRotation = [settingsCopy pr_appliesCountertransformForRotation];
  [settingsCopy pui_salientContentRectangle];
  selfCopy->_salientContentRectangle.origin.x = v25;
  selfCopy->_salientContentRectangle.origin.y = v26;
  selfCopy->_salientContentRectangle.size.width = v27;
  selfCopy->_salientContentRectangle.size.height = v28;
  pui_contentOcclusionRectangles = [settingsCopy pui_contentOcclusionRectangles];
  if (pui_contentOcclusionRectangles)
  {
    v30 = [PRPosterContentOcclusionRectSet alloc];
    pui_contentOcclusionRectangles2 = [settingsCopy pui_contentOcclusionRectangles];
    allRects = [pui_contentOcclusionRectangles2 allRects];
    v33 = [(PRPosterContentOcclusionRectSet *)v30 initWithNameToRectMap:allRects];
    contentOcclusionRectangles = selfCopy->_contentOcclusionRectangles;
    selfCopy->_contentOcclusionRectangles = v33;
  }

  else
  {
    pui_contentOcclusionRectangles2 = selfCopy->_contentOcclusionRectangles;
    selfCopy->_contentOcclusionRectangles = 0;
  }

  [settingsCopy frame];
  selfCopy->_canvasSize.width = v35;
  selfCopy->_canvasSize.height = v36;
  [settingsCopy pr_deviceMotionUpdateInterval];
  selfCopy->_deviceMotionUpdateInterval = v37;
  selfCopy->_showsHeaderElements = [settingsCopy pui_showsHeaderElements];
  selfCopy->_showsComplications = [settingsCopy pui_showsComplications];
  [settingsCopy pui_userTapLocation];
  selfCopy->_userTapLocation.x = v38;
  selfCopy->_userTapLocation.y = v39;
  selfCopy->_userTapEventsCounter = [settingsCopy pui_userTapEventsCounter];
  selfCopy->_wallpaperObscured = [settingsCopy pui_isWallpaperObscured];
  [settingsCopy bounds];
  selfCopy->_screenBounds.origin.x = v40;
  selfCopy->_screenBounds.origin.y = v41;
  selfCopy->_screenBounds.size.width = v42;
  selfCopy->_screenBounds.size.height = v43;
  os_unfair_lock_lock(&selfCopy->_lock);
  _path = [(PRPosterContentsInternal *)selfCopy->_lock_sourceContents _path];
  if (_path)
  {
    pui_posterContents = [(FBSSceneSettings *)selfCopy->_settings pui_posterContents];
    if ((BSEqualObjects() & 1) == 0)
    {
      lock_sourceContents = selfCopy->_lock_sourceContents;
      selfCopy->_lock_sourceContents = 0;

      lock_sourceConfigurableOptions = selfCopy->_lock_sourceConfigurableOptions;
      selfCopy->_lock_sourceConfigurableOptions = 0;

      lock_targetConfiguredProperties = selfCopy->_lock_targetConfiguredProperties;
      selfCopy->_lock_targetConfiguredProperties = 0;

      lock_sourceTitleFontConfiguration = selfCopy->_lock_sourceTitleFontConfiguration;
      selfCopy->_lock_sourceTitleFontConfiguration = 0;
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v50 = [[_PRPosterEnvironmentSnapshot alloc] initWithEnvironment:selfCopy layoutController:selfCopy->_layoutController];
  snapshot = selfCopy->_snapshot;
  selfCopy->_snapshot = v50;

  v18 = 1;
LABEL_21:
  objc_sync_exit(selfCopy);

  return v18;
}

- (CGRect)titleBoundsForLayout:(unint64_t)layout
{
  [(PRPosterEnvironmentImpl *)self screenBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PREditorElementLayoutController *)self->_layoutController frameAttributesForElements:1 variant:1 titleLayout:layout withBoundingRect:?];
  [v13 rect];
  v29 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  Width = CGRectGetWidth(v30);
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  Height = CGRectGetHeight(v31);
  v23 = v16 / Height;
  v24 = v20 / Height;

  v25 = v29 / Width;
  v26 = v23;
  v27 = v18 / Width;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)isAdaptiveTimeDisabled
{
  v3 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"isAdaptiveTimeDisabled"];

  if (v3)
  {
    v4 = [(NSDictionary *)self->_environmentOverrides objectForKey:@"isAdaptiveTimeDisabled"];
    bOOLValue = [v4 BOOLValue];

    return bOOLValue;
  }

  else
  {
    settings = self->_settings;

    return [(FBSSceneSettings *)settings pui_isAdaptiveTimeDisabled];
  }
}

- (BOOL)isDepthEffectDisabledInConfiguredProperties
{
  targetConfiguredProperties = [(PRPosterEnvironmentImpl *)self targetConfiguredProperties];
  v3 = targetConfiguredProperties;
  if (targetConfiguredProperties)
  {
    renderingConfiguration = [targetConfiguredProperties renderingConfiguration];
    isDepthEffectDisabled = [renderingConfiguration isDepthEffectDisabled];
  }

  else
  {
    isDepthEffectDisabled = 0;
  }

  return isDepthEffectDisabled;
}

- (void)setDepthEffectDisabled:(BOOL)disabled
{
  if ((BSEqualBools() & 1) == 0)
  {
    self->_depthEffectDisabled = disabled;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setBacklightProgress:(double)progress
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_backlightProgress = progress;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setLinearBacklightProgress:(double)progress
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_linearBacklightProgress = progress;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setUnlockProgress:(double)progress
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_unlockProgress = progress;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setDeviceRoll:(double)roll
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_deviceRoll = roll;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setDevicePitch:(double)pitch
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_devicePitch = pitch;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setDeviceYaw:(double)yaw
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_deviceYaw = yaw;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setDeviceMotionRotation:(float64x2_t *)rotation
{
  v3 = *(self + 17);
  v4 = *(self + 18);
  v5 = rotation[1];
  v6 = vandq_s8(vceqq_f64(v3, *rotation), vceqq_f64(v4, v5));
  if ((vandq_s8(v6, vdupq_laneq_s64(v6, 1)).u64[0] & 0x8000000000000000) == 0)
  {
    v7 = vandq_s8(vceqq_f64(v3, vnegq_f64(*rotation)), vceqq_f64(v4, vnegq_f64(v5)));
    if ((vandq_s8(v7, vdupq_laneq_s64(v7, 1)).u64[0] & 0x8000000000000000) == 0)
    {
      v8 = rotation[1];
      *(self + 17) = *rotation;
      *(self + 18) = v8;
      return [self _resetSnapshot];
    }
  }

  return self;
}

- (void)setWakeSourceIsSwipeToUnlock:(BOOL)unlock
{
  if (self->_wakeSourceIsSwipeToUnlock != unlock)
  {
    self->_wakeSourceIsSwipeToUnlock = unlock;
    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setAppliesCountertransformForRotation:(BOOL)rotation
{
  if (self->_appliesCountertransformForRotation != rotation)
  {
    self->_appliesCountertransformForRotation = rotation;
    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (BOOL)isFloatingViewSnapshot
{
  v3 = NSStringFromSelector(a2);
  pui_isFloatingLayerSnapshot = [(FBSSceneSettings *)self->_settings pui_isFloatingLayerSnapshot];
  v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];

  if (v5)
  {
    v6 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];
    pui_isFloatingLayerSnapshot = [v6 BOOLValue];
  }

  return pui_isFloatingLayerSnapshot;
}

- (void)_lock_hydratePosterContents:(id *)contents sourceConfigurableOptions:(id *)options sourceTitleFontConfiguration:(id *)configuration targetConfigurableProperties:(id *)properties
{
  pui_posterContents = [(FBSSceneSettings *)self->_settings pui_posterContents];
  identity = [pui_posterContents identity];
  pr_posterConfigurableOptions = [(FBSSceneSettings *)self->_settings pr_posterConfigurableOptions];
  role = [identity role];
  contentsCopy = contents;
  if (([role isEqualToString:*MEMORY[0x1E69C5220]] & 1) != 0 || objc_msgSend(role, "isEqualToString:", *MEMORY[0x1E69C5218]))
  {
    optionsCopy2 = options;
    pr_posterConfiguredProperties = [(FBSSceneSettings *)self->_settings pr_posterConfiguredProperties];
    renderingConfiguration = [pr_posterConfiguredProperties renderingConfiguration];

    v16 = [PRPosterConfiguredProperties alloc];
    pr_posterTitleStyleConfiguration = [(FBSSceneSettings *)self->_settings pr_posterTitleStyleConfiguration];
    v62 = [(PRPosterConfiguredProperties *)v16 initWithTitleStyleConfiguration:pr_posterTitleStyleConfiguration focusConfiguration:0 complicationLayout:0 renderingConfiguration:renderingConfiguration homeScreenConfiguration:0 colorVariationsConfiguration:0 quickActionsConfiguration:0 suggestionMetadata:0 otherMetadata:0 userInfo:0];
  }

  else
  {
    optionsCopy2 = options;
    if ([role isEqualToString:*MEMORY[0x1E69C5208]])
    {
      v30 = [PRPosterConfiguredProperties alloc];
      pr_posterAmbientConfiguration = [(FBSSceneSettings *)self->_settings pr_posterAmbientConfiguration];
      v62 = [(PRPosterConfiguredProperties *)v30 initWithAmbientConfiguration:pr_posterAmbientConfiguration widgetLayout:0 otherMetadata:0 userInfo:0];
    }

    else
    {
      v62 = [PRPosterConfiguredProperties defaultConfiguredPropertiesForRole:role];
    }
  }

  type = [identity type];
  v19 = type;
  if (self->_lock_sourceContents)
  {
    goto LABEL_5;
  }

  v24 = type - 1;
  _path = [0 _path];
  v26 = _path;
  if (v24 <= 2)
  {
    v27 = [_path isEqual:pui_posterContents];

    if (v27)
    {
      goto LABEL_5;
    }

    if (v19 == 3)
    {
      configurationCopy2 = configuration;
      v28 = [[PRPosterConfiguration alloc] _initWithPath:pui_posterContents];
      lock_sourceContents = self->_lock_sourceContents;
      self->_lock_sourceContents = v28;

      p_lock_sourceConfigurableOptions = &self->_lock_sourceConfigurableOptions;
LABEL_13:
      v22 = contentsCopy;
      goto LABEL_23;
    }

    v57 = [[PRPosterDescriptor alloc] _initWithPath:pui_posterContents];
    v36 = self->_lock_sourceContents;
    self->_lock_sourceContents = v57;
LABEL_46:

    goto LABEL_5;
  }

  serverIdentity = [_path serverIdentity];

  if (serverIdentity)
  {
    v33 = self->_lock_sourceContents;
    self->_lock_sourceContents = 0;
  }

  if (!self->_lock_sourceContents)
  {
    v34 = MEMORY[0x1E69C5178];
    role2 = [identity role];
    v36 = [v34 temporaryPathForRole:role2];

    v37 = [[PRPosterConfiguration alloc] _initWithPath:v36];
    v38 = self->_lock_sourceContents;
    self->_lock_sourceContents = v37;

    [v36 invalidate];
    goto LABEL_46;
  }

LABEL_5:
  configurationCopy2 = configuration;
  p_lock_sourceConfigurableOptions = &self->_lock_sourceConfigurableOptions;
  if (self->_lock_sourceConfigurableOptions || v19 == 3)
  {
    goto LABEL_13;
  }

  v22 = contentsCopy;
  if (pr_posterConfigurableOptions)
  {
    v23 = pr_posterConfigurableOptions;
  }

  else
  {
    v23 = [(PRPosterContentsInternal *)self->_lock_sourceContents loadConfigurableOptionsWithError:0];
  }

  v39 = *p_lock_sourceConfigurableOptions;
  *p_lock_sourceConfigurableOptions = v23;

  if (!*p_lock_sourceConfigurableOptions)
  {
    v40 = [PRPosterConfigurableOptions alloc];
    v41 = [(PRPosterConfigurableOptions *)v40 initWithDisplayNameLocalizationKey:0 ambientSupportedDataLayout:0 preferredTimeFontConfigurations:MEMORY[0x1E695E0F0] preferredTitleColors:MEMORY[0x1E695E0F0] luminance:0 preferredHomeScreenConfiguration:0 preferredRenderingConfiguration:0.5];
    v42 = *p_lock_sourceConfigurableOptions;
    *p_lock_sourceConfigurableOptions = v41;
  }

LABEL_23:
  if (!self->_lock_sourceTitleFontConfiguration && self->_bundleURL)
  {
    if (!v62)
    {
      v49 = [PRTimeFontConfiguration alloc];
      v50 = MEMORY[0x1E69DB878];
      [identity role];
      v58 = optionsCopy2;
      v52 = v51 = v22;
      v53 = [v50 pr_defaultTimeFontIdentifierForRole:v52];
      v54 = [(PRTimeFontConfiguration *)v49 initWithTimeFontIdentifier:v53];
      lock_sourceTitleFontConfiguration = self->_lock_sourceTitleFontConfiguration;
      self->_lock_sourceTitleFontConfiguration = v54;

      v22 = v51;
      optionsCopy2 = v58;
      p_lock_targetConfiguredProperties = &self->_lock_targetConfiguredProperties;
      if (self->_lock_targetConfiguredProperties)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    titleStyleConfiguration = [(PRPosterConfiguredProperties *)v62 titleStyleConfiguration];
    timeFontConfiguration = [titleStyleConfiguration timeFontConfiguration];
    v47 = [timeFontConfiguration timeFontConfigurationWithExtensionBundleURL:self->_bundleURL];
    v48 = self->_lock_sourceTitleFontConfiguration;
    self->_lock_sourceTitleFontConfiguration = v47;
  }

  p_lock_targetConfiguredProperties = &self->_lock_targetConfiguredProperties;
  if (self->_lock_targetConfiguredProperties)
  {
    goto LABEL_34;
  }

  if (!v62)
  {
LABEL_32:
    v44 = objc_opt_new();
    goto LABEL_33;
  }

  v44 = [(PRPosterConfiguredProperties *)v62 mutableCopy];
LABEL_33:
  v56 = *p_lock_targetConfiguredProperties;
  *p_lock_targetConfiguredProperties = v44;

LABEL_34:
  if (v22)
  {
    *v22 = self->_lock_sourceContents;
  }

  if (optionsCopy2)
  {
    *optionsCopy2 = *p_lock_sourceConfigurableOptions;
  }

  if (configurationCopy2)
  {
    *configurationCopy2 = self->_lock_sourceTitleFontConfiguration;
  }

  if (properties)
  {
    *properties = *p_lock_targetConfiguredProperties;
  }
}

- (void)_applyToSceneSettings:(id)settings
{
  settings = self->_settings;
  settingsCopy = settings;
  pr_caseColor = [(FBSSceneSettings *)settings pr_caseColor];
  [settingsCopy pr_setCaseColor:pr_caseColor];

  [settingsCopy pui_setUserInterfaceStyle:{-[FBSSceneSettings pui_userInterfaceStyle](self->_settings, "pui_userInterfaceStyle")}];
  [settingsCopy pr_setEffectiveMotionEffectsMode:{-[FBSSceneSettings pr_effectiveMotionEffectsMode](self->_settings, "pr_effectiveMotionEffectsMode")}];
  [settingsCopy pui_setMode:{-[FBSSceneSettings pui_mode](self->_settings, "pui_mode")}];
  [(FBSSceneSettings *)self->_settings pr_unlockProgress];
  [settingsCopy pr_setUnlockProgress:?];
  [settingsCopy pui_setIdle:{-[FBSSceneSettings pui_isIdle](self->_settings, "pui_isIdle")}];
  [settingsCopy pui_setShowingIdealizedTime:{-[FBSSceneSettings pui_isShowingIdealizedTime](self->_settings, "pui_isShowingIdealizedTime")}];
  [settingsCopy pui_setEditorPreview:{-[FBSSceneSettings pui_isEditorPreview](self->_settings, "pui_isEditorPreview")}];
  [settingsCopy pui_setShowsComplications:{-[FBSSceneSettings pui_showsComplications](self->_settings, "pui_showsComplications")}];
  [settingsCopy pui_setShowsHeaderElements:{-[FBSSceneSettings pui_showsHeaderElements](self->_settings, "pui_showsHeaderElements")}];

  [(PRPosterEnvironmentImpl *)self _resetSnapshot];
}

- (void)_appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  context = [(PRPosterEnvironmentImpl *)self context];
  v5 = [streamCopy appendObject:context withName:@"environmentContext"];

  caseColor = [(PRPosterEnvironmentImpl *)self caseColor];
  v7 = [streamCopy appendObject:caseColor withName:@"caseColor" skipIfNil:1];

  traitCollection = [(PRPosterEnvironmentImpl *)self traitCollection];
  [traitCollection userInterfaceStyle];
  v9 = UIApplicationSceneStringForUserInterfaceStyle();
  v10 = [streamCopy appendObject:v9 withName:@"uiStyle"];

  v11 = NSStringFromPRRenderingMode([(PRPosterEnvironmentImpl *)self mode]);
  v12 = [streamCopy appendObject:v11 withName:@"mode"];

  [(PRPosterEnvironmentImpl *)self luminance];
  v13 = NSStringFromBLSAdjustedLuminance();
  v14 = [streamCopy appendObject:v13 withName:@"luminance"];

  v15 = [streamCopy appendBool:-[PRPosterEnvironmentImpl isDepthEffectDisallowed](self withName:"isDepthEffectDisallowed") ifEqualTo:{@"depthEffectDisallowed", 1}];
  v16 = [streamCopy appendBool:-[PRPosterEnvironmentImpl isDepthEffectDisabled](self withName:"isDepthEffectDisabled") ifEqualTo:{@"depthEffectDisabled", 1}];
  [(PRPosterEnvironmentImpl *)self unlockProgress];
  v17 = [streamCopy appendFloat:@"unlockProgress" withName:3 decimalPrecision:?];
  v18 = [streamCopy appendInteger:-[PRPosterEnvironmentImpl effectiveMotionEffectsMode](self withName:{"effectiveMotionEffectsMode"), @"effectiveMotionEffectsMode"}];
  [(PRPosterEnvironmentImpl *)self deviceRoll];
  v19 = [streamCopy appendFloat:@"deviceRoll" withName:2 decimalPrecision:?];
  [(PRPosterEnvironmentImpl *)self devicePitch];
  v20 = [streamCopy appendFloat:@"devicePitch" withName:2 decimalPrecision:?];
  [(PRPosterEnvironmentImpl *)self deviceYaw];
  v21 = [streamCopy appendFloat:@"deviceYaw" withName:2 decimalPrecision:?];
  [(PRPosterEnvironmentImpl *)self backlightProgress];
  v22 = [streamCopy appendFloat:@"backlightProgress" withName:3 decimalPrecision:?];
  v23 = [streamCopy appendBool:-[PRPosterEnvironmentImpl wakeSourceIsSwipeToUnlock](self withName:{"wakeSourceIsSwipeToUnlock"), @"wakeSourceIsSwipeToUnlock"}];
  v24 = [streamCopy appendUnsignedInteger:-[PRPosterEnvironmentImpl significantEventsCounter](self withName:{"significantEventsCounter"), @"significantEventsCounter"}];
  v25 = [streamCopy appendBool:-[PRPosterEnvironmentImpl isIdle](self withName:"isIdle") ifEqualTo:{@"idle", 1}];
  overrides = [(PRPosterEnvironmentImpl *)self overrides];
  v27 = [streamCopy appendBool:objc_msgSend(overrides withName:{"count") != 0, @"envrionmentOverridesActive"}];
}

- (int64_t)mode
{
  context = [(PRPosterEnvironmentImpl *)self context];
  mode = [context mode];

  return mode;
}

- (void)invalidate
{
  settings = self->_settings;
  self->_settings = 0;

  traitCollection = self->_traitCollection;
  self->_traitCollection = 0;

  bundleURL = self->_bundleURL;
  self->_bundleURL = 0;

  targetConfig = self->_targetConfig;
  self->_targetConfig = 0;

  os_unfair_lock_lock(&self->_lock);
  lock_sourceContents = self->_lock_sourceContents;
  self->_lock_sourceContents = 0;

  lock_sourceConfigurableOptions = self->_lock_sourceConfigurableOptions;
  self->_lock_sourceConfigurableOptions = 0;

  lock_sourceTitleFontConfiguration = self->_lock_sourceTitleFontConfiguration;
  self->_lock_sourceTitleFontConfiguration = 0;

  lock_targetConfiguredProperties = self->_lock_targetConfiguredProperties;
  self->_lock_targetConfiguredProperties = 0;

  os_unfair_lock_unlock(&self->_lock);
  layoutController = self->_layoutController;
  self->_layoutController = 0;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __38__PRPosterEnvironmentImpl_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

void __38__PRPosterEnvironmentImpl_description__block_invoke(int8x16_t *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__PRPosterEnvironmentImpl_description__block_invoke_2;
  v2[3] = &unk_1E7843070;
  v1 = a1[2];
  v3 = vextq_s8(v1, v1, 8uLL);
  [v1.i64[0] appendBodySectionWithName:0 block:v2];
}

@end