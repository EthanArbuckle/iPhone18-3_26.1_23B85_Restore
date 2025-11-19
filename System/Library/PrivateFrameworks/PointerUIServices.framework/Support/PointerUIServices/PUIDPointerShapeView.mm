@interface PUIDPointerShapeView
- (BOOL)_shouldShowAxCenterPointForPointerShape:(id)a3;
- (BOOL)_shouldShowAxColorStrokeForPointerShape:(id)a3 color:(id *)a4;
- (CGRect)_colorStrokeShapeBoundsForPointerShape:(id)a3;
- (CGRect)_shapeMorphingBackdropFrameForShape:(id)a3;
- (CGRect)expectedShapeBoundsForPointerShape:(id)a3;
- (PUIDPointerShapeView)initWithFrame:(CGRect)a3;
- (PUIDPointerShapeViewDelegate)delegate;
- (double)_axColorStrokeWidthForPointerShape:(id)a3;
- (double)_axPointerZoomScaleFactor;
- (double)_cornerRadiusForPointerShape:(id)a3;
- (double)_pointerSizeMultiplier;
- (double)presentationIntensity;
- (id)_colorMatrixForTraitCollection:(id)a3;
- (id)_cornerCurveForPointerShape:(id)a3;
- (id)_currentPointerViewBezierPath;
- (id)_debug_Material_descForStyle:(unint64_t)a3 intensity:(double)a4;
- (id)_debug_Material_nameForMaterialStyle:(unint64_t)a3;
- (void)_applyAXPointerStyleForPointerShape:(id)a3;
- (void)_axRegisterForZoomUpdatesIfNecessary;
- (void)_axUpdateDoubleInvertFilterOnView:(id)a3;
- (void)_axUpdateInvertColorsFilters;
- (void)_beginRequiringShapeMorphingViewForReason:(id)a3;
- (void)_didUpdateToOrientation:(int64_t)a3 duration:(double)a4 rotationDirection:(int64_t)a5;
- (void)_endRequiringShapeMorphingViewForReason:(id)a3;
- (void)_handleAccessibilityPointerPreferencesDidChange;
- (void)_performShakeToFindScalingAnimation;
- (void)_setShapeMorphingViewPath:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_setupAndUnhidePointerViewForPointerShape:(id)a3;
- (void)_updatePointerMaterial;
- (void)_updatePointerViewCornerCurve;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)setBlurRadius:(double)a3;
- (void)setFeather:(double)a3;
- (void)setIntensity:(double)a3;
- (void)setMaskPath:(CGPath *)a3;
- (void)setMaterialStyle:(unint64_t)a3;
- (void)setPointerShape:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setShakeToFindPointerSizeMultiplier:(double)a3;
- (void)setShapeMaterialReplacementColor:(id)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PUIDPointerShapeView

- (PUIDPointerShapeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v49.receiver = self;
  v49.super_class = PUIDPointerShapeView;
  v7 = [(PUIDPointerShapeView *)&v49 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_blurRadius = 0.0;
    v7->_feather = 0.0;
    v9 = +[PUIDPointerDomain rootSettings];
    settings = v8->_settings;
    v8->_settings = v9;

    [(PUIDPointerSettings *)v8->_settings addKeyPathObserver:v8];
    v11 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    pointerMaterialContainerView = v8->_pointerMaterialContainerView;
    v8->_pointerMaterialContainerView = v11;

    [(PUIDPointerShapeView *)v8 addSubview:v8->_pointerMaterialContainerView];
    v13 = [[PUIDPointerView alloc] initWithFrame:x, y, width, height];
    pointerView = v8->_pointerView;
    v8->_pointerView = v13;

    v15 = [(PUIDPointerShapeBackdropView *)v8->_pointerView backdropLayer];
    [v15 setAllowsInPlaceFiltering:1];

    [(UIView *)v8->_pointerMaterialContainerView addSubview:v8->_pointerView];
    v16 = [CAFilter filterWithType:kCAFilterGaussianBlur];
    [v16 setValue:&off_10004C5C8 forKey:kCAFilterInputRadius];
    [v16 setName:@"gaussianBlur"];
    v17 = [(PUIDPointerShapeView *)v8 layer];
    v53 = v16;
    v18 = [NSArray arrayWithObjects:&v53 count:1];
    [v17 setFilters:v18];

    v19 = [CAFilter filterWithType:kCAFilterColorMatrix];
    [v19 setName:@"colorMatrix"];
    v20 = [(PUIDPointerView *)v8->_pointerView layer];
    v52 = v19;
    v21 = [NSArray arrayWithObjects:&v52 count:1];
    [v20 setFilters:v21];

    v22 = objc_alloc_init(UIViewFloatAnimatableProperty);
    cornerCurveAnimatableProperty = v8->_cornerCurveAnimatableProperty;
    v8->_cornerCurveAnimatableProperty = v22;

    [(UIViewFloatAnimatableProperty *)v8->_cornerCurveAnimatableProperty setValue:0.0];
    v24 = objc_alloc_init(UIViewFloatAnimatableProperty);
    intensityAnimatableProperty = v8->_intensityAnimatableProperty;
    v8->_intensityAnimatableProperty = v24;

    [(UIViewFloatAnimatableProperty *)v8->_intensityAnimatableProperty setValue:0.0];
    v26 = objc_alloc_init(UIViewFloatAnimatableProperty);
    featherAnimatableProperty = v8->_featherAnimatableProperty;
    v8->_featherAnimatableProperty = v26;

    [(UIViewFloatAnimatableProperty *)v8->_featherAnimatableProperty setValue:0.0];
    v28 = objc_alloc_init(UIViewFloatAnimatableProperty);
    shakeToFindScalingProperty = v8->_shakeToFindScalingProperty;
    v8->_shakeToFindScalingProperty = v28;

    [(UIViewFloatAnimatableProperty *)v8->_shakeToFindScalingProperty setValue:1.0];
    v8->_shakeToFindPointerSizeMultiplier = 1.0;
    v8->_lastShakeToFindPointerSizeMultiplier = 1.0;
    objc_initWeak(&location, v8);
    v51 = v8->_cornerCurveAnimatableProperty;
    v30 = [NSArray arrayWithObjects:&v51 count:1];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100001C74;
    v46[3] = &unk_100048A00;
    objc_copyWeak(&v47, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v30 presentationValueChangedCallback:v46];

    v8->_isVisible = 0;
    v50[0] = v8->_intensityAnimatableProperty;
    v50[1] = v8->_featherAnimatableProperty;
    v31 = [NSArray arrayWithObjects:v50 count:2];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100001CB4;
    v44[3] = &unk_100048A00;
    objc_copyWeak(&v45, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v31 presentationValueChangedCallback:v44];

    [(PUIDPointerShapeView *)v8 _updatePointerMaterial];
    v32 = +[NSNotificationCenter defaultCenter];
    [v32 addObserver:v8 selector:"_accessibilityInvertColorsStatusDidChange:" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, sub_100001D78, kAXSPointerIncreasedContrastPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v34 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v34, v8, sub_100001D78, kAXSPointerSizeMultiplierPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v35 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v35, v8, sub_100001D78, kAXSPointerStrokeColorPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v36 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v36, v8, sub_100001D78, kAXSPointerScaleWithZoomLevelPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v37 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v37, v8, sub_100001D78, kAXSZoomTouchEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(PUIDPointerShapeView *)v8 _axRegisterForZoomUpdatesIfNecessary];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100001DDC;
    v42[3] = &unk_100048A50;
    objc_copyWeak(&v43, &location);
    v38 = objc_retainBlock(v42);
    v39 = objc_alloc_init(FBSOrientationObserver);
    orientationObserver = v8->_orientationObserver;
    v8->_orientationObserver = v39;

    [(FBSOrientationObserver *)v8->_orientationObserver setHandler:v38];
    v8->_activeInterfaceOrientation = 1;

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)didMoveToSuperview
{
  v2.receiver = self;
  v2.super_class = PUIDPointerShapeView;
  [(PUIDPointerShapeView *)&v2 didMoveToSuperview];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  if (self->_zoomRegistrationIdentifier)
  {
    v4 = [sub_100006040() sharedInstance];
    [v4 removeZoomAttributesChangedHandler:self->_zoomRegistrationIdentifier];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAXSPointerIncreasedContrastPreferenceDidChangeNotification, 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, kAXSPointerSizeMultiplierPreferenceDidChangeNotification, 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v7, self, kAXSPointerStrokeColorPreferenceDidChangeNotification, 0);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v8, self, kAXSPointerScaleWithZoomLevelPreferenceDidChangeNotification, 0);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v9, self, kAXSZoomTouchEnabledNotification, 0);
  CGPathRelease(self->_maskPath);
  [(FBSOrientationObserver *)self->_orientationObserver invalidate];
  v10.receiver = self;
  v10.super_class = PUIDPointerShapeView;
  [(PUIDPointerShapeView *)&v10 dealloc];
}

