@interface _UIPlatterView
- (BOOL)_hasRadiosityShadow;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CATransform3D)scaleTransform;
- (CATransform3D)targetTransformIncludingAppliedTransform:(SEL)transform;
- (CGAffineTransform)additionalTransform;
- (CGAffineTransform)appliedTransform;
- (CGAffineTransform)containerCounterRotationTransform;
- (CGAffineTransform)containerCounterScaleTransform;
- (CGPoint)badgeLocation;
- (CGPoint)contentOffset;
- (CGPoint)initialBadgeLocation;
- (CGPoint)offset;
- (CGSize)overrideSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)contentInsets;
- (UIView)sourceView;
- (_UIPlatterView)initWithDUIPreview:(id)preview;
- (_UIPlatterView)initWithDUIPreview:(id)preview imageComponent:(id)component sourceView:(id)view;
- (_UIPlatterView)initWithDroppedItem:(id)item;
- (double)scaleFactor;
- (id)_applyMaskPath:(id)path toView:(id)view bounds:(CGRect)bounds;
- (void)_configureRadiosityShadowIfNeededWithSourceView:(id)view;
- (void)_updateMasking;
- (void)_updateShadowViewState;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)setAdditionalTransform:(CGAffineTransform *)transform;
- (void)setAppliedTransform:(CGAffineTransform *)transform;
- (void)setAppliesOriginalRotation:(BOOL)rotation;
- (void)setBackgroundVisible:(BOOL)visible;
- (void)setComponentView:(id)view;
- (void)setConstrainSize:(BOOL)size;
- (void)setContainerCounterRotationTransform:(CGAffineTransform *)transform;
- (void)setContainerCounterScaleTransform:(CGAffineTransform *)transform;
- (void)setLifted:(BOOL)lifted;
- (void)setOrientationRotation:(double)rotation;
- (void)setOverrideSize:(CGSize)size;
- (void)setShadowProperties:(id)properties;
- (void)setShadowVisible:(BOOL)visible;
- (void)setSourceView:(id)view;
- (void)setStackRotation:(double)rotation;
- (void)setTransformAppliedExternally:(BOOL)externally;
- (void)takeCounterTransformsToAddToContainer:(id)container;
- (void)updateTransform;
@end

@implementation _UIPlatterView

- (_UIPlatterView)initWithDUIPreview:(id)preview
{
  previewCopy = preview;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [previewCopy unscaledSize];
  v8 = v7;
  v10 = v9;
  v73.receiver = self;
  v73.super_class = _UIPlatterView;
  v11 = [(UIView *)&v73 initWithFrame:v5, v6, v7, v9];
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x1E695EFD0];
    v14 = *(MEMORY[0x1E695EFD0] + 32);
    *(v11 + 712) = v14;
    v16 = *v13;
    v15 = v13[1];
    *(v11 + 680) = *v13;
    *(v11 + 696) = v15;
    *(v11 + 744) = v15;
    *(v11 + 760) = v14;
    *(v11 + 728) = v16;
    *(v11 + 600) = v15;
    *(v11 + 616) = v14;
    *(v11 + 584) = v16;
    *(v11 + 632) = v16;
    *(v11 + 648) = v15;
    *(v11 + 664) = v14;
    _disableLayoutFlushingCount = [v11 _disableLayoutFlushingCount];
    if (_disableLayoutFlushingCount >= 1)
    {
      v18 = _disableLayoutFlushingCount + 1;
    }

    else
    {
      v18 = 1;
    }

    [(UIView *)v12 _setDisableLayoutFlushingCount:v18];
    [(UIView *)v12 _disableLayoutFlushing];
    layer = [(UIView *)v12 layer];
    [layer setAllowsGroupOpacity:1];

    v20 = [previewCopy copy];
    preview = v12->_preview;
    v12->_preview = v20;

    [previewCopy previewMode];
    if (![(_UIPlatterView *)v12 _isLivePreviewContainer])
    {
      effectiveShadowPath = [previewCopy effectiveShadowPath];
      if (effectiveShadowPath)
      {
        v23 = effectiveShadowPath;
        shadowPath = [previewCopy shadowPath];
        if (shadowPath && (v25 = shadowPath, v26 = dyld_program_sdk_at_least(), v25, v26))
        {
          [v23 bounds];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v35 = [v23 copy];

          v74.origin.x = v28;
          v74.origin.y = v30;
          v74.size.width = v32;
          v74.size.height = v34;
          if (!CGRectIsNull(v74))
          {
            v75.origin.x = v28;
            v75.origin.y = v30;
            v75.size.width = v32;
            v75.size.height = v34;
            txa = -CGRectGetMinX(v75);
            v76.origin.x = v28;
            v76.origin.y = v30;
            v76.size.width = v32;
            v76.size.height = v34;
            MinY = CGRectGetMinY(v76);
            CGAffineTransformMakeTranslation(&v72, txa, -MinY);
            [v35 applyTransform:&v72];
          }

          [(_UIPlatterView *)v12 contentOffset];
          txb = v37;
          [(_UIPlatterView *)v12 contentOffset];
          v39 = v38;
          v77.origin.x = v28;
          v77.origin.y = v30;
          v77.size.width = v32;
          v77.size.height = v34;
          v78 = CGRectOffset(v77, txb, v39);
          x = v78.origin.x;
          y = v78.origin.y;
          width = v78.size.width;
          tx = v78.size.height;
        }

        else
        {
          tx = v10;
          width = v8;
          y = v6;
          x = v5;
          v35 = v23;
        }
      }

      else
      {
        v35 = [UIBezierPath bezierPathWithRect:v5, v6, v8, v10];
        tx = v10;
        width = v8;
        y = v6;
        x = v5;
      }

      backgroundColor = [previewCopy backgroundColor];
      traitCollection = [(UIView *)v12 traitCollection];
      v45 = [backgroundColor resolvedColorWithTraitCollection:traitCollection];
      [v45 alphaComponent];
      v47 = v46;

      shadowProperties = [previewCopy shadowProperties];
      shadowProperties = v12->_shadowProperties;
      v12->_shadowProperties = shadowProperties;

      _hasRadiosityShadow = [(_UIPlatterView *)v12 _hasRadiosityShadow];
      traitCollection2 = [(UIView *)v12 traitCollection];
      userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

      if (userInterfaceIdiom != 6 && !_hasRadiosityShadow)
      {
        v53 = [[_UIPlatterSoftShadowView alloc] initWithFrame:v35 shadowPath:x, y, width, tx];
        [(UIView *)v53 setAlpha:0.0];
        [(_UIPlatterSoftShadowView *)v53 setNeedsPunchOut:v47 < 1.0];
        [(UIView *)v12 addSubview:v53];
        shadowView = v12->_shadowView;
        v12->_shadowView = &v53->super;
      }
    }

    v55 = [[UIView alloc] initWithFrame:v5, v6, v8, v10];
    backgroundView = v12->_backgroundView;
    v12->_backgroundView = v55;

    backgroundColor2 = [previewCopy backgroundColor];
    [(UIView *)v12->_backgroundView setBackgroundColor:backgroundColor2];

    [(UIView *)v12->_backgroundView setAlpha:0.0];
    layer2 = [(UIView *)v12->_backgroundView layer];
    [layer2 setAllowsEdgeAntialiasing:1];

    [(UIView *)v12 addSubview:v12->_backgroundView];
    [previewCopy contentOffset];
    v60 = v59;
    v62 = v61;
    [previewCopy contentSize];
    v65 = [[UIView alloc] initWithFrame:v60, v62, v63, v64];
    portalWrapperView = v12->_portalWrapperView;
    v12->_portalWrapperView = v65;

    [(UIView *)v12 addSubview:v12->_portalWrapperView];
    if ([previewCopy hasCustomOutline])
    {
      [(_UIPlatterView *)v12 _updateMasking];
    }

    v67 = v12;
  }

  return v12;
}

