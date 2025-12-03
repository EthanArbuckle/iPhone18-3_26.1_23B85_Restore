@interface UITextLoupeSession
+ (id)_beginLoupeSessionAtPoint:(CGPoint)point fromSelectionWidgetView:(id)view inView:(id)inView orientation:(unint64_t)orientation;
+ (id)_makeLoupeViewForSourceView:(id)view selectionWidget:(id)widget orientation:(unint64_t)orientation;
- (CGPoint)_locationInContainerCoordinateSpace:(CGPoint)space;
- (UIView)interactionView;
- (UIWindow)containerWindow;
- (_UITextLoupeSessionDelegate)delegate;
- (void)_invalidateAnimated:(BOOL)animated;
- (void)_moveToPoint:(CGPoint)point withCaretRect:(CGRect)rect selectionWidget:(id)widget trackingCaret:(BOOL)caret;
- (void)_updateStatusBarVisibility;
- (void)dealloc;
- (void)setModelPosition:(CGPoint)position;
@end

@implementation UITextLoupeSession

+ (id)_makeLoupeViewForSourceView:(id)view selectionWidget:(id)widget orientation:(unint64_t)orientation
{
  widgetCopy = widget;
  viewCopy = view;
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    _UISolariumEnabled();
    v9 = [objc_alloc(objc_opt_class()) initWithSourceView:viewCopy];

    [(_UITextLightLoupeView *)v9 setAnimatableSelectionWidget:widgetCopy];
    [(_UITextLightLoupeView *)v9 setOrientation:orientation];
  }

  else
  {
    v9 = [[_UITextLightLoupeView alloc] initWithSourceView:viewCopy];
  }

  return v9;
}

+ (id)_beginLoupeSessionAtPoint:(CGPoint)point fromSelectionWidgetView:(id)view inView:(id)inView orientation:(unint64_t)orientation
{
  y = point.y;
  x = point.x;
  v57 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  inViewCopy = inView;
  window = [inViewCopy window];
  _isRemoteKeyboardWindow = [window _isRemoteKeyboardWindow];

  if (_isRemoteKeyboardWindow)
  {
    window2 = [inViewCopy window];
  }

  else
  {
    if (inViewCopy)
    {
      [inViewCopy keyboardSceneDelegate];
    }

    else
    {
      +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    }
    v16 = ;
    if (os_variant_has_internal_diagnostics())
    {
      if (!v16)
      {
        v53 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          LODWORD(buf.m11) = 138412290;
          *(&buf.m11 + 4) = inViewCopy;
          _os_log_fault_impl(&dword_188A29000, v53, OS_LOG_TYPE_FAULT, "Could not find keyboard scene delegate for interaction view %@.", &buf, 0xCu);
        }
      }
    }

    else if (!v16)
    {
      v54 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1398) + 8);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.m11) = 138412290;
        *(&buf.m11 + 4) = inViewCopy;
        _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_ERROR, "Could not find keyboard scene delegate for interaction view %@.", &buf, 0xCu);
      }
    }

    window2 = [v16 containerWindow];
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (window2)
    {
      goto LABEL_11;
    }

    v51 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf.m11) = 0;
      _os_log_fault_impl(&dword_188A29000, v51, OS_LOG_TYPE_FAULT, "Could not find window to attach loupe view.", &buf, 2u);
    }

LABEL_37:
    v49 = 0;
    goto LABEL_28;
  }

  if (!window2)
  {
    v52 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A2F90) + 8);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.m11) = 0;
      _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_ERROR, "Could not find window to attach loupe view.", &buf, 2u);
    }

    goto LABEL_37;
  }

