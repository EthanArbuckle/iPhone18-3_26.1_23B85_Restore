@interface PUBrowsingBackgroundTileViewController
- (CGRect)_emptyPlaceholderFrame;
- (CGRect)_emptyPlaceholderFrameForLayoutInfo:(id)info;
- (PUBrowsingBackgroundTileViewController)initWithReuseIdentifier:(id)identifier;
- (void)_invalidateColorWithAnimatorBlock:(id)block;
- (void)_setEmptyPlaceholderFrame:(CGRect)frame;
- (void)_updateBackgroundBlurViewAnimated:(BOOL)animated;
- (void)_updateColorIfNeeded;
- (void)_updateEmptyPlaceholderAnimated:(BOOL)animated;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)setBackgroundColorOverride:(id)override;
- (void)setShouldDisplayEmptyPlaceholder:(BOOL)placeholder;
- (void)setViewModel:(id)model;
- (void)setVisualEffect:(id)effect;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
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

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  if ([changeCopy chromeVisibilityDidChange])
  {
    backgroundColorOverride = [(PUBrowsingBackgroundTileViewController *)self backgroundColorOverride];

    if (!backgroundColorOverride)
    {
      v8 = PUBackgroundColorAnimatorBlockForChromeAnimation(modelCopy);
      [(PUBrowsingBackgroundTileViewController *)self _invalidateColorWithAnimatorBlock:v8];
    }
  }

  if ([changeCopy assetsDataSourceDidChange])
  {
    [(PUBrowsingBackgroundTileViewController *)self _updateEmptyPlaceholderAnimated:1];
    [(PUBrowsingBackgroundTileViewController *)self _updateBackgroundBlurViewAnimated:1];
  }
}

