@interface PXFeedAutoplayController
- (BOOL)isContainerLayoutVisible;
- (PXFeedAutoplayController)init;
- (PXFeedAutoplayController)initWithContainerLayout:(id)a3 viewModel:(id)a4 itemLayoutDesiredPlayStateSetter:(id)a5;
- (void)addItemLayout:(id)a3 withDisplayAsset:(id)a4;
- (void)containerLayoutVisibleRectDidChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)removeItemLayout:(id)a3;
- (void)setIsContainerLayoutVisible:(BOOL)a3;
@end

@implementation PXFeedAutoplayController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ViewModelObservationContext_222359 != a5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXFeedAutoplayController.m" lineNumber:83 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 4) != 0)
  {
    v14 = v9;
    v10 = [(PXFeedAutoplayController *)self inlinePlaybackController];
    v11 = [v10 shouldPlayOnHover];

    v9 = v14;
    if (v11)
    {
      v12 = [(PXFeedAutoplayController *)self inlinePlaybackController];
      [v12 invalidatePlayingRecords];

      v9 = v14;
    }
  }
}

- (void)removeItemLayout:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedAutoplayController *)self playbackRecordsByItemLayout];
  v9 = [v5 objectForKey:v4];

  v6 = [(PXFeedAutoplayController *)self playbackRecordsByItemLayout];
  [v6 removeObjectForKey:v4];

  v7 = [v9 displayAsset];
  if (v7)
  {
    v8 = [(PXFeedAutoplayController *)self inlinePlaybackController];
    [v8 checkInPlaybackRecordForDisplayAsset:v7];
  }
}

- (void)addItemLayout:(id)a3 withDisplayAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXFeedAutoplayController *)self inlinePlaybackController];
  [v7 displayScale];
  v11 = [v8 checkOutPlaybackRecordForDisplayAsset:v6 mediaProvider:0 geometryReference:v7 spriteSize:*MEMORY[0x1E695F060] displayScale:{*(MEMORY[0x1E695F060] + 8), v9}];

  v10 = [(PXFeedAutoplayController *)self playbackRecordsByItemLayout];
  [v10 setObject:v11 forKey:v7];
}

- (void)setIsContainerLayoutVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXFeedAutoplayController *)self inlinePlaybackController];
  [v4 setIsContentViewVisible:v3];
}

- (BOOL)isContainerLayoutVisible
{
  v2 = [(PXFeedAutoplayController *)self inlinePlaybackController];
  v3 = [v2 isContentViewVisible];

  return v3;
}

- (void)containerLayoutVisibleRectDidChange
{
  v2 = [(PXFeedAutoplayController *)self inlinePlaybackController];
  [v2 visibleRectDidChange];
}

- (PXFeedAutoplayController)initWithContainerLayout:(id)a3 viewModel:(id)a4 itemLayoutDesiredPlayStateSetter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PXFeedAutoplayController;
  v11 = [(PXFeedAutoplayController *)&v17 init];
  if (v11)
  {
    v12 = [[_PXFeedInlinePlaybackController alloc] initWithContainerLayout:v8 viewModel:v9 itemLayoutDesiredPlayStateSetter:v10];
    inlinePlaybackController = v11->_inlinePlaybackController;
    v11->_inlinePlaybackController = v12;

    v14 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    playbackRecordsByItemLayout = v11->_playbackRecordsByItemLayout;
    v11->_playbackRecordsByItemLayout = v14;

    [v9 registerChangeObserver:v11 context:ViewModelObservationContext_222359];
  }

  return v11;
}

- (PXFeedAutoplayController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedAutoplayController.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXFeedAutoplayController init]"}];

  abort();
}

@end