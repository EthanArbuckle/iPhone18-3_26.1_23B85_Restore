@interface _UIContextMenuLayoutArbiter
- ($9638EFF0CCCAFE90921E224CC361F7AC)menuAnchor;
- (CGPoint)_computedMenuAnchorPointForMenuFrame:(CGRect)frame previewFrame:(CGRect)previewFrame;
- (CGRect)_computedMenuBoundsForContentBounds:(CGRect)bounds predictedPreviewFrame:(CGRect)frame;
- (CGRect)_computedPreviewBoundsForContentBounds:(CGRect)bounds sourceWindowBounds:(CGRect)windowBounds;
- (CGRect)contentBounds;
- (CGRect)contentBoundsForConstrainingPreview;
- (CGRect)sourceWindowBounds;
- (UIView)containerView;
- (_UIContextMenuLayoutArbiter)initWithContainerView:(id)view layout:(unint64_t)layout;
- (double)_applyEdgeInsetsToBounds:(void *)bounds;
- (double)contentSpacing;
- (id)_accessoryPositionsForBaseLayout:(id)layout;
- (id)computedLayoutWithInput:(id)input;
- (unint64_t)_automaticAlignmentAndOffset:(double *)offset forAttachment:(unint64_t)attachment sourcePoint:(CGPoint)point;
- (unint64_t)_defaultAttachmentEdge;
- (void)_drawContentBoundsDebugUI:(CGRect)i;
- (void)_positionPlatterFrame:(CGRect *)frame andActionViewFrame:(CGRect *)viewFrame inBounds:(CGRect)bounds aboutSourcePoint:(CGPoint)point;
@end

@implementation _UIContextMenuLayoutArbiter