- (void)_updateBackgroundBlurViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(PUTileViewController *)self isViewLoaded])
  {
    return;
  }

  visualEffect = [(PUBrowsingBackgroundTileViewController *)self visualEffect];

  _backgroundBlurView = [(PUBrowsingBackgroundTileViewController *)self _backgroundBlurView];

  if (!visualEffect)
  {
    if (!_backgroundBlurView)
    {
      return;
    }

    _backgroundBlurView2 = [(PUBrowsingBackgroundTileViewController *)self _backgroundBlurView];
    v18 = _backgroundBlurView2;
    if (animatedCopy)
    {
      v19 = MEMORY[0x1E69DD250];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __76__PUBrowsingBackgroundTileViewController__updateBackgroundBlurViewAnimated___block_invoke_2;
      v28[3] = &unk_1E7B80DD0;
      v29 = _backgroundBlurView2;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __76__PUBrowsingBackgroundTileViewController__updateBackgroundBlurViewAnimated___block_invoke_3;
      v26[3] = &unk_1E7B7F020;
      v27 = v29;
      [v19 _animateUsingDefaultTimingWithOptions:0 animations:v28 completion:v26];
    }

    else
    {
      [_backgroundBlurView2 removeFromSuperview];
    }

    [(PUBrowsingBackgroundTileViewController *)self _setBackgroundBlurView:0];
    goto LABEL_15;
  }

  if (!_backgroundBlurView)
  {
    v20 = objc_alloc(MEMORY[0x1E69DD298]);
    visualEffect2 = [(PUBrowsingBackgroundTileViewController *)self visualEffect];
    v18 = [v20 initWithEffect:visualEffect2];

    view = [(PUTileViewController *)self view];
    [view bounds];
    [v18 setFrame:?];

    [v18 setAutoresizingMask:18];
    [v18 setNeedsUpdateConstraints];
    [(PUBrowsingBackgroundTileViewController *)self _setBackgroundBlurView:v18];
    view2 = [(PUTileViewController *)self view];
    [view2 addSubview:v18];

    if (animatedCopy)
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

  _backgroundBlurView3 = [(PUBrowsingBackgroundTileViewController *)self _backgroundBlurView];

  if (_backgroundBlurView3)
  {
    view3 = [(PUTileViewController *)self view];
    [view3 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    _backgroundBlurView4 = [(PUBrowsingBackgroundTileViewController *)self _backgroundBlurView];
    [_backgroundBlurView4 setFrame:{v9, v11, v13, v15}];
  }
}

- (void)setVisualEffect:(id)effect
{
  effectCopy = effect;
  if (([(UIVisualEffect *)self->_visualEffect isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_visualEffect, effect);
    [(PUBrowsingBackgroundTileViewController *)self _updateBackgroundBlurViewAnimated:0];
  }
}

- (void)_updateEmptyPlaceholderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(PUTileViewController *)self isViewLoaded])
  {
    return;
  }

  if (![(PUBrowsingBackgroundTileViewController *)self shouldDisplayEmptyPlaceholder])
  {
    goto LABEL_11;
  }

  viewModel = [(PUBrowsingBackgroundTileViewController *)self viewModel];
  assetsDataSource = [viewModel assetsDataSource];
  if (([assetsDataSource isEmpty] & 1) == 0)
  {

    goto LABEL_11;
  }

  [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderFrame];
  IsNull = CGRectIsNull(v46);

  if (IsNull)
  {
LABEL_11:
    _emptyPlaceholderView = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];

    if (!_emptyPlaceholderView)
    {
      return;
    }

    _emptyPlaceholderView2 = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];
    emptyConfiguration = _emptyPlaceholderView2;
    if (animatedCopy)
    {
      v21 = MEMORY[0x1E69DD250];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __74__PUBrowsingBackgroundTileViewController__updateEmptyPlaceholderAnimated___block_invoke_2;
      v41[3] = &unk_1E7B80DD0;
      v42 = _emptyPlaceholderView2;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __74__PUBrowsingBackgroundTileViewController__updateEmptyPlaceholderAnimated___block_invoke_3;
      v39[3] = &unk_1E7B7F020;
      v40 = v42;
      [v21 _animateUsingDefaultTimingWithOptions:0 animations:v41 completion:v39];
    }

    else
    {
      [_emptyPlaceholderView2 removeFromSuperview];
    }

    [(PUBrowsingBackgroundTileViewController *)self _setEmptyPlaceholderView:0];
    goto LABEL_16;
  }

  _emptyPlaceholderView3 = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];

  if (!_emptyPlaceholderView3)
  {
    [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    emptyPlaceholderCustomTitle = [(PUBrowsingBackgroundTileViewController *)self emptyPlaceholderCustomTitle];
    if (emptyPlaceholderCustomTitle)
    {
      [emptyConfiguration setText:emptyPlaceholderCustomTitle];
    }

    else
    {
      v31 = PXPhotoKitLocalizedTitleForEmptyCollectionListFetchResult();
      [emptyConfiguration setText:v31];
    }

    emptyPlaceholderCustomSubtitle = [(PUBrowsingBackgroundTileViewController *)self emptyPlaceholderCustomSubtitle];
    if (emptyPlaceholderCustomSubtitle)
    {
      [emptyConfiguration setSecondaryText:emptyPlaceholderCustomSubtitle];
    }

    else
    {
      v33 = PXPhotoKitLocalizedMessageForEmptyCollectionListFetchResult();
      string = [v33 string];
      [emptyConfiguration setSecondaryText:string];
    }

    v35 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:emptyConfiguration];
    [v35 setFrame:{v23, v25, v27, v29}];
    [v35 setAutoresizingMask:18];
    [v35 setNeedsUpdateConstraints];
    [(PUBrowsingBackgroundTileViewController *)self _setEmptyPlaceholderView:v35];
    view = [(PUTileViewController *)self view];
    [view addSubview:v35];

    if (animatedCopy)
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

  _emptyPlaceholderView4 = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];

  if (_emptyPlaceholderView4)
  {
    [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    _emptyPlaceholderView5 = [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderView];
    [_emptyPlaceholderView5 setFrame:{v11, v13, v15, v17}];
  }
}