- (id)_applyMaskPath:(id)path toView:(id)view bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy _isRoundedRect] && (objc_msgSend(viewCopy, "bounds"), v14 = v13, v16 = v15, v18 = v17, v20 = v19, objc_msgSend(pathCopy, "bounds"), v48.origin.x = v21, v48.origin.y = v22, v48.size.width = v23, v48.size.height = v24, v47.origin.x = v14, v47.origin.y = v16, v47.size.width = v18, v47.size.height = v20, CGRectEqualToRect(v47, v48)) && ((-[_DUIPreview contentSize](self->_preview, "contentSize"), v26 = v25, v28 = v27, objc_msgSend(pathCopy, "bounds"), v26 == v30) ? (v31 = v28 == v29) : (v31 = 0), v31))
  {
    [pathCopy _cornerRadius];
    v37 = v36;
    layer = [viewCopy layer];
    [layer setCornerRadius:v37];

    _hasContinuousCorners = [pathCopy _hasContinuousCorners];
    v40 = MEMORY[0x1E69796E8];
    if (!_hasContinuousCorners)
    {
      v40 = MEMORY[0x1E69796E0];
    }

    v41 = *v40;
    layer2 = [viewCopy layer];
    [layer2 setCornerCurve:v41];

    _cornerMask = [pathCopy _cornerMask];
    layer3 = [viewCopy layer];
    [layer3 setMaskedCorners:_cornerMask];

    layer4 = [viewCopy layer];
    [layer4 setMasksToBounds:1];

    height = 0;
  }

  else
  {
    height = [(UIView *)[_UIShapeView alloc] initWithFrame:x, y, width, height];
    cGPath = [pathCopy CGPath];
    shapeLayer = [(_UIShapeView *)height shapeLayer];
    [shapeLayer setPath:cGPath];

    [viewCopy setMaskView:height];
  }

  return height;
}

- (_UIPlatterView)initWithDUIPreview:(id)preview imageComponent:(id)component sourceView:(id)view
{
  componentCopy = component;
  v8 = [(_UIPlatterView *)self initWithDUIPreview:preview];
  v9 = v8;
  if (v8)
  {
    componentView = [(_UIPlatterView *)v8 componentView];
    if (componentView)
    {
    }

    else
    {
      image = [componentCopy image];

      if (image)
      {
        v13 = [UIImageView alloc];
        image2 = [componentCopy image];
        view = [(UIImageView *)v13 initWithImage:image2];

        [(_UIPlatterView *)v9 setComponentView:view];
        goto LABEL_7;
      }
    }

    view = [componentCopy view];
    [(_UIPlatterView *)v9 setSourceView:view];
LABEL_7:
  }

  return v9;
}

- (_UIPlatterView)initWithDroppedItem:(id)item
{
  itemCopy = item;
  preview = [itemCopy preview];
  imageComponent = [itemCopy imageComponent];
  v7 = preview;
  v8 = [[_UIPlatterView alloc] initWithDUIPreview:v7];

  v9 = imageComponent;
  if ([v9 representsPortal])
  {
    v10 = [_UIPortalView alloc];
    [v9 frame];
    v11 = [(_UIPortalView *)v10 initWithFrame:?];
    portalLayer = [(_UIPortalView *)v11 portalLayer];
    [portalLayer setSourceLayerRenderId:{objc_msgSend(v9, "renderID")}];
    contextID = [v9 contextID];

    [portalLayer setSourceContextId:contextID];
    [portalLayer setHidesSourceLayer:1];
    [(_UIPortalView *)v11 setAllowsBackdropGroups:1];
  }

  else
  {
    v14 = [_UIDragSlotHostingView alloc];
    [v9 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v9 size3D];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    slotID = [v9 slotID];

    v11 = [(_UIDragSlotHostingView *)v14 initWithFrame:slotID contentSize:v16 slotID:v18, v20, v22, v24, v26, v28];
  }

  [(_UIPlatterView *)v8 setComponentView:v11];

  [itemCopy rotation];
  [(_UIPlatterView *)v8 setStackRotation:?];
  [(_UIPlatterView *)v8 setLifted:1];
  -[_UIPlatterView setConstrainSize:](v8, "setConstrainSize:", [itemCopy constrainSize]);
  preview2 = [itemCopy preview];
  [preview2 stackAlpha];
  [(UIView *)v8 setAlpha:?];

  if (itemCopy)
  {
    [itemCopy appliedTransform];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
  }

  v34[0] = v35;
  v34[1] = v36;
  v34[2] = v37;
  [(_UIPlatterView *)v8 setAppliedTransform:v34];
  preview3 = [itemCopy preview];
  shadowProperties = [preview3 shadowProperties];
  [(_UIPlatterView *)v8 setShadowProperties:shadowProperties];

  return v8;
}