- (CGRect)sourceWindowBounds
{
  containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
  [containerView bounds];
  v5 = v4;
  currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
  sourcePreview = [currentInput sourcePreview];
  target = [sourcePreview target];
  container = [target container];
  _window = [container _window];

  if (_window)
  {
    [_window bounds];
    v5 = _UIContextMenuProjectFrameFromViewToView_0(_window, containerView, v11, v12, v13, v14);
  }

  v15 = [(_UIContextMenuLayoutArbiter *)self _applyEdgeInsetsToBounds:v5];
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- ($9638EFF0CCCAFE90921E224CC361F7AC)menuAnchor
{
  p_var4 = &self->var4;
  if (self->var4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
    self = [($9638EFF0CCCAFE90921E224CC361F7AC *)self _defaultAttachmentEdge];
    selfCopy->var4 = self;
  }

  v6 = *(p_var4 + 1);
  *&retstr->var0 = *p_var4;
  *&retstr->var2 = v6;
  retstr->var4 = p_var4[4];
  return self;
}

- (double)contentSpacing
{
  currentLayout = [(_UIContextMenuLayoutArbiter *)self currentLayout];
  result = 0.0;
  if (currentLayout != 3)
  {
    currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
    [currentInput preferredContentSpacing];
    v7 = fabs(v6);

    if (v7 < 2.22044605e-16)
    {
      containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
      v12 = _UIContextMenuDefaultContentSpacing(containerView);

      currentInput2 = [(_UIContextMenuLayoutArbiter *)self currentInput];
      [currentInput2 preferredEdgeInsets];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      if (v21 == 0.0 && v17 == 0.0 && v15 == 0.0)
      {
        if (v17 >= v12)
        {
          result = v12;
        }

        else
        {
          result = v17;
        }

        if (v19 == 0.0)
        {
          return v12;
        }
      }

      else if (v17 >= v12)
      {
        return v12;
      }

      else
      {
        return v17;
      }
    }

    else
    {
      currentInput3 = [(_UIContextMenuLayoutArbiter *)self currentInput];
      [currentInput3 preferredContentSpacing];
      v10 = v9;

      return v10;
    }
  }

  return result;
}

- (CGRect)contentBoundsForConstrainingPreview
{
  containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
  traitCollection = [containerView traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  if ([v5 previewIsConstrainedToSourceWindowBounds])
  {
    [(_UIContextMenuLayoutArbiter *)self sourceWindowBounds];
  }

  else
  {
    [(_UIContextMenuLayoutArbiter *)self contentBounds];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (CGRect)contentBounds
{
  containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
  [containerView bounds];
  v5 = [(_UIContextMenuLayoutArbiter *)self _applyEdgeInsetsToBounds:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (unint64_t)_defaultAttachmentEdge
{
  v66 = *MEMORY[0x1E69E9840];
  currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
  _hasVisibleMenu = [currentInput _hasVisibleMenu];

  if (!_hasVisibleMenu)
  {
    v30 = 4;
    goto LABEL_20;
  }

  containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
  currentInput2 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  sourcePreview = [currentInput2 sourcePreview];
  target = [sourcePreview target];
  v9 = containerView;
  [target center];
  v11 = v10;
  v13 = v12;
  container = [target container];
  v15 = _UIContextMenuConvertCGPointBetweenViews(container, v9, v11, v13);
  v17 = v16;

  traitCollection = [v9 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  currentInput3 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  [currentInput3 preferredPreviewSize];
  v22 = v21;
  v24 = v23;
  v25 = traitCollection;
  v26 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  prefersWrapToSidesHandler = [v26 prefersWrapToSidesHandler];
  if (prefersWrapToSidesHandler)
  {
    v28 = prefersWrapToSidesHandler;
    v29 = (*(prefersWrapToSidesHandler + 16))(prefersWrapToSidesHandler, v25, v22, v24);

    if (v29)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  horizontalSizeClass = [v25 horizontalSizeClass];
  currentInput4 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  [currentInput4 preferredMenuSize];
  v34 = v33;

  if ([(_UIContextMenuLayoutArbiter *)self currentLayout]== 1)
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    [(_UIContextMenuLayoutArbiter *)self contentBounds];
    v35 = v17 - CGRectGetMinY(v67);
    [(_UIContextMenuLayoutArbiter *)self contentBounds];
    CGRectDivide(v68, &slice, &remainder, v35, CGRectMinYEdge);
    currentInput5 = [(_UIContextMenuLayoutArbiter *)self currentInput];
    [currentInput5 preferredPreviewSize];
    v38 = v37;
    [(_UIContextMenuLayoutArbiter *)self contentSpacing];
    v40 = v39;

    Height = CGRectGetHeight(slice);
    v42 = CGRectGetHeight(remainder);
    if (horizontalSizeClass != 2 || (v43 = v40 + v38 * 0.5, v34 <= Height - v43) || v34 <= v42 - v43)
    {
      v44 = CGRectGetHeight(slice);
      if (v44 > CGRectGetHeight(remainder))
      {
        v30 = 1;
      }

      else
      {
        v30 = 4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v30 = 4;
    if (horizontalSizeClass != 2 || v34 <= 135.0)
    {
      goto LABEL_19;
    }
  }

LABEL_16:
  [v9 bounds];
  if (v15 <= CGRectGetMidX(v69))
  {
    v30 = 8;
  }

  else
  {
    v30 = 2;
  }

LABEL_19:

LABEL_20:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  currentInput6 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  accessoryViews = [currentInput6 accessoryViews];

  v47 = [accessoryViews countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = 0;
    v50 = *v60;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v60 != v50)
        {
          objc_enumerationMutation(accessoryViews);
        }

        v52 = *(*(&v59 + 1) + 8 * i);
        if ([v52 location] == 1)
        {
          if (v52)
          {
            [v52 anchor];
            v53 = v56;
          }

          else
          {
            v53 = 0;
            v58 = 0;
            v56 = 0u;
            v57 = 0u;
          }

          v49 |= v53;
        }
      }

      v48 = [accessoryViews countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v48);
  }

  else
  {
    v49 = 0;
  }

  if ((v49 & v30) != 0)
  {
    v54 = v30 - 1;
    if (v30 - 1 <= 7 && ((0x8Bu >> v54) & 1) != 0)
    {
      return qword_18A67BA58[v54];
    }
  }

  return v30;
}

- (_UIContextMenuLayoutArbiter)initWithContainerView:(id)view layout:(unint64_t)layout
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _UIContextMenuLayoutArbiter;
  v7 = [(_UIContextMenuLayoutArbiter *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(_UIContextMenuLayoutArbiter *)v7 setContainerView:viewCopy];
    [(_UIContextMenuLayoutArbiter *)v8 setCurrentLayout:layout];
    v8->_menuAnchor.gravity = 0;
    *&v8->_menuAnchor.attachment = _UIContextMenuNullAnchor_0;
    *&v8->_menuAnchor.attachmentOffset = unk_18A67BA40;
  }

  return v8;
}

- (id)computedLayoutWithInput:(id)input
{
  inputCopy = input;
  [(_UIContextMenuLayoutArbiter *)self setCurrentInput:inputCopy];
  v5 = *(MEMORY[0x1E695F058] + 16);
  v115.origin = *MEMORY[0x1E695F058];
  v115.size = v5;
  [inputCopy preferredMenuSize];
  v114.origin.x = 0.0;
  v114.origin.y = 0.0;
  v114.size.width = v6;
  v114.size.height = v7;
  if (([inputCopy shouldUpdateAttachment] & 1) != 0 || self->_menuAnchor.attachment == 0x7FFFFFFFFFFFFFFFLL && self->_menuAnchor.alignment == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
    v9 = currentInput;
    if (currentInput)
    {
      [currentInput preferredAnchor];
    }

    else
    {
      v107 = 0.0;
      v105 = 0u;
      v106 = 0;
    }

    v10 = v106;
    *&self->_menuAnchor.attachment = v105;
    *&self->_menuAnchor.attachmentOffset = v10;
    *&self->_menuAnchor.gravity = v107;
  }

  containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
  [(_UIContextMenuLayoutArbiter *)self contentBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  traitCollection = [containerView traitCollection];
  v21 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  sourcePreview = [inputCopy sourcePreview];
  target = [sourcePreview target];
  v24 = containerView;
  [target center];
  v26 = v25;
  v28 = v27;
  container = [target container];
  v99 = _UIContextMenuConvertCGPointBetweenViews(container, v24, v26, v28);
  v96 = v30;

  sourcePreview2 = [inputCopy sourcePreview];
  target2 = [sourcePreview2 target];
  v33 = v24;
  [target2 center];
  v35 = v34;
  v37 = v36;
  container2 = [target2 container];
  _UIContextMenuConvertCGPointBetweenViews(container2, v33, v35, v37);

  [(_UIContextMenuLayoutArbiter *)self contentBounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  [(_UIContextMenuLayoutArbiter *)self sourceWindowBounds];
  [(_UIContextMenuLayoutArbiter *)self _computedPreviewBoundsForContentBounds:v40 sourceWindowBounds:v42, v44, v46, v47, v48, v49, v50];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v115.origin.x = v51;
  v115.origin.y = v53;
  v115.size.width = v55;
  v115.size.height = v57;
  currentInput2 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  LOBYTE(target2) = [currentInput2 _hasVisibleMenu];

  if (target2)
  {
    _screen = [v33 _screen];
    [_screen scale];
    UIRectCenteredAboutPointScale(v52, v54, v56, v58, v99, v96, v61);
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;

    [(_UIContextMenuLayoutArbiter *)self _computedMenuBoundsForContentBounds:v13 predictedPreviewFrame:v15, v17, v19, v63, v65, v67, v69];
    v114.origin.x = v70;
    v114.origin.y = v71;
    v114.size.width = v72;
    v114.size.height = v73;
  }

  [(_UIContextMenuLayoutArbiter *)self _positionPlatterFrame:&v115 andActionViewFrame:&v114 inBounds:v13 aboutSourcePoint:v15, v17, v19, v99, v96];
  [(_UIContextMenuLayoutArbiter *)self _drawContentBoundsDebugUI:v13, v15, v17, v19];
  v95 = *MEMORY[0x1E695EFD0];
  v97 = *(MEMORY[0x1E695EFD0] + 16);
  *&v113.a = *MEMORY[0x1E695EFD0];
  *&v113.c = v97;
  v94 = *(MEMORY[0x1E695EFD0] + 32);
  *&v113.tx = v94;
  currentInput3 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  shouldConcealMenu = [currentInput3 shouldConcealMenu];

  v76 = 1.0;
  if (shouldConcealMenu)
  {
    v114.size.height = 22.0;
    CGAffineTransformMakeScale(&v113, 0.2, 0.2);
    v76 = 0.0;
  }

  v100 = *&v76;
  v77 = objc_opt_new();
  [v77 setType:{-[_UIContextMenuLayoutArbiter currentLayout](self, "currentLayout")}];
  [(_UIContextMenuLayoutArbiter *)self contentBounds];
  [v77 setContentBounds:?];
  origin = v115.origin;
  size = v115.size;
  v80 = origin.x + size.width * 0.5 + CGRectGetWidth(v115) * 0.0;
  v117.origin = origin;
  v117.size = size;
  Height = CGRectGetHeight(v117);
  *&v111.a = v95;
  *&v111.c = v97;
  *&v111.tx = v94;
  v105 = 0uLL;
  v106 = v115.size;
  v107 = v80;
  v108 = origin.y + size.height * 0.5 + Height * 0.0;
  v109 = xmmword_18A67BA20;
  v110 = 0x3FE0000000000000;
  v112 = 0x3FF0000000000000;
  _validatedItemLayout(v104, &v105, inputCopy, @"Preview");
  [v77 setPreview:v104];
  [(_UIContextMenuLayoutArbiter *)self _computedMenuAnchorPointForMenuFrame:v114.origin.x previewFrame:v114.origin.y, *&v114.size, v115.origin.x, *&v115.origin.y, v115.size.height];
  v83 = v82;
  v85 = v84;
  x = v114.origin.x;
  y = v114.origin.y;
  v88 = v114.size;
  v89 = v114.origin.x + v114.size.width * 0.5;
  v98 = v114.origin.y + v114.size.height * 0.5;
  v90 = v89 + (v82 + -0.5) * CGRectGetWidth(v114);
  v118.origin.x = x;
  v118.origin.y = y;
  v118.size = v88;
  v91 = CGRectGetHeight(v118);
  v111 = v113;
  v105 = 0uLL;
  v106 = v114.size;
  v107 = v90;
  v108 = v98 + (v85 + -0.5) * v91;
  *&v109 = 0;
  *(&v109 + 1) = v83;
  v110 = *&v85;
  v112 = v100;
  _validatedItemLayout(v104, &v105, inputCopy, @"Menu");
  [v77 setMenu:v104];
  [(_UIContextMenuLayoutArbiter *)self menuAnchor];
  v105 = v101;
  v106 = v102;
  v107 = v103;
  [v77 setAnchor:&v105];
  v92 = [(_UIContextMenuLayoutArbiter *)self _accessoryPositionsForBaseLayout:v77];
  [v77 setAccessoryPositions:v92];

  [inputCopy maximumMenuHeight];
  [v77 setMaximumMenuHeight:?];

  return v77;
}

- (double)_applyEdgeInsetsToBounds:(void *)bounds
{
  if (!bounds)
  {
    return 0.0;
  }

  currentInput = [bounds currentInput];
  [currentInput preferredEdgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  containerView = [bounds containerView];
  v63 = v7;
  v64 = v5;
  v13 = v7 == 0.0;
  if (v5 != 0.0)
  {
    v13 = 0;
  }

  if (v11 != 0.0)
  {
    v13 = 0;
  }

  v14 = v9 == 0.0 && v13;
  currentInput2 = [bounds currentInput];
  shouldAvoidInputViews = [currentInput2 shouldAvoidInputViews];
  v17 = containerView;
  [v17 safeAreaInsets];
  v19 = v18;
  v21 = v20;
  traitCollection = [v17 traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass != 1)
  {
    v21 = v21 + 0.0;
    v19 = v19 + 20.0;
  }

  v24 = fmax(v19, 20.0);
  v25 = fmax(v21, _UIContextMenuDefaultContentSpacing(v17));
  if (shouldAvoidInputViews)
  {
    v26 = v17;
    _window = [v26 _window];
    _isRemoteInputHostWindow = [_window _isRemoteInputHostWindow];

    if ((_isRemoteInputHostWindow & 1) == 0)
    {
      v29 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v30 = v29;
      if (v29)
      {
        [v29 verticalOverlapForView:v26 usingKeyboardInfo:0];
        traitCollection2 = [v26 traitCollection];
        v32 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);

        [v32 minimumContainerInsets];
      }
    }
  }

  traitCollection3 = [v17 traitCollection];
  userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];

  v35 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v35 preferredDefaultContentInsets];
  v37 = fmax(v24, v36);
  v39 = fmax(v25, v38);

  if (!v14)
  {
    currentLayout = [bounds currentLayout];
    v41 = fmin(v64, v37);
    v42 = fmin(v63, v39);
    if (currentLayout == 3)
    {
      v39 = v42;
    }

    else
    {
      v39 = v63;
    }

    if (currentLayout == 3)
    {
      v37 = v41;
    }

    else
    {
      v37 = v64;
    }
  }

  if ([v17 _usesMinimumSafeAreas])
  {
    [v17 _minimumSafeAreaInsets];
  }

  else
  {
    [v17 safeAreaInsets];
  }

  v44 = v43;
  traitCollection4 = [v17 traitCollection];
  v46 = _UIContextMenuGetPlatformMetrics([traitCollection4 userInterfaceIdiom]);

  [v46 minimumContainerInsets];
  v48 = v47;

  v49 = fmax(v39, fmax(v48, v44));
  if (!v14)
  {
    currentInput3 = [bounds currentInput];
    shouldAvoidInputViews2 = [currentInput3 shouldAvoidInputViews];

    if (shouldAvoidInputViews2)
    {
      v52 = v17;
      _window2 = [v52 _window];
      _isRemoteInputHostWindow2 = [_window2 _isRemoteInputHostWindow];

      if ((_isRemoteInputHostWindow2 & 1) == 0)
      {
        v55 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v56 = v55;
        if (v55)
        {
          [v55 verticalOverlapForView:v52 usingKeyboardInfo:0];
          traitCollection5 = [v52 traitCollection];
          v58 = _UIContextMenuGetPlatformMetrics([traitCollection5 userInterfaceIdiom]);

          [v58 minimumContainerInsets];
        }
      }
    }
  }

  v59 = [_UIContextMenuAvoidanceSceneComponent sceneComponentForView:v17];
  [v59 _overlapInsetsInCoordinateSpace:v17];
  v61 = a2 + fmax(v49, v60);

  return v61;
}

- (unint64_t)_automaticAlignmentAndOffset:(double *)offset forAttachment:(unint64_t)attachment sourcePoint:(CGPoint)point
{
  x = point.x;
  if (attachment != 4 && attachment != 1)
  {
    return 1;
  }

  [(_UIContextMenuLayoutArbiter *)self contentBounds:point.x];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(_UIContextMenuLayoutArbiter *)self currentLayout]== 3)
  {
    if ([UIApp userInterfaceLayoutDirection])
    {
      *offset = -2.0;
      return 8;
    }

    else
    {
      *offset = 2.0;
      return 2;
    }
  }

  else
  {
    currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
    sourcePreview = [currentInput sourcePreview];
    view = [sourcePreview view];
    [view bounds];
    Width = CGRectGetWidth(v23);
    containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
    [containerView bounds];
    v22 = CGRectGetWidth(v24);

    if (Width < v22 && (v25.origin.x = v9, v25.origin.y = v11, v25.size.width = v13, v25.size.height = v15, vabdd_f64(x, CGRectGetMidX(v25)) <= 1.0))
    {
      return 0;
    }

    else
    {
      v26.origin.x = v9;
      v26.origin.y = v11;
      v26.size.width = v13;
      v26.size.height = v15;
      if (x <= CGRectGetMidX(v26))
      {
        return 2;
      }

      else
      {
        return 8;
      }
    }
  }
}

- (void)_positionPlatterFrame:(CGRect *)frame andActionViewFrame:(CGRect *)viewFrame inBounds:(CGRect)bounds aboutSourcePoint:(CGPoint)point
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  v255 = *MEMORY[0x1E69E9840];
  containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
  _screen = [containerView _screen];
  [_screen scale];
  v234 = v15;

  v16 = frame->origin.x;
  v17 = frame->origin.y;
  v18 = frame->size.width;
  v231 = frame->size.height;
  v236 = viewFrame->origin.x;
  rect = viewFrame->origin.y;
  v19 = viewFrame->size.height;
  v235 = viewFrame->size.width;
  currentLayout = [(_UIContextMenuLayoutArbiter *)selfCopy currentLayout];
  [(_UIContextMenuLayoutArbiter *)selfCopy menuAnchor];
  v21 = v250;
  [(_UIContextMenuLayoutArbiter *)selfCopy menuAnchor];
  v22 = v249;
  if (v249 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *buf = 0;
    v22 = [(_UIContextMenuLayoutArbiter *)selfCopy _automaticAlignmentAndOffset:buf forAttachment:v250 sourcePoint:point.x, point.y];
    selfCopy->_menuAnchor.alignment = v22;
    selfCopy->_menuAnchor.alignmentOffset = *buf;
  }

  v218 = height;
  v223 = y;
  v224 = width;
  v222 = x;
  v227 = v19;
  if ([(_UIContextMenuLayoutArbiter *)selfCopy currentLayout]!= 3)
  {
    gravity = selfCopy->_menuAnchor.gravity;
    if (gravity == 2 || !gravity && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 userInterfaceIdiom], v25, (v26 & 0xFFFFFFFFFFFFFFFBLL) != 1) && (-[_UIContextMenuLayoutArbiter currentInput](selfCopy, "currentInput"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "_hasVisibleMenu"), v27, (v28 & 1) == 0))
    {
      [containerView bounds];
      point.x = v31 + v29 * 0.5;
      point.y = v32 + v30 * 0.5;
    }

    _screen2 = [containerView _screen];
    [_screen2 scale];
    v228 = v16;
    v225 = v17;
    v219 = v18;
    UIRectCenteredAboutPointScale(v16, v17, v18, v231, point.x, point.y, v34);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    currentInput = [(_UIContextMenuLayoutArbiter *)selfCopy currentInput];
    shouldConcealMenu = [currentInput shouldConcealMenu];

    if (shouldConcealMenu)
    {
LABEL_27:
      traitCollection = [containerView traitCollection];
      verticalSizeClass = [traitCollection verticalSizeClass];

      if (verticalSizeClass != 1 || currentLayout == 1)
      {
        v61 = v222;
        v60 = v223;
      }

      else
      {
        v61 = v222;
        v60 = v223;
        _screen3 = [containerView _screen];
        [_screen3 scale];
        v63 = v222 + width * 0.5;
        width = v224;
        v64 = v223 + height * 0.5;
        height = v218;
        UIRectCenteredAboutPointScale(v36, v38, v40, v42, v63, v64, v65);
        v36 = v66;
        v38 = v67;
        v40 = v68;
        v42 = v69;
      }

      v70 = _CGRectConstrainedWithinRect(15, v36, v38, v40, v42, v61, v60, width, height);
      if (v21 > 3)
      {
        v16 = v228;
        v23 = v231;
        v17 = v225;
        v18 = v219;
        if (v21 == 8)
        {
          MinX = CGRectGetMinX(*&v70);
          v271.origin.x = v228;
          v271.origin.y = v225;
          v271.size.width = v219;
          v271.size.height = v231;
          v75 = CGRectGetWidth(v271);
          v76 = 0.5;
          goto LABEL_41;
        }

        if (v21 != 4)
        {
          goto LABEL_42;
        }

        MinY = CGRectGetMinY(*&v70);
        v269.origin.x = v228;
        v269.origin.y = v225;
        v269.size.width = v219;
        v269.size.height = v231;
        v78 = CGRectGetHeight(v269);
        v79 = 0.5;
      }

      else
      {
        v16 = v228;
        v23 = v231;
        v17 = v225;
        v18 = v219;
        if (v21 != 1)
        {
          if (v21 != 2)
          {
            goto LABEL_42;
          }

          MinX = CGRectGetMaxX(*&v70);
          v268.origin.x = v228;
          v268.origin.y = v225;
          v268.size.width = v219;
          v268.size.height = v231;
          v75 = CGRectGetWidth(v268);
          v76 = -0.5;
LABEL_41:
          point.x = MinX + v75 * v76;
          goto LABEL_42;
        }

        MinY = CGRectGetMaxY(*&v70);
        v270.origin.x = v228;
        v270.origin.y = v225;
        v270.size.width = v219;
        v270.size.height = v231;
        v78 = CGRectGetHeight(v270);
        v79 = -0.5;
      }

      UIRectCenteredAboutPointScale(v16, v17, v18, v23, point.x, MinY + v78 * v79, v234);
      goto LABEL_43;
    }

    [(_UIContextMenuLayoutArbiter *)selfCopy contentSpacing];
    v46 = v45;
    if (v21 <= 1)
    {
      if (!v21)
      {
        v48 = round(v38 + v42 * 0.5 - v19 * 0.5);
        v51 = v235;
        v47 = round(v36 + v40 * 0.5 - v235 * 0.5);
        goto LABEL_26;
      }

      if (v21 != 1)
      {
        goto LABEL_23;
      }

      v258.origin.x = v36;
      v258.origin.y = v38;
      v258.size.width = v40;
      v258.size.height = v42;
      v47 = CGRectGetMinX(v258);
      v259.origin.x = v36;
      v259.origin.y = v38;
      v259.size.width = v40;
      v259.size.height = v42;
      v49 = CGRectGetMinY(v259) - v46;
      v260.origin.x = v47;
      v260.origin.y = rect;
      v260.size.width = v235;
      v260.size.height = v19;
      v50 = CGRectGetHeight(v260);
      v51 = v235;
      v48 = v49 - v50;
      height = v218;
    }

    else
    {
      if (v21 != 2)
      {
        if (v21 == 4)
        {
          v264.origin.x = v36;
          v264.origin.y = v38;
          v264.size.width = v40;
          v264.size.height = v42;
          v47 = CGRectGetMinX(v264);
          v265.origin.x = v36;
          v265.origin.y = v38;
          v265.size.width = v40;
          v265.size.height = v42;
          v48 = v46 + CGRectGetMaxY(v265);
          goto LABEL_21;
        }

        if (v21 == 8)
        {
          v256.origin.x = v36;
          v256.origin.y = v38;
          v256.size.width = v40;
          v256.size.height = v42;
          v47 = v46 + CGRectGetMaxX(v256);
          v257.origin.x = v36;
          v257.origin.y = v38;
          v257.size.width = v40;
          v257.size.height = v42;
          v48 = CGRectGetMinY(v257);
LABEL_21:
          v51 = v235;
          goto LABEL_26;
        }

LABEL_23:
        if (os_variant_has_internal_diagnostics())
        {
          v217 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            *&buf[4] = v21;
            _os_log_fault_impl(&dword_188A29000, v217, OS_LOG_TYPE_FAULT, "_UIContextMenuLayoutArbiter Attempting to lay out with unsupported attachment edge: %lu", buf, 0xCu);
          }

          v47 = v236;
          v48 = rect;
          v51 = v235;
        }

        else
        {
          v54 = *(__UILogGetCategoryCachedImpl("Assert", &_CombinedActionsAndPreviewRect___s_category) + 8);
          v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          v47 = v236;
          v48 = rect;
          v51 = v235;
          if (v55)
          {
            *buf = 134217984;
            *&buf[4] = v21;
            _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_ERROR, "_UIContextMenuLayoutArbiter Attempting to lay out with unsupported attachment edge: %lu", buf, 0xCu);
            v51 = v235;
            v47 = v236;
            v48 = rect;
          }
        }

        goto LABEL_26;
      }

      v261.origin.x = v36;
      v261.origin.y = v38;
      v261.size.width = v40;
      v261.size.height = v42;
      v52 = CGRectGetMinX(v261) - v46;
      v262.origin.x = v236;
      v262.origin.y = rect;
      v262.size.width = v235;
      v262.size.height = v19;
      v47 = v52 - CGRectGetWidth(v262);
      v263.origin.x = v36;
      v263.origin.y = v38;
      v263.size.width = v40;
      v263.size.height = v42;
      v53 = CGRectGetMinY(v263);
      v51 = v235;
      v48 = v53;
    }

LABEL_26:
    v266.origin.x = v36;
    v266.origin.y = v38;
    v266.size.width = v40;
    v266.size.height = v42;
    v56 = v47;
    v57 = v19;
    v267 = CGRectUnion(v266, *(&v48 - 1));
    v36 = v267.origin.x;
    v38 = v267.origin.y;
    v40 = v267.size.width;
    v42 = v267.size.height;
    width = v224;
    goto LABEL_27;
  }

  v23 = v231;