- (CGRect)expectedShapeBoundsForPointerShape:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([v4 shapeType] == 1)
  {
    v13 = v4;
    if (_UIPlasmaEnabled() && [v13 shapeType] == 1)
    {

      if (qword_100059CB8 != -1)
      {
        sub_100026B0C();
      }

      v6 = *&qword_100059C98;
      v8 = *&qword_100059CA0;
      v10 = *&qword_100059CA8;
      v12 = *&qword_100059CB0;
      [(PUIDPointerShapeView *)self _pointerSizeMultiplier];
      v15 = v10 * v14;
      [(PUIDPointerShapeView *)self _pointerSizeMultiplier];
      v17 = v12 * v16;
      [(PUIDPointerShapeView *)self _pointerSizeMultiplier];
      v19 = v6 * v18;
      [(PUIDPointerShapeView *)self _pointerSizeMultiplier];
      v21 = v8 * v20;
      activeInterfaceOrientation = self->_activeInterfaceOrientation;
      if (activeInterfaceOrientation > 2)
      {
        if (activeInterfaceOrientation == 3)
        {
          v6 = -v21 - v17;
          v12 = v15;
          v10 = v17;
          v8 = v19;
        }

        else if (activeInterfaceOrientation == 4)
        {
          v8 = -v19 - v15;
          v12 = v15;
          v10 = v17;
          v6 = v21;
        }
      }

      else if (activeInterfaceOrientation >= 2)
      {
        if (activeInterfaceOrientation == 2)
        {
          v6 = -v19 - v15;
          v8 = -v21 - v17;
          v12 = v17;
          v10 = v15;
        }
      }

      else
      {
        v12 = v17;
        v10 = v15;
        v8 = v21;
        v6 = v19;
      }
    }

    else
    {

      [(PUIDPointerSettings *)self->_settings systemPointerSize];
      v24 = v23;
      [(PUIDPointerShapeView *)self _pointerSizeMultiplier];
      v12 = v24 * v25;
      v8 = v12 * -0.5;
      v10 = v12;
      v6 = v12 * -0.5;
    }
  }

  v26 = v6;
  v27 = v8;
  v28 = v10;
  v29 = v12;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (double)presentationIntensity
{
  v3 = [(PUIDPointerShapeView *)self layer];
  v4 = [v3 presentationLayer];
  v5 = v4;
  if (v4)
  {
    [v4 opacity];
    v7 = v6;
  }

  else
  {
    v8 = [(PUIDPointerShapeView *)self layer];
    [v8 opacity];
    v7 = v9;
  }

  return v7;
}

- (id)_debug_Material_nameForMaterialStyle:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Undefined";
  }

  else
  {
    return *(&off_100048CB8 + a3);
  }
}

- (id)_debug_Material_descForStyle:(unint64_t)a3 intensity:(double)a4
{
  v5 = [(PUIDPointerShapeView *)self _debug_Material_nameForMaterialStyle:a3];
  v6 = [NSString stringWithFormat:@"(%@ @ %f)", v5, *&a4];

  return v6;
}

