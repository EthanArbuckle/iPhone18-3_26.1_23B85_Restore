@interface PXFeedAutoplayController
- (BOOL)isContainerLayoutVisible;
- (PXFeedAutoplayController)init;
- (PXFeedAutoplayController)initWithContainerLayout:(id)layout viewModel:(id)model itemLayoutDesiredPlayStateSetter:(id)setter;
- (void)addItemLayout:(id)layout withDisplayAsset:(id)asset;
- (void)containerLayoutVisibleRectDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)removeItemLayout:(id)layout;
- (void)setIsContainerLayoutVisible:(BOOL)visible;
@end

@implementation PXFeedAutoplayController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ViewModelObservationContext_222359 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedAutoplayController.m" lineNumber:83 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 4) != 0)
  {
    v14 = observableCopy;
    inlinePlaybackController = [(PXFeedAutoplayController *)self inlinePlaybackController];
    shouldPlayOnHover = [inlinePlaybackController shouldPlayOnHover];

    observableCopy = v14;
    if (shouldPlayOnHover)
    {
      inlinePlaybackController2 = [(PXFeedAutoplayController *)self inlinePlaybackController];
      [inlinePlaybackController2 invalidatePlayingRecords];

      observableCopy = v14;
    }
  }
}

- (void)removeItemLayout:(id)layout
{
  layoutCopy = layout;
  playbackRecordsByItemLayout = [(PXFeedAutoplayController *)self playbackRecordsByItemLayout];
  v9 = [playbackRecordsByItemLayout objectForKey:layoutCopy];

  playbackRecordsByItemLayout2 = [(PXFeedAutoplayController *)self playbackRecordsByItemLayout];
  [playbackRecordsByItemLayout2 removeObjectForKey:layoutCopy];

  displayAsset = [v9 displayAsset];
  if (displayAsset)
  {
    inlinePlaybackController = [(PXFeedAutoplayController *)self inlinePlaybackController];
    [inlinePlaybackController checkInPlaybackRecordForDisplayAsset:displayAsset];
  }
}

- (void)addItemLayout:(id)layout withDisplayAsset:(id)asset
{
  assetCopy = asset;
  layoutCopy = layout;
  inlinePlaybackController = [(PXFeedAutoplayController *)self inlinePlaybackController];
  [layoutCopy displayScale];
  v11 = [inlinePlaybackController checkOutPlaybackRecordForDisplayAsset:assetCopy mediaProvider:0 geometryReference:layoutCopy spriteSize:*MEMORY[0x1E695F060] displayScale:{*(MEMORY[0x1E695F060] + 8), v9}];

  playbackRecordsByItemLayout = [(PXFeedAutoplayController *)self playbackRecordsByItemLayout];
  [playbackRecordsByItemLayout setObject:v11 forKey:layoutCopy];
}

- (void)setIsContainerLayoutVisible:(BOOL)visible
{
  visibleCopy = visible;
  inlinePlaybackController = [(PXFeedAutoplayController *)self inlinePlaybackController];
  [inlinePlaybackController setIsContentViewVisible:visibleCopy];
}

- (BOOL)isContainerLayoutVisible
{
  inlinePlaybackController = [(PXFeedAutoplayController *)self inlinePlaybackController];
  isContentViewVisible = [inlinePlaybackController isContentViewVisible];

  return isContentViewVisible;
}

- (void)containerLayoutVisibleRectDidChange
{
  inlinePlaybackController = [(PXFeedAutoplayController *)self inlinePlaybackController];
  [inlinePlaybackController visibleRectDidChange];
}

- (PXFeedAutoplayController)initWithContainerLayout:(id)layout viewModel:(id)model itemLayoutDesiredPlayStateSetter:(id)setter
{
  layoutCopy = layout;
  modelCopy = model;
  setterCopy = setter;
  v17.receiver = self;
  v17.super_class = PXFeedAutoplayController;
  v11 = [(PXFeedAutoplayController *)&v17 init];
  if (v11)
  {
    v12 = [[_PXFeedInlinePlaybackController alloc] initWithContainerLayout:layoutCopy viewModel:modelCopy itemLayoutDesiredPlayStateSetter:setterCopy];
    inlinePlaybackController = v11->_inlinePlaybackController;
    v11->_inlinePlaybackController = v12;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    playbackRecordsByItemLayout = v11->_playbackRecordsByItemLayout;
    v11->_playbackRecordsByItemLayout = weakToStrongObjectsMapTable;

    [modelCopy registerChangeObserver:v11 context:ViewModelObservationContext_222359];
  }

  return v11;
}

- (PXFeedAutoplayController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedAutoplayController.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXFeedAutoplayController init]"}];

  abort();
}

@end