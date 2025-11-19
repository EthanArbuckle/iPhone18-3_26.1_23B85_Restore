@interface PXGridInlineSpatialPhotoAssetPlaybackRecord
- (BOOL)isPlaying;
- (CGAffineTransform)preferredTransform;
- (_TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5;
- (_TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7;
- (__CVBuffer)currentPixelBuffer;
- (int64_t)desiredPlayState;
- (void)dealloc;
- (void)prepareForInvisible;
- (void)setCurrentPixelBuffer:(__CVBuffer *)a3;
- (void)setDesiredPlayState:(int64_t)a3;
- (void)setPixelBufferDidChangeHandler:(id)a3;
- (void)setProvidePlaceholderHandler:(id)a3;
@end

@implementation PXGridInlineSpatialPhotoAssetPlaybackRecord

- (_TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5
{
  if (a5)
  {
    swift_unknownObjectRetain();
    v7 = a4;
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    swift_unknownObjectRetain();
    v8 = a4;
  }

  v9 = sub_1A46A182C(a3, a4, v11);
  swift_unknownObjectRelease();

  return v9;
}

- (_TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7
{
  height = a6.height;
  width = a6.width;
  if (a5)
  {
    swift_unknownObjectRetain();
    v12 = a4;
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    swift_unknownObjectRetain();
    v13 = a4;
  }

  v14 = sub_1A46A1AD8(a3, a4, v16, width, height, a7);
  swift_unknownObjectRelease();

  return v14;
}

- (int64_t)desiredPlayState
{
  v2 = *(self + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__desiredPlayState);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4;
}

- (void)setDesiredPlayState:(int64_t)a3
{
  v4 = self;
  sub_1A469C630(a3);
}

- (BOOL)isPlaying
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xA8);
  v3 = self;
  v4 = v2();

  if (v4)
  {
  }

  return v4 != 0;
}

- (void)prepareForInvisible
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xB0);
  v3 = self;
  v2(0);
}

- (__CVBuffer)currentPixelBuffer
{
  v2 = *(self + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4;
}

- (void)setCurrentPixelBuffer:(__CVBuffer *)a3
{
  v5 = a3;
  v4 = self;
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

- (void)setPixelBufferDidChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_1A3C784D4(v7, v8);
}

- (void)setProvidePlaceholderHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_1A3C784D4(v7, v8);
}

- (void)dealloc
{
  if (*(self + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask))
  {
    v3 = self;

    sub_1A524CD94();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
  [(PXGridInlineSpatialPhotoAssetPlaybackRecord *)&v5 dealloc];
}

@end