- (void)setIntensity:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v5 = [(PUIDPointerShapeView *)self _debug_Material_descForStyle:self->_materialStyle intensity:a3];
    v6 = PSLogMaterial();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100026B20(v5, v6);
    }

    intensity = self->_intensity;
    if (a3 == 0.0 && intensity > 0.0)
    {
      self->_intensity = a3;
      [(UIViewFloatAnimatableProperty *)self->_intensityAnimatableProperty setValue:a3];
      [(PUIDPointerShapeView *)self _updatePointerMaterial];
    }

    else
    {
      self->_intensity = a3;
      [(UIViewFloatAnimatableProperty *)self->_intensityAnimatableProperty setValue:a3];
      [(PUIDPointerShapeView *)self _updatePointerMaterial];
      if (a3 <= 0.0 || intensity != 0.0)
      {
        goto LABEL_10;
      }
    }

    [(PUIDPointerShapeView *)self _handleAccessibilityPointerPreferencesDidChange];
LABEL_10:
  }
}

- (void)setFeather:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_feather = a3;
    featherAnimatableProperty = self->_featherAnimatableProperty;

    [(UIViewFloatAnimatableProperty *)featherAnimatableProperty setValue:a3];
  }
}

- (void)setBlurRadius:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_blurRadius = a3;
    v5 = [NSNumber numberWithDouble:a3];
    [(PUIDPointerShapeView *)self setValue:v5 forKeyPath:@"layer.filters.gaussianBlur.inputRadius"];
  }
}

- (void)setMaterialStyle:(unint64_t)a3
{
  if (self->_materialStyle != a3)
  {
    v5 = [(PUIDPointerShapeView *)self _debug_Material_descForStyle:self->_intensity intensity:?];
    v6 = PSLogMaterial();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100026B98(v5, v6);
    }

    self->_materialStyle = a3;
    [(PUIDPointerShapeView *)self _updatePointerMaterial];
  }
}

- (void)setShakeToFindPointerSizeMultiplier:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_shakeToFindPointerSizeMultiplier = a3;
  }
}

- (void)setPointerShape:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  lastShakeToFindPointerSizeMultiplier = self->_lastShakeToFindPointerSizeMultiplier;
  shakeToFindPointerSizeMultiplier = self->_shakeToFindPointerSizeMultiplier;
  v13 = lastShakeToFindPointerSizeMultiplier != shakeToFindPointerSizeMultiplier;
  if (lastShakeToFindPointerSizeMultiplier == shakeToFindPointerSizeMultiplier && !self->_axVisualSettingsDidChange && !self->_activeInterfaceOrientationDidChange && ((pointerShape = self->_pointerShape, pointerShape == v9) || ([(PSPointerShape *)pointerShape isEqual:v9]& 1) != 0))
  {
    if (v10)
    {
      v10[2](v10, 1, 0);
    }
  }

  else
  {
    v15 = [(PUIDPointerShapeView *)self _cornerCurveForPointerShape:self->_pointerShape];
    previousPointerShapeCornerCurve = self->_previousPointerShapeCornerCurve;
    self->_previousPointerShapeCornerCurve = v15;

    v17 = self->_pointerShape;
    v18 = _UIPlasmaEnabled() && [(PSPointerShape *)v17 shapeType]== 1;

    objc_storeStrong(&self->_pointerShape, a3);
    self->_axVisualSettingsDidChange = 0;
    self->_activeInterfaceOrientationDidChange = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000028F8;
    v21[3] = &unk_100048AC8;
    v23 = v13;
    v21[4] = self;
    v22 = v9;
    v24 = v18;
    v25 = a4;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100002EF0;
    v19[3] = &unk_100048AF0;
    v20 = v10;
    [SBC2GroupCompletion perform:v21 finalCompletion:v19];
  }
}

- (void)setShapeMaterialReplacementColor:(id)a3
{
  v4 = a3;
  shapeMaterialReplacementColor = self->_shapeMaterialReplacementColor;
  if (shapeMaterialReplacementColor != v4)
  {
    v8 = v4;
    if (([(UIColor *)shapeMaterialReplacementColor isEqual:v4]& 1) == 0)
    {
      v6 = [(UIColor *)v8 copy];
      v7 = self->_shapeMaterialReplacementColor;
      self->_shapeMaterialReplacementColor = v6;

      [(PUIDPointerShapeView *)self _updatePointerMaterial];
    }
  }

  _objc_release_x1();
}

