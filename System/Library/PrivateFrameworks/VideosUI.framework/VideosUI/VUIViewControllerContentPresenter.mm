@interface VUIViewControllerContentPresenter
- (id)_createAlertViewWithTitle:(id)a3 description:(id)a4;
- (id)_logNameForContentViewType:(unint64_t)a3;
- (void)configureCurrentViewFrameForBounds:(CGRect)a3;
- (void)refreshNoContentViewIfNeeded;
- (void)setCurrentContentViewType:(unint64_t)a3;
- (void)setRootView:(id)a3;
- (void)setRootViewForViewController:(id)a3;
@end

@implementation VUIViewControllerContentPresenter

- (void)setRootViewForViewController:(id)a3
{
  v4 = MEMORY[0x1E69DD250];
  v9 = a3;
  v5 = objc_alloc_init(v4);
  rootView = self->_rootView;
  self->_rootView = v5;

  v7 = self->_rootView;
  v8 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [(UIView *)v7 setBackgroundColor:v8];

  [v9 setView:self->_rootView];
}

- (void)setRootView:(id)a3
{
  objc_storeStrong(&self->_rootView, a3);
  v5 = a3;
  rootView = self->_rootView;
  v7 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [(UIView *)rootView setBackgroundColor:v7];
}

- (void)configureCurrentViewFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(VUIViewControllerContentPresenter *)self currentView];
  [v7 setFrame:{x, y, width, height}];
}

- (void)setCurrentContentViewType:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __63__VUIViewControllerContentPresenter_setCurrentContentViewType___block_invoke;
  v7 = &unk_1E8730340;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v4 = v5;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6(v4);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __63__VUIViewControllerContentPresenter_setCurrentContentViewType___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained currentContentViewType];
    v5 = *(a1 + 40);
    v6 = VUIDefaultLogObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4 == v5)
    {
      if (v7)
      {
        v8 = [v3 logName];
        v9 = [v3 _logNameForContentViewType:*(a1 + 40)];
        v10 = [v3 currentView];
        *buf = 138412802;
        v33 = v8;
        v34 = 2112;
        v35 = v9;
        v36 = 2112;
        v37 = v10;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "[%@] - Content view type is not changed. Current type: %@. Current view: %@", buf, 0x20u);
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v7)
    {
      v11 = [v3 logName];
      v12 = [v3 _logNameForContentViewType:*(a1 + 40)];
      *buf = 138412546;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "[%@] - Setting content view type:%@", buf, 0x16u);
    }

    v6 = [v3 rootView];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [v3 rootView];
    v14 = [v13 subviews];

    v15 = [v14 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v28 + 1) + 8 * i) removeFromSuperview];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v16);
    }

    v19 = [v3 currentContentViewType];
    v3[2] = *(a1 + 40);
    v20 = [v3 currentContentViewType];
    v21 = 0;
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = [v3 contentView];
        goto LABEL_27;
      }

      if (v20 == 4)
      {
        v22 = [v3 cloudUpdateFailedTitle];
        v23 = [v3 cloudUpdateFailedMessage];
LABEL_21:
        v24 = v23;
        if (v22 | v23)
        {
          v21 = [v3 _createAlertViewWithTitle:v22 description:v23];
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v20 == 1)
      {
        v22 = [v3 loadingMessage];
        v24 = [v3 loadingTitle];
        v25 = [VUILoadingView alloc];
        v21 = [(VUILoadingView *)v25 initWithFrame:v24 loadingTitle:v22 loadingMessage:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        [(VUILoadingView *)v21 startTimer];
LABEL_25:

        goto LABEL_27;
      }

      if (v20 == 2)
      {
        v22 = [v3 noContentErrorTitle];
        v23 = [v3 noContentErrorMessage];
        goto LABEL_21;
      }
    }

LABEL_27:
    v27 = [v3 currentContentViewType] == 2 && v19 == 3;
    [v3 setContentHasBeenDeleted:v27];
    if (v21)
    {
      [v6 addSubview:v21];
    }

    [v3 setCurrentView:v21];

    goto LABEL_36;
  }

LABEL_37:
}

- (void)refreshNoContentViewIfNeeded
{
  v3 = [(VUIViewControllerContentPresenter *)self currentContentViewType];
  v4 = [(VUIViewControllerContentPresenter *)self currentView];

  v5 = [(VUIViewControllerContentPresenter *)self noContentErrorTitle];
  v6 = [(VUIViewControllerContentPresenter *)self noContentErrorMessage];
  if (v3 == 2 && !v4 && v5 | v6)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __65__VUIViewControllerContentPresenter_refreshNoContentViewIfNeeded__block_invoke;
    v11 = &unk_1E872D9B8;
    objc_copyWeak(&v14, &location);
    v12 = v5;
    v13 = v6;
    v7 = &v8;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v10(v7);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __65__VUIViewControllerContentPresenter_refreshNoContentViewIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained _createAlertViewWithTitle:*(a1 + 32) description:*(a1 + 40)];
    v4 = [v6 rootView];
    v5 = v4;
    if (v3)
    {
      [v4 addSubview:v3];
    }

    [v6 setCurrentView:v3];

    WeakRetained = v6;
  }
}

- (id)_createAlertViewWithTitle:(id)a3 description:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(VUILibraryAlertView);
  v8 = [(VUILibraryAlertView *)v7 titleLabel];
  v9 = [v8 textLayout];
  v10 = [(VUILibraryAlertView *)v7 titleLabel];
  v11 = [VUILabel labelWithString:v5 textLayout:v9 existingLabel:v10];

  v12 = [(VUILibraryAlertView *)v7 subtitleLabel];
  v13 = [v12 textLayout];
  v14 = [(VUILibraryAlertView *)v7 subtitleLabel];
  v15 = [VUILabel labelWithString:v6 textLayout:v13 existingLabel:v14];

  return v7;
}

- (id)_logNameForContentViewType:(unint64_t)a3
{
  if (a3 > 4)
  {
    return &stru_1F5DB25C0;
  }

  else
  {
    return off_1E8730360[a3];
  }
}

@end