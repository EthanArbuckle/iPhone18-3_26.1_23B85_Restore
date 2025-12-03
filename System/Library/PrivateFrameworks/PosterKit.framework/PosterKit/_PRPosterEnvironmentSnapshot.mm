@interface _PRPosterEnvironmentSnapshot
- (CGPoint)userTapLocation;
- (CGRect)contentCutoutBounds;
- (CGRect)floatingObscurableBounds;
- (CGRect)salientContentRectangle;
- (CGRect)screenBounds;
- (CGRect)titleBoundsForLayout:(unint64_t)layout;
- (CGSize)canvasSize;
- (CGSize)desiredContentSize;
- (CGSize)minimumContentSize;
- (_PRPosterEnvironmentSnapshot)initWithEnvironment:(id)environment layoutController:(id)controller;
- (__n128)deviceMotionRotation;
@end

@implementation _PRPosterEnvironmentSnapshot

- (CGRect)floatingObscurableBounds
{
  x = self->_floatingObscurableBounds.origin.x;
  y = self->_floatingObscurableBounds.origin.y;
  width = self->_floatingObscurableBounds.size.width;
  height = self->_floatingObscurableBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)deviceMotionRotation
{
  result = *(self + 432);
  v3 = *(self + 448);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (CGRect)salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)userTapLocation
{
  x = self->_userTapLocation.x;
  y = self->_userTapLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_PRPosterEnvironmentSnapshot)initWithEnvironment:(id)environment layoutController:(id)controller
{
  v90 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  controllerCopy = controller;
  v9 = controllerCopy;
  if (environmentCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_PRPosterEnvironmentSnapshot initWithEnvironment:a2 layoutController:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [_PRPosterEnvironmentSnapshot initWithEnvironment:a2 layoutController:self];
LABEL_3:
  v87.receiver = self;
  v87.super_class = _PRPosterEnvironmentSnapshot;
  v10 = [(_PRPosterEnvironmentSnapshot *)&v87 init];
  if (v10)
  {
    bundleURL = [environmentCopy bundleURL];
    bundleURL = v10->_bundleURL;
    v10->_bundleURL = bundleURL;

    ambientEnvironment = [environmentCopy ambientEnvironment];
    ambientEnvironment = v10->_ambientEnvironment;
    v10->_ambientEnvironment = ambientEnvironment;

    v10->_isPreview = [environmentCopy isPreview];
    v10->_isSnapshot = [environmentCopy isSnapshot];
    v10->_isIdle = [environmentCopy isIdle];
    [environmentCopy unlockProgress];
    v10->_unlockProgress = v15;
    [environmentCopy backlightProgress];
    v10->_backlightProgress = v16;
    [environmentCopy linearBacklightProgress];
    v10->_linearBacklightProgress = v17;
    v10->_wakeSourceIsSwipeToUnlock = [environmentCopy wakeSourceIsSwipeToUnlock];
    v10->_isLowLuminance = [environmentCopy isLowLuminance];
    v10->_luminance = [environmentCopy luminance];
    contents = [environmentCopy contents];
    contents = v10->_contents;
    v10->_contents = contents;

    v10->_isParallaxEnabled = [environmentCopy isParallaxEnabled];
    [environmentCopy minimumContentSize];
    v10->_minimumContentSize.width = v20;
    v10->_minimumContentSize.height = v21;
    [environmentCopy desiredContentSize];
    v10->_desiredContentSize.width = v22;
    v10->_desiredContentSize.height = v23;
    v10->_titleAlignment = [environmentCopy titleAlignment];
    ambientEnvironment2 = [environmentCopy ambientEnvironment];
    v25 = v10->_ambientEnvironment;
    v10->_ambientEnvironment = ambientEnvironment2;

    [environmentCopy salientContentRectangle];
    v10->_salientContentRectangle.origin.x = v26;
    v10->_salientContentRectangle.origin.y = v27;
    v10->_salientContentRectangle.size.width = v28;
    v10->_salientContentRectangle.size.height = v29;
    contentOcclusionRectangles = [environmentCopy contentOcclusionRectangles];
    contentOcclusionRectangles = v10->_contentOcclusionRectangles;
    v10->_contentOcclusionRectangles = contentOcclusionRectangles;

    [environmentCopy canvasSize];
    v10->_canvasSize.width = v32;
    v10->_canvasSize.height = v33;
    caseColor = [environmentCopy caseColor];
    caseColor = v10->_caseColor;
    v10->_caseColor = caseColor;

    traitCollection = [environmentCopy traitCollection];
    traitCollection = v10->_traitCollection;
    v10->_traitCollection = traitCollection;

    v10->_userInterfaceStyle = [environmentCopy userInterfaceStyle];
    v10->_deviceOrientation = [environmentCopy deviceOrientation];
    v10->_boundingShape = [environmentCopy boundingShape];
    [environmentCopy contentCutoutBounds];
    v10->_contentCutoutBounds.origin.x = v38;
    v10->_contentCutoutBounds.origin.y = v39;
    v10->_contentCutoutBounds.size.width = v40;
    v10->_contentCutoutBounds.size.height = v41;
    [environmentCopy floatingObscurableBounds];
    v10->_floatingObscurableBounds.origin.x = v42;
    v10->_floatingObscurableBounds.origin.y = v43;
    v10->_floatingObscurableBounds.size.width = v44;
    v10->_floatingObscurableBounds.size.height = v45;
    v10->_significantEventsCounter = [environmentCopy significantEventsCounter];
    role = [environmentCopy role];
    role = v10->_role;
    v10->_role = role;

    context = [environmentCopy context];
    context = v10->_context;
    v10->_context = context;

    sourceTimeFontConfiguration = [environmentCopy sourceTimeFontConfiguration];
    sourceTimeFontConfiguration = v10->_sourceTimeFontConfiguration;
    v10->_sourceTimeFontConfiguration = sourceTimeFontConfiguration;

    v10->_effectiveMotionEffectsMode = [environmentCopy effectiveMotionEffectsMode];
    [environmentCopy deviceRoll];
    v10->_deviceRoll = v52;
    [environmentCopy devicePitch];
    v10->_devicePitch = v53;
    [environmentCopy deviceYaw];
    v10->_deviceYaw = v54;
    v55 = 0uLL;
    v85 = 0u;
    v86 = 0u;
    if (environmentCopy)
    {
      [environmentCopy deviceMotionRotation];
      v55 = 0u;
      v56 = 0u;
    }

    else
    {
      v56 = 0uLL;
    }

    v57.f64[0] = NAN;
    v57.f64[1] = NAN;
    v58 = vnegq_f64(v57);
    v59 = vandq_s8(v55, v58);
    v60 = vandq_s8(v56, v58);
    v61 = vdupq_n_s64(0x7FF0000000000000uLL);
    v62 = vandq_s8(vcgtq_s64(v61, v59), vcgtq_s64(v61, v60));
    if ((vandq_s8(v62, vdupq_laneq_s64(v62, 1)).u64[0] & 0x8000000000000000) == 0)
    {
      v63 = PRLogCommon();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 0u;
        v89 = 0u;
        v64 = [MEMORY[0x1E69C5110] descriptionForRotation:buf];
        *buf = 138543362;
        *&buf[4] = v64;
        _os_log_impl(&dword_1A8AA7000, v63, OS_LOG_TYPE_INFO, "Invalid SPRotation3D detected: %{public}@. Falling back to identity.", buf, 0xCu);
      }

      v85 = SPRotation3DIdentity_0;
      v86 = unk_1A8BF7D30;
    }

    *v10->_anon_1b0 = v85;
    *&v10->_anon_1b0[16] = v86;
    [environmentCopy deviceMotionUpdateInterval];
    v10->_deviceMotionUpdateInterval = v65;
    sourceContents = [environmentCopy sourceContents];
    sourceContents = v10->_sourceContents;
    v10->_sourceContents = sourceContents;

    context2 = [environmentCopy context];
    v69 = v10->_context;
    v10->_context = context2;

    [environmentCopy screenBounds];
    v10->_screenBounds.origin.x = v70;
    v10->_screenBounds.origin.y = v71;
    v10->_screenBounds.size.width = v72;
    v10->_screenBounds.size.height = v73;
    objc_storeStrong(&v10->_layoutController, controller);
    targetConfiguredProperties = [environmentCopy targetConfiguredProperties];
    targetConfiguredProperties = v10->_targetConfiguredProperties;
    v10->_targetConfiguredProperties = targetConfiguredProperties;

    sourceConfigurableOptions = [environmentCopy sourceConfigurableOptions];
    sourceConfigurableOptions = v10->_sourceConfigurableOptions;
    v10->_sourceConfigurableOptions = sourceConfigurableOptions;

    sourceTimeFontConfiguration2 = [environmentCopy sourceTimeFontConfiguration];
    v79 = v10->_sourceTimeFontConfiguration;
    v10->_sourceTimeFontConfiguration = sourceTimeFontConfiguration2;

    targetConfiguration = [environmentCopy targetConfiguration];
    targetConfiguration = v10->_targetConfiguration;
    v10->_targetConfiguration = targetConfiguration;

    v10->_editingVariant = [environmentCopy editingVariant];
    v10->_editorPreview = [environmentCopy isEditorPreview];
    v10->_showsComplications = [environmentCopy showsComplications];
    v10->_showsHeaderElements = [environmentCopy showsHeaderElements];
    [environmentCopy userTapLocation];
    v10->_userTapLocation.x = v82;
    v10->_userTapLocation.y = v83;
    v10->_userTapEventsCounter = [environmentCopy userTapEventsCounter];
    v10->_wallpaperObscured = [environmentCopy isWallpaperObscured];
    v10->_adaptiveTimeDisabled = [environmentCopy isAdaptiveTimeDisabled];
    v10->_depthEffectDisabled = [environmentCopy isDepthEffectDisabled];
  }

  return v10;
}

- (CGRect)titleBoundsForLayout:(unint64_t)layout
{
  [(_PRPosterEnvironmentSnapshot *)self screenBounds];
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

- (CGSize)minimumContentSize
{
  width = self->_minimumContentSize.width;
  height = self->_minimumContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)desiredContentSize
{
  width = self->_desiredContentSize.width;
  height = self->_desiredContentSize.height;
  result.height = height;
  result.width = width;
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

- (CGRect)contentCutoutBounds
{
  x = self->_contentCutoutBounds.origin.x;
  y = self->_contentCutoutBounds.origin.y;
  width = self->_contentCutoutBounds.size.width;
  height = self->_contentCutoutBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)screenBounds
{
  x = self->_screenBounds.origin.x;
  y = self->_screenBounds.origin.y;
  width = self->_screenBounds.size.width;
  height = self->_screenBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithEnvironment:(uint64_t)a1 layoutController:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRPosterEnvironment.m" lineNumber:957 description:{@"Invalid parameter not satisfying: %@", @"impl"}];
}

- (void)initWithEnvironment:(uint64_t)a1 layoutController:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRPosterEnvironment.m" lineNumber:958 description:{@"Invalid parameter not satisfying: %@", @"layoutController"}];
}

@end