@interface PXStoryPlayButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)clippingRect;
- (PXStoryPlayButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)hitTestEdgeOutsets;
- (id)accessibilityLabel;
- (void)_invalidateButton;
- (void)_invalidateProgressIndicator;
- (void)_updateButton;
- (void)_updateProgressIndicator;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setUserData:(id)a3;
- (void)setViewModel:(id)a3;
@end

@implementation PXStoryPlayButton

- (UIEdgeInsets)hitTestEdgeOutsets
{
  top = self->_hitTestEdgeOutsets.top;
  left = self->_hitTestEdgeOutsets.left;
  bottom = self->_hitTestEdgeOutsets.bottom;
  right = self->_hitTestEdgeOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)accessibilityLabel
{
  v2 = [(PXStoryPlayButton *)self buttonConfiguration];
  v3 = [v2 axLabel];

  return v3;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v10 = a3;
  if (ViewModelObservationContext_153218 != a5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryPlayButton.m" lineNumber:293 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((*&v6 & 0x200002) != 0)
  {
    [(PXStoryPlayButton *)self _invalidateButton];
  }

  if ((v6 & 4) != 0)
  {
    [(PXStoryPlayButton *)self _invalidateProgressIndicator];
  }
}

- (void)setUserData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_userData != v4)
  {
    v10 = v4;
    v6 = [(PXStoryPlayButtonConfiguration *)v4 isEqual:?];
    v5 = v10;
    if (!v6)
    {
      v7 = [(PXStoryPlayButtonConfiguration *)v10 copy];
      userData = self->_userData;
      self->_userData = v7;

      v9 = [(PXStoryPlayButtonConfiguration *)self->_userData viewModel];
      [(PXStoryPlayButton *)self setViewModel:v9];

      [(PXStoryPlayButton *)self _invalidateButton];
      [(PXStoryPlayButton *)self _invalidateProgressIndicator];
      v5 = v10;
    }
  }
}

- (void)_updateProgressIndicator
{
  v8 = [(PXStoryPlayButton *)self viewModel];
  [v8 playbackFractionCompleted];
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  v4 = fmin(v3, 1.0);
  [v8 isAtPlaybackEnd];
  [(PXStoryPlayButton *)self userData];
  v5 = [objc_claimAutoreleasedReturnValue() spec];
  [v5 playButtonProgressIndicatorLineWidth];
  v7 = v6;

  [(PXStoryPlayButton *)self bounds];
  CGRectInset(v9, v7 * 0.5, v7 * 0.5);
  PXRectGetCenter();
}

- (void)_invalidateProgressIndicator
{
  v2 = [(PXStoryPlayButton *)self updater];
  [v2 setNeedsUpdateOf:sel__updateProgressIndicator];
}

- (void)_updateButton
{
  v13 = [(PXStoryPlayButton *)self viewModel];
  if ([v13 isAtPlaybackEnd])
  {
    axReplayLabel = self->_axReplayLabel;
    v4 = [(PXStoryPlayButton *)self buttonConfiguration];
    [v4 setAxLabel:axReplayLabel];

    v5 = +[PXStorySettings sharedInstance];
    [v5 playButtonRewindSymbolName];
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v6 = [v13 desiredPlayState];
    if (v6 == 1)
    {
      axPauseLabel = self->_axPauseLabel;
      v5 = [(PXStoryPlayButton *)self buttonConfiguration];
      [v5 setAxLabel:axPauseLabel];
    }

    else
    {
      if (v6)
      {
LABEL_8:
        v9 = [(PXStoryPlayButton *)self userData];
        [v9 spec];
        [objc_claimAutoreleasedReturnValue() playButtonProgressIndicatorLineWidth];
        v10 = [(PXStoryPlayButton *)self buttonConfiguration];
        v11 = [v10 copy];

        v12 = [v9 target];
        [v11 setTarget:v12];

        [v11 setAction:{objc_msgSend(v9, "action")}];
        PXEdgeInsetsMake();
      }

      axPlayLabel = self->_axPlayLabel;
      v5 = [(PXStoryPlayButton *)self buttonConfiguration];
      [v5 setAxLabel:axPlayLabel];
    }
  }

  goto LABEL_8;
}

- (void)_invalidateButton
{
  v2 = [(PXStoryPlayButton *)self updater];
  [v2 setNeedsUpdateOf:sel__updateButton];
}

- (void)layoutSubviews
{
  v3 = [(PXStoryPlayButton *)self updater];
  [v3 updateIfNeeded];

  v10.receiver = self;
  v10.super_class = PXStoryPlayButton;
  [(PXStoryPlayButton *)&v10 layoutSubviews];
  v4 = [(PXStoryPlayButton *)self button];
  v5 = [(PXStoryPlayButton *)self progressIndicator];
  [(PXStoryPlayButton *)self bounds];
  [v5 setFrame:?];
  v6 = [(PXStoryPlayButton *)self layer];
  [v6 zPosition];
  v8 = v7;

  v9 = [v4 layer];
  [v9 setZPosition:v8];

  [v5 setZPosition:v8 + 0.1];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel != v5)
  {
    v7 = v5;
    [(PXStoryViewModel *)viewModel unregisterChangeObserver:self context:ViewModelObservationContext_153218];
    objc_storeStrong(&self->_viewModel, a3);
    [(PXStoryViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_153218];
    [(PXStoryPlayButton *)self _invalidateButton];
    [(PXStoryPlayButton *)self _invalidateProgressIndicator];
    v5 = v7;
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = PXStoryPlayButton;
  v5 = [(PXStoryPlayButton *)&v11 pointInside:a4 withEvent:?];
  [(PXStoryPlayButton *)self bounds];
  if (v5)
  {
    return 1;
  }

  if (!CGRectIsEmpty(*&v6))
  {
    [(PXStoryPlayButton *)self hitTestEdgeOutsets];
    sub_1A524D1F4();
  }

  return 0;
}

- (PXStoryPlayButton)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = PXStoryPlayButton;
  v3 = [(PXStoryPlayButton *)&v13 initWithFrame:?];
  if (v3)
  {
    v4 = PXLocalizedStringFromTable(@"InteractiveMemoryButtonAccessibilityLabelPlay", @"PhotosUICore");
    axPlayLabel = v3->_axPlayLabel;
    v3->_axPlayLabel = v4;

    v6 = PXLocalizedStringFromTable(@"InteractiveMemoryButtonAccessibilityLabelPause", @"PhotosUICore");
    axPauseLabel = v3->_axPauseLabel;
    v3->_axPauseLabel = v6;

    v8 = PXLocalizedStringFromTable(@"InteractiveMemoryButtonAccessibilityLabelReplay", @"PhotosUICore");
    axReplayLabel = v3->_axReplayLabel;
    v3->_axReplayLabel = v8;

    v10 = [[off_1E7721940 alloc] initWithTarget:v3 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v3->_updater;
    v3->_updater = v10;

    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateButton];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateProgressIndicator];
    PXEdgeInsetsMake();
  }

  return 0;
}

@end