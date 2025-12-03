@interface _UICursorAccessoryHostView
- (CGRect)selectionRect;
- (_UICursorAccessoryHostView)initWithCursorItemDataSource:(id)source;
- (void)_didRecognizeDismissGestureRecognizer:(id)recognizer;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setHidden:(BOOL)hidden;
- (void)setTouchFallbackEnabled:(BOOL)enabled;
@end

@implementation _UICursorAccessoryHostView

- (void)layoutSubviews
{
  v142.receiver = self;
  v142.super_class = _UICursorAccessoryHostView;
  [(UIView *)&v142 layoutSubviews];
  if (![(UIView *)self isHidden])
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    cursorAccessoryView = self->_cursorAccessoryView;
    [(UIView *)self bounds];
    [(_UICursorAccessoryView *)cursorAccessoryView sizeThatFits:v6, v7];
    v9 = v8;
    v11 = v10;
    [(UIView *)self->_cursorAccessoryView setBounds:v3, v4, v8, v10];
    v143.origin.x = v3;
    v143.origin.y = v4;
    v143.size.width = v9;
    v143.size.height = v11;
    [(_UIContainerWindowPortalInteraction *)self->_portalInteraction setEnabled:!CGRectIsEmpty(v143)];
    p_selectionRect = &self->_selectionRect;
    if (CGRectIsEmpty(self->_selectionRect))
    {
LABEL_29:
      [(UIView *)self->_cursorAccessoryView layoutIfNeeded];
      [(_UIContainerWindowPortalInteraction *)self->_portalInteraction ensureVisibilityInContainerWindow];
      return;
    }

    keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
    [keyboardSceneDelegate visibleFrameInView:self];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    window = [(UIView *)self window];
    windowScene = [window windowScene];
    _coordinateSpace = [windowScene _coordinateSpace];
    [(UIView *)self convertRect:_coordinateSpace fromCoordinateSpace:v15, v17, v19, v21];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v144.origin.x = v26;
    v144.origin.y = v28;
    v144.size.width = v30;
    v144.size.height = v32;
    Height = CGRectGetHeight(v144);
    v145.origin.x = v3;
    v145.origin.y = v4;
    rect = v9;
    v145.size.width = v9;
    v145.size.height = v11;
    v135 = CGRectGetHeight(v145) * 0.5 + 3.0;
    v146.origin.x = p_selectionRect->origin.x;
    v146.origin.y = self->_selectionRect.origin.y;
    v146.size.width = self->_selectionRect.size.width;
    v146.size.height = self->_selectionRect.size.height;
    MidX = CGRectGetMidX(v146);
    [(_UICursorAccessoryView *)self->_cursorAccessoryView activeAccessoryXOffset];
    v139 = v4;
    v140 = MidX + v34;
    preferredPlacementEdge = self->_preferredPlacementEdge;
    if (preferredPlacementEdge != 1)
    {
      if (preferredPlacementEdge != 4)
      {
        v138 = *(MEMORY[0x1E695EFF8] + 8);
        goto LABEL_11;
      }

      v147.origin.x = p_selectionRect->origin.x;
      v147.origin.y = self->_selectionRect.origin.y;
      v147.size.width = self->_selectionRect.size.width;
      v147.size.height = self->_selectionRect.size.height;
      v138 = v135 + CGRectGetMaxY(v147);
      MinY = Height;
      if (Height <= 0.0 || (v148.origin.x = v26, v148.origin.y = v28, v148.size.width = v30, v148.size.height = v32, MinY = CGRectGetMinY(v148), v11 * 0.5 + v138 <= MinY))
      {
        window2 = [(UIView *)self window];
        [window2 safeAreaInsets];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        window3 = [(UIView *)self window];
        [window3 frame];
        v48 = v41 + v47;
        v132 = v39 + v49;
        v51 = v50 - (v41 + v45);
        v53 = v52 - (v39 + v43);

        window4 = [(UIView *)self window];
        windowScene2 = [window4 windowScene];
        _coordinateSpace2 = [windowScene2 _coordinateSpace];
        [(UIView *)self convertRect:_coordinateSpace2 fromCoordinateSpace:v48, v132, v51, v53];
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;

        v149.origin.x = v58;
        v149.origin.y = v60;
        v149.size.width = v62;
        v149.size.height = v64;
        if (v11 * 0.5 + v138 <= CGRectGetMaxY(v149))
        {
          preferredPlacementEdge = 4;
          goto LABEL_11;
        }
      }
    }

    v150.origin.x = p_selectionRect->origin.x;
    v150.origin.y = self->_selectionRect.origin.y;
    v150.size.width = self->_selectionRect.size.width;
    v150.size.height = self->_selectionRect.size.height;
    v138 = CGRectGetMinY(v150) - v135;
    preferredPlacementEdge = 1;
LABEL_11:
    self->_resolvedPlacement = preferredPlacementEdge;
    window5 = [(UIView *)self->_cursorAccessoryView window];
    [window5 bounds];
    [(UIView *)self convertRect:0 fromView:?];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = v3;
    v151.origin.x = v3;
    v151.origin.y = v139;
    v151.size.width = rect;
    v151.size.height = v11;
    v75 = CGRectGetWidth(v151) * 0.5;
    v152.origin.x = v67;
    v152.origin.y = v69;
    v152.size.width = v71;
    v152.size.height = v73;
    v76 = CGRectGetMinX(v152) + -1.0;
    v153.origin.x = v67;
    v153.origin.y = v69;
    v153.size.width = v71;
    v153.size.height = v73;
    MaxX = CGRectGetMaxX(v153);
    v78 = v140;
    if (v140 - v75 >= v76)
    {
      if (v140 + v75 > MaxX + 1.0)
      {
        v155.origin.x = v67;
        v155.origin.y = v69;
        v155.size.width = v71;
        v155.size.height = v73;
        v78 = CGRectGetMaxX(v155) - v75;
      }
    }

    else
    {
      v154.origin.x = v67;
      v154.origin.y = v69;
      v154.size.width = v71;
      v154.size.height = v73;
      v78 = v75 + CGRectGetMinX(v154);
    }

    v141 = v78;
    _scroller = [(UIView *)self _scroller];
    v80 = _scroller;
    if (!_scroller)
    {
      goto LABEL_27;
    }

    v81 = v74;
    if (![_scroller _canScrollY])
    {
      goto LABEL_27;
    }

    [v80 safeAreaInsets];
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    [v80 visibleBounds];
    v91 = v85 + v90;
    v93 = v83 + v92;
    v95 = v94 - (v85 + v89);
    v97 = v96 - (v83 + v87);
    if (Height > 0.0)
    {
      keyboardSceneDelegate2 = [(UIView *)self keyboardSceneDelegate];
      [keyboardSceneDelegate2 visibleFrameInView:0];
      v100 = v99;
      v102 = v101;
      v134 = v95;
      v136 = v91;
      v103 = v81;
      v104 = v93;
      v106 = v105;
      v108 = v107;

      v109 = v106;
      v93 = v104;
      v81 = v103;
      v110 = v108;
      v95 = v134;
      v91 = v136;
      [v80 convertRect:0 fromView:{v100, v102, v109, v110}];
      v165.origin.x = v111;
      v165.origin.y = v112;
      v165.size.width = v113;
      v165.size.height = v114;
      v156.origin.x = v136;
      v156.origin.y = v93;
      v156.size.width = v134;
      v156.size.height = v97;
      v157 = CGRectIntersection(v156, v165);
      v115 = v157.size.height;
      if (IsValidConstraintRect(v157.origin.x, v157.origin.y, v157.size.width, v157.size.height))
      {
        v97 = v97 - v115;
      }
    }

    v158.origin.x = v91;
    v158.origin.y = v93;
    v158.size.width = v95;
    v158.size.height = v97;
    if (CGRectGetWidth(v158) > 0.0 && (v159.origin.x = v91, v159.origin.y = v93, v159.size.width = v95, v159.size.height = v97, CGRectGetHeight(v159) > 6.0) && (v160.origin.x = v91, v160.origin.y = v93, v160.size.width = v95, v160.size.height = v97, v161 = CGRectInset(v160, 3.0, 3.0), x = v161.origin.x, y = v161.origin.y, width = v161.size.width, v119 = v161.size.height, IsValidConstraintRect(v161.origin.x, v161.origin.y, v161.size.width, v161.size.height)))
    {
      [(UIView *)self convertRect:v80 fromView:x, y, width, v119];
      v121 = v120;
      v123 = v122;
      v125 = v124;
      v127 = v126;
    }

    else
    {
      v121 = *MEMORY[0x1E695F050];
      v123 = *(MEMORY[0x1E695F050] + 8);
      v125 = *(MEMORY[0x1E695F050] + 16);
      v127 = *(MEMORY[0x1E695F050] + 24);
    }

    if (IsValidConstraintRect(v121, v123, v125, v127) && (v162.origin.x = v81, v162.origin.y = v139, v162.size.width = rect, v162.size.height = v11, v128 = CGRectGetHeight(v162) * 0.5, v163.origin.x = v121, v163.origin.y = v123, v163.size.width = v125, v163.size.height = v127, v129 = CGRectGetMinY(v163) + v128, v164.origin.x = v121, v164.origin.y = v123, v164.size.width = v125, v164.size.height = v127, v130 = CGRectGetMaxY(v164) - v128, v129 <= v130))
    {
      v131 = v141;
      if (v138 <= v130)
      {
        v130 = v138;
        if (v138 < v129)
        {
          v130 = v129;
        }
      }
    }

    else
    {
LABEL_27:
      v130 = v138;
      v131 = v141;
    }

    [(UIView *)self->_cursorAccessoryView setCenter:v131, v130];

    goto LABEL_29;
  }
}

