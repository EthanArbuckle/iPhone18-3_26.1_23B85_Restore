@interface PXGridInlineSpatialPhotoAssetPlaybackRecord
- (BOOL)isPlaying;
- (CGAffineTransform)preferredTransform;
- (_TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference;
- (_TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale;
- (__CVBuffer)currentPixelBuffer;
- (int64_t)desiredPlayState;
- (void)dealloc;
- (void)prepareForInvisible;
- (void)setCurrentPixelBuffer:(__CVBuffer *)buffer;
- (void)setDesiredPlayState:(int64_t)state;
- (void)setPixelBufferDidChangeHandler:(id)handler;
- (void)setProvidePlaceholderHandler:(id)handler;
@end

@implementation PXGridInlineSpatialPhotoAssetPlaybackRecord

- (_TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference
{
  if (reference)
  {
    swift_unknownObjectRetain();
    providerCopy = provider;
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    swift_unknownObjectRetain();
    providerCopy2 = provider;
  }

  v9 = sub_1A46A182C(asset, provider, v11);
  swift_unknownObjectRelease();

  return v9;
}

- (_TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale
{
  height = size.height;
  width = size.width;
  if (reference)
  {
    swift_unknownObjectRetain();
    providerCopy = provider;
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    swift_unknownObjectRetain();
    providerCopy2 = provider;
  }

  v14 = sub_1A46A1AD8(asset, provider, v16, width, height, scale);
  swift_unknownObjectRelease();

  return v14;
}

- (int64_t)desiredPlayState
{
  v2 = *(self + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__desiredPlayState);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4;
}

- (void)setDesiredPlayState:(int64_t)state
{
  selfCopy = self;
  sub_1A469C630(state);
}

- (BOOL)isPlaying
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xA8);
  selfCopy = self;
  v4 = v2();

  if (v4)
  {
  }

  return v4 != 0;
}

- (void)prepareForInvisible
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xB0);
  selfCopy = self;
  v2(0);
}

- (__CVBuffer)currentPixelBuffer
{
  v2 = *(self + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4;
}

- (void)setCurrentPixelBuffer:(__CVBuffer *)buffer
{
  bufferCopy = buffer;
  selfCopy = self;
  sub_1A46A1DE8();
}

- (CGAffineTransform)preferredTransform
{
  retstr->a = 1.0;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = 1.0;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
  return self;
}

- (void)setPixelBufferDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A3F3D540;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_pixelBufferDidChangeHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A3C784D4(v7, v8);
}

- (void)setProvidePlaceholderHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A3F3D4CC;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_providePlaceholderHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A3C784D4(v7, v8);
}

- (void)dealloc
{
  if (*(self + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask))
  {
    selfCopy = self;

    sub_1A524CD94();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
  [(PXGridInlineSpatialPhotoAssetPlaybackRecord *)&v5 dealloc];
}

@end