- (void)setMaskPath:(CGPath *)a3
{
  if (!CGPathEqualToPath(a3, self->_maskPath))
  {
    CGPathRelease(self->_maskPath);
    self->_maskPath = a3;

    CGPathRetain(a3);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PUIDPointerShapeView;
  v4 = a3;
  [(PUIDPointerShapeView *)&v8 traitCollectionDidChange:v4];
  v5 = [(PUIDPointerShapeView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(PUIDPointerShapeView *)self _updatePointerMaterial];
  }
}

- (void)_beginRequiringShapeMorphingViewForReason:(id)a3
{
  v5 = a3;
  v37 = v5;
  if (!v5)
  {
    sub_100026C24(a2, self);
    v5 = 0;
  }

  shapeMorphingViewRequiringReasons = self->_shapeMorphingViewRequiringReasons;
  if (!shapeMorphingViewRequiringReasons)
  {
    v7 = +[NSMutableSet set];
    v8 = self->_shapeMorphingViewRequiringReasons;
    self->_shapeMorphingViewRequiringReasons = v7;

    v5 = v37;
    shapeMorphingViewRequiringReasons = self->_shapeMorphingViewRequiringReasons;
  }

  [(NSMutableSet *)shapeMorphingViewRequiringReasons addObject:v5];
  if (self->_shapeMorphingView)
  {
    [(PUIDPointerShapeView *)self _shapeMorphingBackdropFrameForShape:self->_pointerShape];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(PUIDPointerShapeFilterBackgroundView *)self->_shapeBackgroundView currentShapeFrame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(PUIDPointerView *)self->_pointerView frame];
    v43.origin.x = v25;
    v43.origin.y = v26;
    v43.size.width = v27;
    v43.size.height = v28;
    v39.origin.x = v10;
    v39.origin.y = v12;
    v39.size.width = v14;
    v39.size.height = v16;
    v40 = CGRectUnion(v39, v43);
    v44.origin.x = v18;
    v44.origin.y = v20;
    v44.size.width = v22;
    v44.size.height = v24;
    v41 = CGRectUnion(v40, v44);
    [(PUIDPointerShapeFilterBackgroundView *)self->_shapeBackgroundView updateShapeFrame:v41.origin.x, v41.origin.y, v41.size.width, v41.size.height];
  }

  else
  {
    v29 = objc_alloc_init(PUIDPointerShapeMorphingView);
    shapeMorphingView = self->_shapeMorphingView;
    self->_shapeMorphingView = v29;

    v31 = [(PUIDPointerShapeMorphingView *)self->_shapeMorphingView layer];
    [v31 setName:@"pointer custom shape layer"];

    v32 = [(PUIDPointerShapeView *)self _currentPointerViewBezierPath];
    [(PUIDPointerShapeMorphingView *)self->_shapeMorphingView setPath:v32 animated:0 completion:0];
    BoundingBox = CGPathGetBoundingBox([v32 CGPath]);
    v33 = [[PUIDPointerShapeFilterBackgroundView alloc] initWithShapeFrame:BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height];
    shapeBackgroundView = self->_shapeBackgroundView;
    self->_shapeBackgroundView = v33;

    v35 = [(PUIDPointerShapeFilterBackgroundView *)self->_shapeBackgroundView layer];
    v36 = [(PUIDPointerShapeMorphingView *)self->_shapeMorphingView layer];
    [v35 setMask:v36];

    [(UIView *)self->_pointerMaterialContainerView addSubview:self->_shapeBackgroundView];
    [(PUIDPointerShapeView *)self _updatePointerMaterial];
    [(PUIDPointerView *)self->_pointerView setHidden:1];
    [(UIView *)self->_axCenterDot setHidden:1];
    [(UIView *)self->_axColorStroke setHidden:1];
  }
}

- (void)_setupAndUnhidePointerViewForPointerShape:(id)a3
{
  v4 = a3;
  [(PUIDPointerShapeView *)self expectedShapeBoundsForPointerShape:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PUIDPointerShapeView *)self _cornerRadiusForPointerShape:v4];
  v14 = v13;
  v15 = v4;
  if (_UIPlasmaEnabled() && [v15 shapeType] == 1)
  {

    if (qword_100059C90 != -1)
    {
      sub_100026C10();
    }

    v16 = qword_100059C88;
    activeInterfaceOrientation = self->_activeInterfaceOrientation;
    [(PUIDPointerShapeView *)self _pointerSizeMultiplier];
    v19 = v18;
    v20 = *&CGAffineTransformIdentity.c;
    *&transform.a = *&CGAffineTransformIdentity.a;
    *&transform.c = v20;
    *&transform.tx = *&CGAffineTransformIdentity.tx;
    if ((activeInterfaceOrientation - 2) <= 2)
    {
      CGAffineTransformMakeRotation(&transform, dbl_100032160[activeInterfaceOrientation - 2]);
    }

    CGAffineTransformMakeScale(&t1, v19, v19);
    v30 = transform;
    CGAffineTransformConcat(&v32, &t1, &v30);
    transform = v32;
    v21 = CGPathCreateCopyByTransformingPath(v16, &transform);
  }

  else
  {

    v21 = 0;
  }

  [(PUIDPointerView *)self->_pointerView setFrame:v6, v8, v10, v12];
  v22 = [(PUIDPointerView *)self->_pointerView layer];
  [v22 setCornerRadius:v14];

  v23 = [(PUIDPointerView *)self->_pointerView layer];
  v24 = v23;
  if (v21)
  {
    v25 = [(PUIDPointerView *)self->_pointerView layer];
    v26 = [v25 mask];
    v27 = sub_100003600(v26, v21, self->_pointerView);
    [v24 setMask:v27];
  }

  else
  {
    [v23 setMask:0];
  }

  CGPathRelease(v21);
  [(PUIDPointerView *)self->_pointerView setHidden:0];
  [(UIView *)self->_axCenterDot setHidden:0];
  [(UIView *)self->_axColorStroke setHidden:0];
  [(PUIDPointerShapeMorphingView *)self->_shapeMorphingView removeFromSuperview];
  shapeMorphingView = self->_shapeMorphingView;
  self->_shapeMorphingView = 0;

  [(PUIDPointerShapeFilterBackgroundView *)self->_shapeBackgroundView removeFromSuperview];
  shapeBackgroundView = self->_shapeBackgroundView;
  self->_shapeBackgroundView = 0;
}

- (void)_endRequiringShapeMorphingViewForReason:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    sub_100026CA0(a2, self);
    v5 = 0;
  }

  [(NSMutableSet *)self->_shapeMorphingViewRequiringReasons removeObject:v5];
  if (![(NSMutableSet *)self->_shapeMorphingViewRequiringReasons count]&& self->_shapeMorphingView)
  {
    [(PUIDPointerShapeView *)self _setupAndUnhidePointerViewForPointerShape:self->_pointerShape];
  }
}

