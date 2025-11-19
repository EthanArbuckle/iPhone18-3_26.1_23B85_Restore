@interface _PXFeedInlinePlaybackController
- (BOOL)canPlayAsset:(id)a3;
- (CGRect)currentVisibleRect;
- (CGRect)frameForPlaybackRecord:(id)a3 minPlayableSize:(CGSize *)a4;
- (UIEdgeInsets)criticallyVisibleEdgeInsets;
- (_PXFeedInlinePlaybackController)initWithContainerLayout:(id)a3 viewModel:(id)a4 itemLayoutDesiredPlayStateSetter:(id)a5;
- (id)createPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7;
- (id)currentHoveredDisplayAsset;
- (void)_playbackRecord:(id)a3 setDesiredPlayState:(int64_t)a4;
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

- (void)_playbackRecord:(id)a3 setDesiredPlayState:(int64_t)a4
{
  v6 = a3;
  v7 = [(_PXFeedInlinePlaybackController *)self _itemLayoutForPlaybackRecord:v6];
  v8 = [(_PXFeedInlinePlaybackController *)self itemLayoutDesiredPlayStateSetter];
  if (v6)
  {
    [v6 bestVideoTimeRange];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  (v8)[2](v8, v7, a4 == 1, v9);
}

- (BOOL)canPlayAsset:(id)a3
{
  if (([a3 playbackStyle] - 3) > 2)
  {
    return 0;
  }

  v3 = +[PXStorySettings sharedInstance];
  v4 = [v3 wantsInlinePlayback];

  return v4;
}

- (CGRect)frameForPlaybackRecord:(id)a3 minPlayableSize:(CGSize *)a4
{
  v5 = [(_PXFeedInlinePlaybackController *)self _itemLayoutForPlaybackRecord:a3, a4];
  [(_PXFeedInlinePlaybackController *)self containerLayout];
  objc_claimAutoreleasedReturnValue();
  [v5 contentSize];
  PXRectWithOriginAndSize();
}

- (id)currentHoveredDisplayAsset
{
  v14 = 0u;
  v15 = 0u;
  v3 = [(_PXFeedInlinePlaybackController *)self viewModel];
  v4 = [v3 selectionSnapshot];
  v5 = v4;
  if (v4)
  {
    [v4 pendingIndexPath];
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
    v7 = [(_PXFeedInlinePlaybackController *)self viewModel];
    v8 = [v7 dataSource];
    v13[0] = v14;
    v13[1] = v15;
    v6 = [v8 objectReferenceAtIndexPath:v13];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
LABEL_11:
    v10 = v9;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 keyAssetReference];
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  v11 = [v10 asset];

  return v11;
}

- (CGRect)currentVisibleRect
{
  v2 = [(_PXFeedInlinePlaybackController *)self containerLayout];
  [v2 visibleRect];
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

- (id)createPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[_PXFeedInlinePlaybackRecord alloc] initWithDisplayAsset:v12 mediaProvider:v11 geometryReference:v10];

  [(_PXFeedInlinePlaybackRecord *)v13 setInlinePlaybackController:self];

  return v13;
}

- (_PXFeedInlinePlaybackController)initWithContainerLayout:(id)a3 viewModel:(id)a4 itemLayoutDesiredPlayStateSetter:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = _PXFeedInlinePlaybackController;
  v10 = [(PXGridInlinePlaybackController *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_containerLayout, a3);
    v12 = [v9 copy];
    itemLayoutDesiredPlayStateSetter = v11->_itemLayoutDesiredPlayStateSetter;
    v11->_itemLayoutDesiredPlayStateSetter = v12;

    v14 = +[PXStorySettings sharedInstance];
    [v14 inlinePlaybackCriticalInsets];

    PXEdgeInsetsMake();
  }

  return 0;
}

@end