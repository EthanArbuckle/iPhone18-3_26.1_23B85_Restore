@interface _PXFeedInlinePlaybackRecord
- (_PXFeedInlinePlaybackController)inlinePlaybackController;
- (_PXFeedInlinePlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5;
- (void)setDesiredPlayState:(int64_t)a3;
@end

@implementation _PXFeedInlinePlaybackRecord

- (_PXFeedInlinePlaybackController)inlinePlaybackController
{
  WeakRetained = objc_loadWeakRetained(&self->_inlinePlaybackController);

  return WeakRetained;
}

- (void)setDesiredPlayState:(int64_t)a3
{
  v5 = [(_PXFeedInlinePlaybackRecord *)self inlinePlaybackController];
  [v5 _playbackRecord:self setDesiredPlayState:a3];
}

- (_PXFeedInlinePlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = _PXFeedInlinePlaybackRecord;
  v9 = [(PXGridInlinePlaybackRecord *)&v12 initWithDisplayAsset:v8 mediaProvider:a4 geometryReference:a5];
  v10 = v9;
  if (v9)
  {
    PXUpdateInlinePlaybackRecordForPhotoKit(v9, v8);
  }

  return v10;
}

@end