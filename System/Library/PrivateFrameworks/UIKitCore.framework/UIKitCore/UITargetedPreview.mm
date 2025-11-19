@interface UITargetedPreview
+ (UITargetedPreview)new;
- (BOOL)_effectiveBackgroundColorResolvesToMaterial;
- (BOOL)_isLikelyOpaque;
- (BOOL)_isRoughlyEqualToPreview:(id)a3;
- (BOOL)_isVisibleIncludingAlpha:(BOOL)a3;
- (BOOL)_mayInferCornerRadiusFromVisiblePath;
- (BOOL)_shouldHostSourceView;
- (BOOL)containsPoint:(CGPoint)a3 fromView:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)_center;
- (CGPoint)_morphCenterPoint;
- (CGRect)_frame;
- (CGSize)_sizeRespectingOverridesUsingPresentationLayer:(BOOL)a3;
- (CGSize)_sizeUsingPresentationLayer:(BOOL)a3;
- (CGSize)size;
- (NSString)description;
- (UITargetedPreview)init;
- (UITargetedPreview)initWithView:(UIView *)view;
- (UITargetedPreview)initWithView:(UIView *)view parameters:(UIPreviewParameters *)parameters;
- (UITargetedPreview)initWithView:(UIView *)view parameters:(UIPreviewParameters *)parameters target:(UIPreviewTarget *)target;
- (UITargetedPreview)retargetedPreviewWithTarget:(UIPreviewTarget *)newTarget;
- (UIView)_viewToSnapshot;
- (_UIShape)_outlineShape;
- (id)_defaultTargetForView:(id)a3 withCenter:(CGPoint)a4 version:(unsigned int)a5;
- (id)_initWithView:(id)a3 fromCurrentState:(BOOL)a4 fallbackBackgroundColor:(id)a5 contentScale:(double)a6;
- (id)_morphContainerView;
- (id)_resolvedBackgroundMaterial;
- (id)_resolvedMorphablePreview;
- (id)_trueSourceViewIfPortal;
- (void)_setPrefersUnmaskedPlatterStyle:(BOOL)a3;
- (void)_transferAnimationsToView:(id)a3;
- (void)_typedStorage;
- (void)set_springboardPlatterStyle:(BOOL)a3;
@end

@implementation UITargetedPreview

