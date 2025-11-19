@interface _UIContentUnavailableWrapperView
- (BOOL)_canApplyConfigurationToExistingContentView:(id)a3;
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (UIViewController)viewController;
- (_UIContentUnavailableWrapperView)initWithViewController:(id)a3;
- (id)_contentScrollViewForView:(id)a3;
- (void)_replaceContentViewWithViewForConfiguration:(id)a3;
- (void)_updateBackgroundView;
- (void)_updateBackgroundViewHandlersForPreviousContentView:(id)a3 newContentView:(id)a4;
- (void)reconfigureContentScrollView;
- (void)setConfiguration:(id)a3;
@end

@implementation _UIContentUnavailableWrapperView

- (_UIContentUnavailableWrapperView)initWithViewController:(id)a3
{
  v5 = [a3 view];
  [v5 bounds];
  v10.receiver = self;
  v10.super_class = _UIContentUnavailableWrapperView;
  v6 = [(UIView *)&v10 initWithFrame:?];

  if (v6)
  {
    objc_storeWeak(&v6->_viewController, a3);
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    parentScrollViews = v6->_parentScrollViews;
    v6->_parentScrollViews = v7;
  }

  return v6;
}

- (void)setConfiguration:(id)a3
{
  if ([(_UIContentUnavailableWrapperView *)self _canApplyConfigurationToExistingContentView:?])
  {
    [(_UIContentViewInternal *)self->_viewForConfiguration setConfiguration:a3];

    [(_UIContentUnavailableWrapperView *)self reconfigureContentScrollView];
  }

  else if (a3)
  {
    v5 = [a3 makeContentView];
    [(_UIContentUnavailableWrapperView *)self _replaceContentViewWithViewForConfiguration:v5];
  }

  else
  {

    [(_UIContentUnavailableWrapperView *)self _replaceContentViewWithViewForConfiguration:0];
  }
}

- (void)_replaceContentViewWithViewForConfiguration:(id)a3
{
  if (a3)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [a3 _wrappedContentView];
      if (!v6)
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [a3 configuration];
        [v7 handleFailureInMethod:a2 object:self file:@"_UIContentUnavailableWrapperView.m" lineNumber:68 description:{@"Configuration returned a nil content view: %@", v8}];

        v6 = 0;
      }
    }

    else
    {
      v6 = a3;
    }

    if (([v6 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"_UIContentUnavailableWrapperView.m" lineNumber:69 description:{@"The content view returned from the content unavailable configuration must have translatesAutoresizingMaskIntoConstraints enabled: %@", v6}];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __80___UIContentUnavailableWrapperView__replaceContentViewWithViewForConfiguration___block_invoke;
    v24[3] = &unk_1E70F35B8;
    v9 = v6;
    v25 = v9;
    v26 = self;
    [UIView performWithoutAnimation:v24];
  }

  else
  {
    v9 = 0;
  }

  v10 = self->_viewForConfiguration;
  v11 = self->_contentView;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  objc_storeStrong(&self->_viewForConfiguration, a3);
  objc_storeStrong(&self->_contentView, v9);
  v13 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
  v14 = v13;
  if (v9 && v13)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80___UIContentUnavailableWrapperView__replaceContentViewWithViewForConfiguration___block_invoke_2;
    v22[3] = &unk_1E70F3590;
    v15 = v9;
    v23 = v15;
    [UIView performWithoutAnimation:v22];
    [v15 setAlpha:1.0];
  }

  if (v14)
  {
    [(UIView *)v11 setAlpha:0.0];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80___UIContentUnavailableWrapperView__replaceContentViewWithViewForConfiguration___block_invoke_3;
    v17[3] = &unk_1E70F8C08;
    v18 = v11;
    objc_copyWeak(&v20, &location);
    v19 = v10;
    [UIView _addCompletionWithPosition:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [(UIView *)v11 removeFromSuperview];
  }

  [(_UIContentUnavailableWrapperView *)self _updateBackgroundViewHandlersForPreviousContentView:v11 newContentView:v9];
  [(_UIContentUnavailableWrapperView *)self reconfigureContentScrollView];
}

- (void)_updateBackgroundViewHandlersForPreviousContentView:(id)a3 newContentView:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    [a3 _setContainerBackgroundViewDidChangeHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __103___UIContentUnavailableWrapperView__updateBackgroundViewHandlersForPreviousContentView_newContentView___block_invoke;
    v10 = &unk_1E70F5A28;
    objc_copyWeak(&v11, &location);
    [a4 _setContainerBackgroundViewDidChangeHandler:&v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  [(_UIContentUnavailableWrapperView *)self _updateBackgroundView:v7];
}

- (void)_updateBackgroundView
{
  v3 = self->_backgroundView;
  v4 = self->_contentView;
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(UIView *)v4 _containerBackgroundView];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&self->_backgroundView, v5);
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __57___UIContentUnavailableWrapperView__updateBackgroundView__block_invoke;
      v9[3] = &unk_1E70F35B8;
      v10 = v5;
      v11 = self;
      [UIView performWithoutAnimation:v9];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57___UIContentUnavailableWrapperView__updateBackgroundView__block_invoke_2;
    v7[3] = &unk_1E70F6AF8;
    v6 = v3;
    v8 = v6;
    [UIView _addCompletionWithPosition:v7];
    [(UIView *)v6 setAlpha:0.0];
    [v5 setAlpha:1.0];
  }

  else
  {
    [(UIView *)v3 removeFromSuperview];
    if (v5)
    {
      [(UIView *)self bounds];
      [v5 setFrame:?];
      [v5 setAutoresizingMask:18];
      [(UIView *)self insertSubview:v5 atIndex:0];
    }
  }
}

