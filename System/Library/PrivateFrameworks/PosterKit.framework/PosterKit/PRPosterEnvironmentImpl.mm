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
- (BOOL)updateFromSceneSettings:(id)a3 traitCollection:(id)a4 overrides:(id)a5;
- (CGPoint)userTapLocation;
- (CGRect)contentCutoutBounds;
- (CGRect)floatingObscurableBounds;
- (CGRect)salientContentRectangle;
- (CGRect)screenBounds;
- (CGRect)titleBoundsForLayout:(unint64_t)a3;
- (CGSize)canvasSize;
- (CGSize)desiredContentSize;
- (CGSize)minimumContentSize;
- (NSString)description;
- (NSString)role;
- (PRPosterAmbientEnvironment)ambientEnvironment;
- (PRPosterConfigurableOptions)sourceConfigurableOptions;
- (PRPosterContents)contents;
- (PRPosterEnvironmentImpl)initWithSceneSettings:(id)a3 traitCollection:(id)a4 targetConfig:(id)a5 extensionBundleURL:(id)a6;
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
- (void)_appendDescriptionToStream:(id)a3;
- (void)_applyToSceneSettings:(id)a3;
- (void)_lock_hydratePosterContents:(id *)a3 sourceConfigurableOptions:(id *)a4 sourceTitleFontConfiguration:(id *)a5 targetConfigurableProperties:(id *)a6;
- (void)_resetSnapshot;
- (void)deviceMotionRotation;
- (void)invalidate;
- (void)setAppliesCountertransformForRotation:(BOOL)a3;
- (void)setBacklightProgress:(double)a3;
- (void)setDepthEffectDisabled:(BOOL)a3;
- (void)setDeviceMotionRotation:(float64x2_t *)a3;
- (void)setDevicePitch:(double)a3;
- (void)setDeviceRoll:(double)a3;
- (void)setDeviceYaw:(double)a3;
- (void)setLinearBacklightProgress:(double)a3;
- (void)setOverrides:(id)a3;
- (void)setUnlockProgress:(double)a3;
- (void)setWakeSourceIsSwipeToUnlock:(BOOL)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  snapshot = v2->_snapshot;
  if (!snapshot)
  {
    v4 = [[_PRPosterEnvironmentSnapshot alloc] initWithEnvironment:v2 layoutController:v2->_layoutController];
    v5 = v2->_snapshot;
    v2->_snapshot = v4;

    snapshot = v2->_snapshot;
  }

  v6 = snapshot;
  objc_sync_exit(v2);

  return v6;
}

- (PRPosterAmbientEnvironment)ambientEnvironment
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [PRPosterAmbientEnvironmentImpl alloc];
    v4 = [(PRPosterEnvironmentImpl *)self traitCollection];
    v5 = [(PRPosterAmbientEnvironmentImpl *)v3 initWithTraitCollection:v4];
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
  v4 = [(FBSSceneSettings *)self->_settings pui_isSnapshot];
  v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];

  if (v5)
  {
    v6 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];
    v4 = [v6 BOOLValue];
  }

  return v4;
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
  v2 = [(FBSSceneSettings *)self->_settings pr_caseColor];
  v3 = [v2 UIColor];

  return v3;
}