- (CGRect)_emptyPlaceholderFrameForLayoutInfo:(id)info
{
  infoCopy = info;
  view = [(PUTileViewController *)self view];
  [view bounds];

  [infoCopy expandedRectInsets];
  PXEdgeInsetsAbsoluteValue();

  PXEdgeInsetsInsetRect();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_setEmptyPlaceholderFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_emptyPlaceholderFrame = &self->__emptyPlaceholderFrame;
  if (!CGRectEqualToRect(self->__emptyPlaceholderFrame, frame))
  {
    p_emptyPlaceholderFrame->origin.x = x;
    p_emptyPlaceholderFrame->origin.y = y;
    p_emptyPlaceholderFrame->size.width = width;
    p_emptyPlaceholderFrame->size.height = height;

    [(PUBrowsingBackgroundTileViewController *)self _updateEmptyPlaceholderAnimated:0];
  }
}

- (void)setShouldDisplayEmptyPlaceholder:(BOOL)placeholder
{
  if (self->_shouldDisplayEmptyPlaceholder != placeholder)
  {
    self->_shouldDisplayEmptyPlaceholder = placeholder;
    [(PUBrowsingBackgroundTileViewController *)self _updateEmptyPlaceholderAnimated:0];
  }
}

- (void)_updateColorIfNeeded
{
  if ([(PUBrowsingBackgroundTileViewController *)self _needsUpdateColor])
  {
    if ([(PUTileViewController *)self isViewLoaded])
    {
      viewModel = [(PUBrowsingBackgroundTileViewController *)self viewModel];

      if (viewModel)
      {
        [(PUBrowsingBackgroundTileViewController *)self _setNeedsUpdateColor:0];
        backgroundColorOverride = [(PUBrowsingBackgroundTileViewController *)self backgroundColorOverride];
        if (!backgroundColorOverride)
        {
          viewModel2 = [(PUBrowsingBackgroundTileViewController *)self viewModel];
          isChromeVisible = [viewModel2 isChromeVisible];

          v7 = +[PUInterfaceManager currentTheme];
          v8 = v7;
          if (isChromeVisible)
          {
            [v7 photoBrowserChromeVisibleBackgroundColor];
          }

          else
          {
            [v7 photoBrowserChromeHiddenBackgroundColor];
          }
          backgroundColorOverride = ;
        }

        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __62__PUBrowsingBackgroundTileViewController__updateColorIfNeeded__block_invoke;
        v16 = &unk_1E7B80C38;
        selfCopy = self;
        v18 = backgroundColorOverride;
        v9 = backgroundColorOverride;
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

- (void)_invalidateColorWithAnimatorBlock:(id)block
{
  blockCopy = block;
  [(PUBrowsingBackgroundTileViewController *)self _setNeedsUpdateColor:1];
  [(PUBrowsingBackgroundTileViewController *)self _setNextColorUpdateAnimatorBlock:blockCopy];

  [(PUBrowsingBackgroundTileViewController *)self _updateColorIfNeeded];
}

- (void)setBackgroundColorOverride:(id)override
{
  overrideCopy = override;
  v6 = overrideCopy;
  if (self->_backgroundColorOverride != overrideCopy)
  {
    v7 = overrideCopy;
    overrideCopy = [overrideCopy isEqual:?];
    v6 = v7;
    if ((overrideCopy & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColorOverride, override);
      overrideCopy = [(PUBrowsingBackgroundTileViewController *)self _invalidateColor];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](overrideCopy, v6);
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

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUBrowsingViewModel *)viewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_viewModel, model);
    [(PUBrowsingViewModel *)self->_viewModel registerChangeObserver:self];
    viewModel = [(PUBrowsingBackgroundTileViewController *)self _invalidateColor];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](viewModel, modelCopy);
}

- (void)applyLayoutInfo:(id)info
{
  v13.receiver = self;
  v13.super_class = PUBrowsingBackgroundTileViewController;
  infoCopy = info;
  [(PUTileViewController *)&v13 applyLayoutInfo:infoCopy];
  [(PUBrowsingBackgroundTileViewController *)self _emptyPlaceholderFrameForLayoutInfo:infoCopy, v13.receiver, v13.super_class];
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

- (PUBrowsingBackgroundTileViewController)initWithReuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = PUBrowsingBackgroundTileViewController;
  result = [(PUTileViewController *)&v5 initWithReuseIdentifier:identifier];
  if (result)
  {
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->__emptyPlaceholderFrame.origin = *MEMORY[0x1E695F050];
    result->__emptyPlaceholderFrame.size = v4;
  }

  return result;
}

@end