LABEL_42:
  UIRectCenteredAboutPointScale(v16, v17, v18, v23, point.x, point.y, v234);
LABEL_43:
  v84 = v80;
  v85 = v81;
  v86 = v82;
  v87 = v83;
  if ([(_UIContextMenuLayoutArbiter *)selfCopy currentLayout]!= 3)
  {
    [(_UIContextMenuLayoutArbiter *)selfCopy contentBoundsForConstrainingPreview];
    v84 = _CGRectConstrainedWithinRect(15, v84, v85, v86, v87, v88, v89, v90, v91);
    v85 = v92;
    v86 = v93;
    v87 = v94;
    containerView2 = [(_UIContextMenuLayoutArbiter *)selfCopy containerView];
    [containerView2 bounds];
    v239 = v97;
    v241 = v96;
    v229 = v99;
    v232 = v98;

    v253 = 0u;
    v254 = 0u;
    *buf = 0u;
    v252 = 0u;
    containerView3 = [(_UIContextMenuLayoutArbiter *)selfCopy containerView];
    v101 = containerView3;
    if (containerView3)
    {
      [containerView3 _safeAreaCornerInsets];
    }

    else
    {
      v253 = 0u;
      v254 = 0u;
      *buf = 0u;
      v252 = 0u;
    }

    v245 = *buf;
    v246 = v252;
    v247 = v253;
    v248 = v254;
    v102 = _UICornerInsetsFrameInBounds(&v245, 1, v241, v239, v232, v229);
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v272.origin.x = v84;
    v272.origin.y = v85;
    v272.size.width = v86;
    v272.size.height = v87;
    v307.origin.x = v102;
    v307.origin.y = v104;
    v307.size.width = v106;
    v307.size.height = v108;
    if (CGRectIntersectsRect(v272, v307))
    {
      v273.origin.x = v102;
      v273.origin.y = v104;
      v273.size.width = v106;
      v273.size.height = v108;
      MaxY = CGRectGetMaxY(v273);
      v274.origin.x = v84;
      v274.origin.y = v85;
      v274.size.width = v86;
      v274.size.height = v87;
      v110 = MaxY - CGRectGetMinY(v274);
      v275.origin.x = v84;
      v275.origin.y = v85;
      v275.size.width = v86;
      v275.size.height = v87;
      v276 = CGRectOffset(v275, 0.0, v110);
      v84 = v276.origin.x;
      v85 = v276.origin.y;
      v86 = v276.size.width;
      v87 = v276.size.height;
    }

    v245 = *buf;
    v246 = v252;
    v247 = v253;
    v248 = v254;
    v111 = _UICornerInsetsFrameInBounds(&v245, 2, v241, v239, v232, v229);
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v277.origin.x = v84;
    v277.origin.y = v85;
    v277.size.width = v86;
    v277.size.height = v87;
    v308.origin.x = v111;
    v308.origin.y = v113;
    v308.size.width = v115;
    v308.size.height = v117;
    if (CGRectIntersectsRect(v277, v308))
    {
      v278.origin.x = v111;
      v278.origin.y = v113;
      v278.size.width = v115;
      v278.size.height = v117;
      v118 = CGRectGetMaxY(v278);
      v279.origin.x = v84;
      v279.origin.y = v85;
      v279.size.width = v86;
      v279.size.height = v87;
      v119 = v118 - CGRectGetMinY(v279);
      v280.origin.x = v84;
      v280.origin.y = v85;
      v280.size.width = v86;
      v280.size.height = v87;
      v281 = CGRectOffset(v280, 0.0, v119);
      v84 = v281.origin.x;
      v85 = v281.origin.y;
      v86 = v281.size.width;
      v87 = v281.size.height;
    }

    v245 = *buf;
    v246 = v252;
    v247 = v253;
    v248 = v254;
    v120 = _UICornerInsetsFrameInBounds(&v245, 4, v241, v239, v232, v229);
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v282.origin.x = v84;
    v282.origin.y = v85;
    v282.size.width = v86;
    v282.size.height = v87;
    v309.origin.x = v120;
    v309.origin.y = v122;
    v309.size.width = v124;
    v309.size.height = v126;
    if (CGRectIntersectsRect(v282, v309))
    {
      v283.origin.x = v120;
      v283.origin.y = v122;
      v283.size.width = v124;
      v283.size.height = v126;
      v127 = CGRectGetMinY(v283);
      v284.origin.x = v84;
      v284.origin.y = v85;
      v284.size.width = v86;
      v284.size.height = v87;
      v128 = v127 - CGRectGetMaxY(v284);
      v285.origin.x = v84;
      v285.origin.y = v85;
      v285.size.width = v86;
      v285.size.height = v87;
      v286 = CGRectOffset(v285, 0.0, v128);
      v84 = v286.origin.x;
      v85 = v286.origin.y;
      v86 = v286.size.width;
      v87 = v286.size.height;
    }

    v245 = *buf;
    v246 = v252;
    v247 = v253;
    v248 = v254;
    v129 = _UICornerInsetsFrameInBounds(&v245, 8, v241, v239, v232, v229);
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v287.origin.x = v84;
    v287.origin.y = v85;
    v287.size.width = v86;
    v287.size.height = v87;
    v310.origin.x = v129;
    v310.origin.y = v131;
    v310.size.width = v133;
    v310.size.height = v135;
    if (CGRectIntersectsRect(v287, v310))
    {
      v288.origin.x = v129;
      v288.origin.y = v131;
      v288.size.width = v133;
      v288.size.height = v135;
      v136 = CGRectGetMinY(v288);
      v289.origin.x = v84;
      v289.origin.y = v85;
      v289.size.width = v86;
      v289.size.height = v87;
      v137 = v136 - CGRectGetMaxY(v289);
      v290.origin.x = v84;
      v290.origin.y = v85;
      v290.size.width = v86;
      v290.size.height = v87;
      v291 = CGRectOffset(v290, 0.0, v137);
      v84 = v291.origin.x;
      v85 = v291.origin.y;
      v86 = v291.size.width;
      v87 = v291.size.height;
    }
  }

  [(_UIContextMenuLayoutArbiter *)selfCopy menuAnchor];
  v226 = v244;
  [(_UIContextMenuLayoutArbiter *)selfCopy menuAnchor];
  currentInput2 = [(_UIContextMenuLayoutArbiter *)selfCopy currentInput];
  [currentInput2 additionalAlignmentOffset];
  v140 = v139;

  currentInput3 = [(_UIContextMenuLayoutArbiter *)selfCopy currentInput];
  [currentInput3 preferredMenuAttachmentPoint];
  v143 = v142;
  v145 = v144;

  if (v143 != 1.79769313e308 || (v230 = v84, v233 = v85, v240 = v86, v242 = v87, v145 != 1.79769313e308))
  {
    v240 = *(MEMORY[0x1E695F058] + 16);
    v242 = *(MEMORY[0x1E695F058] + 24);
    currentInput4 = [(_UIContextMenuLayoutArbiter *)selfCopy currentInput];
    sourcePreview = [currentInput4 sourcePreview];
    [sourcePreview target];
    v220 = selfCopy;
    frameCopy = frame;
    viewFrameCopy = viewFrame;
    v150 = v21;
    v151 = v22;
    v153 = v152 = currentLayout;
    container = [v153 container];
    v230 = _UIContextMenuConvertCGPointBetweenViews(container, containerView, v143, v145);
    v233 = v155;

    currentLayout = v152;
    v22 = v151;
    v21 = v150;
    viewFrame = viewFrameCopy;
    frame = frameCopy;
    selfCopy = v220;
  }

  v156 = MEMORY[0x1E695EFF8];
  currentInput5 = [(_UIContextMenuLayoutArbiter *)selfCopy currentInput];
  if ([currentInput5 shouldMenuOverlapSourcePreview])
  {
    v158 = [(_UIContextMenuLayoutArbiter *)selfCopy currentLayout]== 3;
  }

  else
  {
    v158 = 0;
  }

  MidX = *v156;

  v221 = v243 + v140;
  if (v21 > 1)
  {
    v160 = v227;
    if (v21 == 2)
    {
      v166 = v230;
      v167 = v233;
      v168 = v240;
      v169 = v242;
      if (v158)
      {
        MaxX = CGRectGetMaxX(*&v166);
      }

      else
      {
        v172 = CGRectGetMinX(*&v166);
        [(_UIContextMenuLayoutArbiter *)selfCopy contentSpacing];
        MaxX = v172 - v173;
      }

      v295.origin.x = v236;
      v295.origin.y = rect;
      v295.size.width = v235;
      v295.size.height = v227;
      v174 = CGRectGetWidth(v295);
      v175 = -0.5;
      goto LABEL_95;
    }

    if (v21 != 4)
    {
      if (v21 == 8)
      {
        v161 = v230;
        v162 = v233;
        v163 = v240;
        v164 = v242;
        if (v158)
        {
          MaxX = CGRectGetMinX(*&v161);
        }

        else
        {
          v198 = CGRectGetMaxX(*&v161);
          [(_UIContextMenuLayoutArbiter *)selfCopy contentSpacing];
          MaxX = v198 + v199;
        }

        v303.origin.x = v236;
        v303.origin.y = rect;
        v303.size.width = v235;
        v303.size.height = v227;
        v174 = CGRectGetWidth(v303);
        v175 = 0.5;
LABEL_95:
        MidX = MaxX + v174 * v175;
        goto LABEL_96;
      }

      goto LABEL_96;
    }

LABEL_69:
    if (v158)
    {
      v176 = v230;
      v177 = v233;
      v178 = v240;
      v179 = v242;
      if (v21 == 1)
      {
        v180 = CGRectGetMaxY(*&v176);
        v292.origin.x = v236;
        v292.origin.y = rect;
        v292.size.width = v235;
        v292.size.height = v160;
        v181 = CGRectGetHeight(v292);
        v182 = -0.5;
      }

      else
      {
        v180 = CGRectGetMinY(*&v176);
        v296.origin.x = v236;
        v296.origin.y = rect;
        v296.size.width = v235;
        v296.size.height = v160;
        v181 = CGRectGetHeight(v296);
        v182 = 0.5;
      }

      v183 = v180 + v181 * v182;
      v226 = -v244;
    }

    else
    {
      v184 = v230;
      v185 = v233;
      v186 = v240;
      v187 = v242;
      if (v21 == 1)
      {
        v170 = CGRectGetMinY(*&v184);
        [(_UIContextMenuLayoutArbiter *)selfCopy contentSpacing];
        v190 = v170 - v171;
        v294.origin.x = v236;
        v294.origin.y = rect;
        v294.size.width = v235;
        v294.size.height = v160;
        v191 = CGRectGetHeight(v294);
        v192 = -0.5;
      }

      else
      {
        v188 = CGRectGetMaxY(*&v184);
        [(_UIContextMenuLayoutArbiter *)selfCopy contentSpacing];
        v190 = v188 + v189;
        v297.origin.x = v236;
        v297.origin.y = rect;
        v297.size.width = v235;
        v297.size.height = v160;
        v191 = CGRectGetHeight(v297);
        v192 = 0.5;
      }

      v183 = v190 + v191 * v192;
    }

    if (v22 == 8)
    {
      v301.origin.x = v230;
      v301.origin.y = v233;
      v301.size.width = v240;
      v301.size.height = v242;
      v193 = CGRectGetMaxX(v301);
      v302.origin.x = v236;
      v302.origin.y = rect;
      v302.size.width = v235;
      v302.size.height = v160;
      v194 = CGRectGetWidth(v302);
      v195 = -0.5;
    }

    else
    {
      if (v22 != 2)
      {
        if (!v22)
        {
          v298.origin.x = v230;
          v298.origin.y = v233;
          v298.size.width = v240;
          v298.size.height = v242;
          MidX = CGRectGetMidX(v298);
        }

        goto LABEL_90;
      }

      v299.origin.x = v230;
      v299.origin.y = v233;
      v299.size.width = v240;
      v299.size.height = v242;
      v193 = CGRectGetMinX(v299);
      v300.origin.x = v236;
      v300.origin.y = rect;
      v300.size.width = v235;
      v300.size.height = v160;
      v194 = CGRectGetWidth(v300);
      v195 = 0.5;
    }

    MidX = v193 + v194 * v195;
LABEL_90:
    MidX = v221 + MidX;
    MidY = v183 + v226;
    if (currentLayout)
    {
      v197 = 15;
    }

    else
    {
      v197 = 11;
    }

    goto LABEL_105;
  }

  v160 = v227;
  if (!v21)
  {
    v293.origin.x = v230;
    v293.origin.y = v233;
    v293.size.width = v240;
    v293.size.height = v242;
    MidX = CGRectGetMidX(v293);
    goto LABEL_96;
  }

  if (v21 == 1)
  {
    goto LABEL_69;
  }