- (void)_setShapeMorphingViewPath:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];
  v12 = [@"Animations" stringByAppendingFormat:@"-%@", v11];

  [(PUIDPointerShapeView *)self _beginRequiringShapeMorphingViewForReason:v12];
  [(PUIDPointerShapeView *)self _applyAXPointerStyleForPointerShape:self->_pointerShape];
  objc_initWeak(&location, self);
  shapeMorphingView = self->_shapeMorphingView;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100003930;
  v16[3] = &unk_100048B18;
  objc_copyWeak(&v19, &location);
  v14 = v12;
  v17 = v14;
  v15 = v9;
  v18 = v15;
  [(PUIDPointerShapeMorphingView *)shapeMorphingView setPath:v8 animated:v6 completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)_performShakeToFindScalingAnimation
{
  if (self->_lastShakeToFindPointerSizeMultiplier != self->_shakeToFindPointerSizeMultiplier)
  {
    v3 = +[PSPointerShape systemShape];
    if ([(PUIDPointerView *)self->_pointerView isHidden])
    {
      [(PUIDPointerShapeView *)self _setupAndUnhidePointerViewForPointerShape:v3];
    }

    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_shakeToFindScalingProperty);
    shakeToFindScalingProperty = self->_shakeToFindScalingProperty;
    v4 = [NSArray arrayWithObjects:&shakeToFindScalingProperty count:1];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100003D80;
    v29[3] = &unk_100048B80;
    objc_copyWeak(&v30, &location);
    objc_copyWeak(&v31, &from);
    [UIView _createTransformerWithInputAnimatableProperties:v4 modelValueSetter:&stru_100048B58 presentationValueSetter:v29];

    settings = self->_settings;
    if (self->_shakeToFindPointerSizeMultiplier > self->_lastShakeToFindPointerSizeMultiplier)
    {
      [(PUIDPointerSettings *)settings shakeToFindExpansionAnimationSettings];
    }

    else
    {
      [(PUIDPointerSettings *)settings shakeToFindContractionAnimationSettings];
    }
    v6 = ;
    self->_lastShakeToFindPointerSizeMultiplier = self->_shakeToFindPointerSizeMultiplier;
    [(PUIDPointerShapeView *)self expectedShapeBoundsForPointerShape:v3];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(PUIDPointerView *)self->_pointerView frame];
    v37.origin.x = v15;
    v37.origin.y = v16;
    v37.size.width = v17;
    v37.size.height = v18;
    v35.origin.x = v8;
    v35.origin.y = v10;
    v35.size.width = v12;
    v35.size.height = v14;
    v36 = CGRectUnion(v35, v37);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    [(PUIDPointerShapeView *)self _cornerRadiusForPointerShape:v3];
    v24 = v23;
    [(PUIDPointerView *)self->_pointerView setFrame:x, y, width, height];
    v25 = [(PUIDPointerView *)self->_pointerView layer];
    [v25 setCornerRadius:v24];

    [(UIViewFloatAnimatableProperty *)self->_shakeToFindScalingProperty value];
    if (v26 != self->_shakeToFindPointerSizeMultiplier)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100003F28;
      v28[3] = &unk_100048BA8;
      v28[4] = self;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100003F48;
      v27[3] = &unk_100048BD0;
      v27[4] = self;
      *&v27[5] = x;
      *&v27[6] = y;
      *&v27[7] = width;
      *&v27[8] = height;
      [UIView _animateUsingSpringBehavior:v6 tracking:0 animations:v28 completion:v27];
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  if (self->_settings == a3)
  {
    [(PUIDPointerShapeView *)self _updatePointerMaterial];
  }
}

- (id)_colorMatrixForTraitCollection:(id)a3
{
  v4 = a3;
  shapeMaterialReplacementColor = self->_shapeMaterialReplacementColor;
  if (shapeMaterialReplacementColor)
  {
    v29 = 0.0;
    v30 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    [(UIColor *)shapeMaterialReplacementColor getRed:&v30 green:&v29 blue:&v28 alpha:&v27];
    v6 = v30;
    v7 = v29;
    v8 = v28;
    v9 = v27;
    v13 = v6;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v17 = v7;
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v21 = v8;
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v25 = v9;
    v26 = 0;
    v10 = [NSValue valueWithCAColorMatrix:&v13];
  }

  else
  {
    if (!self->_materialStyle)
    {
      [v4 userInterfaceStyle];
    }

    _UIPlasmaEnabled();
    v10 = PSPointerVibrantColorMatrixForLuminanceWithPlasmaEnabled();
  }

  v11 = v10;

  return v11;
}

- (void)_updatePointerMaterial
{
  v3 = [(PUIDPointerShapeView *)self traitCollection];
  v6 = [(PUIDPointerShapeView *)self _colorMatrixForTraitCollection:v3];

  [(PUIDPointerView *)self->_pointerView setValue:v6 forKeyPath:@"layer.filters.colorMatrix.inputColorMatrix"];
  [(PUIDPointerShapeFilterBackgroundView *)self->_shapeBackgroundView updateFilter:v6];
  [(UIView *)self->_pointerMaterialContainerView setAlpha:self->_intensity];
  v4 = 0.5;
  if (self->_intensity > 0.0)
  {
    v5 = 1.0;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  [(UIView *)self->_axCenterDot setAlpha:v4];
  [(UIView *)self->_axColorStroke setAlpha:v5];
  [(PUIDPointerShapeView *)self _axUpdateInvertColorsFilters];
}

- (double)_pointerSizeMultiplier
{
  _AXSPointerSizeMultiplier();
  v4 = v3;
  [(PUIDPointerShapeView *)self _axPointerZoomScaleFactor];
  return v5 * v4 * self->_lastShakeToFindPointerSizeMultiplier;
}

- (void)_didUpdateToOrientation:(int64_t)a3 duration:(double)a4 rotationDirection:(int64_t)a5
{
  v8 = [(PUIDPointerShapeView *)self window:a3];
  v9 = [v8 screen];
  v12 = [v9 displayIdentity];

  if (([v12 isExternal] & 1) == 0)
  {
    self->_activeInterfaceOrientation = a3;
    self->_activeInterfaceOrientationDidChange = 1;
    [(UIView *)self->_pointerMaterialContainerView alpha];
    if (v10 > 0.00000011920929)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained pointerShapeViewInterfaceOrientationDidChange:self duration:a4];
      }
    }
  }
}

