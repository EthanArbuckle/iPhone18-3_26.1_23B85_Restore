@interface UITargetedPreview
+ (UITargetedPreview)new;
- (BOOL)_effectiveBackgroundColorResolvesToMaterial;
- (BOOL)_isLikelyOpaque;
- (BOOL)_isRoughlyEqualToPreview:(id)preview;
- (BOOL)_isVisibleIncludingAlpha:(BOOL)alpha;
- (BOOL)_mayInferCornerRadiusFromVisiblePath;
- (BOOL)_shouldHostSourceView;
- (BOOL)containsPoint:(CGPoint)point fromView:(id)view;
- (BOOL)isEqual:(id)equal;
- (CGPoint)_center;
- (CGPoint)_morphCenterPoint;
- (CGRect)_frame;
- (CGSize)_sizeRespectingOverridesUsingPresentationLayer:(BOOL)layer;
- (CGSize)_sizeUsingPresentationLayer:(BOOL)layer;
- (CGSize)size;
- (NSString)description;
- (UITargetedPreview)init;
- (UITargetedPreview)initWithView:(UIView *)view;
- (UITargetedPreview)initWithView:(UIView *)view parameters:(UIPreviewParameters *)parameters;
- (UITargetedPreview)initWithView:(UIView *)view parameters:(UIPreviewParameters *)parameters target:(UIPreviewTarget *)target;
- (UITargetedPreview)retargetedPreviewWithTarget:(UIPreviewTarget *)newTarget;
- (UIView)_viewToSnapshot;
- (_UIShape)_outlineShape;
- (id)_defaultTargetForView:(id)view withCenter:(CGPoint)center version:(unsigned int)version;
- (id)_initWithView:(id)view fromCurrentState:(BOOL)state fallbackBackgroundColor:(id)color contentScale:(double)scale;
- (id)_morphContainerView;
- (id)_resolvedBackgroundMaterial;
- (id)_resolvedMorphablePreview;
- (id)_trueSourceViewIfPortal;
- (void)_setPrefersUnmaskedPlatterStyle:(BOOL)style;
- (void)_transferAnimationsToView:(id)view;
- (void)_typedStorage;
- (void)set_springboardPlatterStyle:(BOOL)style;
@end

@implementation UITargetedPreview

- (CGSize)size
{
  if (!dyld_program_sdk_at_least())
  {
    view = [(UITargetedPreview *)self view];
    [view bounds];
    v8 = v11;
    v10 = v12;
    goto LABEL_5;
  }

  parameters = [(UITargetedPreview *)self parameters];
  visiblePath = [parameters visiblePath];

  if (visiblePath)
  {
    view = [(UITargetedPreview *)self parameters];
    visiblePath2 = [view visiblePath];
    [visiblePath2 bounds];
    v8 = v7;
    v10 = v9;

LABEL_5:
    v13 = v8;
    v14 = v10;
    goto LABEL_9;
  }

  [(UITargetedPreview *)self _sizeUsingPresentationLayer:0];
LABEL_9:
  result.height = v14;
  result.width = v13;
  return result;
}

- (BOOL)_isLikelyOpaque
{
  parameters = [(UITargetedPreview *)self parameters];
  visiblePath = [parameters visiblePath];
  if (visiblePath)
  {
    v5 = visiblePath;
    parameters2 = [(UITargetedPreview *)self parameters];
    visiblePath2 = [parameters2 visiblePath];
    _isRoundedRect = [visiblePath2 _isRoundedRect];

    if (!_isRoundedRect)
    {
      return 0;
    }
  }

  else
  {
  }

  parameters3 = [(UITargetedPreview *)self parameters];
  _effectiveBackgroundColor = [parameters3 _effectiveBackgroundColor];
  view = [(UITargetedPreview *)self view];
  traitCollection = [view traitCollection];
  v14 = [_effectiveBackgroundColor resolvedColorWithTraitCollection:traitCollection];
  _isOpaque = [v14 _isOpaque];

  return _isOpaque;
}