LABEL_96:
  if (v158)
  {
    v200 = -v244;
  }

  else
  {
    v200 = v244;
  }

  if (v22)
  {
    v304.origin.x = v230;
    v304.origin.y = v233;
    v304.size.width = v240;
    v304.size.height = v242;
    v201 = CGRectGetMinY(v304);
    v305.origin.x = v236;
    v305.origin.y = rect;
    v305.size.width = v235;
    v305.size.height = v227;
    v202 = CGRectGetHeight(v305);
    v203 = v235;
    v160 = v227;
    MidY = v201 + v202 * 0.5;
LABEL_103:
    MidX = v200 + MidX;
    MidY = v221 + MidY;
    v197 = 15;
    goto LABEL_106;
  }

  v306.origin.x = v230;
  v306.origin.y = v233;
  v306.size.width = v240;
  v306.size.height = v242;
  MidY = CGRectGetMidY(v306);
  if (v21)
  {
    v203 = v235;
    goto LABEL_103;
  }

  v197 = 15;
LABEL_105:
  v203 = v235;
LABEL_106:
  UIRectCenteredAboutPointScale(v236, rect, v203, v160, MidX, MidY, v234);
  v205 = v204;
  v207 = v206;
  v209 = v208;
  v211 = v210;
  currentInput6 = [(_UIContextMenuLayoutArbiter *)selfCopy currentInput];
  shouldConcealMenu2 = [currentInput6 shouldConcealMenu];

  if ((shouldConcealMenu2 & 1) == 0)
  {
    v205 = _CGRectConstrainedWithinRect(v197, v205, v207, v209, v211, v222, v223, v224, v218);
    v207 = v214;
    v209 = v215;
    v211 = v216;
  }

  frame->origin.x = v84;
  frame->origin.y = v85;
  frame->size.width = v86;
  frame->size.height = v87;
  viewFrame->origin.x = v205;
  viewFrame->origin.y = v207;
  viewFrame->size.width = v209;
  viewFrame->size.height = v211;
}

