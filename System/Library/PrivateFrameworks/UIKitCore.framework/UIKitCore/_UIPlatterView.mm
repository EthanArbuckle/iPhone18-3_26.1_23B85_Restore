@interface _UIPlatterView
- (BOOL)_hasRadiosityShadow;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CATransform3D)scaleTransform;
- (CATransform3D)targetTransformIncludingAppliedTransform:(SEL)a3;
- (CGAffineTransform)additionalTransform;
- (CGAffineTransform)appliedTransform;
- (CGAffineTransform)containerCounterRotationTransform;
- (CGAffineTransform)containerCounterScaleTransform;
- (CGPoint)badgeLocation;
- (CGPoint)contentOffset;
- (CGPoint)initialBadgeLocation;
- (CGPoint)offset;
- (CGSize)overrideSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)contentInsets;
- (UIView)sourceView;
- (_UIPlatterView)initWithDUIPreview:(id)a3;
- (_UIPlatterView)initWithDUIPreview:(id)a3 imageComponent:(id)a4 sourceView:(id)a5;
- (_UIPlatterView)initWithDroppedItem:(id)a3;
- (double)scaleFactor;
- (id)_applyMaskPath:(id)a3 toView:(id)a4 bounds:(CGRect)a5;
- (void)_configureRadiosityShadowIfNeededWithSourceView:(id)a3;
- (void)_updateMasking;
- (void)_updateShadowViewState;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)setAdditionalTransform:(CGAffineTransform *)a3;
- (void)setAppliedTransform:(CGAffineTransform *)a3;
- (void)setAppliesOriginalRotation:(BOOL)a3;
- (void)setBackgroundVisible:(BOOL)a3;
- (void)setComponentView:(id)a3;
- (void)setConstrainSize:(BOOL)a3;
- (void)setContainerCounterRotationTransform:(CGAffineTransform *)a3;
- (void)setContainerCounterScaleTransform:(CGAffineTransform *)a3;
- (void)setLifted:(BOOL)a3;
- (void)setOrientationRotation:(double)a3;
- (void)setOverrideSize:(CGSize)a3;
- (void)setShadowProperties:(id)a3;
- (void)setShadowVisible:(BOOL)a3;
- (void)setSourceView:(id)a3;
- (void)setStackRotation:(double)a3;
- (void)setTransformAppliedExternally:(BOOL)a3;
- (void)takeCounterTransformsToAddToContainer:(id)a3;
- (void)updateTransform;
@end

@implementation _UIPlatterView

- (_UIPlatterView)initWithDUIPreview:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [v4 unscaledSize];
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
    v17 = [v11 _disableLayoutFlushingCount];
    if (v17 >= 1)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 1;
    }

    [(UIView *)v12 _setDisableLayoutFlushingCount:v18];
    [(UIView *)v12 _disableLayoutFlushing];
    v19 = [(UIView *)v12 layer];
    [v19 setAllowsGroupOpacity:1];

    v20 = [v4 copy];
    preview = v12->_preview;
    v12->_preview = v20;

    [v4 previewMode];
    if (![(_UIPlatterView *)v12 _isLivePreviewContainer])
    {
      v22 = [v4 effectiveShadowPath];
      if (v22)
      {
        v23 = v22;
        v24 = [v4 shadowPath];
        if (v24 && (v25 = v24, v26 = dyld_program_sdk_at_least(), v25, v26))
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

      v43 = [v4 backgroundColor];
      v44 = [(UIView *)v12 traitCollection];
      v45 = [v43 resolvedColorWithTraitCollection:v44];
      [v45 alphaComponent];
      v47 = v46;

      v48 = [v4 shadowProperties];
      shadowProperties = v12->_shadowProperties;
      v12->_shadowProperties = v48;

      v50 = [(_UIPlatterView *)v12 _hasRadiosityShadow];
      v51 = [(UIView *)v12 traitCollection];
      v52 = [v51 userInterfaceIdiom];

      if (v52 != 6 && !v50)
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

    v57 = [v4 backgroundColor];
    [(UIView *)v12->_backgroundView setBackgroundColor:v57];

    [(UIView *)v12->_backgroundView setAlpha:0.0];
    v58 = [(UIView *)v12->_backgroundView layer];
    [v58 setAllowsEdgeAntialiasing:1];

    [(UIView *)v12 addSubview:v12->_backgroundView];
    [v4 contentOffset];
    v60 = v59;
    v62 = v61;
    [v4 contentSize];
    v65 = [[UIView alloc] initWithFrame:v60, v62, v63, v64];
    portalWrapperView = v12->_portalWrapperView;
    v12->_portalWrapperView = v65;

    [(UIView *)v12 addSubview:v12->_portalWrapperView];
    if ([v4 hasCustomOutline])
    {
      [(_UIPlatterView *)v12 _updateMasking];
    }

    v67 = v12;
  }

  return v12;
}

