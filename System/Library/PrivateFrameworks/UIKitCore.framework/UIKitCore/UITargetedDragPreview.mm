@interface UITargetedDragPreview
+ (UITargetedDragPreview)previewForURL:(NSURL *)url target:(UIDragPreviewTarget *)target;
+ (UITargetedDragPreview)previewForURL:(NSURL *)url title:(NSString *)title target:(UIDragPreviewTarget *)target;
- (CGPoint)_initialBadgeLocation;
- (CGPoint)liftAnchorPoint;
- (UITargetedDragPreview)initWithView:(id)a3;
- (UITargetedDragPreview)initWithView:(id)a3 parameters:(id)a4 target:(id)a5;
- (UITargetedDragPreview)retargetedPreviewWithTarget:(UIDragPreviewTarget *)newTarget;
- (_DUIPreview)_duiPreview;
- (id)imageComponent;
- (void)_resetPreview;
- (void)_setApplyTargetTransformToFlock:(BOOL)a3;
- (void)_setInitialBadgeLocation:(CGPoint)a3;
- (void)_setPreferredStackOrder:(int64_t)a3;
- (void)_setPreviewContainer:(id)a3;
- (void)_setPreviewMode:(int64_t)a3;
- (void)takeLiftAnchorPoint:(CGPoint)a3 fromView:(id)a4;
@end

@implementation UITargetedDragPreview

- (UITargetedDragPreview)initWithView:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIDragPreviewParameters);
  v8.receiver = self;
  v8.super_class = UITargetedDragPreview;
  v6 = [(UITargetedPreview *)&v8 initWithView:v4 parameters:v5];

  return v6;
}

- (UITargetedDragPreview)initWithView:(id)a3 parameters:(id)a4 target:(id)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = UITargetedDragPreview;
  v10 = [(UITargetedPreview *)&v18 initWithView:v8 parameters:v9 target:a5];
  v11 = [v9 visiblePath];
  if (v11)
  {
    v12 = [v9 visiblePath];
  }

  else
  {
    v12 = v8;
  }

  [v12 bounds];
  v10->_liftAnchorPoint.x = v14 + v13 * 0.5;
  v10->_liftAnchorPoint.y = v16 + v15 * 0.5;
  if (v11)
  {
  }

  v10->__preferredStackOrder = -1;
  v10->__initialBadgeLocation = _UICGPointNull_3;

  return v10;
}

- (_DUIPreview)_duiPreview
{
  duiPreview = self->_duiPreview;
  if (!duiPreview)
  {
    v4 = [_DUIPreview alloc];
    v5 = [(UITargetedPreview *)self view];
    v6 = [(UITargetedPreview *)self target];
    v7 = [v6 container];
    v8 = [(UITargetedPreview *)self parameters];
    v9 = [(UITargetedPreview *)self target];
    [v9 center];
    v10 = [(_DUIPreview *)v4 initWithView:v5 container:v7 parameters:v8 center:?];

    v11 = [(UITargetedDragPreview *)self _springboardParameters];
    v12 = [v11 objectForKeyedSubscript:@"_UIPlatterViewSuppressMask"];
    v13 = [v12 BOOLValue];

    [(_DUIPreview *)v10 setWantsSuppressedMask:v13];
    v14 = [(UITargetedPreview *)self view];
    [v14 bounds];
    v16 = v15;
    v18 = v17;

    [(UITargetedDragPreview *)self liftAnchorPoint];
    [(_DUIPreview *)v10 setLiftAnchorPoint:v19 / v16, v20 / v18];
    if ([(UITargetedDragPreview *)self _applyTargetTransformToFlock])
    {
      v21 = [(UITargetedPreview *)self target];
      v22 = v21;
      if (v21)
      {
        [v21 transform];
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
      }

      v25[0] = v26;
      v25[1] = v27;
      v25[2] = v28;
      [(_DUIPreview *)v10 setOverrideStackTransform:v25];
    }

    [(_DUIPreview *)v10 setPreferredStackOrder:[(UITargetedDragPreview *)self _preferredStackOrder]];
    [(UITargetedDragPreview *)self _initialBadgeLocation];
    [(_DUIPreview *)v10 setInitialBadgeLocation:?];
    v23 = self->_duiPreview;
    self->_duiPreview = v10;

    duiPreview = self->_duiPreview;
  }

  return duiPreview;
}

- (void)_setPreferredStackOrder:(int64_t)a3
{
  if (self->__preferredStackOrder != a3)
  {
    self->__preferredStackOrder = a3;
    [(_DUIPreview *)self->_duiPreview setPreferredStackOrder:?];
  }
}

- (void)_setInitialBadgeLocation:(CGPoint)a3
{
  if (a3.x != self->__initialBadgeLocation.x || a3.y != self->__initialBadgeLocation.y)
  {
    self->__initialBadgeLocation = a3;
    [(_DUIPreview *)self->_duiPreview setInitialBadgeLocation:?];
  }
}