- (_UICursorAccessoryHostView)initWithCursorItemDataSource:(id)source
{
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = _UICursorAccessoryHostView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(UIView *)&v20 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    v9->_preferredPlacementEdge = 4;
    v9->_resolvedPlacement = 0;
    v11 = [[_UICursorAccessoryView alloc] initWithDataSource:sourceCopy];
    cursorAccessoryView = v10->_cursorAccessoryView;
    v10->_cursorAccessoryView = v11;

    [(UIView *)v10 addSubview:v10->_cursorAccessoryView];
    v13 = objc_alloc_init(_UIContainerWindowPortalInteraction);
    portalInteraction = v10->_portalInteraction;
    v10->_portalInteraction = v13;

    [(_UIContainerWindowPortalInteraction *)v10->_portalInteraction setAttemptsToUseAncestorViewContainer:0];
    [(UIView *)v10->_cursorAccessoryView addInteraction:v10->_portalInteraction];
    v15 = [[_UITouchFallbackView alloc] initWithFrame:v5, v6, v7, v8];
    touchFallbackView = v10->_touchFallbackView;
    v10->_touchFallbackView = v15;

    [(UIView *)v10->_touchFallbackView setAutoresizingMask:18];
    v17 = [[UITapGestureRecognizer alloc] initWithTarget:v10 action:sel__didRecognizeDismissGestureRecognizer_];
    dismissGestureRecognizer = v10->_dismissGestureRecognizer;
    v10->_dismissGestureRecognizer = v17;
  }

  return v10;
}