- (CGSize)size
{
  if (!dyld_program_sdk_at_least())
  {
    v5 = [(UITargetedPreview *)self view];
    [v5 bounds];
    v8 = v11;
    v10 = v12;
    goto LABEL_5;
  }

  v3 = [(UITargetedPreview *)self parameters];
  v4 = [v3 visiblePath];

  if (v4)
  {
    v5 = [(UITargetedPreview *)self parameters];
    v6 = [v5 visiblePath];
    [v6 bounds];
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
  v3 = [(UITargetedPreview *)self parameters];
  v4 = [v3 visiblePath];
  if (v4)
  {
    v5 = v4;
    v6 = [(UITargetedPreview *)self parameters];
    v7 = [v6 visiblePath];
    v8 = [v7 _isRoundedRect];

    if (!v8)
    {
      return 0;
    }
  }

  else
  {
  }

  v10 = [(UITargetedPreview *)self parameters];
  v11 = [v10 _effectiveBackgroundColor];
  v12 = [(UITargetedPreview *)self view];
  v13 = [v12 traitCollection];
  v14 = [v11 resolvedColorWithTraitCollection:v13];
  v15 = [v14 _isOpaque];

  return v15;
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
  v3 = [(UITargetedPreview *)self parameters];
  v4 = [v3 _overrideCornerRadii];

  if (v4)
  {
    [v4 radii];
    v5 = [(UITargetedPreview *)self target];
    [v5 _contentScale];
    v56 = vmulq_n_f64(v61, v6);
    v58 = vmulq_n_f64(v60, v6);
    v52 = vmulq_n_f64(v63, v6);
    v54 = vmulq_n_f64(v62, v6);

    [(UITargetedPreview *)self size];
    v8 = v7;
    v10 = v9;
    v11 = [v4 curve];
    v60 = v58;
    v61 = v56;
    v62 = v54;
    v63 = v52;
    v12 = [_UIShape shapeWithRoundedRect:&v60 cornerRadii:v11 cornerCurve:0.0, 0.0, v8, v10];
    goto LABEL_30;
  }

  v13 = [(UITargetedPreview *)self view];
  v11 = [v13 layer];

  if (!v11)
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
    v14 = *MEMORY[0x1E69796E0];
    v15 = [(UITargetedPreview *)self parameters];
    if ([v15 _previewMode] == 1)
    {
      v16 = v14;
      v17 = 13.0;
      v18 = 15;
      v14 = *MEMORY[0x1E69796E8];
      goto LABEL_24;
    }

    v19 = [(UITargetedPreview *)self _mayInferCornerRadiusFromVisiblePath];
    v20 = [v15 visiblePath];
    v16 = v20;
    if (v19)
    {
      if ([v20 _isRoundedRect])
      {
        v18 = [v16 _cornerMask];
        [v16 _cornerRadius];
        v17 = v21;
        v22 = [v16 _hasContinuousCorners];
        v23 = *MEMORY[0x1E69796E8];
        if (!v22)
        {
          v23 = v14;
        }

        v24 = v23;

        v14 = v24;
      }

      else
      {
        v17 = 0.0;
        v18 = 15;
      }

      goto LABEL_24;
    }

    if (v20)
    {
      v31 = [v15 _previewMode];

      if (v31 != 5)
      {
        v51 = [v15 visiblePath];
        if (v51)
        {
          v47 = v51;
          v49 = [_UIShape shapeWithPath:v51];
          goto LABEL_28;
        }

        v42 = 0.0;
        v18 = 15;
LABEL_27:
        [(UITargetedPreview *)self size];
        v44 = v43;
        v46 = v45;
        v47 = [(UITargetedPreview *)self target];
        [v47 _contentScale];
        v49 = [_UIShape shapeWithRoundedRect:v14 cornerRadius:v18 cornerCurve:0.0 cornerMask:0.0, v44, v46, v42 * v48];
LABEL_28:
        v12 = v49;

        goto LABEL_29;
      }
    }

    v16 = [(UITargetedPreview *)self _trueSourceViewIfPortal];
    v32 = [(UITargetedPreview *)self view];
    if (v16 != v32)
    {
      [v16 _cornerRadius];
      v34 = v33;
      v35 = [(UITargetedPreview *)self view];
      [v35 _cornerRadius];
      v37 = v36;

      if (v34 > v37)
      {
LABEL_22:
        v38 = [v16 layer];
        v18 = [v38 maskedCorners];

        [v16 _cornerRadius];
        v17 = v39;
        v40 = [v16 layer];
        v41 = [v40 cornerCurve];

        v14 = v41;
LABEL_24:

        if (v18)
        {
          v42 = v17;
        }

        else
        {
          v18 = 15;
          v42 = 0.0;
        }

        goto LABEL_27;
      }

      [(UITargetedPreview *)self view];
      v16 = v32 = v16;
    }

    goto LABEL_22;
  }

  [v11 cornerRadii];
  if (CACornerRadiiEqualToRadii())
  {
    goto LABEL_7;
  }

  [v11 cornerRadii];
LABEL_15:
  v25 = [(UITargetedPreview *)self target];
  [v25 _contentScale];
  v57 = vmulq_n_f64(v61, v26);
  v59 = vmulq_n_f64(v60, v26);
  v53 = vmulq_n_f64(v63, v26);
  v55 = vmulq_n_f64(v62, v26);

  [(UITargetedPreview *)self size];
  v28 = v27;
  v30 = v29;
  v14 = [v11 cornerCurve];
  v60 = v59;
  v61 = v57;
  v62 = v55;
  v63 = v53;
  v12 = [_UIShape shapeWithRoundedRect:&v60 cornerRadii:v14 cornerCurve:0.0, 0.0, v28, v30];
LABEL_29:

LABEL_30:

  return v12;
}

- (BOOL)_mayInferCornerRadiusFromVisiblePath
{
  v3 = [(UITargetedPreview *)self parameters];
  v4 = [v3 visiblePath];

  if (v4)
  {
    v5 = [(UITargetedPreview *)self _trueSourceViewIfPortal];
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 _currentScreenScale];
    v15 = UIRectRoundToScale(v7, v9, v11, v13, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v4 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v5 _currentScreenScale];
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
  v2 = [(UITargetedPreview *)self target];
  v3 = [v2 container];

  return v3;
}

- (id)_trueSourceViewIfPortal
{
  v2 = [(UITargetedPreview *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 sourceView];
    v4 = v3;
    if (v3)
    {
      v5 = v3;

      v2 = v5;
    }
  }

  return v2;
}

- (CGPoint)_morphCenterPoint
{
  v2 = [(UITargetedPreview *)self target];
  [v2 center];
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
  v2 = self;
  v3 = sub_18923BFBC();

  return v3;
}

