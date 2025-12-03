@interface UITargetedDragPreview
+ (UITargetedDragPreview)previewForURL:(NSURL *)url target:(UIDragPreviewTarget *)target;
+ (UITargetedDragPreview)previewForURL:(NSURL *)url title:(NSString *)title target:(UIDragPreviewTarget *)target;
- (CGPoint)_initialBadgeLocation;
- (CGPoint)liftAnchorPoint;
- (UITargetedDragPreview)initWithView:(id)view;
- (UITargetedDragPreview)initWithView:(id)view parameters:(id)parameters target:(id)target;
- (UITargetedDragPreview)retargetedPreviewWithTarget:(UIDragPreviewTarget *)newTarget;
- (_DUIPreview)_duiPreview;
- (id)imageComponent;
- (void)_resetPreview;
- (void)_setApplyTargetTransformToFlock:(BOOL)flock;
- (void)_setInitialBadgeLocation:(CGPoint)location;
- (void)_setPreferredStackOrder:(int64_t)order;
- (void)_setPreviewContainer:(id)container;
- (void)_setPreviewMode:(int64_t)mode;
- (void)takeLiftAnchorPoint:(CGPoint)point fromView:(id)view;
@end

@implementation UITargetedDragPreview

- (UITargetedDragPreview)initWithView:(id)view
{
  viewCopy = view;
  v5 = objc_alloc_init(UIDragPreviewParameters);
  v8.receiver = self;
  v8.super_class = UITargetedDragPreview;
  v6 = [(UITargetedPreview *)&v8 initWithView:viewCopy parameters:v5];

  return v6;
}