- (id)_applyMaskPath:(id)a3 toView:(id)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  if ([v11 _isRoundedRect] && (objc_msgSend(v12, "bounds"), v14 = v13, v16 = v15, v18 = v17, v20 = v19, objc_msgSend(v11, "bounds"), v48.origin.x = v21, v48.origin.y = v22, v48.size.width = v23, v48.size.height = v24, v47.origin.x = v14, v47.origin.y = v16, v47.size.width = v18, v47.size.height = v20, CGRectEqualToRect(v47, v48)) && ((-[_DUIPreview contentSize](self->_preview, "contentSize"), v26 = v25, v28 = v27, objc_msgSend(v11, "bounds"), v26 == v30) ? (v31 = v28 == v29) : (v31 = 0), v31))
  {
    [v11 _cornerRadius];
    v37 = v36;
    v38 = [v12 layer];
    [v38 setCornerRadius:v37];

    v39 = [v11 _hasContinuousCorners];
    v40 = MEMORY[0x1E69796E8];
    if (!v39)
    {
      v40 = MEMORY[0x1E69796E0];
    }

    v41 = *v40;
    v42 = [v12 layer];
    [v42 setCornerCurve:v41];

    v43 = [v11 _cornerMask];
    v44 = [v12 layer];
    [v44 setMaskedCorners:v43];

    v45 = [v12 layer];
    [v45 setMasksToBounds:1];

    v32 = 0;
  }

  else
  {
    v32 = [(UIView *)[_UIShapeView alloc] initWithFrame:x, y, width, height];
    v33 = [v11 CGPath];
    v34 = [(_UIShapeView *)v32 shapeLayer];
    [v34 setPath:v33];

    [v12 setMaskView:v32];
  }

  return v32;
}

- (_UIPlatterView)initWithDUIPreview:(id)a3 imageComponent:(id)a4 sourceView:(id)a5
{
  v7 = a4;
  v8 = [(_UIPlatterView *)self initWithDUIPreview:a3];
  v9 = v8;
  if (v8)
  {
    v10 = [(_UIPlatterView *)v8 componentView];
    if (v10)
    {
    }

    else
    {
      v12 = [v7 image];

      if (v12)
      {
        v13 = [UIImageView alloc];
        v14 = [v7 image];
        v11 = [(UIImageView *)v13 initWithImage:v14];

        [(_UIPlatterView *)v9 setComponentView:v11];
        goto LABEL_7;
      }
    }

    v11 = [v7 view];
    [(_UIPlatterView *)v9 setSourceView:v11];
LABEL_7:
  }

  return v9;
}