- (BOOL)_canApplyConfigurationToExistingContentView:(id)a3
{
  v5 = [(_UIContentViewInternal *)self->_viewForConfiguration configuration];
  v6 = v5;
  v7 = 0;
  if (!a3 || !v5)
  {
    goto LABEL_21;
  }

  viewForConfiguration = self->_viewForConfiguration;
  v9 = a3;
  v10 = viewForConfiguration;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v13 = [(_UIContentViewInternal *)v10 configuration];

    v14 = v13;
    if (v14)
    {
      if (objc_opt_respondsToSelector())
      {
        [v14 _wrappedConfigurationIdentifier];
      }

      else
      {
        v16 = objc_opt_class();
        NSStringFromClass(v16);
      }
      v15 = ;
    }

    else
    {
      v15 = 0;
    }

    v17 = v9;
    if (objc_opt_respondsToSelector())
    {
      [v17 _wrappedConfigurationIdentifier];
    }

    else
    {
      v18 = objc_opt_class();
      NSStringFromClass(v18);
    }
    v19 = ;

    v20 = [v15 isEqualToString:v19];
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  v11 = [(_UIContentViewInternal *)v10 supportsConfiguration:v9];

  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v9;
    v7 = v6[7] == v12[7];
  }

  else
  {
    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (void)reconfigureContentScrollView
{
  if (!self->_isConfiguringContentScrollView)
  {
    self->_isConfiguringContentScrollView = 1;
    v4 = [(_UIContentUnavailableWrapperView *)self contentView];
    v5 = [(_UIContentUnavailableWrapperView *)self viewController];
    v6 = self->_contentScrollView;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v4;
      v9 = [v8 _scrollView];
      if (!v9)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"_UIContentUnavailableWrapperView.m" lineNumber:220 description:@"Expected UIContentUnavailableView to return a scroll view for its _UIContentUnavailableWrapperView"];
      }

      v19 = [v8 shouldReparentScrollViewPanGestureRecognizer];
    }

    else
    {
      v9 = [(_UIContentUnavailableWrapperView *)self _contentScrollViewForView:v4];
      v19 = 0;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v10 = __64___UIContentUnavailableWrapperView_reconfigureContentScrollView__block_invoke;
    v21 = __64___UIContentUnavailableWrapperView_reconfigureContentScrollView__block_invoke;
    v22 = &unk_1E70F8C30;
    v23 = self;
    v11 = v5;
    v24 = v11;
    v12 = v6;
    v13 = v12;
    v25 = v12;
    v26 = isKindOfClass & 1;
    if (v12 != v9)
    {
      __64___UIContentUnavailableWrapperView_reconfigureContentScrollView__block_invoke_2(v12, v12);
      v10 = v21;
    }

    v14 = v10(v20, v9, 1);
    if ((v14 & v21(v20, v9, 4)) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v9;
    }

    [v11 _setInternalContentScrollView:v15];
    objc_storeStrong(&self->_contentScrollView, v9);
    if (v9)
    {
      if (v19)
      {
        v16 = [v11 view];
      }

      else
      {
        v16 = v9;
      }

      v17 = v16;
      __64___UIContentUnavailableWrapperView_reconfigureContentScrollView__block_invoke_2(v9, v16);
    }

    self->_isConfiguringContentScrollView = 0;
  }
}

- (id)_contentScrollViewForView:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self bounds];
    v33.origin.x = v13;
    v33.origin.y = v14;
    v33.size.width = v15;
    v33.size.height = v16;
    v32.origin.x = v6;
    v32.origin.y = v8;
    v32.size.width = v10;
    v32.size.height = v12;
    if (CGRectEqualToRect(v32, v33))
    {
      if ([a3 _canHostViewControllerContentScrollView])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = a3;
          goto LABEL_16;
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v18 = [a3 subviews];
        v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v26;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v26 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [(_UIContentUnavailableWrapperView *)self _contentScrollViewForView:*(*(&v25 + 1) + 8 * i)];
              if (v23)
              {
                v17 = v23;

                goto LABEL_16;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (UIEdgeInsets)_concreteDefaultLayoutMargins
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end