- (UITargetedDragPreview)initWithView:(id)view parameters:(id)parameters target:(id)target
{
  viewCopy = view;
  parametersCopy = parameters;
  v18.receiver = self;
  v18.super_class = UITargetedDragPreview;
  v10 = [(UITargetedPreview *)&v18 initWithView:viewCopy parameters:parametersCopy target:target];
  visiblePath = [parametersCopy visiblePath];
  if (visiblePath)
  {
    visiblePath2 = [parametersCopy visiblePath];
  }

  else
  {
    visiblePath2 = viewCopy;
  }

  [visiblePath2 bounds];
  v10->_liftAnchorPoint.x = v14 + v13 * 0.5;
  v10->_liftAnchorPoint.y = v16 + v15 * 0.5;
  if (visiblePath)
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
    view = [(UITargetedPreview *)self view];
    target = [(UITargetedPreview *)self target];
    container = [target container];
    parameters = [(UITargetedPreview *)self parameters];
    target2 = [(UITargetedPreview *)self target];
    [target2 center];
    v10 = [(_DUIPreview *)v4 initWithView:view container:container parameters:parameters center:?];

    _springboardParameters = [(UITargetedDragPreview *)self _springboardParameters];
    v12 = [_springboardParameters objectForKeyedSubscript:@"_UIPlatterViewSuppressMask"];
    bOOLValue = [v12 BOOLValue];

    [(_DUIPreview *)v10 setWantsSuppressedMask:bOOLValue];
    view2 = [(UITargetedPreview *)self view];
    [view2 bounds];
    v16 = v15;
    v18 = v17;

    [(UITargetedDragPreview *)self liftAnchorPoint];
    [(_DUIPreview *)v10 setLiftAnchorPoint:v19 / v16, v20 / v18];
    if ([(UITargetedDragPreview *)self _applyTargetTransformToFlock])
    {
      target3 = [(UITargetedPreview *)self target];
      v22 = target3;
      if (target3)
      {
        [target3 transform];
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

- (void)_setPreferredStackOrder:(int64_t)order
{
  if (self->__preferredStackOrder != order)
  {
    self->__preferredStackOrder = order;
    [(_DUIPreview *)self->_duiPreview setPreferredStackOrder:?];
  }
}

- (void)_setInitialBadgeLocation:(CGPoint)location
{
  if (location.x != self->__initialBadgeLocation.x || location.y != self->__initialBadgeLocation.y)
  {
    self->__initialBadgeLocation = location;
    [(_DUIPreview *)self->_duiPreview setInitialBadgeLocation:?];
  }
}

- (void)_setApplyTargetTransformToFlock:(BOOL)flock
{
  if (self->__applyTargetTransformToFlock != flock)
  {
    v13 = v3;
    v14 = v4;
    self->__applyTargetTransformToFlock = flock;
    if ([(UITargetedDragPreview *)self _applyTargetTransformToFlock])
    {
      target = [(UITargetedPreview *)self target];
      v7 = target;
      if (target)
      {
        [target transform];
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
    view = [(UITargetedPreview *)self view];
    parameters = [(UITargetedPreview *)self parameters];
    _previewMode = [parameters _previewMode];

    if ((_previewMode - 3) >= 2)
    {
      if (_previewMode == 2)
      {
        snapshotView = [view snapshotView];
        v10 = [[_UIDraggingImageComponent alloc] initWithView:snapshotView];
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

        CanBeRenderedAfterCommit = _UIViewCanBeRenderedAfterCommit(view, v12);
        accessibilityIgnoresInvertColors = [view accessibilityIgnoresInvertColors];
        v15 = *MEMORY[0x1E695EFF8];
        v16 = *(MEMORY[0x1E695EFF8] + 8);
        _duiPreview = [(UITargetedDragPreview *)self _duiPreview];
        [_duiPreview contentSize];
        v19 = v18;
        v21 = v20;

        if (!CanBeRenderedAfterCommit)
        {
          goto LABEL_18;
        }

        v22 = view;
        _viewToSnapshot = [(UITargetedPreview *)self _viewToSnapshot];

        if (_viewToSnapshot)
        {
          _viewToSnapshot2 = [(UITargetedPreview *)self _viewToSnapshot];

          [_viewToSnapshot2 bounds];
          [v22 convertRect:_viewToSnapshot2 fromView:?];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v22 = _viewToSnapshot2;
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
          _internalTraitOverrides = [(UIView *)v22 _internalTraitOverrides];
          [_internalTraitOverrides _setNSIntegerValue:0 forTraitToken:0x1EFE325A8];

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
          _internalTraitOverrides2 = [(UIView *)v22 _internalTraitOverrides];
          [(_UITraitOverrides *)_internalTraitOverrides2 _removeTraitToken:?];

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
          v44 = view;
          v37 = [(UIGraphicsImageRenderer *)v39 imageWithActions:v43];
        }

        v40 = [[_UIDraggingImageComponent alloc] initWithImage:v37 frame:accessibilityIgnoresInvertColors ignoreAccessibilityFilters:v15, v16, v19, v21];
        v41 = self->_imageComponent;
        self->_imageComponent = v40;
      }
    }

    else
    {
      v7 = [[_UIDraggingImageComponent alloc] initWithView:view];
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

- (void)takeLiftAnchorPoint:(CGPoint)point fromView:(id)view
{
  if (!self->_didSetLiftAnchorPoint)
  {
    y = point.y;
    x = point.x;
    viewCopy = view;
    target = [(UITargetedPreview *)self target];
    container = [target container];
    [container convertPoint:viewCopy fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    target2 = [(UITargetedPreview *)self target];
    [target2 center];
    v16 = v15;
    v18 = v17;

    memset(&v47, 0, sizeof(v47));
    view = [(UITargetedPreview *)self view];
    v20 = view;
    if (view)
    {
      [view transform];
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
    parameters = [(UITargetedPreview *)self parameters];
    visiblePath = [parameters visiblePath];
    if (visiblePath)
    {
      parameters2 = [(UITargetedPreview *)self parameters];
      visiblePath2 = [parameters2 visiblePath];
      [visiblePath2 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
    }

    else
    {
      parameters2 = [(UITargetedPreview *)self view];
      [parameters2 bounds];
      v30 = v37;
      v32 = v38;
      v34 = v39;
      v36 = v40;
    }

    v41 = v22 - v24;
    v42 = v21 - v23 + v30 + v34 * 0.5;
    v43 = v41 + v32 + v36 * 0.5;
    view2 = [(UITargetedPreview *)self view];
    _flipsHorizontalAxis = [view2 _flipsHorizontalAxis];

    if (_flipsHorizontalAxis)
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
  _springboardParameters = [(UITargetedDragPreview *)self _springboardParameters];
  [v4 set_springboardParameters:_springboardParameters];

  return v4;
}

- (void)_setPreviewMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = UITargetedDragPreview;
  [(UITargetedPreview *)&v4 _setPreviewMode:mode];
  [(UITargetedDragPreview *)self _resetPreview];
}

- (void)_setPreviewContainer:(id)container
{
  objc_storeStrong(&self->__previewContainer, container);

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