- (void)_handleAccessibilityPointerPreferencesDidChange
{
  self->_axVisualSettingsDidChange = 1;
  [(UIView *)self->_pointerMaterialContainerView alpha];
  if (v3 > 0.00000011920929)
  {
    [(PUIDPointerShapeView *)self _updatePointerMaterial];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained pointerShapeViewExpectedSizeParametersDidChange:self];
    }
  }
}

- (CGRect)_shapeMorphingBackdropFrameForShape:(id)a3
{
  [(PUIDPointerShapeView *)self expectedShapeBoundsForPointerShape:a3];

  return CGRectInset(*&v3, -1.0, -1.0);
}

- (id)_currentPointerViewBezierPath
{
  [(PUIDPointerView *)self->_pointerView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUIDPointerView *)self->_pointerView layer];
  [v11 cornerRadius];
  v13 = v12;

  if (self->_pointerViewAnimationCount)
  {
    v14 = [(PUIDPointerView *)self->_pointerView layer];
    v15 = [v14 presentationLayer];

    [v15 frame];
    v4 = v16;
    v6 = v17;
    v8 = v18;
    v10 = v19;
    [v15 cornerRadius];
    v13 = v20;
  }

  v21 = [(PUIDPointerShapeView *)self _bezierPathWithRoundedRect:v4 cornerRadius:v6, v8, v10, v13];
  v22 = [(PUIDPointerView *)self->_pointerView layer];
  v23 = [v22 mask];

  if (v23)
  {
    if (qword_100059C90 != -1)
    {
      sub_100026C10();
    }

    v24 = qword_100059C88;
    activeInterfaceOrientation = self->_activeInterfaceOrientation;
    [(PUIDPointerShapeView *)self _pointerSizeMultiplier];
    v27 = v26;
    v28 = *&CGAffineTransformIdentity.c;
    *&transform.a = *&CGAffineTransformIdentity.a;
    *&transform.c = v28;
    *&transform.tx = *&CGAffineTransformIdentity.tx;
    if ((activeInterfaceOrientation - 2) <= 2)
    {
      CGAffineTransformMakeRotation(&transform, dbl_100032160[activeInterfaceOrientation - 2]);
    }

    CGAffineTransformMakeScale(&t1, v27, v27);
    v32 = transform;
    CGAffineTransformConcat(&v34, &t1, &v32);
    transform = v34;
    v29 = CGPathCreateCopyByTransformingPath(v24, &transform);
    v30 = [UIBezierPath bezierPathWithCGPath:v29];

    v21 = v30;
  }

  else
  {
    v29 = 0;
  }

  CGPathRelease(v29);

  return v21;
}

