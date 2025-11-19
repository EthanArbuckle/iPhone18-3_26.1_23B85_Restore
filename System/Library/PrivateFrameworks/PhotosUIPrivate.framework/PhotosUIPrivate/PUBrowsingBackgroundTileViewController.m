@interface PUBrowsingBackgroundTileViewController
- (CGRect)_emptyPlaceholderFrame;
- (CGRect)_emptyPlaceholderFrameForLayoutInfo:(id)a3;
- (PUBrowsingBackgroundTileViewController)initWithReuseIdentifier:(id)a3;
- (void)_invalidateColorWithAnimatorBlock:(id)a3;
- (void)_setEmptyPlaceholderFrame:(CGRect)a3;
- (void)_updateBackgroundBlurViewAnimated:(BOOL)a3;
- (void)_updateColorIfNeeded;
- (void)_updateEmptyPlaceholderAnimated:(BOOL)a3;
- (void)applyLayoutInfo:(id)a3;
- (void)becomeReusable;
- (void)setBackgroundColorOverride:(id)a3;
- (void)setShouldDisplayEmptyPlaceholder:(BOOL)a3;
- (void)setViewModel:(id)a3;
- (void)setVisualEffect:(id)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUBrowsingBackgroundTileViewController

- (CGRect)_emptyPlaceholderFrame
{
  x = self->__emptyPlaceholderFrame.origin.x;
  y = self->__emptyPlaceholderFrame.origin.y;
  width = self->__emptyPlaceholderFrame.size.width;
  height = self->__emptyPlaceholderFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 chromeVisibilityDidChange])
  {
    v7 = [(PUBrowsingBackgroundTileViewController *)self backgroundColorOverride];

    if (!v7)
    {
      v8 = PUBackgroundColorAnimatorBlockForChromeAnimation(v9);
      [(PUBrowsingBackgroundTileViewController *)self _invalidateColorWithAnimatorBlock:v8];
    }
  }

  if ([v6 assetsDataSourceDidChange])
  {
    [(PUBrowsingBackgroundTileViewController *)self _updateEmptyPlaceholderAnimated:1];
    [(PUBrowsingBackgroundTileViewController *)self _updateBackgroundBlurViewAnimated:1];
  }
}

- (void)_updateBackgroundBlurViewAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(PUTileViewController *)self isViewLoaded])
  {
    return;
  }

  v5 = [(PUBrowsingBackgroundTileViewController *)self visualEffect];

  v6 = [(PUBrowsingBackgroundTileViewController *)self _backgroundBlurView];

  if (!v5)
  {
    if (!v6)
    {
      return;
    }

    v17 = [(PUBrowsingBackgroundTileViewController *)self _backgroundBlurView];
    v18 = v17;
    if (v3)
    {
      v19 = MEMORY[0x1E69DD250];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __76__PUBrowsingBackgroundTileViewController__updateBackgroundBlurViewAnimated___block_invoke_2;
      v28[3] = &unk_1E7B80DD0;
      v29 = v17;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __76__PUBrowsingBackgroundTileViewController__updateBackgroundBlurViewAnimated___block_invoke_3;
      v26[3] = &unk_1E7B7F020;
      v27 = v29;
      [v19 _animateUsingDefaultTimingWithOptions:0 animations:v28 completion:v26];
    }

    else
    {
      [v17 removeFromSuperview];
    }

    [(PUBrowsingBackgroundTileViewController *)self _setBackgroundBlurView:0];
    goto LABEL_15;
  }

  if (!v6)
  {
    v20 = objc_alloc(MEMORY[0x1E69DD298]);
    v21 = [(PUBrowsingBackgroundTileViewController *)self visualEffect];
    v18 = [v20 initWithEffect:v21];

    v22 = [(PUTileViewController *)self view];
    [v22 bounds];
    [v18 setFrame:?];

    [v18 setAutoresizingMask:18];
    [v18 setNeedsUpdateConstraints];
    [(PUBrowsingBackgroundTileViewController *)self _setBackgroundBlurView:v18];
    v23 = [(PUTileViewController *)self view];
    [v23 addSubview:v18];

    if (v3)
    {
      [v18 setAlpha:0.0];
      v24 = MEMORY[0x1E69DD250];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __76__PUBrowsingBackgroundTileViewController__updateBackgroundBlurViewAnimated___block_invoke;
      v30[3] = &unk_1E7B80DD0;
      v31 = v18;
      [v24 _animateUsingDefaultTimingWithOptions:0 animations:v30 completion:0];
    }

LABEL_15:

    return;
  }

  v7 = [(PUBrowsingBackgroundTileViewController *)self _backgroundBlurView];

  if (v7)
  {
    v25 = [(PUTileViewController *)self view];
    [v25 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(PUBrowsingBackgroundTileViewController *)self _backgroundBlurView];
    [v16 setFrame:{v9, v11, v13, v15}];
  }
}