- (CGRect)_computedPreviewBoundsForContentBounds:(CGRect)bounds sourceWindowBounds:(CGRect)windowBounds
{
  height = windowBounds.size.height;
  width = windowBounds.size.width;
  v6 = bounds.size.height;
  v7 = bounds.size.width;
  y = bounds.origin.y;
  rect = bounds.origin.x;
  v10 = bounds.size.width;
  currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
  [currentInput preferredMenuSize];
  v13 = v12;

  [(_UIContextMenuLayoutArbiter *)self menuAnchor];
  if (fabs(v13) >= 2.22044605e-16 && (v72 == 8 || v72 == 2))
  {
    [(_UIContextMenuLayoutArbiter *)self contentSpacing];
    v10 = v7 - (v13 + v15);
  }

  containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
  traitCollection = [containerView traitCollection];
  v18 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  previewIsConstrainedToSourceWindowBounds = [v18 previewIsConstrainedToSourceWindowBounds];
  if ((previewIsConstrainedToSourceWindowBounds & (height < v6)) == 0)
  {
    height = v6;
  }

  if ((previewIsConstrainedToSourceWindowBounds & (width < v10)) != 0)
  {
    v10 = width;
  }

  currentLayout = [(_UIContextMenuLayoutArbiter *)self currentLayout];
  currentInput2 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  [currentInput2 preferredPreviewSize];
  v23 = v22;
  v25 = v24;

  v68 = v10;
  if (currentLayout == 1)
  {
    containerView2 = [(_UIContextMenuLayoutArbiter *)self containerView];
    traitCollection2 = [containerView2 traitCollection];
    v28 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
    [v28 maxLiftScale];
    v30 = v29;
    [v28 maxLiftScaleUpPoints];
    v66 = v31;
    v73.origin.x = 0.0;
    v73.origin.y = 0.0;
    v73.size.width = v23;
    v73.size.height = v25;
    v67 = height;
    v32 = CGRectGetWidth(v73);
    v74.origin.x = 0.0;
    v74.origin.y = 0.0;
    v74.size.width = v23;
    v74.size.height = v25;
    v33 = CGRectGetHeight(v74);
    if (v32 >= v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    v75.origin.x = rect;
    v75.origin.y = y;
    v75.size.width = v7;
    v75.size.height = v6;
    v35 = CGRectGetWidth(v75) / v32;
    height = v67;
    if (v35 >= v30)
    {
      v35 = v30;
    }

    if ((v66 + v34) / v34 >= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = (v66 + v34) / v34;
    }

    memset(&v71, 0, sizeof(v71));
    v37 = v36;
    v38 = v36;
    v10 = v68;
    CGAffineTransformMakeScale(&v71, v37, v38);
    rect_8 = v71;
    v76.origin.x = 0.0;
    v76.origin.y = 0.0;
    v76.size.width = v23;
    v76.size.height = v25;
    v77 = CGRectApplyAffineTransform(v76, &rect_8);
    x = v77.origin.x;
    v40 = v77.origin.y;
    v23 = v77.size.width;
    v25 = v77.size.height;
  }

  else
  {
    v40 = 0.0;
    v78.origin.x = 0.0;
    v78.origin.y = 0.0;
    v78.size.width = v23;
    v78.size.height = v25;
    if (CGRectIsEmpty(v78) || (v79.origin.x = 0.0, v79.origin.y = 0.0, v79.size.width = v23, v79.size.height = v25, x = 0.0, CGRectIsInfinite(v79)))
    {
      v25 = height;
      v23 = v10;
      v40 = y;
      x = rect;
    }
  }

  currentInput3 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  preferredPreviewFittingStrategy = [currentInput3 preferredPreviewFittingStrategy];

  if (preferredPreviewFittingStrategy == 1)
  {
    v80.origin.x = rect;
    v80.origin.y = y;
    v80.size.width = v10;
    v80.size.height = height;
    v43 = CGRectGetWidth(v80);
    v81.origin.x = x;
    v81.origin.y = v40;
    v81.size.width = v23;
    v81.size.height = v25;
    v44 = fmin(v43 / CGRectGetWidth(v81), 1.0);
    v82.origin.x = x;
    v82.origin.y = v40;
    v82.size.width = v23;
    v82.size.height = v25;
    v45 = CGRectGetWidth(v82) * v44;
    v83.origin.x = x;
    v83.origin.y = v40;
    v83.size.width = v45;
    v83.size.height = v25;
    v46 = CGRectGetHeight(v83) * v44;
    v84.origin.x = rect;
    v84.origin.y = y;
    v84.size.width = v68;
    v84.size.height = height;
    v47 = CGRectGetHeight(v84) * 0.75;
    if (v46 >= v47)
    {
      v46 = v47;
    }
  }

  else
  {
    _CGRectScaledToAspectFitWithinRect(x, v40, v23, v25, rect, y, v10, height);
    v45 = v48;
    v46 = v49;
  }

  v50 = *MEMORY[0x1E695EFF8];
  v51 = *(MEMORY[0x1E695EFF8] + 8);
  containerView3 = [(_UIContextMenuLayoutArbiter *)self containerView];
  _screen = [containerView3 _screen];
  [_screen scale];
  v55 = UIRectIntegralWithScale(v50, v51, v45, v46, v54);
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v62 = v55;
  v63 = v57;
  v64 = v59;
  v65 = v61;
  result.size.height = v65;
  result.size.width = v64;
  result.origin.y = v63;
  result.origin.x = v62;
  return result;
}

- (CGRect)_computedMenuBoundsForContentBounds:(CGRect)bounds predictedPreviewFrame:(CGRect)frame
{
  width = frame.size.width;
  height = frame.size.height;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = bounds.size.height;
  v7 = bounds.size.width;
  v8 = bounds.origin.y;
  v9 = bounds.origin.x;
  v11 = CGRectGetHeight(bounds);
  v12 = v11;
  v47.origin.x = v9;
  v47.origin.y = v8;
  v47.size.width = v7;
  v47.size.height = v6;
  v13 = CGRectGetWidth(v47);
  [(_UIContextMenuLayoutArbiter *)self menuAnchor];
  if ([(_UIContextMenuLayoutArbiter *)self currentLayout]== 1)
  {
    if (v46 != 4 && v46 != 1)
    {
      goto LABEL_18;
    }

    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v15 = CGRectGetHeight(v48);
    [(_UIContextMenuLayoutArbiter *)self contentSpacing];
    v17 = v15 + v16;
    if (v11 * 0.55 < v17)
    {
      v17 = v11 * 0.55;
    }
  }

  else
  {
    if (v46 != 4 && v46 != 1)
    {
      goto LABEL_18;
    }

    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v17 = CGRectGetHeight(v49);
    if (v17 > 198.0)
    {
      v17 = 198.0;
    }
  }

  v12 = v11 - v17;
LABEL_18:
  v19 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v19 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
    traitCollection = [containerView traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      currentLayout = [(_UIContextMenuLayoutArbiter *)self currentLayout];
      v25 = v11 > v13 && currentLayout == 3;
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v12 = v12 + -44.0;
    }
  }

  currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
  [currentInput maximumMenuHeight];
  v29 = v28;

  if (v12 >= v29)
  {
    v12 = v29;
  }

  currentInput2 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  [currentInput2 preferredMenuSize];
  v32 = v31;

  currentInput3 = [(_UIContextMenuLayoutArbiter *)self currentInput];
  [currentInput3 preferredMenuSize];
  v35 = v34;

  if (v35 >= v12)
  {
    v35 = v12;
  }

  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ContextMenuScrollTruncationDetentsEnabled, @"ContextMenuScrollTruncationDetentsEnabled") & 1) == 0)
  {
    if (byte_1EA95E0E4)
    {
      currentInput4 = [(_UIContextMenuLayoutArbiter *)self currentInput];
      computePreferredScrollTruncationDetentForHeight = [currentInput4 computePreferredScrollTruncationDetentForHeight];

      if (computePreferredScrollTruncationDetentForHeight)
      {
        currentInput5 = [(_UIContextMenuLayoutArbiter *)self currentInput];
        computePreferredScrollTruncationDetentForHeight2 = [currentInput5 computePreferredScrollTruncationDetentForHeight];
        v35 = computePreferredScrollTruncationDetentForHeight2[2](v35);
      }
    }
  }

  if (v32 >= v13)
  {
    v40 = v13;
  }

  else
  {
    v40 = v32;
  }

  v41 = 0.0;
  v42 = 0.0;
  v43 = v35;
  result.size.height = v43;
  result.size.width = v40;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (CGPoint)_computedMenuAnchorPointForMenuFrame:(CGRect)frame previewFrame:(CGRect)previewFrame
{
  height = previewFrame.size.height;
  width = previewFrame.size.width;
  y = previewFrame.origin.y;
  x = previewFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  currentLayout = [(_UIContextMenuLayoutArbiter *)self currentLayout];
  v54 = v8;
  if (currentLayout == 3)
  {
    v14 = 0;
  }

  else
  {
    v59.origin.x = v11;
    v59.origin.y = v10;
    v59.size.width = v9;
    v59.size.height = v8;
    v15 = CGRectGetWidth(v59);
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    v14 = v15 > CGRectGetWidth(v60);
  }

  [(_UIContextMenuLayoutArbiter *)self menuAnchor];
  v17 = v56 - 1;
  v18 = 0.5;
  v19 = 0.5;
  if ((v56 - 1) <= 7)
  {
    v18 = dbl_18A67BA98[v17];
    v19 = dbl_18A67BAD8[v17];
  }

  if (v57 > 3)
  {
    if (v57 == 4)
    {
      v18 = 1.0;
      goto LABEL_18;
    }

    if (v57 != 8)
    {
      goto LABEL_18;
    }

    v20 = !v14;
    v16 = 0.9;
    v21 = 1.0;
  }

  else
  {
    if (v57 == 1)
    {
      v18 = 0.0;
      goto LABEL_18;
    }

    if (v57 != 2)
    {
      goto LABEL_18;
    }

    v20 = !v14;
    v16 = 0.1;
    v21 = 0.0;
  }

  if (v20)
  {
    v19 = v21;
  }

  else
  {
    v19 = v16;
  }

LABEL_18:
  if (currentLayout == 3)
  {
    v22 = [(_UIContextMenuLayoutArbiter *)self currentInput:v16];
    sourcePreview = [v22 sourcePreview];
    target = [sourcePreview target];
    containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
    v26 = target;
    [v26 center];
    v28 = v27;
    v30 = v29;
    container = [v26 container];

    v32 = _UIContextMenuConvertCGPointBetweenViews(container, containerView, v28, v30);
    v34 = v33;

    currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
    [currentInput preferredMenuAttachmentPoint];
    v37 = v36;
    v39 = v38;

    if (v37 != 1.79769313e308 || v39 != 1.79769313e308)
    {
      currentInput2 = [(_UIContextMenuLayoutArbiter *)self currentInput];
      [currentInput2 preferredMenuAttachmentPoint];
      v42 = v41;
      v44 = v43;

      currentInput3 = [(_UIContextMenuLayoutArbiter *)self currentInput];
      sourcePreview2 = [currentInput3 sourcePreview];
      target2 = [sourcePreview2 target];
      container2 = [target2 container];
      containerView2 = [(_UIContextMenuLayoutArbiter *)self containerView];
      v32 = _UIContextMenuConvertCGPointBetweenViews(container2, containerView2, v42, v44);
      v34 = v50;
    }

    v61.origin.x = v11;
    v61.origin.y = v10;
    v61.size.width = v9;
    v61.size.height = v55;
    v51 = v32 - CGRectGetMinX(v61);
    v62.origin.x = v11;
    v62.origin.y = v10;
    v62.size.width = v9;
    v62.size.height = v55;
    v19 = fmax(fmin(v51 / CGRectGetWidth(v62), 1.0), 0.0);
    v63.origin.x = v11;
    v63.origin.y = v10;
    v63.size.width = v9;
    v63.size.height = v55;
    v52 = v34 - CGRectGetMinY(v63);
    v64.origin.x = v11;
    v64.origin.y = v10;
    v64.size.width = v9;
    v64.size.height = v55;
    v18 = fmax(fmin(v52 / CGRectGetHeight(v64), 1.0), 0.0);
  }

  v53 = v19;
  result.y = v18;
  result.x = v53;
  return result;
}