- (CGPoint)_center
{
  v2 = self;
  v3 = sub_18923C150();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)_sizeRespectingOverridesUsingPresentationLayer:(BOOL)a3
{
  v3 = a3;
  v4 = self;
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
    [(UITargetedPreview *)v4 _sizeUsingPresentationLayer:v3];
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
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"parameters != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

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
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"target != nil"}];

LABEL_4:
  v27.receiver = self;
  v27.super_class = UITargetedPreview;
  v13 = [(UITargetedPreview *)&v27 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_view, view);
    v15 = [(UIView *)v10 layer];
    layer = v14->_layer;
    v14->_layer = v15;

    [(UIView *)v10 _cropInsets];
    v14->_cropInsets.top = v17;
    v14->_cropInsets.left = v18;
    v14->_cropInsets.bottom = v19;
    v14->_cropInsets.right = v20;
    objc_storeStrong(&v14->_parameters, parameters);
    objc_storeStrong(&v14->_target, target);
    v21 = [(UIView *)v14->_view window];
    v14->_sourceViewIsInViewHierarchy = v21 != 0;

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
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];
  }

  v9 = [(UIView *)v7 _window];

  if (!v9)
  {
    v10 = objc_opt_class();
    BUG_IN_CLIENT_OF_TARGETED_PREVIEW__VIEW_IS_NOT_IN_A_WINDOW(v10, v7);
  }

  [(UIView *)v7 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIPreviewParameters *)v8 visiblePath];

  if (v19)
  {
    v20 = [(UIPreviewParameters *)v8 visiblePath];
    [v20 bounds];
    v23 = v22 + v21 * 0.5;
    v26 = v25 + v24 * 0.5;
    v27 = [(UIView *)v7 superview];
    [(UIView *)v7 convertPoint:v27 toView:v23, v26];
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
  v5 = [(UIView *)v4 _window];

  if (!v5)
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

- (id)_initWithView:(id)a3 fromCurrentState:(BOOL)a4 fallbackBackgroundColor:(id)a5 contentScale:(double)a6
{
  v8 = a4;
  v99 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = objc_alloc_init(UIPreviewParameters);
  v13 = [v10 backgroundColor];
  v14 = v13;
  if (v13 || (v14 = v11) != 0)
  {
    [(UIPreviewParameters *)v12 setBackgroundColor:v14];
  }

  else
  {
    v71 = +[UIColor clearColor];
    [(UIPreviewParameters *)v12 setBackgroundColor:v71];
  }

  v15 = [v10 layer];
  v16 = [v15 shadowPath];

  if (v16)
  {
    v17 = [v10 layer];
    v18 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [v17 shadowPath]);

    CGAffineTransformMakeScale(&v79, a6, a6);
    [v18 applyTransform:&v79];
    [(UIPreviewParameters *)v12 setShadowPath:v18];
  }

  v19 = [v10 _outermostLayer];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [v10 layer];
  }

  v22 = v21;

  v72 = a6;
  if (v8)
  {
    v23 = [v22 presentationLayer];
    v24 = [v23 superlayer];

    if (v24)
    {
      v25 = v23;

      v22 = v25;
    }
  }

  [v22 bounds];
  v28 = v27 + v26 * 0.5;
  v31 = v30 + v29 * 0.5;
  v32 = [v22 superlayer];
  [v22 convertPoint:v32 toLayer:{v28, v31}];
  v34 = v33;
  v36 = v35;

  [v10 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v10 traitCollection];
  [v45 displayScale];
  UIRectCenteredAboutPointScale(v38, v40, v42, v44, v34, v36, v46);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  [v10 _cropInsets];
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
  v67 = [v10 superview];
  v75 = v81;
  v76 = v82;
  v77 = v83;
  v78 = v84;
  v73 = v79;
  v74 = v80;
  v68 = [UIPreviewTarget _targetWithContainer:v67 center:&v73 transform3D:v48 + v58 + (v52 - (v58 + v62)) * 0.5, v50 + v56 + (v54 - (v56 + v60)) * 0.5];

  [v68 _setContentScale:v72];
  v69 = [(UITargetedPreview *)self initWithView:v10 parameters:v12 target:v68];

  return v69;
}