- (void)setVisualEffect:(id)a3
{
  v5 = a3;
  if (([(UIVisualEffect *)self->_visualEffect isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_visualEffect, a3);
    [(PUBrowsingBackgroundTileViewController *)self _updateBackgroundBlurViewAnimated:0];
  }
}

- (void)_updateEmptyPlaceholderAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(PUTileViewController *)self isViewLoaded])
  {
    return;
  }

  if (![(PUBrowsingBackgroundTileViewController *)self shouldDisplayEmptyPlaceholder])
  {
    goto LABEL_11;
  }

  v5 = [(PUBrowsingBackgroundTileViewController *)self viewModel];
  v6 = [v5 assetsDataSource];
  if (([v6 isEmpty] & 1) == 0)
  {

    goto LABEL_11;
  }

  [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderFrame];
  IsNull = CGRectIsNull(v46);

  if (IsNull)
  {
LABEL_11:
    v18 = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];

    if (!v18)
    {
      return;
    }

    v19 = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];
    v20 = v19;
    if (v3)
    {
      v21 = MEMORY[0x1E69DD250];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __74__PUBrowsingBackgroundTileViewController__updateEmptyPlaceholderAnimated___block_invoke_2;
      v41[3] = &unk_1E7B80DD0;
      v42 = v19;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __74__PUBrowsingBackgroundTileViewController__updateEmptyPlaceholderAnimated___block_invoke_3;
      v39[3] = &unk_1E7B7F020;
      v40 = v42;
      [v21 _animateUsingDefaultTimingWithOptions:0 animations:v41 completion:v39];
    }

    else
    {
      [v19 removeFromSuperview];
    }

    [(PUBrowsingBackgroundTileViewController *)self _setEmptyPlaceholderView:0];
    goto LABEL_16;
  }

  v8 = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];

  if (!v8)
  {
    [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v20 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    v30 = [(PUBrowsingBackgroundTileViewController *)self emptyPlaceholderCustomTitle];
    if (v30)
    {
      [v20 setText:v30];
    }

    else
    {
      v31 = PXPhotoKitLocalizedTitleForEmptyCollectionListFetchResult();
      [v20 setText:v31];
    }

    v32 = [(PUBrowsingBackgroundTileViewController *)self emptyPlaceholderCustomSubtitle];
    if (v32)
    {
      [v20 setSecondaryText:v32];
    }

    else
    {
      v33 = PXPhotoKitLocalizedMessageForEmptyCollectionListFetchResult();
      v34 = [v33 string];
      [v20 setSecondaryText:v34];
    }

    v35 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:v20];
    [v35 setFrame:{v23, v25, v27, v29}];
    [v35 setAutoresizingMask:18];
    [v35 setNeedsUpdateConstraints];
    [(PUBrowsingBackgroundTileViewController *)self _setEmptyPlaceholderView:v35];
    v36 = [(PUTileViewController *)self view];
    [v36 addSubview:v35];

    if (v3)
    {
      [v35 setAlpha:0.0];
      v37 = MEMORY[0x1E69DD250];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __74__PUBrowsingBackgroundTileViewController__updateEmptyPlaceholderAnimated___block_invoke;
      v43[3] = &unk_1E7B80DD0;
      v44 = v35;
      [v37 _animateUsingDefaultTimingWithOptions:0 animations:v43 completion:0];
    }

LABEL_16:
    return;
  }

  v9 = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];

  if (v9)
  {
    [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v38 = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];
    [v38 setFrame:{v11, v13, v15, v17}];
  }
}

- (CGRect)_emptyPlaceholderFrameForLayoutInfo:(id)a3
{
  v4 = a3;
  v5 = [(PUTileViewController *)self view];
  [v5 bounds];

  [v4 expandedRectInsets];
  PXEdgeInsetsAbsoluteValue();

  PXEdgeInsetsInsetRect();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_setEmptyPlaceholderFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_emptyPlaceholderFrame = &self->__emptyPlaceholderFrame;
  if (!CGRectEqualToRect(self->__emptyPlaceholderFrame, a3))
  {
    p_emptyPlaceholderFrame->origin.x = x;
    p_emptyPlaceholderFrame->origin.y = y;
    p_emptyPlaceholderFrame->size.width = width;
    p_emptyPlaceholderFrame->size.height = height;

    [(PUBrowsingBackgroundTileViewController *)self _updateEmptyPlaceholderAnimated:0];
  }
}