- (double)_cornerRadiusForPointerShape:(id)a3
{
  v4 = a3;
  [v4 cornerRadius];
  v6 = v5;
  v7 = [v4 shapeType];
  if (v7 == 2)
  {
    [v4 bounds];
    if (v9 >= v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v6 = v11 * 0.5;
  }

  else if (v7 == 1)
  {
    v8 = v4;
    if (_UIPlasmaEnabled() && [v8 shapeType] == 1)
    {

      v6 = 0.0;
    }

    else
    {

      [(PUIDPointerShapeView *)self expectedShapeBoundsForPointerShape:v8];
      v6 = v12 * 0.5;
    }
  }

  return v6;
}

- (id)_cornerCurveForPointerShape:(id)a3
{
  v3 = a3;
  v4 = kCACornerCurveCircular;
  if ([v3 shapeType] == 3)
  {
    v5 = [v3 cornerCurve];

    v4 = v5;
  }

  return v4;
}

- (void)_updatePointerViewCornerCurve
{
  if (qword_100059C80 != -1)
  {
    sub_100026D1C();
  }

  v14 = [(PUIDPointerView *)self->_pointerView layer];
  v3 = [(PUIDPointerShapeView *)self _cornerCurveForPointerShape:self->_pointerShape];
  if ([v3 isEqualToString:kCACornerCurveCircular] && -[NSString isEqualToString:](self->_previousPointerShapeCornerCurve, "isEqualToString:", kCACornerCurveCircular))
  {
    v4 = kCACornerCurveCircular;
  }

  else
  {
    v5 = [v14 presentationLayer];
    [v5 cornerRadius];
    v7 = v6;
    [v5 bounds];
    if (v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v11 = kCACornerCurveContinuous;
    if (v7 * *&qword_100059558 >= v10 * 0.5)
    {
      v11 = kCACornerCurveCircular;
    }

    v4 = v11;
  }

  v12 = [v14 cornerCurve];
  v13 = [v12 isEqualToString:v4];

  if ((v13 & 1) == 0)
  {
    [v14 setCornerCurve:v4];
  }
}

- (double)_axPointerZoomScaleFactor
{
  if (!_AXSZoomTouchEnabled())
  {
    return 1.0;
  }

  if (_AXSPointerScaleWithZoomLevelEnabled())
  {
    return 1.0;
  }

  v3 = [sub_100006040() sharedInstance];
  v4 = [(PUIDPointerShapeView *)self window];
  v5 = [v4 screen];
  v6 = [v5 displayIdentity];
  v7 = [v3 inStandbyModeOnDisplay:{objc_msgSend(v6, "displayID")}];

  if (v7)
  {
    return 1.0;
  }

  v9 = [sub_100006040() sharedInstance];
  [v9 zoomLevel];
  v11 = v10;

  if (self->_inDockedZoomMode || v11 <= 0.00000011920929)
  {
    return 1.0;
  }

  else
  {
    return 1.0 / v11;
  }
}

- (void)_applyAXPointerStyleForPointerShape:(id)a3
{
  v4 = a3;
  intensity = self->_intensity;
  v63 = 0;
  v6 = [(PUIDPointerShapeView *)self _shouldShowAxColorStrokeForPointerShape:v4 color:&v63];
  v7 = v63;
  if (v6 && intensity > 0.0)
  {
    [(PUIDPointerShapeView *)self _colorStrokeShapeBoundsForPointerShape:v4];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(PUIDPointerShapeView *)self _axColorStrokeWidthForPointerShape:v4];
    v17 = v16;
    [(PUIDPointerShapeView *)self _cornerRadiusForPointerShape:v4];
    v19 = v17 + v18;
    axColorStroke = self->_axColorStroke;
    if (!axColorStroke)
    {
      v21 = [[UIView alloc] initWithFrame:{v9, v11, v13, v15}];
      v22 = self->_axColorStroke;
      self->_axColorStroke = v21;

      v23 = self->_axColorStroke;
      v24 = +[UIColor clearColor];
      [(UIView *)v23 setBackgroundColor:v24];

      v25 = self->_pointerShape;
      if (_UIPlasmaEnabled() && [(PSPointerShape *)v25 shapeType]== 1)
      {

        v26 = +[CAShapeLayer layer];
        axColorStrokeShapeLayer = self->_axColorStrokeShapeLayer;
        self->_axColorStrokeShapeLayer = v26;

        [(CAShapeLayer *)self->_axColorStrokeShapeLayer setLineCap:kCALineCapRound];
      }

      else
      {
      }

      [(PUIDPointerShapeView *)self addSubview:self->_axColorStroke];
      axColorStroke = self->_axColorStroke;
    }

    [(UIView *)axColorStroke setFrame:v9, v11, v13, v15];
    v30 = [(UIView *)self->_axColorStroke layer];
    [v30 setCornerRadius:v19];

    v31 = self->_pointerShape;
    if (_UIPlasmaEnabled() && [(PSPointerShape *)v31 shapeType]== 1)
    {

      v32 = [(UIView *)self->_axColorStroke layer];
      [v32 setBorderWidth:0.0];

      [(CAShapeLayer *)self->_axColorStrokeShapeLayer setLineWidth:v17];
      v33 = self->_axColorStrokeShapeLayer;
      v34 = v7;
      if (!v7)
      {
        v34 = +[UIColor whiteColor];
      }

      -[CAShapeLayer setStrokeColor:](v33, "setStrokeColor:", [v34 CGColor]);
      if (!v7)
      {
      }

      v35 = self->_axColorStrokeShapeLayer;
      v36 = +[UIColor clearColor];
      -[CAShapeLayer setFillColor:](v35, "setFillColor:", [v36 CGColor]);

      if (qword_100059C90 != -1)
      {
        sub_100026D30();
      }

      v37 = qword_100059C88;
      activeInterfaceOrientation = self->_activeInterfaceOrientation;
      [(PUIDPointerShapeView *)self _pointerSizeMultiplier];
      v40 = v39;
      v41 = *&CGAffineTransformIdentity.c;
      *&transform.a = *&CGAffineTransformIdentity.a;
      *&transform.c = v41;
      *&transform.tx = *&CGAffineTransformIdentity.tx;
      if ((activeInterfaceOrientation - 2) <= 2)
      {
        CGAffineTransformMakeRotation(&transform, dbl_100032160[activeInterfaceOrientation - 2]);
      }

      CGAffineTransformMakeScale(&t1, v40, v40);
      t2 = transform;
      CGAffineTransformConcat(&v66, &t1, &t2);
      transform = v66;
      v42 = CGPathCreateCopyByTransformingPath(v37, &transform);
      v43 = sub_100003600(self->_axColorStrokeShapeLayer, v42, self->_axColorStroke);
      CGPathRelease(v42);
      v29 = [(UIView *)self->_axColorStroke layer];
      [v29 addSublayer:self->_axColorStrokeShapeLayer];
    }

    else
    {

      [(CAShapeLayer *)self->_axColorStrokeShapeLayer removeFromSuperlayer];
      v44 = [(UIView *)self->_axColorStroke layer];
      [v44 setBorderColor:{objc_msgSend(v7, "CGColor")}];

      v29 = [(UIView *)self->_axColorStroke layer];
      [v29 setBorderWidth:v17];
    }
  }

  else
  {
    if (!self->_axColorStroke)
    {
      goto LABEL_24;
    }

    [(CAShapeLayer *)self->_axColorStrokeShapeLayer removeFromSuperlayer];
    v28 = self->_axColorStrokeShapeLayer;
    self->_axColorStrokeShapeLayer = 0;

    [(UIView *)self->_axColorStroke removeFromSuperview];
    v29 = self->_axColorStroke;
    self->_axColorStroke = 0;
  }

LABEL_24:
  if ([(PUIDPointerShapeView *)self _shouldShowAxCenterPointForPointerShape:v4])
  {
    [(PUIDPointerSettings *)self->_settings axLargeSystemPointerCenterDotSize];
    v46 = v45;
    [(PUIDPointerShapeView *)self _axPointerZoomScaleFactor];
    v48 = v46 * v47;
    v49 = v46 * v47 * 0.5;
    v50 = [(PUIDPointerShapeView *)self _bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v48, v48, v49];
    if (!self->_axCenterDot)
    {
      v51 = [[UIView alloc] initWithFrame:{0.0, 0.0, v48, v48}];
      v52 = +[UIColor clearColor];
      [(UIView *)v51 setBackgroundColor:v52];

      v53 = +[CAShapeLayer layer];
      [(CAShapeLayer *)v53 setLineCap:kCALineCapRound];
      v54 = [(UIView *)v51 layer];
      [v54 addSublayer:v53];

      [(PUIDPointerShapeView *)self addSubview:v51];
      axCenterDot = self->_axCenterDot;
      self->_axCenterDot = v51;
      v56 = v51;

      axCenterDotShapeLayer = self->_axCenterDotShapeLayer;
      self->_axCenterDotShapeLayer = v53;
    }

    [(PUIDPointerShapeView *)self expectedShapeBoundsForPointerShape:v4];
    [(UIView *)self->_axCenterDot setFrame:0.0, 0.0, v48, v48];
    v58 = self->_axCenterDot;
    UIRectGetCenter();
    [(UIView *)v58 setCenter:?];
    v59 = [(UIView *)self->_axCenterDot layer];
    [v59 setCornerRadius:v49];

    v60 = self->_axCenterDotShapeLayer;
    v61 = v7;
    if (!v7)
    {
      v61 = +[UIColor whiteColor];
    }

    -[CAShapeLayer setFillColor:](v60, "setFillColor:", [v61 CGColor]);
    if (!v7)
    {
    }

    -[CAShapeLayer setPath:](self->_axCenterDotShapeLayer, "setPath:", [v50 CGPath]);
    goto LABEL_34;
  }

  if (self->_axCenterDot)
  {
    [(CAShapeLayer *)self->_axCenterDotShapeLayer removeFromSuperlayer];
    v62 = self->_axCenterDotShapeLayer;
    self->_axCenterDotShapeLayer = 0;

    [(UIView *)self->_axCenterDot removeFromSuperview];
    v50 = self->_axCenterDot;
    self->_axCenterDot = 0;
LABEL_34:
  }

  [(PUIDPointerShapeView *)self _axUpdateInvertColorsFilters];
}

- (double)_axColorStrokeWidthForPointerShape:(id)a3
{
  v4 = a3;
  _AXSPointerStrokeColorWidth();
  v6 = v5;
  v7 = [v4 shapeType];

  if (v7 == 1)
  {
    [(PUIDPointerShapeView *)self _axPointerZoomScaleFactor];
    return v8 * v6;
  }

  return v6;
}

- (BOOL)_shouldShowAxColorStrokeForPointerShape:(id)a3 color:(id *)a4
{
  if ([a3 shapeType] - 1 > 2)
  {
    return 0;
  }

  _AXSPointerStrokeColor();
  v5 = _AXSPointerStrokeColorValues();
  v6 = v5 != 0;
  if (a4 && v5)
  {
    *a4 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  }

  return v6;
}

- (BOOL)_shouldShowAxCenterPointForPointerShape:(id)a3
{
  v3 = a3;
  if (!_AXSPointerShouldShowCenterPoint())
  {
    goto LABEL_7;
  }

  v4 = [v3 shapeType];
  if (v4 == 2)
  {
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v5 = v3;
    if (_UIPlasmaEnabled() && [v5 shapeType] == 1)
    {

      goto LABEL_7;
    }

LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v6 = 0;
LABEL_10:

  return v6;
}

- (CGRect)_colorStrokeShapeBoundsForPointerShape:(id)a3
{
  v4 = a3;
  [(PUIDPointerShapeView *)self expectedShapeBoundsForPointerShape:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PUIDPointerShapeView *)self _axColorStrokeWidthForPointerShape:v4];
  v14 = v13;

  v15 = v6 - v14;
  v16 = v8 - v14;
  v17 = v10 + v14 * 2.0;
  v18 = v12 + v14 * 2.0;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_axUpdateDoubleInvertFilterOnView:(id)a3
{
  if (!a3)
  {
    return;
  }

  v10 = [a3 layer];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v3 = [v10 valueForKeyPath:@"filters.InvertColorsDoubleInvert"];

    if (!v3)
    {
      v4 = [v10 filters];
      v5 = [v4 mutableCopy];

      if (!v5)
      {
        v5 = +[NSMutableArray array];
      }

      v6 = [CAFilter filterWithType:kCAFilterColorInvert];
      [v6 setName:@"InvertColorsDoubleInvert"];
      [v6 setAccessibility:1];
      [v5 addObject:v6];
      [v10 setFilters:v5];

      goto LABEL_10;
    }
  }

  else
  {
    v7 = [v10 filters];
    v8 = [v7 indexOfObjectPassingTest:&stru_100048C30];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v10 filters];
      v5 = [v9 mutableCopy];

      [v5 removeObjectAtIndex:v8];
      [v10 setFilters:v5];
LABEL_10:
    }
  }
}