- (id)_defaultTargetForView:(id)a3 withCenter:(CGPoint)a4 version:(unsigned int)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = dyld_program_sdk_at_least();
  v9 = [UIPreviewTarget alloc];
  v10 = [v7 superview];
  if (v8)
  {
    if (v7)
    {
      [v7 transform];
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    v11 = [(UIPreviewTarget *)v9 initWithContainer:v10 center:v14 transform:x, y];
  }

  else
  {
    v11 = [(UIPreviewTarget *)v9 initWithContainer:v10 center:x, y];
  }

  v12 = v11;

  return v12;
}

- (UITargetedPreview)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:355 description:@"not implemented"];

  return 0;
}

+ (UITargetedPreview)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"UITargetedPreview.m" lineNumber:360 description:@"not implemented"];

  return 0;
}

- (BOOL)containsPoint:(CGPoint)a3 fromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  target = self->_target;
  v8 = a4;
  v9 = [(UIPreviewTarget *)target container];
  [v9 convertPoint:v8 fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  [(UIView *)self->_view bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(UIPreviewParameters *)self->_parameters visiblePath];

  if (v22)
  {
    v23 = [(UIPreviewParameters *)self->_parameters visiblePath];
    [v23 bounds];
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

- (CGSize)_sizeUsingPresentationLayer:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITargetedPreview *)self parameters];
  v6 = [v5 visiblePath];

  if (v6)
  {
    v7 = [(UITargetedPreview *)self parameters];
    v8 = [v7 visiblePath];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = self->_layer;
    v7 = v13;
    if (v3)
    {
      v14 = [(CALayer *)v13 presentationLayer];

      if (v14)
      {
        v15 = [v7 presentationLayer];

        v7 = v15;
      }
    }

    [v7 bounds];
    v10 = v16 - (self->_cropInsets.left + self->_cropInsets.right);
    v12 = v17 - (self->_cropInsets.top + self->_cropInsets.bottom);
  }

  v18 = [(UITargetedPreview *)self target];
  [v18 _contentScale];
  v20 = v10 * v19;
  v21 = [(UITargetedPreview *)self target];
  [v21 _contentScale];
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
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:421 description:{@"Invalid parameter not satisfying: %@", @"newTarget != nil"}];
  }

  v6 = objc_alloc(objc_opt_class());
  v7 = [(UITargetedPreview *)self view];
  v8 = [(UITargetedPreview *)self parameters];
  v9 = [v6 initWithView:v7 parameters:v8 target:v5];

  [v9 _setDefaultPreview:{-[UITargetedPreview _isDefaultPreview](self, "_isDefaultPreview")}];
  v10 = [(UITargetedPreview *)self overridePositionTrackingView];
  [v9 _setOverridePositionTrackingView:v10];

  v9[48] = self->_sourceViewIsInViewHierarchy;
  [v9 _setSourceHostingBehavior:{-[UITargetedPreview _sourceHostingBehavior](self, "_sourceHostingBehavior")}];
  [v9 set_captureHierarchyBelowSourceView:{-[UITargetedPreview _captureHierarchyBelowSourceView](self, "_captureHierarchyBelowSourceView")}];
  v11 = [(UITargetedPreview *)self _internalIdentifier];
  [v9 set_internalIdentifier:v11];

  v12 = [(UITargetedPreview *)self _matchableProperties];
  [v9 set_matchableProperties:v12];

  typedStorage = self->_typedStorage;
  if (typedStorage)
  {
    v14 = [(UITargetedPreview *)v9 _typedStorage];
    [(_UITypedStorage *)typedStorage copyInto:v14];
  }

  return v9;
}