- (void)setShouldDisplayEmptyPlaceholder:(BOOL)a3
{
  if (self->_shouldDisplayEmptyPlaceholder != a3)
  {
    self->_shouldDisplayEmptyPlaceholder = a3;
    [(PUBrowsingBackgroundTileViewController *)self _updateEmptyPlaceholderAnimated:0];
  }
}

- (void)_updateColorIfNeeded
{
  if ([(PUBrowsingBackgroundTileViewController *)self _needsUpdateColor])
  {
    if ([(PUTileViewController *)self isViewLoaded])
    {
      v3 = [(PUBrowsingBackgroundTileViewController *)self viewModel];

      if (v3)
      {
        [(PUBrowsingBackgroundTileViewController *)self _setNeedsUpdateColor:0];
        v4 = [(PUBrowsingBackgroundTileViewController *)self backgroundColorOverride];
        if (!v4)
        {
          v5 = [(PUBrowsingBackgroundTileViewController *)self viewModel];
          v6 = [v5 isChromeVisible];

          v7 = +[PUInterfaceManager currentTheme];
          v8 = v7;
          if (v6)
          {
            [v7 photoBrowserChromeVisibleBackgroundColor];
          }

          else
          {
            [v7 photoBrowserChromeHiddenBackgroundColor];
          }
          v4 = ;
        }

        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __62__PUBrowsingBackgroundTileViewController__updateColorIfNeeded__block_invoke;
        v16 = &unk_1E7B80C38;
        v17 = self;
        v18 = v4;
        v9 = v4;
        v10 = _Block_copy(&v13);
        v11 = [(PUBrowsingBackgroundTileViewController *)self _nextColorUpdateAnimatorBlock:v13];
        v12 = v11;
        if (v11)
        {
          (*(v11 + 16))(v11, v10, 0);
        }

        else
        {
          v10[2](v10);
        }
      }
    }
  }
}

void __62__PUBrowsingBackgroundTileViewController__updateColorIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:*(a1 + 40)];
}

- (void)_invalidateColorWithAnimatorBlock:(id)a3
{
  v4 = a3;
  [(PUBrowsingBackgroundTileViewController *)self _setNeedsUpdateColor:1];
  [(PUBrowsingBackgroundTileViewController *)self _setNextColorUpdateAnimatorBlock:v4];

  [(PUBrowsingBackgroundTileViewController *)self _updateColorIfNeeded];
}

- (void)setBackgroundColorOverride:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_backgroundColorOverride != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColorOverride, a3);
      v5 = [(PUBrowsingBackgroundTileViewController *)self _invalidateColor];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUBrowsingBackgroundTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUBrowsingBackgroundTileViewController *)self setViewModel:0];
  [(PUBrowsingBackgroundTileViewController *)self setBackgroundColorOverride:0];
  [(PUBrowsingBackgroundTileViewController *)self setVisualEffect:0];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel != v5)
  {
    v7 = v5;
    [(PUBrowsingViewModel *)viewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_viewModel, a3);
    [(PUBrowsingViewModel *)self->_viewModel registerChangeObserver:self];
    viewModel = [(PUBrowsingBackgroundTileViewController *)self _invalidateColor];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](viewModel, v5);
}

- (void)applyLayoutInfo:(id)a3
{
  v13.receiver = self;
  v13.super_class = PUBrowsingBackgroundTileViewController;
  v4 = a3;
  [(PUTileViewController *)&v13 applyLayoutInfo:v4];
  [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderFrameForLayoutInfo:v4, v13.receiver, v13.super_class];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(PUBrowsingBackgroundTileViewController *)self _setEmptyPlaceholderFrame:v6, v8, v10, v12];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUBrowsingBackgroundTileViewController;
  [(PUTileViewController *)&v3 viewDidLoad];
  [(PUBrowsingBackgroundTileViewController *)self _updateColorIfNeeded];
  [(PUBrowsingBackgroundTileViewController *)self _updateEmptyPlaceholderAnimated:0];
  [(PUBrowsingBackgroundTileViewController *)self _updateBackgroundBlurViewAnimated:0];
}

- (PUBrowsingBackgroundTileViewController)initWithReuseIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = PUBrowsingBackgroundTileViewController;
  result = [(PUTileViewController *)&v5 initWithReuseIdentifier:a3];
  if (result)
  {
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->__emptyPlaceholderFrame.origin = *MEMORY[0x1E695F050];
    result->__emptyPlaceholderFrame.size = v4;
  }

  return result;
}

@end