- (void)_setApplyTargetTransformToFlock:(BOOL)a3
{
  if (self->__applyTargetTransformToFlock != a3)
  {
    v13 = v3;
    v14 = v4;
    self->__applyTargetTransformToFlock = a3;
    if ([(UITargetedDragPreview *)self _applyTargetTransformToFlock])
    {
      v6 = [(UITargetedPreview *)self target];
      v7 = v6;
      if (v6)
      {
        [v6 transform];
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
      }

      duiPreview = self->_duiPreview;
      v9[0] = v10;
      v9[1] = v11;
      v9[2] = v12;
      [(_DUIPreview *)duiPreview setOverrideStackTransform:v9];
    }
  }
}

- (id)imageComponent
{
  v48[2] = *MEMORY[0x1E69E9840];
  imageComponent = self->_imageComponent;
  if (!imageComponent)
  {
    v4 = [(UITargetedPreview *)self view];
    v5 = [(UITargetedPreview *)self parameters];
    v6 = [v5 _previewMode];

    if ((v6 - 3) >= 2)
    {
      if (v6 == 2)
      {
        v9 = [v4 snapshotView];
        v10 = [[_UIDraggingImageComponent alloc] initWithView:v9];
        v11 = self->_imageComponent;
        self->_imageComponent = v10;
      }

      else
      {
        if ([UIApp _isSpringBoard])
        {
          v12 = 0;
        }

        else
        {
          v12 = ![(UITargetedDragPreview *)self _preventAfterScreenUpdatesSnapshot];
        }

        CanBeRenderedAfterCommit = _UIViewCanBeRenderedAfterCommit(v4, v12);
        v14 = [v4 accessibilityIgnoresInvertColors];
        v15 = *MEMORY[0x1E695EFF8];
        v16 = *(MEMORY[0x1E695EFF8] + 8);
        v17 = [(UITargetedDragPreview *)self _duiPreview];
        [v17 contentSize];
        v19 = v18;
        v21 = v20;

        if (!CanBeRenderedAfterCommit)
        {
          goto LABEL_18;
        }

        v22 = v4;
        v23 = [(UITargetedPreview *)self _viewToSnapshot];

        if (v23)
        {
          v24 = [(UITargetedPreview *)self _viewToSnapshot];

          [v24 bounds];
          [v22 convertRect:v24 fromView:?];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v22 = v24;
        }

        else
        {
          v32 = v21;
          v30 = v19;
          v28 = v16;
          v26 = v15;
        }

        if (v12)
        {
          v33 = [(UIView *)v22 _internalTraitOverrides];
          [v33 _setNSIntegerValue:0 forTraitToken:0x1EFE325A8];

          [(UIView *)v22 _addChildTraitCollectionTransformWithIdentifier:&__block_literal_global_308 transform:?];
          [v22 updateTraitsIfNeeded];
        }

        v47[0] = @"dst-rect";
        *v46 = v26;
        *&v46[1] = v28;
        *&v46[2] = v30;
        *&v46[3] = v32;
        v34 = [MEMORY[0x1E696B098] valueWithBytes:v46 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v47[1] = @"dst-size";
        v48[0] = v34;
        *v45 = v19;
        *&v45[1] = v21;
        v35 = [MEMORY[0x1E696B098] valueWithBytes:v45 objCType:"{CGSize=dd}"];
        v48[1] = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
        v37 = _UIRenderViewImageAfterCommit(v22, v36, v12);

        if (v12)
        {
          v38 = [(UIView *)v22 _internalTraitOverrides];
          [(_UITraitOverrides *)v38 _removeTraitToken:?];

          [(UIView *)v22 _removeChildTraitCollectionTransformWithIdentifier:?];
        }

        if (!v37)
        {
LABEL_18:
          v39 = [[UIGraphicsImageRenderer alloc] initWithSize:v19, v21];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __39__UITargetedDragPreview_imageComponent__block_invoke_2;
          v43[3] = &unk_1E70F6970;
          v44 = v4;
          v37 = [(UIGraphicsImageRenderer *)v39 imageWithActions:v43];
        }

        v40 = [[_UIDraggingImageComponent alloc] initWithImage:v37 frame:v14 ignoreAccessibilityFilters:v15, v16, v19, v21];
        v41 = self->_imageComponent;
        self->_imageComponent = v40;
      }
    }

    else
    {
      v7 = [[_UIDraggingImageComponent alloc] initWithView:v4];
      v8 = self->_imageComponent;
      self->_imageComponent = v7;
    }

    imageComponent = self->_imageComponent;
  }

  return imageComponent;
}

void __39__UITargetedDragPreview_imageComponent__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v5 = (*(a3 + 16))(a3);
  v6 = [v5 _vibrancy];

  if (v6)
  {
    v7 = v8[2]();
    [v7 _setNSIntegerValue:0 forTraitToken:0x1EFE325A8];
  }
}