- (void)_typedStorage
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[8];
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = v2[8];
      v2[8] = v4;

      v3 = v2[8];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (BOOL)_isVisibleIncludingAlpha:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITargetedPreview *)self target];
  v6 = [v5 container];

  v7 = [(UITargetedPreview *)self view];
  v8 = [v6 _window];
  if (!v8 || ([v6 isHidden] & 1) != 0 || (objc_msgSend(v6, "_isHiddenForReuse") & 1) != 0 || (objc_msgSend(v7, "isHidden") & 1) != 0)
  {
  }

  else
  {
    v11 = [v7 _isHiddenForReuse];

    if ((v11 & 1) == 0)
    {
      if (!v3 || ([v6 alpha], v12 >= 0.01) && (objc_msgSend(v7, "alpha"), v13 >= 0.01))
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
  v3 = [(UITargetedPreview *)self parameters];
  v4 = [v3 _effectiveBackgroundColor];

  v5 = [(UITargetedPreview *)self view];
  v6 = [v5 traitCollection];

  v7 = [v4 _resolvedMaterialWithTraitCollection:v6];
  LOBYTE(v5) = v7 != 0;

  return v5;
}

- (CGRect)_frame
{
  [(UITargetedPreview *)self size];
  v4 = v3;
  v6 = v5;
  v7 = [(UITargetedPreview *)self target];
  [v7 center];
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

- (BOOL)_isRoughlyEqualToPreview:(id)a3
{
  v4 = a3;
  v5 = [(UITargetedPreview *)self view];
  v6 = [v4 view];

  if (v5 == v6)
  {
    v45 = 1;
  }

  else
  {
    [(UITargetedPreview *)self size];
    v8 = v7;
    v10 = v9;
    v11 = [(UITargetedPreview *)self target];
    [v11 center];
    v13 = round(v12 - v10 * 0.5);
    v15 = round(v14 - v8 * 0.5);

    v16 = [(UITargetedPreview *)self target];
    v17 = [v16 container];
    [v17 convertRect:0 toView:{v15, v13, v8, v10}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    [v4 size];
    v27 = v26;
    v29 = v28;
    v30 = [v4 target];
    [v30 center];
    v32 = round(v31 - v29 * 0.5);
    v34 = round(v33 - v27 * 0.5);

    v35 = [v4 target];
    v36 = [v35 container];
    [v36 convertRect:0 toView:{v34, v32, v27, v29}];
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

- (void)_transferAnimationsToView:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITargetedPreview *)self view];
  v6 = [v5 layer];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(UITargetedPreview *)self _transferrableAnimationKeys];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v6 animationForKey:v12];
        v14 = [v13 copy];

        if (v14)
        {
          [v6 removeAnimationForKey:v12];
          v15 = [v4 layer];
          [v15 addAnimation:v14 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_setPrefersUnmaskedPlatterStyle:(BOOL)a3
{
  if (a3)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  [(UITargetedPreview *)self _setPreviewMode:v3];
}

- (void)set_springboardPlatterStyle:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  [(UITargetedPreview *)self _setPreviewMode:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UITargetedPreview *)self _internalIdentifier];
    v7 = [v5 _internalIdentifier];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v5 view];
      v11 = [(UITargetedPreview *)self view];
      if (v10 == v11 && (v12 = [v5 _isDefaultPreview], v12 == -[UITargetedPreview _isDefaultPreview](self, "_isDefaultPreview")) && (v13 = objc_msgSend(v5, "_sourceViewIsInViewHierarchy"), v13 == -[UITargetedPreview _sourceViewIsInViewHierarchy](self, "_sourceViewIsInViewHierarchy")) && (v14 = objc_msgSend(v5, "_hasCustomParameters"), v14 == -[UITargetedPreview _hasCustomParameters](self, "_hasCustomParameters")) && (v15 = objc_msgSend(v5, "_hasCustomTarget"), v15 == -[UITargetedPreview _hasCustomTarget](self, "_hasCustomTarget")) && (v16 = objc_msgSend(v5, "_previewMode"), v16 == -[UITargetedPreview _previewMode](self, "_previewMode")))
      {
        v17 = [v5 overridePositionTrackingView];
        v18 = [(UITargetedPreview *)self overridePositionTrackingView];
        if (v17 == v18)
        {
          WeakRetained = objc_loadWeakRetained(v5 + 12);
          v21 = objc_loadWeakRetained(&self->_viewToSnapshot);
          if (WeakRetained == v21 && v5[13] == self->__PreviewProvider)
          {
            v22 = [v5 target];
            v28 = [(UITargetedPreview *)self target];
            v29 = v22;
            if ([v22 isEqual:v28])
            {
              v23 = [v5 parameters];
              v26 = [(UITargetedPreview *)self parameters];
              v27 = v23;
              if ([v23 isEqual:v26])
              {
                v25 = [v5 _accessoryViews];
                v24 = [(UITargetedPreview *)self _accessoryViews];
                v9 = [v25 isEqual:?];
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
  v5 = [(UITargetedPreview *)self view];
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
  }

  else
  {
    v9 = @"(nil)";
  }

  v10 = [(UITargetedPreview *)self parameters];
  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"<%@: %p>", v13, v10];
  }

  else
  {
    v14 = @"(nil)";
  }

  v15 = [(UITargetedPreview *)self target];
  if (v15)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 stringWithFormat:@"<%@: %p>", v18, v15];
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
  v2 = [(UITargetedPreview *)self view];
  v3 = [v2 _resolvedBackgroundMaterial];

  return v3;
}

@end