- (BOOL)_shouldHostSourceView
{
  sourceHostingBehavior = self->_sourceHostingBehavior;
  if (sourceHostingBehavior == 2)
  {
    return 0;
  }

  if (sourceHostingBehavior)
  {
    return 1;
  }

  return ![(UITargetedPreview *)self _sourceViewIsInViewHierarchy:v2];
}

- (_UIShape)_outlineShape
{
  parameters = [(UITargetedPreview *)self parameters];
  _overrideCornerRadii = [parameters _overrideCornerRadii];

  if (_overrideCornerRadii)
  {
    [_overrideCornerRadii radii];
    target = [(UITargetedPreview *)self target];
    [target _contentScale];
    v56 = vmulq_n_f64(v61, v6);
    v58 = vmulq_n_f64(v60, v6);
    v52 = vmulq_n_f64(v63, v6);
    v54 = vmulq_n_f64(v62, v6);

    [(UITargetedPreview *)self size];
    v8 = v7;
    v10 = v9;
    curve = [_overrideCornerRadii curve];
    v60 = v58;
    v61 = v56;
    v62 = v54;
    v63 = v52;
    v12 = [_UIShape shapeWithRoundedRect:&v60 cornerRadii:curve cornerCurve:0.0, 0.0, v8, v10];
    goto LABEL_30;
  }

  view = [(UITargetedPreview *)self view];
  curve = [view layer];

  if (!curve)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    if ((CACornerRadiiEqualToRadii() & 1) == 0)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      goto LABEL_15;
    }

LABEL_7:
    cornerCurve2 = *MEMORY[0x1E69796E0];
    parameters2 = [(UITargetedPreview *)self parameters];
    if ([parameters2 _previewMode] == 1)
    {
      _trueSourceViewIfPortal = cornerCurve2;
      v17 = 13.0;
      _cornerMask = 15;
      cornerCurve2 = *MEMORY[0x1E69796E8];
      goto LABEL_24;
    }

    _mayInferCornerRadiusFromVisiblePath = [(UITargetedPreview *)self _mayInferCornerRadiusFromVisiblePath];
    visiblePath = [parameters2 visiblePath];
    _trueSourceViewIfPortal = visiblePath;
    if (_mayInferCornerRadiusFromVisiblePath)
    {
      if ([visiblePath _isRoundedRect])
      {
        _cornerMask = [_trueSourceViewIfPortal _cornerMask];
        [_trueSourceViewIfPortal _cornerRadius];
        v17 = v21;
        _hasContinuousCorners = [_trueSourceViewIfPortal _hasContinuousCorners];
        v23 = *MEMORY[0x1E69796E8];
        if (!_hasContinuousCorners)
        {
          v23 = cornerCurve2;
        }

        v24 = v23;

        cornerCurve2 = v24;
      }

      else
      {
        v17 = 0.0;
        _cornerMask = 15;
      }

      goto LABEL_24;
    }

    if (visiblePath)
    {
      _previewMode = [parameters2 _previewMode];

      if (_previewMode != 5)
      {
        visiblePath2 = [parameters2 visiblePath];
        if (visiblePath2)
        {
          target2 = visiblePath2;
          v49 = [_UIShape shapeWithPath:visiblePath2];
          goto LABEL_28;
        }

        v42 = 0.0;
        _cornerMask = 15;
LABEL_27:
        [(UITargetedPreview *)self size];
        v44 = v43;
        v46 = v45;
        target2 = [(UITargetedPreview *)self target];
        [target2 _contentScale];
        v49 = [_UIShape shapeWithRoundedRect:cornerCurve2 cornerRadius:_cornerMask cornerCurve:0.0 cornerMask:0.0, v44, v46, v42 * v48];
LABEL_28:
        v12 = v49;

        goto LABEL_29;
      }
    }

    _trueSourceViewIfPortal = [(UITargetedPreview *)self _trueSourceViewIfPortal];
    view2 = [(UITargetedPreview *)self view];
    if (_trueSourceViewIfPortal != view2)
    {
      [_trueSourceViewIfPortal _cornerRadius];
      v34 = v33;
      view3 = [(UITargetedPreview *)self view];
      [view3 _cornerRadius];
      v37 = v36;

      if (v34 > v37)
      {
LABEL_22:
        layer = [_trueSourceViewIfPortal layer];
        _cornerMask = [layer maskedCorners];

        [_trueSourceViewIfPortal _cornerRadius];
        v17 = v39;
        layer2 = [_trueSourceViewIfPortal layer];
        cornerCurve = [layer2 cornerCurve];

        cornerCurve2 = cornerCurve;
LABEL_24:

        if (_cornerMask)
        {
          v42 = v17;
        }

        else
        {
          _cornerMask = 15;
          v42 = 0.0;
        }

        goto LABEL_27;
      }

      [(UITargetedPreview *)self view];
      _trueSourceViewIfPortal = view2 = _trueSourceViewIfPortal;
    }

    goto LABEL_22;
  }

  [curve cornerRadii];
  if (CACornerRadiiEqualToRadii())
  {
    goto LABEL_7;
  }

  [curve cornerRadii];