void __39__UITargetedDragPreview_imageComponent__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

- (void)_resetPreview
{
  duiPreview = self->_duiPreview;
  self->_duiPreview = 0;
}

- (void)takeLiftAnchorPoint:(CGPoint)a3 fromView:(id)a4
{
  if (!self->_didSetLiftAnchorPoint)
  {
    y = a3.y;
    x = a3.x;
    v7 = a4;
    v8 = [(UITargetedPreview *)self target];
    v9 = [v8 container];
    [v9 convertPoint:v7 fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = [(UITargetedPreview *)self target];
    [v14 center];
    v16 = v15;
    v18 = v17;

    memset(&v47, 0, sizeof(v47));
    v19 = [(UITargetedPreview *)self view];
    v20 = v19;
    if (v19)
    {
      [v19 transform];
    }

    else
    {
      memset(&v46, 0, sizeof(v46));
    }

    CGAffineTransformInvert(&v47, &v46);

    v21 = v47.tx + v11 * v47.a + v13 * v47.c;
    v22 = v47.ty + v11 * v47.b + v13 * v47.d;
    v23 = v47.tx + v16 * v47.a + v18 * v47.c;
    v24 = v47.ty + v16 * v47.b + v18 * v47.d;
    v25 = [(UITargetedPreview *)self parameters];
    v26 = [v25 visiblePath];
    if (v26)
    {
      v27 = [(UITargetedPreview *)self parameters];
      v28 = [v27 visiblePath];
      [v28 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
    }

    else
    {
      v27 = [(UITargetedPreview *)self view];
      [v27 bounds];
      v30 = v37;
      v32 = v38;
      v34 = v39;
      v36 = v40;
    }

    v41 = v22 - v24;
    v42 = v21 - v23 + v30 + v34 * 0.5;
    v43 = v41 + v32 + v36 * 0.5;
    v44 = [(UITargetedPreview *)self view];
    v45 = [v44 _flipsHorizontalAxis];

    if (v45)
    {
      v48.origin.x = v30;
      v48.origin.y = v32;
      v48.size.width = v34;
      v48.size.height = v36;
      v42 = CGRectGetWidth(v48) - v42;
    }

    [(UITargetedDragPreview *)self setLiftAnchorPoint:v42, v43, *&v46.a, *&v46.c, *&v46.tx];
    [(UITargetedDragPreview *)self _resetPreview];
  }
}

- (UITargetedDragPreview)retargetedPreviewWithTarget:(UIDragPreviewTarget *)newTarget
{
  v7.receiver = self;
  v7.super_class = UITargetedDragPreview;
  v4 = [(UITargetedPreview *)&v7 retargetedPreviewWithTarget:newTarget];
  v5 = [(UITargetedDragPreview *)self _springboardParameters];
  [v4 set_springboardParameters:v5];

  return v4;
}

- (void)_setPreviewMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = UITargetedDragPreview;
  [(UITargetedPreview *)&v4 _setPreviewMode:a3];
  [(UITargetedDragPreview *)self _resetPreview];
}

- (void)_setPreviewContainer:(id)a3
{
  objc_storeStrong(&self->__previewContainer, a3);

  [(UITargetedDragPreview *)self _setPreviewMode:6];
}

- (CGPoint)_initialBadgeLocation
{
  x = self->__initialBadgeLocation.x;
  y = self->__initialBadgeLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)liftAnchorPoint
{
  x = self->_liftAnchorPoint.x;
  y = self->_liftAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (UITargetedDragPreview)previewForURL:(NSURL *)url target:(UIDragPreviewTarget *)target
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = target;
  v6 = [UIURLDragPreviewView viewWithURL:url];
  v7 = [UITargetedDragPreview alloc];
  v8 = v6;
  v9 = [UIDragPreviewParameters alloc];
  v10 = MEMORY[0x1E696B098];
  [v8 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [v10 valueWithCGRect:{v12, v14, v16, v18}];
  v24[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v21 = [(UIPreviewParameters *)v9 initWithTextLineRects:v20];

  v22 = [(UITargetedDragPreview *)v7 initWithView:v8 parameters:v21 target:v5];

  return v22;
}

+ (UITargetedDragPreview)previewForURL:(NSURL *)url title:(NSString *)title target:(UIDragPreviewTarget *)target
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = target;
  v8 = [UIURLDragPreviewView viewWithTitle:title URL:url];
  v9 = [UITargetedDragPreview alloc];
  v10 = v8;
  v11 = [UIDragPreviewParameters alloc];
  v12 = MEMORY[0x1E696B098];
  [v10 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [v12 valueWithCGRect:{v14, v16, v18, v20}];
  v26[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v23 = [(UIPreviewParameters *)v11 initWithTextLineRects:v22];

  v24 = [(UITargetedDragPreview *)v9 initWithView:v10 parameters:v23 target:v7];

  return v24;
}

@end