- (_UIPlatterView)initWithDroppedItem:(id)a3
{
  v4 = a3;
  v5 = [v4 preview];
  v6 = [v4 imageComponent];
  v7 = v5;
  v8 = [[_UIPlatterView alloc] initWithDUIPreview:v7];

  v9 = v6;
  if ([v9 representsPortal])
  {
    v10 = [_UIPortalView alloc];
    [v9 frame];
    v11 = [(_UIPortalView *)v10 initWithFrame:?];
    v12 = [(_UIPortalView *)v11 portalLayer];
    [v12 setSourceLayerRenderId:{objc_msgSend(v9, "renderID")}];
    v13 = [v9 contextID];

    [v12 setSourceContextId:v13];
    [v12 setHidesSourceLayer:1];
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
    v29 = [v9 slotID];

    v11 = [(_UIDragSlotHostingView *)v14 initWithFrame:v29 contentSize:v16 slotID:v18, v20, v22, v24, v26, v28];
  }

  [(_UIPlatterView *)v8 setComponentView:v11];

  [v4 rotation];
  [(_UIPlatterView *)v8 setStackRotation:?];
  [(_UIPlatterView *)v8 setLifted:1];
  -[_UIPlatterView setConstrainSize:](v8, "setConstrainSize:", [v4 constrainSize]);
  v30 = [v4 preview];
  [v30 stackAlpha];
  [(UIView *)v8 setAlpha:?];

  if (v4)
  {
    [v4 appliedTransform];
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
  v31 = [v4 preview];
  v32 = [v31 shadowProperties];
  [(_UIPlatterView *)v8 setShadowProperties:v32];

  return v8;
}

- (void)setBackgroundVisible:(BOOL)a3
{
  if (self->_backgroundVisible != a3)
  {
    self->_backgroundVisible = a3;
    v4 = a3;
    v5 = [(_UIPlatterView *)self backgroundView];
    [v5 setAlpha:v4];
  }
}

- (void)setShadowVisible:(BOOL)a3
{
  if (self->_shadowVisible != a3)
  {
    self->_shadowVisible = a3;
    [(_UIPlatterView *)self _updateShadowViewState];
  }
}

- (CGPoint)badgeLocation
{
  if ([(_UIPlatterView *)self constrainSize])
  {
    v3 = [(_UIPlatterView *)self preview];
    [v3 croppedScaledSize];
    v5 = v4;
    v7 = v6;

    v8 = [(_UIPlatterView *)self preview];
    [v8 scaleFactor];
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

  v19 = [UIApp userInterfaceLayoutDirection];
  v20 = v13;
  v21 = v14;
  v22 = v11;
  v23 = v12;
  if (v19)
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
  v2 = [(_UIPlatterView *)self preview];
  [v2 initialBadgeLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setConstrainSize:(BOOL)a3
{
  if (self->_constrainSize != a3)
  {
    self->_constrainSize = a3;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (CGPoint)contentOffset
{
  v2 = [(_UIPlatterView *)self preview];
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setComponentView:(id)a3
{
  v5 = a3;
  if (([(UIView *)self->_componentView isEqual:?]& 1) == 0)
  {
    [(UIView *)self->_componentView removeFromSuperview];
    if (v5)
    {
      v4 = [(_UIPlatterView *)self portalWrapperView];
      [v4 addSubview:v5];
    }

    [(_UIPlatterView *)self _configureRadiosityShadowIfNeededWithSourceView:v5];
  }
}

- (BOOL)_hasRadiosityShadow
{
  v3 = [(_UIPlatterView *)self shadowProperties];
  if (v3)
  {
    v4 = [(_UIPlatterView *)self shadowProperties];
    v5 = [v4 shadowType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setShadowProperties:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_shadowProperties, a3);
  componentView = self->_componentView;
  if (componentView)
  {
    v6 = componentView;
  }

  else
  {
    v6 = [(_UIPortalView *)self->_portalView sourceView];
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  [(_UIPlatterView *)self _configureRadiosityShadowIfNeededWithSourceView:v6];

LABEL_5:
}

- (void)_configureRadiosityShadowIfNeededWithSourceView:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIPlatterView *)self _hasRadiosityShadow])
  {
    [(UIView *)self->_shadowView removeFromSuperview];
    v5 = [[_UIPortalView alloc] initWithSourceView:v4];
    [v4 bounds];
    [(_UIPortalView *)v5 setFrame:?];
    v6 = [(UIView *)v5 layer];
    [v6 setZPosition:-1.0];

    [(UIView *)self addSubview:v5];
    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    v8 = MEMORY[0x1E696AD98];
    v9 = [(_UIPlatterView *)self shadowProperties];
    [v9 radiosityBlurRadius];
    v10 = [v8 numberWithDouble:?];
    [v7 setValue:v10 forKey:*MEMORY[0x1E6979BA8]];

    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v11 setValue:&unk_1EFE2E338 forKey:*MEMORY[0x1E6979990]];
    v21[0] = v7;
    v21[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v13 = [(UIView *)v5 layer];
    [v13 setFilters:v12];

    v14 = [UIColor colorWithWhite:0.75 alpha:1.0];
    v15 = [v14 CGColor];
    v16 = [(UIView *)v5 layer];
    [v16 setContentsMultiplyColor:v15];

    v17 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    v18 = [(UIView *)v5 layer];
    [v18 setCompositingFilter:v17];

    v19 = [(UIView *)v5 layer];
    [v19 setShouldRasterize:1];

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

  v9 = [(_UIPlatterView *)self shadowView];
  [v9 setAlpha:v6];

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
  v3 = [(_DUIPreview *)v12 wantsSuppressedMask];
  if ([(_UIPlatterView *)self _isLivePreviewContainer])
  {
    v4 = self->_backgroundView;
  }

  else
  {
    v5 = [(_DUIPreview *)v12 outline];
    v4 = self->_backgroundView;
    if (v5)
    {
      [(UIView *)self bounds];
      v6 = [(_UIPlatterView *)self _applyMaskPath:v5 toView:v4 bounds:?];
      platterMaskView = self->_platterMaskView;
      self->_platterMaskView = v6;

      [(UIView *)self->_portalWrapperView setClipsToBounds:0];
      if (!v3)
      {
        [(UIView *)self bounds];
        [(UIView *)self convertRect:self->_portalWrapperView toView:?];
        v8 = [(_UIPlatterView *)self _applyMaskPath:v5 toView:self->_portalWrapperView bounds:?];
        portalMaskView = self->_portalMaskView;
        self->_portalMaskView = v8;
      }

      goto LABEL_8;
    }
  }

  v10 = [(_DUIPreview *)v12 shadowPath];
  v11 = v10 == 0;

  [(UIView *)self->_portalWrapperView setClipsToBounds:v11 & ~[(_UIPlatterView *)self _isLivePreviewContainer]];
  v5 = 0;
LABEL_8:
  self->_hasAppliedMasking = 1;
}

- (void)setLifted:(BOOL)a3
{
  if (self->_lifted != a3)
  {
    v9 = v4;
    v10 = v3;
    v7 = a3;
    self->_lifted = a3;
    if (a3)
    {
      [(_UIPlatterView *)self _updateMasking];
    }

    [(_UIPlatterView *)self setShadowVisible:v7, v9, v10, v5];
    [(_UIPlatterView *)self setBackgroundVisible:v7];

    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setOrientationRotation:(double)a3
{
  if (self->_orientationRotation != a3)
  {
    self->_orientationRotation = a3;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setOverrideSize:(CGSize)a3
{
  if (self->_overrideSize.width != a3.width || self->_overrideSize.height != a3.height)
  {
    self->_overrideSize = a3;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setAppliesOriginalRotation:(BOOL)a3
{
  if (self->_appliesOriginalRotation != a3)
  {
    self->_appliesOriginalRotation = a3;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (double)scaleFactor
{
  if (![(_UIPlatterView *)self constrainSize]|| ![(_UIPlatterView *)self isLifted]&& ![(_UIPlatterView *)self constrainSizeWhenNotLifted])
  {
    return 1.0;
  }

  v3 = [(_UIPlatterView *)self preview];
  [v3 scaleFactor];
  v5 = v4;

  return v5;
}

- (UIView)sourceView
{
  v2 = [(_UIPlatterView *)self portalView];
  v3 = [v2 sourceView];

  return v3;
}

- (void)setSourceView:(id)a3
{
  v4 = a3;
  v5 = [(_UIPlatterView *)self portalView];
  v6 = [v5 sourceView];

  if (v6 != v4)
  {
    v7 = [(_UIPlatterView *)self portalView];

    if (v7)
    {
      v8 = [(_UIPlatterView *)self portalView];
      [v8 removeFromSuperview];
    }

    v9 = [(_UIPlatterView *)self portalWrapperView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v4 bounds];
    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeScale(&v24, v15 / v18, v17 / v19);
    v20 = [[_UIPortalView alloc] initWithFrame:v11, v13, v15, v17];
    v21 = [(_UIPlatterView *)self preview];
    -[_UIPortalView setHidesSourceView:](v20, "setHidesSourceView:", [v21 hidesSourceView]);

    [(_UIPortalView *)v20 setMatchesAlpha:0];
    [(_UIPortalView *)v20 setMatchesPosition:0];
    [(_UIPortalView *)v20 setMatchesTransform:0];
    v23 = v24;
    [(UIView *)v20 setTransform:&v23];
    [(_UIPortalView *)v20 setSourceView:v4];
    v22 = [(_UIPlatterView *)self preview];
    -[_UIPortalView setAllowsHitTesting:](v20, "setAllowsHitTesting:", [v22 previewMode] == 4);

    [(_UIPortalView *)v20 setAllowsBackdropGroups:1];
    -[UIView _setFlipsHorizontalAxis:](v20, "_setFlipsHorizontalAxis:", [v4 _flipsHorizontalAxis]);
    [v9 addSubview:v20];

    [(_UIPlatterView *)self setPortalView:v20];
    if (v4)
    {
      [(_UIPlatterView *)self _configureRadiosityShadowIfNeededWithSourceView:v4];
    }
  }
}

- (void)setStackRotation:(double)a3
{
  if (self->_stackRotation != a3)
  {
    self->_stackRotation = a3;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setAppliedTransform:(CGAffineTransform *)a3
{
  p_appliedTransform = &self->_appliedTransform;
  v6 = *&self->_appliedTransform.c;
  *&t1.a = *&self->_appliedTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_appliedTransform.tx;
  v7 = *&a3->c;
  *&v10.a = *&a3->a;
  *&v10.c = v7;
  *&v10.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_appliedTransform->c = *&a3->c;
    *&p_appliedTransform->tx = v9;
    *&p_appliedTransform->a = v8;
    [(_UIPlatterView *)self updateTransform];
  }
}

- (void)setAdditionalTransform:(CGAffineTransform *)a3
{
  p_additionalTransform = &self->_additionalTransform;
  v6 = *&self->_additionalTransform.c;
  *&t1.a = *&self->_additionalTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_additionalTransform.tx;
  v7 = *&a3->c;
  *&v10.a = *&a3->a;
  *&v10.c = v7;
  *&v10.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_additionalTransform->c = *&a3->c;
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
    v6 = [(_UIPlatterView *)self preview];
    v7 = v6;
    if (v6)
    {
      [v6 liftTransform];
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

  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  v10 = 1.0;
  if (v9 == 6)
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
    v26 = [(_UIPlatterView *)self constrainSize];
    v27 = [(_UIPlatterView *)self preview];
    v28 = v27;
    if (v26)
    {
      [v27 croppedScaledSize];
    }

    else
    {
      [v27 unscaledSize];
    }

    v31 = v29;
    v32 = v30;

    v33 = [(_UIPlatterView *)self preview];
    v34 = v33;
    v35 = 0.0;
    m14 = 0.0;
    m12 = 0.0;
    m13 = 0.0;
    m11 = 0.0;
    if (v33)
    {
      [v33 liftTransform];
      m11 = b.m11;
      m12 = b.m12;
      m13 = b.m13;
      m14 = b.m14;
    }

    v40 = v32 * m13 + v31 * m11;
    v41 = v32 * m14 + v31 * m12;

    v42 = [(_UIPlatterView *)self preview];
    v43 = v42;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    if (v42)
    {
      [v42 liftTransform];
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

- (CATransform3D)targetTransformIncludingAppliedTransform:(SEL)a3
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
  v17 = [(_UIPlatterView *)self preview];
  v18 = v17;
  if (v17)
  {
    [v17 overrideStackTransform];
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
    v22 = [(_UIPlatterView *)self preview];
    v23 = v22;
    if (v22)
    {
      [v22 overrideStackTransform];
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
    v63 = [(_UIPlatterView *)self preview];
    [v63 originalRotation];
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

- (void)takeCounterTransformsToAddToContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 _window];
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v8 = v4;
  [v5 convertPoint:v8 toView:{v6, v7}];
  v10 = v9;
  v12 = v11;
  [v5 convertPoint:v8 toView:{1.0, 0.0}];
  v14 = v13;
  v16 = v15;
  [v5 convertPoint:v8 toView:{0.0, 1.0}];
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

- (void)setTransformAppliedExternally:(BOOL)a3
{
  self->_transformAppliedExternally = a3;
  if (a3)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(_UIPlatterView *)self preview:a3.width];
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
  v3 = [(UIView *)self superview];
  -[UIView _setFlipsHorizontalAxis:](self, "_setFlipsHorizontalAxis:", [v3 _isRenderedHorizontallyFlipped]);
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(_UIPlatterView *)self constrainSize])
  {
    v8 = [(_UIPlatterView *)self preview];
    [v8 scaleFactor];
    v10 = 1.0 / v9;

    v11 = [(_UIPlatterView *)self preview];
    [v11 croppedScaledSize];
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
    v16 = [(UIView *)&v19 pointInside:v7 withEvent:x, y];
  }

  v17 = v16;

  return v17;
}

- (void)didMoveToSuperview
{
  v3 = [(UIView *)self superview];
  if (v3)
  {
    anchorPointValueToAdjustToOnMoveToWindow = self->_anchorPointValueToAdjustToOnMoveToWindow;
    if (anchorPointValueToAdjustToOnMoveToWindow)
    {
      self->_anchorPointValueToAdjustToOnMoveToWindow = 0;
      v32 = v3;
      v5 = anchorPointValueToAdjustToOnMoveToWindow;

      [(NSValue *)v5 CGPointValue];
      v7 = v6;
      v9 = v8;

      v10 = self;
      v11 = [(UIView *)v10 superview];
      [(UIView *)v10 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(UIView *)v10 anchorPoint];
      [(UIView *)v10 convertPoint:v11 toView:___PlatterViewAdjustAnchorPointWhileKeepingPosition_block_invoke(v20, v21, v13, v15, v17, v19)];
      v23 = v22;
      v25 = v24;
      [(UIView *)v10 convertPoint:v11 toView:___PlatterViewAdjustAnchorPointWhileKeepingPosition_block_invoke(v7, v9, v13, v15, v17, v19)];
      v27 = v26;
      v29 = v28;
      [(UIView *)v10 center];
      [(UIView *)v10 setCenter:v30 + v27 - v23, v31 + v29 - v25];
      [(UIView *)v10 setAnchorPoint:v7, v9];

      v3 = v32;
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

- (void)setContainerCounterScaleTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_containerCounterScaleTransform.a = *&a3->a;
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

- (void)setContainerCounterRotationTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_containerCounterRotationTransform.a = *&a3->a;
  *&self->_containerCounterRotationTransform.c = v4;
  *&self->_containerCounterRotationTransform.tx = v3;
}

@end