LABEL_15:
  target3 = [(UITargetedPreview *)self target];
  [target3 _contentScale];
  v57 = vmulq_n_f64(v61, v26);
  v59 = vmulq_n_f64(v60, v26);
  v53 = vmulq_n_f64(v63, v26);
  v55 = vmulq_n_f64(v62, v26);

  [(UITargetedPreview *)self size];
  v28 = v27;
  v30 = v29;
  cornerCurve2 = [curve cornerCurve];
  v60 = v59;
  v61 = v57;
  v62 = v55;
  v63 = v53;
  v12 = [_UIShape shapeWithRoundedRect:&v60 cornerRadii:cornerCurve2 cornerCurve:0.0, 0.0, v28, v30];
LABEL_29:

LABEL_30:

  return v12;
}

- (BOOL)_mayInferCornerRadiusFromVisiblePath
{
  parameters = [(UITargetedPreview *)self parameters];
  visiblePath = [parameters visiblePath];

  if (visiblePath)
  {
    _trueSourceViewIfPortal = [(UITargetedPreview *)self _trueSourceViewIfPortal];
    [visiblePath bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [_trueSourceViewIfPortal _currentScreenScale];
    v15 = UIRectRoundToScale(v7, v9, v11, v13, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [visiblePath bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [_trueSourceViewIfPortal _currentScreenScale];
    v37.origin.x = UIRectRoundToScale(v23, v25, v27, v29, v30);
    v37.origin.y = v31;
    v37.size.width = v32;
    v37.size.height = v33;
    v36.origin.x = v15;
    v36.origin.y = v17;
    v36.size.width = v19;
    v36.size.height = v21;
    v34 = CGRectEqualToRect(v36, v37);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)_morphContainerView
{
  target = [(UITargetedPreview *)self target];
  container = [target container];

  return container;
}

- (id)_trueSourceViewIfPortal
{
  view = [(UITargetedPreview *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceView = [view sourceView];
    v4 = sourceView;
    if (sourceView)
    {
      v5 = sourceView;

      view = v5;
    }
  }

  return view;
}

- (CGPoint)_morphCenterPoint
{
  target = [(UITargetedPreview *)self target];
  [target center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)_resolvedMorphablePreview
{
  selfCopy = self;
  v3 = sub_18923BFBC();

  return v3;
}

- (CGPoint)_center
{
  selfCopy = self;
  v3 = sub_18923C150();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)_sizeRespectingOverridesUsingPresentationLayer:(BOOL)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_18923B9EC(&v14);
  v25 = v14;
  v6 = v15;
  v5 = v16;
  v7 = v17;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  if (sub_188F36334(&v25) == 1 || (v7 & 1) != 0)
  {
    [(UITargetedPreview *)selfCopy _sizeUsingPresentationLayer:layerCopy];
    v9 = v8;
    v11 = v10;
  }

  else
  {

    v9 = v6;
    v11 = v5;
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (UITargetedPreview)initWithView:(UIView *)view parameters:(UIPreviewParameters *)parameters target:(UIPreviewTarget *)target
{
  v10 = view;
  v11 = parameters;
  v12 = target;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"parameters != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"target != nil"}];

LABEL_4:
  v27.receiver = self;
  v27.super_class = UITargetedPreview;
  v13 = [(UITargetedPreview *)&v27 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_view, view);
    layer = [(UIView *)v10 layer];
    layer = v14->_layer;
    v14->_layer = layer;

    [(UIView *)v10 _cropInsets];
    v14->_cropInsets.top = v17;
    v14->_cropInsets.left = v18;
    v14->_cropInsets.bottom = v19;
    v14->_cropInsets.right = v20;
    objc_storeStrong(&v14->_parameters, parameters);
    objc_storeStrong(&v14->_target, target);
    window = [(UIView *)v14->_view window];
    v14->_sourceViewIsInViewHierarchy = window != 0;

    *&v14->_hasCustomTarget = 257;
    v22 = v14;
  }

  return v14;
}

- (UITargetedPreview)initWithView:(UIView *)view parameters:(UIPreviewParameters *)parameters
{
  v7 = view;
  v8 = parameters;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];
  }

  _window = [(UIView *)v7 _window];

  if (!_window)
  {
    v10 = objc_opt_class();
    BUG_IN_CLIENT_OF_TARGETED_PREVIEW__VIEW_IS_NOT_IN_A_WINDOW(v10, v7);
  }

  [(UIView *)v7 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  visiblePath = [(UIPreviewParameters *)v8 visiblePath];

  if (visiblePath)
  {
    visiblePath2 = [(UIPreviewParameters *)v8 visiblePath];
    [visiblePath2 bounds];
    v23 = v22 + v21 * 0.5;
    v26 = v25 + v24 * 0.5;
    superview = [(UIView *)v7 superview];
    [(UIView *)v7 convertPoint:superview toView:v23, v26];
    v29 = v28;
    v31 = v30;
  }

  else
  {
    v29 = v12 + v16 * 0.5;
    v31 = v14 + v18 * 0.5;
  }

  v32 = [(UITargetedPreview *)self _defaultTargetForView:v7 withCenter:983040 version:v29, v31];
  v33 = [(UITargetedPreview *)self initWithView:v7 parameters:v8 target:v32];
  v33->_hasCustomTarget = 0;

  return v33;
}

- (UITargetedPreview)initWithView:(UIView *)view
{
  v4 = view;
  _window = [(UIView *)v4 _window];

  if (!_window)
  {
    v6 = objc_opt_class();
    BUG_IN_CLIENT_OF_TARGETED_PREVIEW__VIEW_IS_NOT_IN_A_WINDOW(v6, v4);
  }

  if (dyld_program_sdk_at_least())
  {
    v7 = [(UITargetedPreview *)self _initWithView:v4 fromCurrentState:1 fallbackBackgroundColor:0 contentScale:1.0];
  }

  else
  {
    v8 = objc_alloc_init(UIPreviewParameters);
    [(UIView *)v4 frame];
    v13 = [(UITargetedPreview *)self _defaultTargetForView:v4 withCenter:852992 version:v10 + v9 * 0.5, v12 + v11 * 0.5];
    v7 = [(UITargetedPreview *)self initWithView:v4 parameters:v8 target:v13];
  }

  *&v7->_hasCustomTarget = 0;

  return v7;
}

- (id)_initWithView:(id)view fromCurrentState:(BOOL)state fallbackBackgroundColor:(id)color contentScale:(double)scale
{
  stateCopy = state;
  v99 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  colorCopy = color;
  v12 = objc_alloc_init(UIPreviewParameters);
  backgroundColor = [viewCopy backgroundColor];
  v14 = backgroundColor;
  if (backgroundColor || (v14 = colorCopy) != 0)
  {
    [(UIPreviewParameters *)v12 setBackgroundColor:v14];
  }

  else
  {
    v71 = +[UIColor clearColor];
    [(UIPreviewParameters *)v12 setBackgroundColor:v71];
  }

  layer = [viewCopy layer];
  shadowPath = [layer shadowPath];

  if (shadowPath)
  {
    layer2 = [viewCopy layer];
    v18 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [layer2 shadowPath]);

    CGAffineTransformMakeScale(&v79, scale, scale);
    [v18 applyTransform:&v79];
    [(UIPreviewParameters *)v12 setShadowPath:v18];
  }

  _outermostLayer = [viewCopy _outermostLayer];
  v20 = _outermostLayer;
  if (_outermostLayer)
  {
    layer3 = _outermostLayer;
  }

  else
  {
    layer3 = [viewCopy layer];
  }

  v22 = layer3;

  scaleCopy = scale;
  if (stateCopy)
  {
    presentationLayer = [v22 presentationLayer];
    superlayer = [presentationLayer superlayer];

    if (superlayer)
    {
      v25 = presentationLayer;

      v22 = v25;
    }
  }

  [v22 bounds];
  v28 = v27 + v26 * 0.5;
  v31 = v30 + v29 * 0.5;
  superlayer2 = [v22 superlayer];
  [v22 convertPoint:superlayer2 toLayer:{v28, v31}];
  v34 = v33;
  v36 = v35;

  [viewCopy bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  traitCollection = [viewCopy traitCollection];
  [traitCollection displayScale];
  UIRectCenteredAboutPointScale(v38, v40, v42, v44, v34, v36, v46);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  [viewCopy _cropInsets];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  memset(&v79, 0, sizeof(v79));
  if (v22)
  {
    [v22 transform];
  }

  CATransform3DGetDecomposition_();
  v63 = *(MEMORY[0x1E69792E8] + 80);
  v81 = *(MEMORY[0x1E69792E8] + 64);
  v82 = v63;
  v64 = *(MEMORY[0x1E69792E8] + 112);
  v83 = *(MEMORY[0x1E69792E8] + 96);
  v84 = v64;
  v65 = *(MEMORY[0x1E69792E8] + 16);
  *&v79.a = *MEMORY[0x1E69792E8];
  *&v79.c = v65;
  v66 = *(MEMORY[0x1E69792E8] + 48);
  *&v79.tx = *(MEMORY[0x1E69792E8] + 32);
  v80 = v66;
  CATransform3DSetDecomposition_();
  superview = [viewCopy superview];
  v75 = v81;
  v76 = v82;
  v77 = v83;
  v78 = v84;
  v73 = v79;
  v74 = v80;
  v68 = [UIPreviewTarget _targetWithContainer:superview center:&v73 transform3D:v48 + v58 + (v52 - (v58 + v62)) * 0.5, v50 + v56 + (v54 - (v56 + v60)) * 0.5];

  [v68 _setContentScale:scaleCopy];
  v69 = [(UITargetedPreview *)self initWithView:viewCopy parameters:v12 target:v68];

  return v69;
}

- (id)_defaultTargetForView:(id)view withCenter:(CGPoint)center version:(unsigned int)version
{
  y = center.y;
  x = center.x;
  viewCopy = view;
  v8 = dyld_program_sdk_at_least();
  v9 = [UIPreviewTarget alloc];
  superview = [viewCopy superview];
  if (v8)
  {
    if (viewCopy)
    {
      [viewCopy transform];
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    v11 = [(UIPreviewTarget *)v9 initWithContainer:superview center:v14 transform:x, y];
  }

  else
  {
    v11 = [(UIPreviewTarget *)v9 initWithContainer:superview center:x, y];
  }

  v12 = v11;

  return v12;
}

- (UITargetedPreview)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:355 description:@"not implemented"];

  return 0;
}

+ (UITargetedPreview)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:360 description:@"not implemented"];

  return 0;
}

- (BOOL)containsPoint:(CGPoint)point fromView:(id)view
{
  y = point.y;
  x = point.x;
  target = self->_target;
  viewCopy = view;
  container = [(UIPreviewTarget *)target container];
  [container convertPoint:viewCopy fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  [(UIView *)self->_view bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  visiblePath = [(UIPreviewParameters *)self->_parameters visiblePath];

  if (visiblePath)
  {
    visiblePath2 = [(UIPreviewParameters *)self->_parameters visiblePath];
    [visiblePath2 bounds];
    v15 = v24;
    v17 = v25;
    v19 = v26;
    v21 = v27;
  }

  view = self->_view;
  if (view)
  {
    [(UIView *)view transform];
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
  }

  CGAffineTransformInvert(&v35, &v34);
  v37.origin.x = v15;
  v37.origin.y = v17;
  v37.size.width = v19;
  v37.size.height = v21;
  v38 = CGRectApplyAffineTransform(v37, &v35);
  width = v38.size.width;
  height = v38.size.height;
  [(UIPreviewTarget *)self->_target center:v38.origin.x];
  v39.origin.y = round(v31 - height * 0.5);
  v39.origin.x = round(v32 - width * 0.5);
  v39.size.width = width;
  v39.size.height = height;
  v36.x = v11;
  v36.y = v13;
  return CGRectContainsPoint(v39, v36);
}

- (CGSize)_sizeUsingPresentationLayer:(BOOL)layer
{
  layerCopy = layer;
  parameters = [(UITargetedPreview *)self parameters];
  visiblePath = [parameters visiblePath];

  if (visiblePath)
  {
    parameters2 = [(UITargetedPreview *)self parameters];
    visiblePath2 = [parameters2 visiblePath];
    [visiblePath2 bounds];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = self->_layer;
    parameters2 = v13;
    if (layerCopy)
    {
      presentationLayer = [(CALayer *)v13 presentationLayer];

      if (presentationLayer)
      {
        presentationLayer2 = [parameters2 presentationLayer];

        parameters2 = presentationLayer2;
      }
    }

    [parameters2 bounds];
    v10 = v16 - (self->_cropInsets.left + self->_cropInsets.right);
    v12 = v17 - (self->_cropInsets.top + self->_cropInsets.bottom);
  }

  target = [(UITargetedPreview *)self target];
  [target _contentScale];
  v20 = v10 * v19;
  target2 = [(UITargetedPreview *)self target];
  [target2 _contentScale];
  v23 = v12 * v22;

  v24 = v20;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (UITargetedPreview)retargetedPreviewWithTarget:(UIPreviewTarget *)newTarget
{
  v5 = newTarget;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:421 description:{@"Invalid parameter not satisfying: %@", @"newTarget != nil"}];
  }

  v6 = objc_alloc(objc_opt_class());
  view = [(UITargetedPreview *)self view];
  parameters = [(UITargetedPreview *)self parameters];
  v9 = [v6 initWithView:view parameters:parameters target:v5];

  [v9 _setDefaultPreview:{-[UITargetedPreview _isDefaultPreview](self, "_isDefaultPreview")}];
  overridePositionTrackingView = [(UITargetedPreview *)self overridePositionTrackingView];
  [v9 _setOverridePositionTrackingView:overridePositionTrackingView];

  v9[48] = self->_sourceViewIsInViewHierarchy;
  [v9 _setSourceHostingBehavior:{-[UITargetedPreview _sourceHostingBehavior](self, "_sourceHostingBehavior")}];
  [v9 set_captureHierarchyBelowSourceView:{-[UITargetedPreview _captureHierarchyBelowSourceView](self, "_captureHierarchyBelowSourceView")}];
  _internalIdentifier = [(UITargetedPreview *)self _internalIdentifier];
  [v9 set_internalIdentifier:_internalIdentifier];

  _matchableProperties = [(UITargetedPreview *)self _matchableProperties];
  [v9 set_matchableProperties:_matchableProperties];

  typedStorage = self->_typedStorage;
  if (typedStorage)
  {
    _typedStorage = [(UITargetedPreview *)v9 _typedStorage];
    [(_UITypedStorage *)typedStorage copyInto:_typedStorage];
  }

  return v9;
}

- (void)_typedStorage
{
  if (self)
  {
    selfCopy = self;
    v3 = self[8];
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = selfCopy[8];
      selfCopy[8] = v4;

      v3 = selfCopy[8];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (BOOL)_isVisibleIncludingAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  target = [(UITargetedPreview *)self target];
  container = [target container];

  view = [(UITargetedPreview *)self view];
  _window = [container _window];
  if (!_window || ([container isHidden] & 1) != 0 || (objc_msgSend(container, "_isHiddenForReuse") & 1) != 0 || (objc_msgSend(view, "isHidden") & 1) != 0)
  {
  }

  else
  {
    _isHiddenForReuse = [view _isHiddenForReuse];

    if ((_isHiddenForReuse & 1) == 0)
    {
      if (!alphaCopy || ([container alpha], v12 >= 0.01) && (objc_msgSend(view, "alpha"), v13 >= 0.01))
      {
        v9 = 1;
        goto LABEL_7;
      }
    }
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (BOOL)_effectiveBackgroundColorResolvesToMaterial
{
  parameters = [(UITargetedPreview *)self parameters];
  _effectiveBackgroundColor = [parameters _effectiveBackgroundColor];

  view = [(UITargetedPreview *)self view];
  traitCollection = [view traitCollection];

  v7 = [_effectiveBackgroundColor _resolvedMaterialWithTraitCollection:traitCollection];
  LOBYTE(view) = v7 != 0;

  return view;
}

- (CGRect)_frame
{
  [(UITargetedPreview *)self size];
  v4 = v3;
  v6 = v5;
  target = [(UITargetedPreview *)self target];
  [target center];
  v9 = round(v8 - v6 * 0.5);
  v11 = round(v10 - v4 * 0.5);

  v12 = v11;
  v13 = v9;
  v14 = v4;
  v15 = v6;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_isRoughlyEqualToPreview:(id)preview
{
  previewCopy = preview;
  view = [(UITargetedPreview *)self view];
  view2 = [previewCopy view];

  if (view == view2)
  {
    v45 = 1;
  }

  else
  {
    [(UITargetedPreview *)self size];
    v8 = v7;
    v10 = v9;
    target = [(UITargetedPreview *)self target];
    [target center];
    v13 = round(v12 - v10 * 0.5);
    v15 = round(v14 - v8 * 0.5);

    target2 = [(UITargetedPreview *)self target];
    container = [target2 container];
    [container convertRect:0 toView:{v15, v13, v8, v10}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    [previewCopy size];
    v27 = v26;
    v29 = v28;
    target3 = [previewCopy target];
    [target3 center];
    v32 = round(v31 - v29 * 0.5);
    v34 = round(v33 - v27 * 0.5);

    target4 = [previewCopy target];
    container2 = [target4 container];
    [container2 convertRect:0 toView:{v34, v32, v27, v29}];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v47.origin.x = v19;
    v47.origin.y = v21;
    v47.size.width = v23;
    v47.size.height = v25;
    v48.origin.x = v38;
    v48.origin.y = v40;
    v48.size.width = v42;
    v48.size.height = v44;
    v45 = CGRectIntersectsRect(v47, v48);
  }

  return v45;
}

- (void)_transferAnimationsToView:(id)view
{
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  view = [(UITargetedPreview *)self view];
  layer = [view layer];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  _transferrableAnimationKeys = [(UITargetedPreview *)self _transferrableAnimationKeys];
  v8 = [_transferrableAnimationKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(_transferrableAnimationKeys);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [layer animationForKey:v12];
        v14 = [v13 copy];

        if (v14)
        {
          [layer removeAnimationForKey:v12];
          layer2 = [viewCopy layer];
          [layer2 addAnimation:v14 forKey:v12];
        }
      }

      v9 = [_transferrableAnimationKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_setPrefersUnmaskedPlatterStyle:(BOOL)style
{
  if (style)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  [(UITargetedPreview *)self _setPreviewMode:v3];
}

- (void)set_springboardPlatterStyle:(BOOL)style
{
  if (style)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  [(UITargetedPreview *)self _setPreviewMode:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _internalIdentifier = [(UITargetedPreview *)self _internalIdentifier];
    _internalIdentifier2 = [v5 _internalIdentifier];
    v8 = [_internalIdentifier isEqual:_internalIdentifier2];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      view = [v5 view];
      view2 = [(UITargetedPreview *)self view];
      if (view == view2 && (v12 = [v5 _isDefaultPreview], v12 == -[UITargetedPreview _isDefaultPreview](self, "_isDefaultPreview")) && (v13 = objc_msgSend(v5, "_sourceViewIsInViewHierarchy"), v13 == -[UITargetedPreview _sourceViewIsInViewHierarchy](self, "_sourceViewIsInViewHierarchy")) && (v14 = objc_msgSend(v5, "_hasCustomParameters"), v14 == -[UITargetedPreview _hasCustomParameters](self, "_hasCustomParameters")) && (v15 = objc_msgSend(v5, "_hasCustomTarget"), v15 == -[UITargetedPreview _hasCustomTarget](self, "_hasCustomTarget")) && (v16 = objc_msgSend(v5, "_previewMode"), v16 == -[UITargetedPreview _previewMode](self, "_previewMode")))
      {
        overridePositionTrackingView = [v5 overridePositionTrackingView];
        overridePositionTrackingView2 = [(UITargetedPreview *)self overridePositionTrackingView];
        if (overridePositionTrackingView == overridePositionTrackingView2)
        {
          WeakRetained = objc_loadWeakRetained(v5 + 12);
          v21 = objc_loadWeakRetained(&self->_viewToSnapshot);
          if (WeakRetained == v21 && v5[13] == self->__PreviewProvider)
          {
            target = [v5 target];
            target2 = [(UITargetedPreview *)self target];
            v29 = target;
            if ([target isEqual:target2])
            {
              parameters = [v5 parameters];
              parameters2 = [(UITargetedPreview *)self parameters];
              v27 = parameters;
              if ([parameters isEqual:parameters2])
              {
                _accessoryViews = [v5 _accessoryViews];
                _accessoryViews2 = [(UITargetedPreview *)self _accessoryViews];
                v9 = [_accessoryViews isEqual:?];
              }

              else
              {
                v9 = 0;
              }
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  view = [(UITargetedPreview *)self view];
  if (view)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, view];
  }

  else
  {
    v9 = @"(nil)";
  }

  parameters = [(UITargetedPreview *)self parameters];
  if (parameters)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"<%@: %p>", v13, parameters];
  }

  else
  {
    v14 = @"(nil)";
  }

  target = [(UITargetedPreview *)self target];
  if (target)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 stringWithFormat:@"<%@: %p>", v18, target];
  }

  else
  {
    v19 = @"(nil)";
  }

  v20 = [v3 stringWithFormat:@"<%@: %p view = %@; parameters = %@; target = %@>", v4, self, v9, v14, v19];;

  return v20;
}

- (UIView)_viewToSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToSnapshot);

  return WeakRetained;
}

- (id)_resolvedBackgroundMaterial
{
  view = [(UITargetedPreview *)self view];
  _resolvedBackgroundMaterial = [view _resolvedBackgroundMaterial];

  return _resolvedBackgroundMaterial;
}

@end