- (id)_accessoryPositionsForBaseLayout:(id)layout
{
  v95 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
  accessoryViews = [currentInput accessoryViews];

  obj = accessoryViews;
  v6 = [accessoryViews countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v6)
  {
    v7 = v6;
    v79 = *v91;
    v75 = *(MEMORY[0x1E695F058] + 8);
    v76 = *MEMORY[0x1E695F058];
    v73 = *(MEMORY[0x1E695F058] + 24);
    v74 = *(MEMORY[0x1E695F058] + 16);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v91 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v90 + 1) + 8 * i);
        containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
        currentInput2 = [(_UIContextMenuLayoutArbiter *)self currentInput];
        sourcePreview = [currentInput2 sourcePreview];
        target = [sourcePreview target];
        container = [target container];
        _window = [container _window];

        location = [v9 location];
        if (location == 2)
        {
          if (layoutCopy)
          {
            [layoutCopy menu];
            goto LABEL_16;
          }

LABEL_15:
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          memset(&v83, 0, sizeof(v83));
          goto LABEL_16;
        }

        if (location == 1)
        {
          if (layoutCopy)
          {
            [layoutCopy preview];
LABEL_16:
            v19 = _UIContextMenuItemFrameFromLayout(&v83);
            v20 = v33;
            v17 = v34;
            v18 = v35;
LABEL_17:
            if (!v9)
            {
              goto LABEL_22;
            }

            goto LABEL_18;
          }

          goto LABEL_15;
        }

        v18 = v73;
        v17 = v74;
        v20 = v75;
        v19 = v76;
        if (location)
        {
          goto LABEL_17;
        }

        [_window bounds];
        v25 = _UIContextMenuProjectFrameFromViewToView_0(_window, containerView, v21, v22, v23, v24);
        v70 = v26;
        v71 = v25;
        v72 = v27;
        v81 = v28;
        if ([containerView _usesMinimumSafeAreas])
        {
          [containerView _minimumSafeAreaInsets];
        }

        else
        {
          [containerView safeAreaInsets];
        }

        v39 = v29;
        v40 = v30;
        v41 = v31;
        v42 = v32;
        traitCollection = [_window traitCollection];
        v44 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

        [v44 minimumContainerInsets];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;

        v53 = fmax(v39, v46);
        v54 = fmax(v40, v48);
        v55 = fmax(v41, v50);
        v56 = fmax(v42, v52);
        v19 = v71 + v54;
        v20 = v70 + v53;
        v17 = v72 - (v54 + v56);
        v18 = v81 - (v53 + v55);
        if (!v9)
        {
LABEL_22:
          *&v84 = 0;
          v37 = 0.5;
          v38 = 0.5;
          memset(&v83, 0, sizeof(v83));
          goto LABEL_23;
        }