LABEL_11:
  if (([viewCopy conformsToProtocol:&unk_1EFEE5710] & 1) == 0)
  {

    viewCopy = 0;
  }

  v17 = [self _makeLoupeViewForSourceView:inViewCopy selectionWidget:viewCopy orientation:orientation];
  [window2 addSubview:v17];
  containerCoordinateSpace = [v17 containerCoordinateSpace];
  if (containerCoordinateSpace)
  {
    [viewCopy frame];
    v19 = v59.origin.x;
    v20 = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
    if (!CGRectIsNull(v59) && vabdd_f64(x, v19) < 10.0)
    {
      x = v19 + width * 0.5;
      y = v20 + height * 0.5;
    }

    v23 = objc_alloc_init(UITextLoupeSession);
    [(UITextLoupeSession *)v23 setInteractionView:inViewCopy];
    [(UITextLoupeSession *)v23 setLoupeView:v17];
    [(UITextLoupeSession *)v23 setContainerWindow:window2];
    [v17 preferredSize];
    v25 = v24;
    v27 = v26;
    if (viewCopy && ([viewCopy superview], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(containerCoordinateSpace, "convertRect:fromCoordinateSpace:", v28, v19, v20, width, height), v30 = v29, v28, v30 > v27))
    {
      [(UITextLoupeSession *)v23 invalidate];
      v49 = 0;
    }

    else
    {
      [v17 setBounds:{0.0, 0.0, v25, v27}];
      [(UITextLoupeSession *)v23 _locationInContainerCoordinateSpace:x, y];
      v32 = v31;
      v34 = v33;
      [v17 setModelPosition:?];
      [v17 constrainedModelPositionForPosition:{v32, v34}];
      [v17 setCenter:?];
      tintColor = [inViewCopy tintColor];
      if (objc_opt_respondsToSelector())
      {
        insertionPointColor = [inViewCopy insertionPointColor];

        tintColor = insertionPointColor;
      }

      [v17 setTintColor:tintColor];
      window3 = [inViewCopy window];

      if (window2 != window3)
      {
        window4 = [inViewCopy window];
        [window4 bounds];
        v40 = v39;
        v42 = v41;
        window5 = [inViewCopy window];
        [window2 convertPoint:window5 fromWindow:{v40, v42}];
        v45 = v44;
        v47 = v46;

        CATransform3DMakeTranslation(&v55, v45, v47, 0.0);
        layer = [v17 layer];
        buf = v55;
        [layer setSublayerTransform:&buf];
      }

      [v17 setVisible:0 animated:0 completion:0];
      [v17 setVisible:1 animated:1 completion:0];
      [(UITextLoupeSession *)v23 _updateStatusBarVisibility];
      v49 = v23;
    }
  }

  else
  {
    os_variant_has_internal_diagnostics();
    v49 = 0;
  }

LABEL_28:

  return v49;
}

