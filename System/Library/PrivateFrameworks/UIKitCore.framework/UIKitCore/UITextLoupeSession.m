@interface UITextLoupeSession
+ (id)_beginLoupeSessionAtPoint:(CGPoint)a3 fromSelectionWidgetView:(id)a4 inView:(id)a5 orientation:(unint64_t)a6;
+ (id)_makeLoupeViewForSourceView:(id)a3 selectionWidget:(id)a4 orientation:(unint64_t)a5;
- (CGPoint)_locationInContainerCoordinateSpace:(CGPoint)a3;
- (UIView)interactionView;
- (UIWindow)containerWindow;
- (_UITextLoupeSessionDelegate)delegate;
- (void)_invalidateAnimated:(BOOL)a3;
- (void)_moveToPoint:(CGPoint)a3 withCaretRect:(CGRect)a4 selectionWidget:(id)a5 trackingCaret:(BOOL)a6;
- (void)_updateStatusBarVisibility;
- (void)dealloc;
- (void)setModelPosition:(CGPoint)a3;
@end

@implementation UITextLoupeSession

+ (id)_makeLoupeViewForSourceView:(id)a3 selectionWidget:(id)a4 orientation:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    _UISolariumEnabled();
    v9 = [objc_alloc(objc_opt_class()) initWithSourceView:v8];

    [(_UITextLightLoupeView *)v9 setAnimatableSelectionWidget:v7];
    [(_UITextLightLoupeView *)v9 setOrientation:a5];
  }

  else
  {
    v9 = [[_UITextLightLoupeView alloc] initWithSourceView:v8];
  }

  return v9;
}

+ (id)_beginLoupeSessionAtPoint:(CGPoint)a3 fromSelectionWidgetView:(id)a4 inView:(id)a5 orientation:(unint64_t)a6
{
  y = a3.y;
  x = a3.x;
  v57 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = [v12 window];
  v14 = [v13 _isRemoteKeyboardWindow];

  if (v14)
  {
    v15 = [v12 window];
  }

  else
  {
    if (v12)
    {
      [v12 keyboardSceneDelegate];
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
          *(&buf.m11 + 4) = v12;
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
        *(&buf.m11 + 4) = v12;
        _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_ERROR, "Could not find keyboard scene delegate for interaction view %@.", &buf, 0xCu);
      }
    }

    v15 = [v16 containerWindow];
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (v15)
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

  if (!v15)
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
  if (([v11 conformsToProtocol:&unk_1EFEE5710] & 1) == 0)
  {

    v11 = 0;
  }

  v17 = [a1 _makeLoupeViewForSourceView:v12 selectionWidget:v11 orientation:a6];
  [v15 addSubview:v17];
  v18 = [v17 containerCoordinateSpace];
  if (v18)
  {
    [v11 frame];
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
    [(UITextLoupeSession *)v23 setInteractionView:v12];
    [(UITextLoupeSession *)v23 setLoupeView:v17];
    [(UITextLoupeSession *)v23 setContainerWindow:v15];
    [v17 preferredSize];
    v25 = v24;
    v27 = v26;
    if (v11 && ([v11 superview], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "convertRect:fromCoordinateSpace:", v28, v19, v20, width, height), v30 = v29, v28, v30 > v27))
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
      v35 = [v12 tintColor];
      if (objc_opt_respondsToSelector())
      {
        v36 = [v12 insertionPointColor];

        v35 = v36;
      }

      [v17 setTintColor:v35];
      v37 = [v12 window];

      if (v15 != v37)
      {
        v38 = [v12 window];
        [v38 bounds];
        v40 = v39;
        v42 = v41;
        v43 = [v12 window];
        [v15 convertPoint:v43 fromWindow:{v40, v42}];
        v45 = v44;
        v47 = v46;

        CATransform3DMakeTranslation(&v55, v45, v47, 0.0);
        v48 = [v17 layer];
        buf = v55;
        [v48 setSublayerTransform:&buf];
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

- (CGPoint)_locationInContainerCoordinateSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextLoupeSession *)self interactionView];
  v7 = [(UITextLoupeSession *)self loupeView];
  v8 = [v7 containerCoordinateSpace];

  [v8 convertPoint:v6 fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_moveToPoint:(CGPoint)a3 withCaretRect:(CGRect)a4 selectionWidget:(id)a5 trackingCaret:(BOOL)a6
{
  v6 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.y;
  v12 = a3.x;
  v14 = a5;
  if (!self->_invalidated)
  {
    v33 = v14;
    v15 = [(UITextLoupeSession *)self loupeView];
    v16 = [v15 containerCoordinateSpace];

    if (v16 && (-[UITextLoupeSession interactionView](self, "interactionView"), v17 = objc_claimAutoreleasedReturnValue(), [v17 window], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      if (v33)
      {
        v19 = [(UITextLoupeSession *)self loupeView];
        v20 = [v19 animatableSelectionWidget];

        if (v20 != v33)
        {
          v21 = [(UITextLoupeSession *)self loupeView];
          [v21 setAnimatableSelectionWidget:v33];

          v22 = [(UITextLoupeSession *)self loupeView];
          [v22 setVisible:0 animated:0 completion:0];

          v23 = [(UITextLoupeSession *)self loupeView];
          [v23 setVisible:1 animated:1 completion:0];
        }
      }

      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      if (CGRectIsNull(v35) || !v6)
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
        v25 = [(UITextLoupeSession *)self gestureTuning];
        [v25 lineBreakProgress];
        v27 = v26;

        v28 = [(UITextLoupeSession *)self loupeView];
        [v28 setDismissalProgress:v27];

        if (v27 >= 0.85)
        {
          v29 = [(UITextLoupeSession *)self loupeView];
          v30 = [v29 visible];

          if (v30)
          {
            v31 = [(UITextLoupeSession *)self loupeView];
            [v31 setVisible:0 animated:1 completion:0];
          }
        }
      }

      [(UITextLoupeSession *)self _updateStatusBarVisibility];
    }

    else
    {
      v32 = [(UITextLoupeSession *)self loupeView];
      [v32 setVisible:0];
    }

    v14 = v33;
  }
}

- (void)setModelPosition:(CGPoint)a3
{
  [(UITextLoupeSession *)self _locationInContainerCoordinateSpace:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(UITextLoupeSession *)self loupeView];
  [v8 setModelPosition:{v5, v7}];
}

- (void)_updateStatusBarVisibility
{
  WeakRetained = objc_loadWeakRetained(&self->_containerWindow);
  v21 = __UIStatusBarManagerForWindow(WeakRetained);

  v4 = [(UITextLoupeSession *)self loupeView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(UITextLoupeSession *)self loupeView];
  if ([v13 visible])
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

- (void)_invalidateAnimated:(BOOL)a3
{
  v3 = a3;
  self->_invalidated = 1;
  if (self->_isHidingStatusBar)
  {
    self->_isHidingStatusBar = 0;
    WeakRetained = objc_loadWeakRetained(&self->_containerWindow);
    v6 = __UIStatusBarManagerForWindow(WeakRetained);
    v7 = LoupeStatusBarAnimationParameters();
    [v6 _setOverridingStatusBarHidden:0 animationParameters:v7];
  }

  if (v3)
  {
    objc_initWeak(&location, self);
    v8 = [(UITextLoupeSession *)self loupeView];
    v9 = [(UITextLoupeSession *)self delegate];
    loupeView = self->_loupeView;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__UITextLoupeSession__invalidateAnimated___block_invoke;
    v14[3] = &unk_1E712BA38;
    v11 = v8;
    v15 = v11;
    objc_copyWeak(&v17, &location);
    v12 = v9;
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