- (void)setBackgroundVisible:(BOOL)visible
{
  if (self->_backgroundVisible != visible)
  {
    self->_backgroundVisible = visible;
    visibleCopy = visible;
    backgroundView = [(_UIPlatterView *)self backgroundView];
    [backgroundView setAlpha:visibleCopy];
  }
}

- (void)setShadowVisible:(BOOL)visible
{
  if (self->_shadowVisible != visible)
  {
    self->_shadowVisible = visible;
    [(_UIPlatterView *)self _updateShadowViewState];
  }
}

- (CGPoint)badgeLocation
{
  if ([(_UIPlatterView *)self constrainSize])
  {
    preview = [(_UIPlatterView *)self preview];
    [preview croppedScaledSize];
    v5 = v4;
    v7 = v6;

    preview2 = [(_UIPlatterView *)self preview];
    [preview2 scaleFactor];
    v10 = 1.0 / v9;

    v11 = v5 * v10;
    v12 = v7 * v10;
    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [(UIView *)self bounds];
    v13 = v15;
    v14 = v16;
    v11 = v17;
    v12 = v18;
  }

  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
  v20 = v13;
  v21 = v14;
  v22 = v11;
  v23 = v12;
  if (userInterfaceLayoutDirection)
  {
    MinX = CGRectGetMinX(*&v20);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v20);
  }

  v25 = MinX;
  v29.origin.x = v13;
  v29.origin.y = v14;
  v29.size.width = v11;
  v29.size.height = v12;
  MinY = CGRectGetMinY(v29);
  v27 = v25;
  result.y = MinY;
  result.x = v27;
  return result;
}