- (CGPoint)_locationInContainerCoordinateSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  interactionView = [(UITextLoupeSession *)self interactionView];
  loupeView = [(UITextLoupeSession *)self loupeView];
  containerCoordinateSpace = [loupeView containerCoordinateSpace];

  [containerCoordinateSpace convertPoint:interactionView fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_moveToPoint:(CGPoint)point withCaretRect:(CGRect)rect selectionWidget:(id)widget trackingCaret:(BOOL)caret
{
  caretCopy = caret;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = point.y;
  v12 = point.x;
  widgetCopy = widget;
  if (!self->_invalidated)
  {
    v33 = widgetCopy;
    loupeView = [(UITextLoupeSession *)self loupeView];
    containerCoordinateSpace = [loupeView containerCoordinateSpace];

    if (containerCoordinateSpace && (-[UITextLoupeSession interactionView](self, "interactionView"), v17 = objc_claimAutoreleasedReturnValue(), [v17 window], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      if (v33)
      {
        loupeView2 = [(UITextLoupeSession *)self loupeView];
        animatableSelectionWidget = [loupeView2 animatableSelectionWidget];

        if (animatableSelectionWidget != v33)
        {
          loupeView3 = [(UITextLoupeSession *)self loupeView];
          [loupeView3 setAnimatableSelectionWidget:v33];

          loupeView4 = [(UITextLoupeSession *)self loupeView];
          [loupeView4 setVisible:0 animated:0 completion:0];

          loupeView5 = [(UITextLoupeSession *)self loupeView];
          [loupeView5 setVisible:1 animated:1 completion:0];
        }
      }

      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      if (CGRectIsNull(v35) || !caretCopy)
      {
        v24 = v11;
      }

      else
      {
        v24 = y + height * 0.5;
      }

      [(UITextLoupeSession *)self setModelPosition:v12, v24];
      if (self->_gestureTuning)
      {
        gestureTuning = [(UITextLoupeSession *)self gestureTuning];
        [gestureTuning lineBreakProgress];
        v27 = v26;

        loupeView6 = [(UITextLoupeSession *)self loupeView];
        [loupeView6 setDismissalProgress:v27];

        if (v27 >= 0.85)
        {
          loupeView7 = [(UITextLoupeSession *)self loupeView];
          visible = [loupeView7 visible];

          if (visible)
          {
            loupeView8 = [(UITextLoupeSession *)self loupeView];
            [loupeView8 setVisible:0 animated:1 completion:0];
          }
        }
      }

      [(UITextLoupeSession *)self _updateStatusBarVisibility];
    }

    else
    {
      loupeView9 = [(UITextLoupeSession *)self loupeView];
      [loupeView9 setVisible:0];
    }

    widgetCopy = v33;
  }
}

- (void)setModelPosition:(CGPoint)position
{
  [(UITextLoupeSession *)self _locationInContainerCoordinateSpace:position.x, position.y];
  v5 = v4;
  v7 = v6;
  loupeView = [(UITextLoupeSession *)self loupeView];
  [loupeView setModelPosition:{v5, v7}];
}

- (void)_updateStatusBarVisibility
{
  WeakRetained = objc_loadWeakRetained(&self->_containerWindow);
  v21 = __UIStatusBarManagerForWindow(WeakRetained);

  loupeView = [(UITextLoupeSession *)self loupeView];
  [loupeView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  loupeView2 = [(UITextLoupeSession *)self loupeView];
  if ([loupeView2 visible])
  {
    [v21 _statusBarFrameIgnoringVisibility];
    v24.origin.x = v14;
    v24.origin.y = v15;
    v24.size.width = v16;
    v24.size.height = v17;
    v23.origin.x = v6;
    v23.origin.y = v8;
    v23.size.width = v10;
    v23.size.height = v12;
    v18 = CGRectIntersectsRect(v23, v24);

    if (v18)
    {
      if (self->_isHidingStatusBar)
      {
        goto LABEL_9;
      }

      v19 = 1;
      self->_isHidingStatusBar = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (!self->_isHidingStatusBar)
  {
    goto LABEL_9;
  }

  v19 = 0;
  self->_isHidingStatusBar = 0;
LABEL_8:
  v20 = LoupeStatusBarAnimationParameters();
  [v21 _setOverridingStatusBarHidden:v19 animationParameters:v20];

LABEL_9:
}

- (void)_invalidateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  self->_invalidated = 1;
  if (self->_isHidingStatusBar)
  {
    self->_isHidingStatusBar = 0;
    WeakRetained = objc_loadWeakRetained(&self->_containerWindow);
    v6 = __UIStatusBarManagerForWindow(WeakRetained);
    v7 = LoupeStatusBarAnimationParameters();
    [v6 _setOverridingStatusBarHidden:0 animationParameters:v7];
  }

  if (animatedCopy)
  {
    objc_initWeak(&location, self);
    loupeView = [(UITextLoupeSession *)self loupeView];
    delegate = [(UITextLoupeSession *)self delegate];
    loupeView = self->_loupeView;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__UITextLoupeSession__invalidateAnimated___block_invoke;
    v14[3] = &unk_1E712BA38;
    v11 = loupeView;
    v15 = v11;
    objc_copyWeak(&v17, &location);
    v12 = delegate;
    v16 = v12;
    [(_UITextLoupeView *)loupeView setVisible:0 animated:1 completion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_UITextLoupeView *)self->_loupeView setVisible:0 animated:0 completion:0];
    [(_UITextLoupeView *)self->_loupeView removeFromSuperview];
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 _loupeSessionDidInvalidate:self];
  }
}

void __42__UITextLoupeSession__invalidateAnimated___block_invoke(id *a1)
{
  [a1[4] removeFromSuperview];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [a1[5] _loupeSessionDidInvalidate:WeakRetained];
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(UITextLoupeSession *)self _invalidateAnimated:0];
  }

  v3.receiver = self;
  v3.super_class = UITextLoupeSession;
  [(UITextLoupeSession *)&v3 dealloc];
}

- (UIView)interactionView
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionView);

  return WeakRetained;
}

- (UIWindow)containerWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_containerWindow);

  return WeakRetained;
}

- (_UITextLoupeSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end