LABEL_18:
        [v9 anchor];
        v36 = *&v83.origin.x - 1;
        v37 = 0.5;
        v38 = 0.5;
        if ((*&v83.origin.x - 1) <= 7)
        {
          v37 = dbl_18A67BB18[v36];
          v38 = dbl_18A67BB58[v36];
        }

LABEL_23:
        v57 = 1.0;
        if (*&v83.origin.y == 8)
        {
          v58 = 1.0;
        }

        else
        {
          v58 = v38;
        }

        if (*&v83.origin.y == 4)
        {
          v58 = v38;
        }

        else
        {
          v57 = v37;
        }

        if (*&v83.origin.y == 2)
        {
          v59 = 0.0;
        }

        else
        {
          v59 = v38;
        }

        if (*&v83.origin.y == 1)
        {
          v37 = 0.0;
        }

        else
        {
          v38 = v59;
        }

        if (*&v83.origin.y > 3)
        {
          v37 = v57;
        }

        v82 = v37;
        if (*&v83.origin.y <= 3)
        {
          v60 = v38;
        }

        else
        {
          v60 = v58;
        }

        [v9 attachmentOffsetWithReferenceFrame:{_UIContextMenuProjectFrameFromViewToView_0(containerView, _window, v19, v20, v17, v18)}];
        v62 = v61;
        v64 = v63;
        [v9 setOffset:?];
        v97.origin.x = v19;
        v97.origin.y = v20;
        v97.size.width = v17;
        v97.size.height = v18;
        MinX = CGRectGetMinX(v97);
        v98.origin.x = v19;
        v98.origin.y = v20;
        v98.size.width = v17;
        v98.size.height = v18;
        v66 = v62 + MinX + v60 * CGRectGetWidth(v98);
        v99.origin.x = v19;
        v99.origin.y = v20;
        v99.size.width = v17;
        v99.size.height = v18;
        MinY = CGRectGetMinY(v99);
        v100.origin.x = v19;
        v100.origin.y = v20;
        v100.size.width = v17;
        v100.size.height = v18;
        v68 = [MEMORY[0x1E696B098] valueWithCGPoint:{v66, v64 + MinY + v82 * CGRectGetHeight(v100)}];
        [weakToStrongObjectsMapTable setObject:v68 forKey:v9];
      }

      v7 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
    }

    while (v7);
  }

  return weakToStrongObjectsMapTable;
}

