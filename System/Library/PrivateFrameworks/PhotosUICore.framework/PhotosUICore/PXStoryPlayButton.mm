@interface PXStoryPlayButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)clippingRect;
- (PXStoryPlayButton)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)hitTestEdgeOutsets;
- (id)accessibilityLabel;
- (void)_invalidateButton;
- (void)_invalidateProgressIndicator;
- (void)_updateButton;
- (void)_updateProgressIndicator;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setUserData:(id)data;
- (void)setViewModel:(id)model;
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
  buttonConfiguration = [(PXStoryPlayButton *)self buttonConfiguration];
  axLabel = [buttonConfiguration axLabel];

  return axLabel;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ViewModelObservationContext_153218 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPlayButton.m" lineNumber:293 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((*&changeCopy & 0x200002) != 0)
  {
    [(PXStoryPlayButton *)self _invalidateButton];
  }

  if ((changeCopy & 4) != 0)
  {
    [(PXStoryPlayButton *)self _invalidateProgressIndicator];
  }
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self->_userData != dataCopy)
  {
    v10 = dataCopy;
    v6 = [(PXStoryPlayButtonConfiguration *)dataCopy isEqual:?];
    v5 = v10;
    if (!v6)
    {
      v7 = [(PXStoryPlayButtonConfiguration *)v10 copy];
      userData = self->_userData;
      self->_userData = v7;

      viewModel = [(PXStoryPlayButtonConfiguration *)self->_userData viewModel];
      [(PXStoryPlayButton *)self setViewModel:viewModel];

      [(PXStoryPlayButton *)self _invalidateButton];
      [(PXStoryPlayButton *)self _invalidateProgressIndicator];
      v5 = v10;
    }
  }
}

- (void)_updateProgressIndicator
{
  viewModel = [(PXStoryPlayButton *)self viewModel];
  [viewModel playbackFractionCompleted];
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  v4 = fmin(v3, 1.0);
  [viewModel isAtPlaybackEnd];
  [(PXStoryPlayButton *)self userData];
  spec = [objc_claimAutoreleasedReturnValue() spec];
  [spec playButtonProgressIndicatorLineWidth];
  v7 = v6;

  [(PXStoryPlayButton *)self bounds];
  CGRectInset(v9, v7 * 0.5, v7 * 0.5);
  PXRectGetCenter();
}

- (void)_invalidateProgressIndicator
{
  updater = [(PXStoryPlayButton *)self updater];
  [updater setNeedsUpdateOf:sel__updateProgressIndicator];
}

- (void)_updateButton
{
  viewModel = [(PXStoryPlayButton *)self viewModel];
  if ([viewModel isAtPlaybackEnd])
  {
    axReplayLabel = self->_axReplayLabel;
    buttonConfiguration = [(PXStoryPlayButton *)self buttonConfiguration];
    [buttonConfiguration setAxLabel:axReplayLabel];

    buttonConfiguration2 = +[PXStorySettings sharedInstance];
    [buttonConfiguration2 playButtonRewindSymbolName];
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    desiredPlayState = [viewModel desiredPlayState];
    if (desiredPlayState == 1)
    {
      axPauseLabel = self->_axPauseLabel;
      buttonConfiguration2 = [(PXStoryPlayButton *)self buttonConfiguration];
      [buttonConfiguration2 setAxLabel:axPauseLabel];
    }

    else
    {
      if (desiredPlayState)
      {
LABEL_8:
        userData = [(PXStoryPlayButton *)self userData];
        [userData spec];
        [objc_claimAutoreleasedReturnValue() playButtonProgressIndicatorLineWidth];
        buttonConfiguration3 = [(PXStoryPlayButton *)self buttonConfiguration];
        v11 = [buttonConfiguration3 copy];

        target = [userData target];
        [v11 setTarget:target];

        [v11 setAction:{objc_msgSend(userData, "action")}];
        PXEdgeInsetsMake();
      }

      axPlayLabel = self->_axPlayLabel;
      buttonConfiguration2 = [(PXStoryPlayButton *)self buttonConfiguration];
      [buttonConfiguration2 setAxLabel:axPlayLabel];
    }
  }

  goto LABEL_8;
}

- (void)_invalidateButton
{
  updater = [(PXStoryPlayButton *)self updater];
  [updater setNeedsUpdateOf:sel__updateButton];
}

- (void)layoutSubviews
{
  updater = [(PXStoryPlayButton *)self updater];
  [updater updateIfNeeded];

  v10.receiver = self;
  v10.super_class = PXStoryPlayButton;
  [(PXStoryPlayButton *)&v10 layoutSubviews];
  button = [(PXStoryPlayButton *)self button];
  progressIndicator = [(PXStoryPlayButton *)self progressIndicator];
  [(PXStoryPlayButton *)self bounds];
  [progressIndicator setFrame:?];
  layer = [(PXStoryPlayButton *)self layer];
  [layer zPosition];
  v8 = v7;

  layer2 = [button layer];
  [layer2 setZPosition:v8];

  [progressIndicator setZPosition:v8 + 0.1];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryViewModel *)viewModel unregisterChangeObserver:self context:ViewModelObservationContext_153218];
    objc_storeStrong(&self->_viewModel, model);
    [(PXStoryViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_153218];
    [(PXStoryPlayButton *)self _invalidateButton];
    [(PXStoryPlayButton *)self _invalidateProgressIndicator];
    modelCopy = v7;
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = PXStoryPlayButton;
  v5 = [(PXStoryPlayButton *)&v11 pointInside:event withEvent:?];
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

- (PXStoryPlayButton)initWithFrame:(CGRect)frame
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