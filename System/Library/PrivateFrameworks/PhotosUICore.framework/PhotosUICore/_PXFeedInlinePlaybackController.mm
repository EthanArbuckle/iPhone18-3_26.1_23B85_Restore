@interface _PXFeedInlinePlaybackController
- (BOOL)canPlayAsset:(id)asset;
- (CGRect)currentVisibleRect;
- (CGRect)frameForPlaybackRecord:(id)record minPlayableSize:(CGSize *)size;
- (UIEdgeInsets)criticallyVisibleEdgeInsets;
- (_PXFeedInlinePlaybackController)initWithContainerLayout:(id)layout viewModel:(id)model itemLayoutDesiredPlayStateSetter:(id)setter;
- (id)createPlaybackRecordForDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale;
- (id)currentHoveredDisplayAsset;
- (void)_playbackRecord:(id)record setDesiredPlayState:(int64_t)state;
@end

@implementation _PXFeedInlinePlaybackController

- (UIEdgeInsets)criticallyVisibleEdgeInsets
{
  top = self->_criticallyVisibleEdgeInsets.top;
  left = self->_criticallyVisibleEdgeInsets.left;
  bottom = self->_criticallyVisibleEdgeInsets.bottom;
  right = self->_criticallyVisibleEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_playbackRecord:(id)record setDesiredPlayState:(int64_t)state
{
  recordCopy = record;
  v7 = [(_PXFeedInlinePlaybackController *)self _itemLayoutForPlaybackRecord:recordCopy];
  itemLayoutDesiredPlayStateSetter = [(_PXFeedInlinePlaybackController *)self itemLayoutDesiredPlayStateSetter];
  if (recordCopy)
  {
    [recordCopy bestVideoTimeRange];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  (itemLayoutDesiredPlayStateSetter)[2](itemLayoutDesiredPlayStateSetter, v7, state == 1, v9);
}

- (BOOL)canPlayAsset:(id)asset
{
  if (([asset playbackStyle] - 3) > 2)
  {
    return 0;
  }

  v3 = +[PXStorySettings sharedInstance];
  wantsInlinePlayback = [v3 wantsInlinePlayback];

  return wantsInlinePlayback;
}

- (CGRect)frameForPlaybackRecord:(id)record minPlayableSize:(CGSize *)size
{
  v5 = [(_PXFeedInlinePlaybackController *)self _itemLayoutForPlaybackRecord:record, size];
  [(_PXFeedInlinePlaybackController *)self containerLayout];
  objc_claimAutoreleasedReturnValue();
  [v5 contentSize];
  PXRectWithOriginAndSize();
}

- (id)currentHoveredDisplayAsset
{
  v14 = 0u;
  v15 = 0u;
  viewModel = [(_PXFeedInlinePlaybackController *)self viewModel];
  selectionSnapshot = [viewModel selectionSnapshot];
  v5 = selectionSnapshot;
  if (selectionSnapshot)
  {
    [selectionSnapshot pendingIndexPath];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  if (v14 == *off_1E7721F68)
  {
    v6 = 0;
  }

  else
  {
    viewModel2 = [(_PXFeedInlinePlaybackController *)self viewModel];
    dataSource = [viewModel2 dataSource];
    v13[0] = v14;
    v13[1] = v15;
    v6 = [dataSource objectReferenceAtIndexPath:v13];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyAssetReference = v6;
LABEL_11:
    v10 = keyAssetReference;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyAssetReference = [v6 keyAssetReference];
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  asset = [v10 asset];

  return asset;
}

- (CGRect)currentVisibleRect
{
  containerLayout = [(_PXFeedInlinePlaybackController *)self containerLayout];
  [containerLayout visibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)createPlaybackRecordForDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale
{
  referenceCopy = reference;
  providerCopy = provider;
  assetCopy = asset;
  v13 = [[_PXFeedInlinePlaybackRecord alloc] initWithDisplayAsset:assetCopy mediaProvider:providerCopy geometryReference:referenceCopy];

  [(_PXFeedInlinePlaybackRecord *)v13 setInlinePlaybackController:self];

  return v13;
}

- (_PXFeedInlinePlaybackController)initWithContainerLayout:(id)layout viewModel:(id)model itemLayoutDesiredPlayStateSetter:(id)setter
{
  layoutCopy = layout;
  setterCopy = setter;
  v16.receiver = self;
  v16.super_class = _PXFeedInlinePlaybackController;
  v10 = [(PXGridInlinePlaybackController *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_containerLayout, layout);
    v12 = [setterCopy copy];
    itemLayoutDesiredPlayStateSetter = v11->_itemLayoutDesiredPlayStateSetter;
    v11->_itemLayoutDesiredPlayStateSetter = v12;

    v14 = +[PXStorySettings sharedInstance];
    [v14 inlinePlaybackCriticalInsets];

    PXEdgeInsetsMake();
  }

  return 0;
}

@end