@interface _PXFeedInlinePlaybackRecord
- (_PXFeedInlinePlaybackController)inlinePlaybackController;
- (_PXFeedInlinePlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference;
- (void)setDesiredPlayState:(int64_t)state;
@end

@implementation _PXFeedInlinePlaybackRecord

- (_PXFeedInlinePlaybackController)inlinePlaybackController
{
  WeakRetained = objc_loadWeakRetained(&self->_inlinePlaybackController);

  return WeakRetained;
}

- (void)setDesiredPlayState:(int64_t)state
{
  inlinePlaybackController = [(_PXFeedInlinePlaybackRecord *)self inlinePlaybackController];
  [inlinePlaybackController _playbackRecord:self setDesiredPlayState:state];
}

- (_PXFeedInlinePlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference
{
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = _PXFeedInlinePlaybackRecord;
  v9 = [(PXGridInlinePlaybackRecord *)&v12 initWithDisplayAsset:assetCopy mediaProvider:provider geometryReference:reference];
  v10 = v9;
  if (v9)
  {
    PXUpdateInlinePlaybackRecordForPhotoKit(v9, assetCopy);
  }

  return v10;
}

@end