- (void)_drawContentBoundsDebugUI:(CGRect)i
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ClickUIDebugEnabled, @"ClickUIDebugEnabled") & 1) == 0 && byte_1EA95E0FC)
  {
    if (!_MergedGlobals_1135)
    {
      v8 = objc_opt_new();
      v9 = _MergedGlobals_1135;
      _MergedGlobals_1135 = v8;

      v10 = +[UIColor cyanColor];
      [_MergedGlobals_1135 setBackgroundColor:v10];

      [_MergedGlobals_1135 setUserInteractionEnabled:0];
      [_MergedGlobals_1135 setAlpha:0.4];
    }

    containerView = [(_UIContextMenuLayoutArbiter *)self containerView];
    [containerView bounds];
    [_MergedGlobals_1135 setFrame:?];

    containerView2 = [(_UIContextMenuLayoutArbiter *)self containerView];
    [containerView2 addSubview:_MergedGlobals_1135];

    v13 = qword_1ED49E548;
    if (!qword_1ED49E548)
    {
      v14 = objc_opt_new();
      v15 = qword_1ED49E548;
      qword_1ED49E548 = v14;

      v16 = +[UIColor blackColor];
      [qword_1ED49E548 setBackgroundColor:v16];

      v13 = qword_1ED49E548;
    }

    [v13 setFrame:{x, y, width, height}];
    v17 = *MEMORY[0x1E69798E8];
    layer = [qword_1ED49E548 layer];
    [layer setCompositingFilter:v17];

    [_MergedGlobals_1135 addSubview:qword_1ED49E548];
    if (!qword_1ED49E550)
    {
      v19 = objc_opt_new();
      v20 = qword_1ED49E550;
      qword_1ED49E550 = v19;

      layer2 = [qword_1ED49E550 layer];
      [layer2 setBorderWidth:1.0];

      v22 = +[UIColor redColor];
      cGColor = [v22 CGColor];
      layer3 = [qword_1ED49E550 layer];
      [layer3 setBorderColor:cGColor];

      [qword_1ED49E550 setUserInteractionEnabled:0];
    }

    currentInput = [(_UIContextMenuLayoutArbiter *)self currentInput];
    sourcePreview = [currentInput sourcePreview];

    [sourcePreview size];
    v28 = v27;
    v30 = v29;
    target = [sourcePreview target];
    v32 = target;
    if (target)
    {
      [target transform];
    }

    else
    {
      memset(&v44, 0, sizeof(v44));
    }

    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    v45.size.width = v28;
    v45.size.height = v30;
    v46 = CGRectApplyAffineTransform(v45, &v44);
    v33 = v46.size.width;
    v34 = v46.size.height;

    target2 = [sourcePreview target];
    [target2 center];
    v37 = round(v36 - v34 * 0.5);
    v39 = round(v38 - v33 * 0.5);

    target3 = [sourcePreview target];
    container = [target3 container];
    containerView3 = [(_UIContextMenuLayoutArbiter *)self containerView];
    [container convertRect:containerView3 toView:{v39, v37, v33, v34}];
    [qword_1ED49E550 setFrame:?];

    containerView4 = [(_UIContextMenuLayoutArbiter *)self containerView];
    [containerView4 addSubview:qword_1ED49E550];
  }
}

@end