- (int64_t)userInterfaceStyle
{
  v2 = [(PRPosterEnvironmentImpl *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  return v3;
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
    v5 = [v4 unsignedIntegerValue];

    return v5;
  }

  else
  {
    settings = self->_settings;

    return [(FBSSceneSettings *)settings pui_significantEventsCounter];
  }
}

- (NSString)role
{
  v2 = [(PRPosterEnvironmentImpl *)self contents];
  v3 = [v2 role];

  return v3;
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
  v3 = *(a1 + 288);
  *a2 = *(a1 + 272);
  a2[1] = v3;
  v4 = [*(a1 + 88) objectForKey:@"deviceMotionRotation"];

  if (v4)
  {
    v5 = MEMORY[0x1E69C5110];
    v6 = [*(a1 + 88) objectForKey:@"deviceMotionRotation"];
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

- (PRPosterEnvironmentImpl)initWithSceneSettings:(id)a3 traitCollection:(id)a4 targetConfig:(id)a5 extensionBundleURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = PRPosterEnvironmentImpl;
  v14 = [(PRPosterEnvironmentImpl *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    settings = v14->_settings;
    v14->_settings = v15;

    v17 = [v11 copy];
    traitCollection = v14->_traitCollection;
    v14->_traitCollection = v17;

    v19 = [v13 copy];
    bundleURL = v14->_bundleURL;
    v14->_bundleURL = v19;

    objc_storeStrong(&v14->_targetConfig, a5);
    v14->_lock._os_unfair_lock_opaque = 0;
    v21 = [(PRPosterEnvironmentImpl *)v14 luminance];
    v22 = 0.0;
    if (v21 == 2)
    {
      v22 = 1.0;
    }

    v14->_backlightProgress = v22;
    v14->_linearBacklightProgress = v22;
    v14->_depthEffectDisabled = [(PRPosterEnvironmentImpl *)v14 isDepthEffectDisabledInConfiguredProperties];
    *v14->_anon_110 = SPRotation3DIdentity_0;
    *&v14->_anon_110[16] = unk_1A8BF7D30;
    [(PRPosterEnvironmentImpl *)v14 updateFromSceneSettings:v10 traitCollection:v11 overrides:MEMORY[0x1E695E0F8]];
  }

  return v14;
}

- (void)setOverrides:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  [(PRPosterEnvironmentImpl *)self updateFromSceneSettings:self->_settings traitCollection:self->_traitCollection overrides:v3];
}

- (BOOL)updateFromSceneSettings:(id)a3 traitCollection:(id)a4 overrides:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = BSEqualObjects();
  if ((v12 & 1) == 0)
  {
    v13 = [v8 copy];
    settings = v11->_settings;
    v11->_settings = v13;
  }

  if (BSEqualObjects())
  {
    v15 = v12 ^ 1;
  }

  else
  {
    v16 = [v9 copy];
    traitCollection = v11->_traitCollection;
    v11->_traitCollection = v16;

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
    v19 = [v10 copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v11->_environmentOverrides, v21);
  }

  [v8 pr_unlockProgress];
  v11->_unlockProgress = v22;
  v11->_effectiveMotionEffectsMode = [v8 pr_effectiveMotionEffectsMode];
  v11->_wakeSourceIsSwipeToUnlock = [v8 pr_wakeSourceIsSwipeToUnlock];
  v23 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:v11];
  layoutController = v11->_layoutController;
  v11->_layoutController = v23;

  v11->_boundingShape = PRPosterBoundingShapeFromPUIPosterBoundingShape([v8 pui_posterBoundingShape]);
  v11->_appliesCountertransformForRotation = [v8 pr_appliesCountertransformForRotation];
  [v8 pui_salientContentRectangle];
  v11->_salientContentRectangle.origin.x = v25;
  v11->_salientContentRectangle.origin.y = v26;
  v11->_salientContentRectangle.size.width = v27;
  v11->_salientContentRectangle.size.height = v28;
  v29 = [v8 pui_contentOcclusionRectangles];
  if (v29)
  {
    v30 = [PRPosterContentOcclusionRectSet alloc];
    v31 = [v8 pui_contentOcclusionRectangles];
    v32 = [v31 allRects];
    v33 = [(PRPosterContentOcclusionRectSet *)v30 initWithNameToRectMap:v32];
    contentOcclusionRectangles = v11->_contentOcclusionRectangles;
    v11->_contentOcclusionRectangles = v33;
  }

  else
  {
    v31 = v11->_contentOcclusionRectangles;
    v11->_contentOcclusionRectangles = 0;
  }

  [v8 frame];
  v11->_canvasSize.width = v35;
  v11->_canvasSize.height = v36;
  [v8 pr_deviceMotionUpdateInterval];
  v11->_deviceMotionUpdateInterval = v37;
  v11->_showsHeaderElements = [v8 pui_showsHeaderElements];
  v11->_showsComplications = [v8 pui_showsComplications];
  [v8 pui_userTapLocation];
  v11->_userTapLocation.x = v38;
  v11->_userTapLocation.y = v39;
  v11->_userTapEventsCounter = [v8 pui_userTapEventsCounter];
  v11->_wallpaperObscured = [v8 pui_isWallpaperObscured];
  [v8 bounds];
  v11->_screenBounds.origin.x = v40;
  v11->_screenBounds.origin.y = v41;
  v11->_screenBounds.size.width = v42;
  v11->_screenBounds.size.height = v43;
  os_unfair_lock_lock(&v11->_lock);
  v44 = [(PRPosterContentsInternal *)v11->_lock_sourceContents _path];
  if (v44)
  {
    v45 = [(FBSSceneSettings *)v11->_settings pui_posterContents];
    if ((BSEqualObjects() & 1) == 0)
    {
      lock_sourceContents = v11->_lock_sourceContents;
      v11->_lock_sourceContents = 0;

      lock_sourceConfigurableOptions = v11->_lock_sourceConfigurableOptions;
      v11->_lock_sourceConfigurableOptions = 0;

      lock_targetConfiguredProperties = v11->_lock_targetConfiguredProperties;
      v11->_lock_targetConfiguredProperties = 0;

      lock_sourceTitleFontConfiguration = v11->_lock_sourceTitleFontConfiguration;
      v11->_lock_sourceTitleFontConfiguration = 0;
    }
  }

  os_unfair_lock_unlock(&v11->_lock);
  v50 = [[_PRPosterEnvironmentSnapshot alloc] initWithEnvironment:v11 layoutController:v11->_layoutController];
  snapshot = v11->_snapshot;
  v11->_snapshot = v50;

  v18 = 1;
LABEL_21:
  objc_sync_exit(v11);

  return v18;
}