- (void)dealloc
{
  window = [(UIView *)self window];
  [window removeGestureRecognizer:self->_dismissGestureRecognizer];

  [(UIView *)self->_touchFallbackView removeFromSuperview];
  v4.receiver = self;
  v4.super_class = _UICursorAccessoryHostView;
  [(UIView *)&v4 dealloc];
}

- (void)removeFromSuperview
{
  [(_UICursorAccessoryHostView *)self setTouchFallbackEnabled:0];
  v3.receiver = self;
  v3.super_class = _UICursorAccessoryHostView;
  [(UIView *)&v3 removeFromSuperview];
}

- (void)setHidden:(BOOL)hidden
{
  if (hidden)
  {
    v4.receiver = self;
    v4.super_class = _UICursorAccessoryHostView;
    [(UIView *)&v4 setHidden:1];
    [(_UIContainerWindowPortalInteraction *)self->_portalInteraction setEnabled:0];
  }

  else
  {
    if ([(UIView *)self isHidden])
    {
      [(UIView *)self setNeedsLayout];
    }

    v4.receiver = self;
    v4.super_class = _UICursorAccessoryHostView;
    [(UIView *)&v4 setHidden:0];
  }
}

- (void)setTouchFallbackEnabled:(BOOL)enabled
{
  if (self->_touchFallbackEnabled != enabled)
  {
    enabledCopy = enabled;
    window = [(UIView *)self window];
    v6 = window;
    dismissGestureRecognizer = self->_dismissGestureRecognizer;
    if (enabledCopy)
    {
      [window addGestureRecognizer:dismissGestureRecognizer];

      window2 = [(UIView *)self window];
      [window2 bounds];
      [(UIView *)self->_touchFallbackView setFrame:?];

      window3 = [(UIView *)self window];
      [window3 insertSubview:self->_touchFallbackView atIndex:0];
    }

    else
    {
      [window removeGestureRecognizer:dismissGestureRecognizer];

      [(UIView *)self->_touchFallbackView removeFromSuperview];
    }

    self->_touchFallbackEnabled = enabledCopy;
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  self->_collapsed = collapsed;
  if (collapsed)
  {
    [(UIView *)self layoutIfNeeded];
    resolvedPlacement = self->_resolvedPlacement;
    memset(&v13, 0, sizeof(v13));
    v5 = 3.0;
    if (resolvedPlacement != 1)
    {
      v5 = -3.0;
    }

    CGAffineTransformMakeTranslation(&v13, 0.0, v5);
    v12 = v13;
    CGAffineTransformScale(&t2, &v12, 0.4, 0.4);
    v10 = v13;
    CGAffineTransformConcat(&v12, &v10, &t2);
    v13 = v12;
    [(UIView *)self->_cursorAccessoryView setTransform:&v12];
    cursorAccessoryView = self->_cursorAccessoryView;
    v7 = 0.0;
  }

  else
  {
    v8 = self->_cursorAccessoryView;
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *&v13.a = *MEMORY[0x1E695EFD0];
    *&v13.c = v9;
    *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
    [(UIView *)v8 setTransform:&v13];
    cursorAccessoryView = self->_cursorAccessoryView;
    v7 = 1.0;
  }

  [(UIView *)cursorAccessoryView setAlpha:v7];
}

- (void)_didRecognizeDismissGestureRecognizer:(id)recognizer
{
  if (([recognizer state] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = +[UIKeyboardImpl sharedInstance];
    [v3 dismissCursorAccessory];
  }
}

- (CGRect)selectionRect
{
  x = self->_selectionRect.origin.x;
  y = self->_selectionRect.origin.y;
  width = self->_selectionRect.size.width;
  height = self->_selectionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end