- (CGPoint)initialBadgeLocation
{
  preview = [(_UIPlatterView *)self preview];
  [preview initialBadgeLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setConstrainSize:(BOOL)size
{
  if (self->_constrainSize != size)
  {
    self->_constrainSize = size;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (CGPoint)contentOffset
{
  preview = [(_UIPlatterView *)self preview];
  [preview contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setComponentView:(id)view
{
  viewCopy = view;
  if (([(UIView *)self->_componentView isEqual:?]& 1) == 0)
  {
    [(UIView *)self->_componentView removeFromSuperview];
    if (viewCopy)
    {
      portalWrapperView = [(_UIPlatterView *)self portalWrapperView];
      [portalWrapperView addSubview:viewCopy];
    }

    [(_UIPlatterView *)self _configureRadiosityShadowIfNeededWithSourceView:viewCopy];
  }
}

- (BOOL)_hasRadiosityShadow
{
  shadowProperties = [(_UIPlatterView *)self shadowProperties];
  if (shadowProperties)
  {
    shadowProperties2 = [(_UIPlatterView *)self shadowProperties];
    v5 = [shadowProperties2 shadowType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setShadowProperties:(id)properties
{
  propertiesCopy = properties;
  objc_storeStrong(&self->_shadowProperties, properties);
  componentView = self->_componentView;
  if (componentView)
  {
    sourceView = componentView;
  }

  else
  {
    sourceView = [(_UIPortalView *)self->_portalView sourceView];
    if (!sourceView)
    {
      goto LABEL_5;
    }
  }

  [(_UIPlatterView *)self _configureRadiosityShadowIfNeededWithSourceView:sourceView];

LABEL_5:
}

- (void)_configureRadiosityShadowIfNeededWithSourceView:(id)view
{
  v21[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ([(_UIPlatterView *)self _hasRadiosityShadow])
  {
    [(UIView *)self->_shadowView removeFromSuperview];
    v5 = [[_UIPortalView alloc] initWithSourceView:viewCopy];
    [viewCopy bounds];
    [(_UIPortalView *)v5 setFrame:?];
    layer = [(UIView *)v5 layer];
    [layer setZPosition:-1.0];

    [(UIView *)self addSubview:v5];
    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    v8 = MEMORY[0x1E696AD98];
    shadowProperties = [(_UIPlatterView *)self shadowProperties];
    [shadowProperties radiosityBlurRadius];
    v10 = [v8 numberWithDouble:?];
    [v7 setValue:v10 forKey:*MEMORY[0x1E6979BA8]];

    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v11 setValue:&unk_1EFE2E338 forKey:*MEMORY[0x1E6979990]];
    v21[0] = v7;
    v21[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    layer2 = [(UIView *)v5 layer];
    [layer2 setFilters:v12];

    v14 = [UIColor colorWithWhite:0.75 alpha:1.0];
    cGColor = [v14 CGColor];
    layer3 = [(UIView *)v5 layer];
    [layer3 setContentsMultiplyColor:cGColor];

    v17 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    layer4 = [(UIView *)v5 layer];
    [layer4 setCompositingFilter:v17];

    layer5 = [(UIView *)v5 layer];
    [layer5 setShouldRasterize:1];

    shadowView = self->_shadowView;
    self->_shadowView = &v5->super;

    [(_UIPlatterView *)self _updateShadowViewState];
  }
}

- (void)_updateShadowViewState
{
  shadowProperties = self->_shadowProperties;
  v4 = MEMORY[0x1E695EFD0];
  if (shadowProperties)
  {
    [(_UIDragPreviewShadowProperties *)shadowProperties liftedAlpha];
    v6 = v5;
    v7 = self->_shadowProperties;
    memset(&v21, 0, sizeof(v21));
    if (v7)
    {
      [(_UIDragPreviewShadowProperties *)v7 liftedTransform];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1.0;
  }

  v8 = v4[1];
  *&v21.a = *v4;
  *&v21.c = v8;
  *&v21.tx = v4[2];
LABEL_6:
  [(_UIPlatterView *)self appliedTransform];
  if (!CGAffineTransformIsIdentity(&v20))
  {
    memset(&v20, 0, sizeof(v20));
    [(_UIPlatterView *)self appliedTransform];
    CGAffineTransformDecompose(&v20, &transform);
    memset(&transform, 0, sizeof(transform));
    CGAffineTransformMakeRotation(&transform, v20.d);
    t1 = transform;
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformInvert(&v18, &t1);
    t1 = v21;
    t2 = v18;
    CGAffineTransformConcat(&v16, &t1, &t2);
    t2 = transform;
    CGAffineTransformConcat(&t1, &t2, &v16);
    v21 = t1;
  }

  if (![(_UIPlatterView *)self isShadowVisible])
  {
    v6 = 0.0;
  }

  shadowView = [(_UIPlatterView *)self shadowView];
  [shadowView setAlpha:v6];

  if ([(_UIPlatterView *)self isShadowVisible])
  {
    v12 = *&v21.a;
    v14 = *&v21.c;
    v10 = *&v21.tx;
  }

  else
  {
    v12 = *v4;
    v14 = v4[1];
    v10 = v4[2];
  }

  *&v13.tx = v10;
  v11 = [(_UIPlatterView *)self shadowView:v12];
  v20 = v13;
  [v11 setTransform:&v20];
}

- (void)_updateMasking
{
  if (self->_hasAppliedMasking)
  {
    return;
  }

  v12 = self->_preview;
  wantsSuppressedMask = [(_DUIPreview *)v12 wantsSuppressedMask];
  if ([(_UIPlatterView *)self _isLivePreviewContainer])
  {
    v4 = self->_backgroundView;
  }

  else
  {
    outline = [(_DUIPreview *)v12 outline];
    v4 = self->_backgroundView;
    if (outline)
    {
      [(UIView *)self bounds];
      v6 = [(_UIPlatterView *)self _applyMaskPath:outline toView:v4 bounds:?];
      platterMaskView = self->_platterMaskView;
      self->_platterMaskView = v6;

      [(UIView *)self->_portalWrapperView setClipsToBounds:0];
      if (!wantsSuppressedMask)
      {
        [(UIView *)self bounds];
        [(UIView *)self convertRect:self->_portalWrapperView toView:?];
        v8 = [(_UIPlatterView *)self _applyMaskPath:outline toView:self->_portalWrapperView bounds:?];
        portalMaskView = self->_portalMaskView;
        self->_portalMaskView = v8;
      }

      goto LABEL_8;
    }
  }

  shadowPath = [(_DUIPreview *)v12 shadowPath];
  v11 = shadowPath == 0;

  [(UIView *)self->_portalWrapperView setClipsToBounds:v11 & ~[(_UIPlatterView *)self _isLivePreviewContainer]];
  outline = 0;
LABEL_8:
  self->_hasAppliedMasking = 1;
}

- (void)setLifted:(BOOL)lifted
{
  if (self->_lifted != lifted)
  {
    v9 = v4;
    v10 = v3;
    liftedCopy = lifted;
    self->_lifted = lifted;
    if (lifted)
    {
      [(_UIPlatterView *)self _updateMasking];
    }

    [(_UIPlatterView *)self setShadowVisible:liftedCopy, v9, v10, v5];
    [(_UIPlatterView *)self setBackgroundVisible:liftedCopy];

    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setOrientationRotation:(double)rotation
{
  if (self->_orientationRotation != rotation)
  {
    self->_orientationRotation = rotation;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setOverrideSize:(CGSize)size
{
  if (self->_overrideSize.width != size.width || self->_overrideSize.height != size.height)
  {
    self->_overrideSize = size;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setAppliesOriginalRotation:(BOOL)rotation
{
  if (self->_appliesOriginalRotation != rotation)
  {
    self->_appliesOriginalRotation = rotation;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (double)scaleFactor
{
  if (![(_UIPlatterView *)self constrainSize]|| ![(_UIPlatterView *)self isLifted]&& ![(_UIPlatterView *)self constrainSizeWhenNotLifted])
  {
    return 1.0;
  }

  preview = [(_UIPlatterView *)self preview];
  [preview scaleFactor];
  v5 = v4;

  return v5;
}

- (UIView)sourceView
{
  portalView = [(_UIPlatterView *)self portalView];
  sourceView = [portalView sourceView];

  return sourceView;
}

- (void)setSourceView:(id)view
{
  viewCopy = view;
  portalView = [(_UIPlatterView *)self portalView];
  sourceView = [portalView sourceView];

  if (sourceView != viewCopy)
  {
    portalView2 = [(_UIPlatterView *)self portalView];

    if (portalView2)
    {
      portalView3 = [(_UIPlatterView *)self portalView];
      [portalView3 removeFromSuperview];
    }

    portalWrapperView = [(_UIPlatterView *)self portalWrapperView];
    [portalWrapperView bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [viewCopy bounds];
    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeScale(&v24, v15 / v18, v17 / v19);
    v20 = [[_UIPortalView alloc] initWithFrame:v11, v13, v15, v17];
    preview = [(_UIPlatterView *)self preview];
    -[_UIPortalView setHidesSourceView:](v20, "setHidesSourceView:", [preview hidesSourceView]);

    [(_UIPortalView *)v20 setMatchesAlpha:0];
    [(_UIPortalView *)v20 setMatchesPosition:0];
    [(_UIPortalView *)v20 setMatchesTransform:0];
    v23 = v24;
    [(UIView *)v20 setTransform:&v23];
    [(_UIPortalView *)v20 setSourceView:viewCopy];
    preview2 = [(_UIPlatterView *)self preview];
    -[_UIPortalView setAllowsHitTesting:](v20, "setAllowsHitTesting:", [preview2 previewMode] == 4);

    [(_UIPortalView *)v20 setAllowsBackdropGroups:1];
    -[UIView _setFlipsHorizontalAxis:](v20, "_setFlipsHorizontalAxis:", [viewCopy _flipsHorizontalAxis]);
    [portalWrapperView addSubview:v20];

    [(_UIPlatterView *)self setPortalView:v20];
    if (viewCopy)
    {
      [(_UIPlatterView *)self _configureRadiosityShadowIfNeededWithSourceView:viewCopy];
    }
  }
}

- (void)setStackRotation:(double)rotation
{
  if (self->_stackRotation != rotation)
  {
    self->_stackRotation = rotation;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setAppliedTransform:(CGAffineTransform *)transform
{
  p_appliedTransform = &self->_appliedTransform;
  v6 = *&self->_appliedTransform.c;
  *&t1.a = *&self->_appliedTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_appliedTransform.tx;
  v7 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v7;
  *&v10.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_appliedTransform->c = *&transform->c;
    *&p_appliedTransform->tx = v9;
    *&p_appliedTransform->a = v8;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setAdditionalTransform:(CGAffineTransform *)transform
{
  p_additionalTransform = &self->_additionalTransform;
  v6 = *&self->_additionalTransform.c;
  *&t1.a = *&self->_additionalTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_additionalTransform.tx;
  v7 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v7;
  *&v10.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_additionalTransform->c = *&transform->c;
    *&p_additionalTransform->tx = v9;
    *&p_additionalTransform->a = v8;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (CATransform3D)scaleTransform
{
  v5 = MEMORY[0x1E69792E8];
  v65 = *(MEMORY[0x1E69792E8] + 80);
  v66 = *(MEMORY[0x1E69792E8] + 64);
  *&retstr->m31 = v66;
  *&retstr->m33 = v65;
  v63 = v5[7];
  v64 = v5[6];
  *&retstr->m41 = v64;
  *&retstr->m43 = v63;
  v61 = v5[1];
  v62 = *v5;
  *&retstr->m11 = *v5;
  *&retstr->m13 = v61;
  v59 = v5[3];
  v60 = v5[2];
  *&retstr->m21 = v60;
  *&retstr->m23 = v59;
  if ([(_UIPlatterView *)self isLifted])
  {
    preview = [(_UIPlatterView *)self preview];
    v7 = preview;
    if (preview)
    {
      [preview liftTransform];
    }

    else
    {
      memset(&m, 0, 48);
    }

    CATransform3DMakeAffineTransform(&b, &m);
    *&m.m31 = v66;
    *&m.m33 = v65;
    *&m.m41 = v64;
    *&m.m43 = v63;
    *&m.m11 = v62;
    *&m.m13 = v61;
    *&m.m21 = v60;
    *&m.m23 = v59;
    CATransform3DConcat(retstr, &m, &b);
  }

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v10 = 1.0;
  if (userInterfaceIdiom == 6)
  {
    [(_UIPlatterView *)self scaleFactor];
    v10 = v11;
  }

  [(_UIPlatterView *)self scaleFactor];
  v13 = v12;
  [(_UIPlatterView *)self scaleFactor];
  v14 = *&retstr->m33;
  *&m.m31 = *&retstr->m31;
  *&m.m33 = v14;
  v15 = *&retstr->m43;
  *&m.m41 = *&retstr->m41;
  *&m.m43 = v15;
  v16 = *&retstr->m13;
  *&m.m11 = *&retstr->m11;
  *&m.m13 = v16;
  v17 = *&retstr->m23;
  *&m.m21 = *&retstr->m21;
  *&m.m23 = v17;
  CATransform3DScale(&b, &m, v13, v18, v10);
  v19 = *&b.m33;
  *&retstr->m31 = *&b.m31;
  *&retstr->m33 = v19;
  v20 = *&b.m43;
  *&retstr->m41 = *&b.m41;
  *&retstr->m43 = v20;
  v21 = *&b.m13;
  *&retstr->m11 = *&b.m11;
  *&retstr->m13 = v21;
  v22 = *&b.m23;
  *&retstr->m21 = *&b.m21;
  *&retstr->m23 = v22;
  result = [(_UIPlatterView *)self overrideSize];
  if (v25 != *MEMORY[0x1E695F060] || v24 != *(MEMORY[0x1E695F060] + 8))
  {
    constrainSize = [(_UIPlatterView *)self constrainSize];
    preview2 = [(_UIPlatterView *)self preview];
    v28 = preview2;
    if (constrainSize)
    {
      [preview2 croppedScaledSize];
    }

    else
    {
      [preview2 unscaledSize];
    }

    v31 = v29;
    v32 = v30;

    preview3 = [(_UIPlatterView *)self preview];
    v34 = preview3;
    v35 = 0.0;
    m14 = 0.0;
    m12 = 0.0;
    m13 = 0.0;
    m11 = 0.0;
    if (preview3)
    {
      [preview3 liftTransform];
      m11 = b.m11;
      m12 = b.m12;
      m13 = b.m13;
      m14 = b.m14;
    }

    v40 = v32 * m13 + v31 * m11;
    v41 = v32 * m14 + v31 * m12;

    preview4 = [(_UIPlatterView *)self preview];
    v43 = preview4;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    if (preview4)
    {
      [preview4 liftTransform];
      v46 = b.m11;
      v44 = b.m12;
      v45 = b.m13;
      v35 = b.m14;
    }

    v47 = v41 * v45 + v40 * v46;
    v48 = v41 * v35 + v40 * v44;

    [(_UIPlatterView *)self overrideSize];
    v50 = *&retstr->m33;
    *&m.m31 = *&retstr->m31;
    *&m.m33 = v50;
    v51 = *&retstr->m43;
    *&m.m41 = *&retstr->m41;
    *&m.m43 = v51;
    v52 = *&retstr->m13;
    *&m.m11 = *&retstr->m11;
    *&m.m13 = v52;
    v53 = *&retstr->m23;
    *&m.m21 = *&retstr->m21;
    *&m.m23 = v53;
    result = CATransform3DScale(&b, &m, v49 / v47, v54 / v48, 1.0);
    v55 = *&b.m33;
    *&retstr->m31 = *&b.m31;
    *&retstr->m33 = v55;
    v56 = *&b.m43;
    *&retstr->m41 = *&b.m41;
    *&retstr->m43 = v56;
    v57 = *&b.m13;
    *&retstr->m11 = *&b.m11;
    *&retstr->m13 = v57;
    v58 = *&b.m23;
    *&retstr->m21 = *&b.m21;
    *&retstr->m23 = v58;
  }

  return result;
}

- (CATransform3D)targetTransformIncludingAppliedTransform:(SEL)transform
{
  v4 = a4;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  [(_UIPlatterView *)self scaleTransform];
  [(_UIPlatterView *)self stackRotation];
  m14 = v7;
  [(_UIPlatterView *)self offset];
  v10 = v9;
  [(UIView *)self bounds];
  v12 = v11;
  [(_UIPlatterView *)self offset];
  v14 = v13;
  [(UIView *)self bounds];
  v16 = v15;
  preview = [(_UIPlatterView *)self preview];
  v18 = preview;
  if (preview)
  {
    [preview overrideStackTransform];
  }

  else
  {
    memset(&transform, 0, 48);
  }

  IsIdentity = CGAffineTransformIsIdentity(&transform);

  if (IsIdentity)
  {
    m21 = v10 * v12;
    m22 = v14 * v16;
  }

  else
  {
    memset(&v94, 0, 48);
    preview2 = [(_UIPlatterView *)self preview];
    v23 = preview2;
    if (preview2)
    {
      [preview2 overrideStackTransform];
    }

    else
    {
      memset(&transform, 0, 48);
    }

    CGAffineTransformDecompose(&v94, &transform);

    if (![(_UIPlatterView *)self constrainSize])
    {
      CATransform3DMakeScale(&transform, v94.m11, v94.m12, 1.0);
      v24 = *&transform.m33;
      *&retstr->m31 = *&transform.m31;
      *&retstr->m33 = v24;
      v25 = *&transform.m43;
      *&retstr->m41 = *&transform.m41;
      *&retstr->m43 = v25;
      v26 = *&transform.m13;
      *&retstr->m11 = *&transform.m11;
      *&retstr->m13 = v26;
      v27 = *&transform.m23;
      *&retstr->m21 = *&transform.m21;
      *&retstr->m23 = v27;
    }

    m14 = v94.m14;
    m21 = v94.m21;
    m22 = v94.m22;
  }

  v28 = *&self->_containerCounterScaleTransform.c;
  *&transform.m11 = *&self->_containerCounterScaleTransform.a;
  *&transform.m13 = v28;
  *&transform.m21 = *&self->_containerCounterScaleTransform.tx;
  CATransform3DMakeAffineTransform(&v94, &transform);
  v29 = *&retstr->m33;
  *&v93.m31 = *&retstr->m31;
  *&v93.m33 = v29;
  v30 = *&retstr->m43;
  *&v93.m41 = *&retstr->m41;
  *&v93.m43 = v30;
  v31 = *&retstr->m13;
  *&v93.m11 = *&retstr->m11;
  *&v93.m13 = v31;
  v32 = *&retstr->m23;
  *&v93.m21 = *&retstr->m21;
  *&v93.m23 = v32;
  CATransform3DConcat(&transform, &v93, &v94);
  v33 = *&transform.m33;
  *&retstr->m31 = *&transform.m31;
  *&retstr->m33 = v33;
  v34 = *&transform.m43;
  *&retstr->m41 = *&transform.m41;
  *&retstr->m43 = v34;
  v35 = *&transform.m13;
  *&retstr->m11 = *&transform.m11;
  *&retstr->m13 = v35;
  v36 = *&transform.m23;
  *&retstr->m21 = *&transform.m21;
  *&retstr->m23 = v36;
  v37 = *&self->_containerCounterRotationTransform.c;
  *&transform.m11 = *&self->_containerCounterRotationTransform.a;
  *&transform.m13 = v37;
  *&transform.m21 = *&self->_containerCounterRotationTransform.tx;
  CATransform3DMakeAffineTransform(&v94, &transform);
  v38 = *&retstr->m33;
  *&v93.m31 = *&retstr->m31;
  *&v93.m33 = v38;
  v39 = *&retstr->m43;
  *&v93.m41 = *&retstr->m41;
  *&v93.m43 = v39;
  v40 = *&retstr->m13;
  *&v93.m11 = *&retstr->m11;
  *&v93.m13 = v40;
  v41 = *&retstr->m23;
  *&v93.m21 = *&retstr->m21;
  *&v93.m23 = v41;
  CATransform3DConcat(&transform, &v93, &v94);
  v42 = *&transform.m33;
  *&retstr->m31 = *&transform.m31;
  *&retstr->m33 = v42;
  v43 = *&transform.m43;
  *&retstr->m41 = *&transform.m41;
  *&retstr->m43 = v43;
  v44 = *&transform.m13;
  *&retstr->m11 = *&transform.m11;
  *&retstr->m13 = v44;
  v45 = *&transform.m23;
  *&retstr->m21 = *&transform.m21;
  *&retstr->m23 = v45;
  [(_UIPlatterView *)self orientationRotation];
  v47 = *&retstr->m33;
  *&v94.m31 = *&retstr->m31;
  *&v94.m33 = v47;
  v48 = *&retstr->m43;
  *&v94.m41 = *&retstr->m41;
  *&v94.m43 = v48;
  v49 = *&retstr->m13;
  *&v94.m11 = *&retstr->m11;
  *&v94.m13 = v49;
  v50 = *&retstr->m23;
  *&v94.m21 = *&retstr->m21;
  *&v94.m23 = v50;
  CATransform3DRotate(&transform, &v94, fmax(fmin(m14 + v46, 3.14159265), -3.14159253), 0.0, 0.0, 1.0);
  v51 = *&transform.m33;
  *&retstr->m31 = *&transform.m31;
  *&retstr->m33 = v51;
  v52 = *&transform.m43;
  *&retstr->m41 = *&transform.m41;
  *&retstr->m43 = v52;
  v53 = *&transform.m13;
  *&retstr->m11 = *&transform.m11;
  *&retstr->m13 = v53;
  v54 = *&transform.m23;
  *&retstr->m21 = *&transform.m21;
  *&retstr->m23 = v54;
  v55 = *&retstr->m33;
  *&v94.m31 = *&retstr->m31;
  *&v94.m33 = v55;
  v56 = *&retstr->m43;
  *&v94.m41 = *&retstr->m41;
  *&v94.m43 = v56;
  v57 = *&retstr->m13;
  *&v94.m11 = *&retstr->m11;
  *&v94.m13 = v57;
  v58 = *&retstr->m23;
  *&v94.m21 = *&retstr->m21;
  *&v94.m23 = v58;
  CATransform3DTranslate(&transform, &v94, m21, m22, 0.0);
  v59 = *&transform.m33;
  *&retstr->m31 = *&transform.m31;
  *&retstr->m33 = v59;
  v60 = *&transform.m43;
  *&retstr->m41 = *&transform.m41;
  *&retstr->m43 = v60;
  v61 = *&transform.m13;
  *&retstr->m11 = *&transform.m11;
  *&retstr->m13 = v61;
  v62 = *&transform.m23;
  *&retstr->m21 = *&transform.m21;
  *&retstr->m23 = v62;
  if (self->_appliesOriginalRotation)
  {
    preview3 = [(_UIPlatterView *)self preview];
    [preview3 originalRotation];
    v64 = *&retstr->m33;
    *&v94.m31 = *&retstr->m31;
    *&v94.m33 = v64;
    v65 = *&retstr->m43;
    *&v94.m41 = *&retstr->m41;
    *&v94.m43 = v65;
    v66 = *&retstr->m13;
    *&v94.m11 = *&retstr->m11;
    *&v94.m13 = v66;
    v67 = *&retstr->m23;
    *&v94.m21 = *&retstr->m21;
    *&v94.m23 = v67;
    CATransform3DRotate(&transform, &v94, v68, 0.0, 0.0, 1.0);
    v69 = *&transform.m33;
    *&retstr->m31 = *&transform.m31;
    *&retstr->m33 = v69;
    v70 = *&transform.m43;
    *&retstr->m41 = *&transform.m41;
    *&retstr->m43 = v70;
    v71 = *&transform.m13;
    *&retstr->m11 = *&transform.m11;
    *&retstr->m13 = v71;
    v72 = *&transform.m23;
    *&retstr->m21 = *&transform.m21;
    *&retstr->m23 = v72;
  }

  if (v4)
  {
    v73 = *&self->_appliedTransform.c;
    *&transform.m11 = *&self->_appliedTransform.a;
    *&transform.m13 = v73;
    *&transform.m21 = *&self->_appliedTransform.tx;
    if (!CGAffineTransformIsIdentity(&transform))
    {
      v74 = *&self->_appliedTransform.c;
      *&transform.m11 = *&self->_appliedTransform.a;
      *&transform.m13 = v74;
      *&transform.m21 = *&self->_appliedTransform.tx;
      CATransform3DMakeAffineTransform(&v94, &transform);
      v75 = *&retstr->m33;
      *&v93.m31 = *&retstr->m31;
      *&v93.m33 = v75;
      v76 = *&retstr->m43;
      *&v93.m41 = *&retstr->m41;
      *&v93.m43 = v76;
      v77 = *&retstr->m13;
      *&v93.m11 = *&retstr->m11;
      *&v93.m13 = v77;
      v78 = *&retstr->m23;
      *&v93.m21 = *&retstr->m21;
      *&v93.m23 = v78;
      CATransform3DConcat(&transform, &v93, &v94);
      v79 = *&transform.m33;
      *&retstr->m31 = *&transform.m31;
      *&retstr->m33 = v79;
      v80 = *&transform.m43;
      *&retstr->m41 = *&transform.m41;
      *&retstr->m43 = v80;
      v81 = *&transform.m13;
      *&retstr->m11 = *&transform.m11;
      *&retstr->m13 = v81;
      v82 = *&transform.m23;
      *&retstr->m21 = *&transform.m21;
      *&retstr->m23 = v82;
    }
  }

  v83 = *&self->_additionalTransform.c;
  *&transform.m11 = *&self->_additionalTransform.a;
  *&transform.m13 = v83;
  *&transform.m21 = *&self->_additionalTransform.tx;
  CATransform3DMakeAffineTransform(&v94, &transform);
  v84 = *&retstr->m33;
  *&v93.m31 = *&retstr->m31;
  *&v93.m33 = v84;
  v85 = *&retstr->m43;
  *&v93.m41 = *&retstr->m41;
  *&v93.m43 = v85;
  v86 = *&retstr->m13;
  *&v93.m11 = *&retstr->m11;
  *&v93.m13 = v86;
  v87 = *&retstr->m23;
  *&v93.m21 = *&retstr->m21;
  *&v93.m23 = v87;
  result = CATransform3DConcat(&transform, &v93, &v94);
  v89 = *&transform.m33;
  *&retstr->m31 = *&transform.m31;
  *&retstr->m33 = v89;
  v90 = *&transform.m43;
  *&retstr->m41 = *&transform.m41;
  *&retstr->m43 = v90;
  v91 = *&transform.m13;
  *&retstr->m11 = *&transform.m11;
  *&retstr->m13 = v91;
  v92 = *&transform.m23;
  *&retstr->m21 = *&transform.m21;
  *&retstr->m23 = v92;
  return result;
}

- (void)takeCounterTransformsToAddToContainer:(id)container
{
  containerCopy = container;
  _window = [containerCopy _window];
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v8 = containerCopy;
  [_window convertPoint:v8 toView:{v6, v7}];
  v10 = v9;
  v12 = v11;
  [_window convertPoint:v8 toView:{1.0, 0.0}];
  v14 = v13;
  v16 = v15;
  [_window convertPoint:v8 toView:{0.0, 1.0}];
  v18 = v17;
  v20 = v19;
  v21 = hypot(v14 - v10, v16 - v12);
  v22 = hypot(v18 - v10, v20 - v12);
  CGAffineTransformMakeScale(&v26, v21, v22);
  v23 = *&v26.c;
  *&self->_containerCounterScaleTransform.a = *&v26.a;
  *&self->_containerCounterScaleTransform.c = v23;
  *&self->_containerCounterScaleTransform.tx = *&v26.tx;
  RotationAngleFromViewToView = DUIPreviewGetRotationAngleFromViewToView(v8, 0, 0);

  CGAffineTransformMakeRotation(&v26, -RotationAngleFromViewToView);
  v25 = *&v26.c;
  *&self->_containerCounterRotationTransform.a = *&v26.a;
  *&self->_containerCounterRotationTransform.c = v25;
  *&self->_containerCounterRotationTransform.tx = *&v26.tx;
  [(_UIPlatterView *)self updateTransform];
}

- (void)setTransformAppliedExternally:(BOOL)externally
{
  self->_transformAppliedExternally = externally;
  if (externally)
  {
    v3 = *(MEMORY[0x1E69792E8] + 80);
    v7[4] = *(MEMORY[0x1E69792E8] + 64);
    v7[5] = v3;
    v4 = *(MEMORY[0x1E69792E8] + 112);
    v7[6] = *(MEMORY[0x1E69792E8] + 96);
    v7[7] = v4;
    v5 = *(MEMORY[0x1E69792E8] + 16);
    v7[0] = *MEMORY[0x1E69792E8];
    v7[1] = v5;
    v6 = *(MEMORY[0x1E69792E8] + 48);
    v7[2] = *(MEMORY[0x1E69792E8] + 32);
    v7[3] = v6;
    [(UIView *)self setTransform3D:v7];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(_UIPlatterView *)self preview:fits.width];
  [v3 unscaledSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIPlatterView;
  [(UIView *)&v4 didMoveToWindow];
  superview = [(UIView *)self superview];
  -[UIView _setFlipsHorizontalAxis:](self, "_setFlipsHorizontalAxis:", [superview _isRenderedHorizontallyFlipped]);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if ([(_UIPlatterView *)self constrainSize])
  {
    preview = [(_UIPlatterView *)self preview];
    [preview scaleFactor];
    v10 = 1.0 / v9;

    preview2 = [(_UIPlatterView *)self preview];
    [preview2 croppedScaledSize];
    v13 = v12;
    v15 = v14;

    v21.origin.x = *MEMORY[0x1E695EFF8];
    v21.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v21.size.width = v10 * v13;
    v21.size.height = v10 * v15;
    v20.x = x;
    v20.y = y;
    v16 = CGRectContainsPoint(v21, v20);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = _UIPlatterView;
    v16 = [(UIView *)&v19 pointInside:eventCopy withEvent:x, y];
  }

  v17 = v16;

  return v17;
}

- (void)didMoveToSuperview
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    anchorPointValueToAdjustToOnMoveToWindow = self->_anchorPointValueToAdjustToOnMoveToWindow;
    if (anchorPointValueToAdjustToOnMoveToWindow)
    {
      self->_anchorPointValueToAdjustToOnMoveToWindow = 0;
      v32 = superview;
      v5 = anchorPointValueToAdjustToOnMoveToWindow;

      [(NSValue *)v5 CGPointValue];
      v7 = v6;
      v9 = v8;

      selfCopy = self;
      superview2 = [(UIView *)selfCopy superview];
      [(UIView *)selfCopy bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(UIView *)selfCopy anchorPoint];
      [(UIView *)selfCopy convertPoint:superview2 toView:___PlatterViewAdjustAnchorPointWhileKeepingPosition_block_invoke(v20, v21, v13, v15, v17, v19)];
      v23 = v22;
      v25 = v24;
      [(UIView *)selfCopy convertPoint:superview2 toView:___PlatterViewAdjustAnchorPointWhileKeepingPosition_block_invoke(v7, v9, v13, v15, v17, v19)];
      v27 = v26;
      v29 = v28;
      [(UIView *)selfCopy center];
      [(UIView *)selfCopy setCenter:v30 + v27 - v23, v31 + v29 - v25];
      [(UIView *)selfCopy setAnchorPoint:v7, v9];

      superview = v32;
    }
  }
}

- (void)updateTransform
{
  if (![(_UIPlatterView *)self transformAppliedExternally])
  {
    [(_UIPlatterView *)self targetTransform];
    v3[4] = v3[12];
    v3[5] = v3[13];
    v3[6] = v3[14];
    v3[7] = v3[15];
    v3[0] = v3[8];
    v3[1] = v3[9];
    v3[2] = v3[10];
    v3[3] = v3[11];
    [(UIView *)self setTransform3D:v3];
    [(_UIPlatterView *)self _updateShadowViewState];
  }
}

- (CGSize)overrideSize
{
  width = self->_overrideSize.width;
  height = self->_overrideSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)appliedTransform
{
  v3 = *&self[12].d;
  *&retstr->a = *&self[12].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[12].ty;
  return self;
}

- (CGAffineTransform)additionalTransform
{
  v3 = *&self[13].d;
  *&retstr->a = *&self[13].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[13].ty;
  return self;
}

- (CGAffineTransform)containerCounterScaleTransform
{
  v3 = *&self[14].d;
  *&retstr->a = *&self[14].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[14].ty;
  return self;
}

- (void)setContainerCounterScaleTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_containerCounterScaleTransform.a = *&transform->a;
  *&self->_containerCounterScaleTransform.c = v4;
  *&self->_containerCounterScaleTransform.tx = v3;
}

- (CGAffineTransform)containerCounterRotationTransform
{
  v3 = *&self[15].d;
  *&retstr->a = *&self[15].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[15].ty;
  return self;
}

- (void)setContainerCounterRotationTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_containerCounterRotationTransform.a = *&transform->a;
  *&self->_containerCounterRotationTransform.c = v4;
  *&self->_containerCounterRotationTransform.tx = v3;
}

@end