- (CGRect)titleBoundsForLayout:(unint64_t)a3
{
  [(PRPosterEnvironmentImpl *)self screenBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PREditorElementLayoutController *)self->_layoutController frameAttributesForElements:1 variant:1 titleLayout:a3 withBoundingRect:?];
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
    v5 = [v4 BOOLValue];

    return v5;
  }

  else
  {
    settings = self->_settings;

    return [(FBSSceneSettings *)settings pui_isAdaptiveTimeDisabled];
  }
}

- (BOOL)isDepthEffectDisabledInConfiguredProperties
{
  v2 = [(PRPosterEnvironmentImpl *)self targetConfiguredProperties];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 renderingConfiguration];
    v5 = [v4 isDepthEffectDisabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDepthEffectDisabled:(BOOL)a3
{
  if ((BSEqualBools() & 1) == 0)
  {
    self->_depthEffectDisabled = a3;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setBacklightProgress:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_backlightProgress = a3;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setLinearBacklightProgress:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_linearBacklightProgress = a3;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setUnlockProgress:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_unlockProgress = a3;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setDeviceRoll:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_deviceRoll = a3;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setDevicePitch:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_devicePitch = a3;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setDeviceYaw:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_deviceYaw = a3;

    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setDeviceMotionRotation:(float64x2_t *)a3
{
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = a3[1];
  v6 = vandq_s8(vceqq_f64(v3, *a3), vceqq_f64(v4, v5));
  if ((vandq_s8(v6, vdupq_laneq_s64(v6, 1)).u64[0] & 0x8000000000000000) == 0)
  {
    v7 = vandq_s8(vceqq_f64(v3, vnegq_f64(*a3)), vceqq_f64(v4, vnegq_f64(v5)));
    if ((vandq_s8(v7, vdupq_laneq_s64(v7, 1)).u64[0] & 0x8000000000000000) == 0)
    {
      v8 = a3[1];
      *(a1 + 17) = *a3;
      *(a1 + 18) = v8;
      return [a1 _resetSnapshot];
    }
  }

  return a1;
}

- (void)setWakeSourceIsSwipeToUnlock:(BOOL)a3
{
  if (self->_wakeSourceIsSwipeToUnlock != a3)
  {
    self->_wakeSourceIsSwipeToUnlock = a3;
    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (void)setAppliesCountertransformForRotation:(BOOL)a3
{
  if (self->_appliesCountertransformForRotation != a3)
  {
    self->_appliesCountertransformForRotation = a3;
    [(PRPosterEnvironmentImpl *)self _resetSnapshot];
  }
}

- (BOOL)isFloatingViewSnapshot
{
  v3 = NSStringFromSelector(a2);
  v4 = [(FBSSceneSettings *)self->_settings pui_isFloatingLayerSnapshot];
  v5 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];

  if (v5)
  {
    v6 = [(NSDictionary *)self->_environmentOverrides objectForKey:v3];
    v4 = [v6 BOOLValue];
  }

  return v4;
}

- (void)_lock_hydratePosterContents:(id *)a3 sourceConfigurableOptions:(id *)a4 sourceTitleFontConfiguration:(id *)a5 targetConfigurableProperties:(id *)a6
{
  v61 = [(FBSSceneSettings *)self->_settings pui_posterContents];
  v10 = [v61 identity];
  v11 = [(FBSSceneSettings *)self->_settings pr_posterConfigurableOptions];
  v12 = [v10 role];
  v59 = a3;
  if (([v12 isEqualToString:*MEMORY[0x1E69C5220]] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E69C5218]))
  {
    v13 = a4;
    v14 = [(FBSSceneSettings *)self->_settings pr_posterConfiguredProperties];
    v15 = [v14 renderingConfiguration];

    v16 = [PRPosterConfiguredProperties alloc];
    v17 = [(FBSSceneSettings *)self->_settings pr_posterTitleStyleConfiguration];
    v62 = [(PRPosterConfiguredProperties *)v16 initWithTitleStyleConfiguration:v17 focusConfiguration:0 complicationLayout:0 renderingConfiguration:v15 homeScreenConfiguration:0 colorVariationsConfiguration:0 quickActionsConfiguration:0 suggestionMetadata:0 otherMetadata:0 userInfo:0];
  }

  else
  {
    v13 = a4;
    if ([v12 isEqualToString:*MEMORY[0x1E69C5208]])
    {
      v30 = [PRPosterConfiguredProperties alloc];
      v31 = [(FBSSceneSettings *)self->_settings pr_posterAmbientConfiguration];
      v62 = [(PRPosterConfiguredProperties *)v30 initWithAmbientConfiguration:v31 widgetLayout:0 otherMetadata:0 userInfo:0];
    }

    else
    {
      v62 = [PRPosterConfiguredProperties defaultConfiguredPropertiesForRole:v12];
    }
  }

  v18 = [v10 type];
  v19 = v18;
  if (self->_lock_sourceContents)
  {
    goto LABEL_5;
  }

  v24 = v18 - 1;
  v25 = [0 _path];
  v26 = v25;
  if (v24 <= 2)
  {
    v27 = [v25 isEqual:v61];

    if (v27)
    {
      goto LABEL_5;
    }

    if (v19 == 3)
    {
      v20 = a5;
      v28 = [[PRPosterConfiguration alloc] _initWithPath:v61];
      lock_sourceContents = self->_lock_sourceContents;
      self->_lock_sourceContents = v28;

      p_lock_sourceConfigurableOptions = &self->_lock_sourceConfigurableOptions;
LABEL_13:
      v22 = v59;
      goto LABEL_23;
    }

    v57 = [[PRPosterDescriptor alloc] _initWithPath:v61];
    v36 = self->_lock_sourceContents;
    self->_lock_sourceContents = v57;
LABEL_46:

    goto LABEL_5;
  }

  v32 = [v25 serverIdentity];

  if (v32)
  {
    v33 = self->_lock_sourceContents;
    self->_lock_sourceContents = 0;
  }

  if (!self->_lock_sourceContents)
  {
    v34 = MEMORY[0x1E69C5178];
    v35 = [v10 role];
    v36 = [v34 temporaryPathForRole:v35];

    v37 = [[PRPosterConfiguration alloc] _initWithPath:v36];
    v38 = self->_lock_sourceContents;
    self->_lock_sourceContents = v37;

    [v36 invalidate];
    goto LABEL_46;
  }

LABEL_5:
  v20 = a5;
  p_lock_sourceConfigurableOptions = &self->_lock_sourceConfigurableOptions;
  if (self->_lock_sourceConfigurableOptions || v19 == 3)
  {
    goto LABEL_13;
  }

  v22 = v59;
  if (v11)
  {
    v23 = v11;
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
      [v10 role];
      v58 = v13;
      v52 = v51 = v22;
      v53 = [v50 pr_defaultTimeFontIdentifierForRole:v52];
      v54 = [(PRTimeFontConfiguration *)v49 initWithTimeFontIdentifier:v53];
      lock_sourceTitleFontConfiguration = self->_lock_sourceTitleFontConfiguration;
      self->_lock_sourceTitleFontConfiguration = v54;

      v22 = v51;
      v13 = v58;
      p_lock_targetConfiguredProperties = &self->_lock_targetConfiguredProperties;
      if (self->_lock_targetConfiguredProperties)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v45 = [(PRPosterConfiguredProperties *)v62 titleStyleConfiguration];
    v46 = [v45 timeFontConfiguration];
    v47 = [v46 timeFontConfigurationWithExtensionBundleURL:self->_bundleURL];
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

  if (v13)
  {
    *v13 = *p_lock_sourceConfigurableOptions;
  }

  if (v20)
  {
    *v20 = self->_lock_sourceTitleFontConfiguration;
  }

  if (a6)
  {
    *a6 = *p_lock_targetConfiguredProperties;
  }
}

- (void)_applyToSceneSettings:(id)a3
{
  settings = self->_settings;
  v5 = a3;
  v6 = [(FBSSceneSettings *)settings pr_caseColor];
  [v5 pr_setCaseColor:v6];

  [v5 pui_setUserInterfaceStyle:{-[FBSSceneSettings pui_userInterfaceStyle](self->_settings, "pui_userInterfaceStyle")}];
  [v5 pr_setEffectiveMotionEffectsMode:{-[FBSSceneSettings pr_effectiveMotionEffectsMode](self->_settings, "pr_effectiveMotionEffectsMode")}];
  [v5 pui_setMode:{-[FBSSceneSettings pui_mode](self->_settings, "pui_mode")}];
  [(FBSSceneSettings *)self->_settings pr_unlockProgress];
  [v5 pr_setUnlockProgress:?];
  [v5 pui_setIdle:{-[FBSSceneSettings pui_isIdle](self->_settings, "pui_isIdle")}];
  [v5 pui_setShowingIdealizedTime:{-[FBSSceneSettings pui_isShowingIdealizedTime](self->_settings, "pui_isShowingIdealizedTime")}];
  [v5 pui_setEditorPreview:{-[FBSSceneSettings pui_isEditorPreview](self->_settings, "pui_isEditorPreview")}];
  [v5 pui_setShowsComplications:{-[FBSSceneSettings pui_showsComplications](self->_settings, "pui_showsComplications")}];
  [v5 pui_setShowsHeaderElements:{-[FBSSceneSettings pui_showsHeaderElements](self->_settings, "pui_showsHeaderElements")}];

  [(PRPosterEnvironmentImpl *)self _resetSnapshot];
}

- (void)_appendDescriptionToStream:(id)a3
{
  v28 = a3;
  v4 = [(PRPosterEnvironmentImpl *)self context];
  v5 = [v28 appendObject:v4 withName:@"environmentContext"];

  v6 = [(PRPosterEnvironmentImpl *)self caseColor];
  v7 = [v28 appendObject:v6 withName:@"caseColor" skipIfNil:1];

  v8 = [(PRPosterEnvironmentImpl *)self traitCollection];
  [v8 userInterfaceStyle];
  v9 = UIApplicationSceneStringForUserInterfaceStyle();
  v10 = [v28 appendObject:v9 withName:@"uiStyle"];

  v11 = NSStringFromPRRenderingMode([(PRPosterEnvironmentImpl *)self mode]);
  v12 = [v28 appendObject:v11 withName:@"mode"];

  [(PRPosterEnvironmentImpl *)self luminance];
  v13 = NSStringFromBLSAdjustedLuminance();
  v14 = [v28 appendObject:v13 withName:@"luminance"];

  v15 = [v28 appendBool:-[PRPosterEnvironmentImpl isDepthEffectDisallowed](self withName:"isDepthEffectDisallowed") ifEqualTo:{@"depthEffectDisallowed", 1}];
  v16 = [v28 appendBool:-[PRPosterEnvironmentImpl isDepthEffectDisabled](self withName:"isDepthEffectDisabled") ifEqualTo:{@"depthEffectDisabled", 1}];
  [(PRPosterEnvironmentImpl *)self unlockProgress];
  v17 = [v28 appendFloat:@"unlockProgress" withName:3 decimalPrecision:?];
  v18 = [v28 appendInteger:-[PRPosterEnvironmentImpl effectiveMotionEffectsMode](self withName:{"effectiveMotionEffectsMode"), @"effectiveMotionEffectsMode"}];
  [(PRPosterEnvironmentImpl *)self deviceRoll];
  v19 = [v28 appendFloat:@"deviceRoll" withName:2 decimalPrecision:?];
  [(PRPosterEnvironmentImpl *)self devicePitch];
  v20 = [v28 appendFloat:@"devicePitch" withName:2 decimalPrecision:?];
  [(PRPosterEnvironmentImpl *)self deviceYaw];
  v21 = [v28 appendFloat:@"deviceYaw" withName:2 decimalPrecision:?];
  [(PRPosterEnvironmentImpl *)self backlightProgress];
  v22 = [v28 appendFloat:@"backlightProgress" withName:3 decimalPrecision:?];
  v23 = [v28 appendBool:-[PRPosterEnvironmentImpl wakeSourceIsSwipeToUnlock](self withName:{"wakeSourceIsSwipeToUnlock"), @"wakeSourceIsSwipeToUnlock"}];
  v24 = [v28 appendUnsignedInteger:-[PRPosterEnvironmentImpl significantEventsCounter](self withName:{"significantEventsCounter"), @"significantEventsCounter"}];
  v25 = [v28 appendBool:-[PRPosterEnvironmentImpl isIdle](self withName:"isIdle") ifEqualTo:{@"idle", 1}];
  v26 = [(PRPosterEnvironmentImpl *)self overrides];
  v27 = [v28 appendBool:objc_msgSend(v26 withName:{"count") != 0, @"envrionmentOverridesActive"}];
}

- (int64_t)mode
{
  v2 = [(PRPosterEnvironmentImpl *)self context];
  v3 = [v2 mode];

  return v3;
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
  v12 = self;
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