- (void)_axUpdateInvertColorsFilters
{
  [(PUIDPointerShapeView *)self _axUpdateDoubleInvertFilterOnView:self->_axCenterDot];
  axColorStroke = self->_axColorStroke;

  [(PUIDPointerShapeView *)self _axUpdateDoubleInvertFilterOnView:axColorStroke];
}

- (void)_axRegisterForZoomUpdatesIfNecessary
{
  if (!self->_zoomRegistrationIdentifier)
  {
    if (_AXSZoomTouchEnabled())
    {
      v3 = [sub_100006040() sharedInstance];
      [v3 registerInterestInZoomAttributes];

      objc_initWeak(&location, self);
      v4 = [sub_100006040() sharedInstance];
      v5 = sub_1000062B4();
      v27[0] = v5;
      v6 = sub_100006424();
      v27[1] = v6;
      v7 = [NSArray arrayWithObjects:v27 count:2];
      v8 = [(PUIDPointerShapeView *)self window];
      v9 = [v8 screen];
      v10 = [v9 displayIdentity];
      v11 = [v10 displayID];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000057B0;
      v24[3] = &unk_100048C58;
      objc_copyWeak(&v25, &location);
      v12 = [v4 registerForZoomAttributes:v7 onDisplay:v11 updatesImmediatelyWithChangedHandler:v24];
      zoomRegistrationIdentifier = self->_zoomRegistrationIdentifier;
      self->_zoomRegistrationIdentifier = v12;

      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_100005838;
      v22 = &unk_100048A00;
      objc_copyWeak(&v23, &location);
      v14 = objc_retainBlock(&v19);
      v15 = [sub_100006670() sharedInstance];
      [v15 registerUpdateBlock:v14 forRetrieveSelector:"zoomPreferredCurrentLensMode" withListener:self];

      v16 = [sub_100006670() sharedInstance];
      v17 = [v16 zoomPreferredCurrentLensMode];
      v18 = sub_1000068E4();
      self->_inDockedZoomMode = [v17 isEqualToString:v18];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }
}

- (PUIDPointerShapeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end