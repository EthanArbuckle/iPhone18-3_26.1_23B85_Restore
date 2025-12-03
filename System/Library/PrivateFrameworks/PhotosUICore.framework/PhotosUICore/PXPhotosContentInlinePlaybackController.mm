@interface PXPhotosContentInlinePlaybackController
- (BOOL)enableSpatialPhotoPlayback;
- (BOOL)isContentViewVisible;
- (BOOL)isSpatialPhotoPlaybackEnabled;
- (BOOL)shouldEnablePlayback;
- (CGRect)currentVisibleRect;
- (CGRect)frameForPlaybackRecord:(id)record minPlayableSize:(CGSize *)size;
- (NSString)debugDescription;
- (PXPhotosContentInlinePlaybackController)init;
- (PXPhotosContentInlinePlaybackControllerDelegate)delegate;
- (PXScrollViewSpeedometer)scrollViewSpeedometer;
- (UIEdgeInsets)criticallyVisibleEdgeInsets;
- (id)createPlaybackRecordForDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale;
- (id)filterSortedRecordsToPlay:(id)play;
- (id)pixelBufferSourceForDisplayAsset:(id)asset mediaProvider:(id)provider spriteReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale;
- (int64_t)maxNumberOfPlayingItems;
- (int64_t)numberOfItemsToPlay;
- (void)recyclePixelBufferSourceForDisplayAssets:(id)assets pixelBufferSource:(id)source;
- (void)setEnableSpatialPhotoPlayback:(BOOL)playback;
- (void)setIsContentViewVisible:(BOOL)visible;
- (void)setNumberOfItemsToPlay:(int64_t)play;
- (void)setScrollViewSpeedometer:(id)speedometer;
@end

@implementation PXPhotosContentInlinePlaybackController

- (int64_t)numberOfItemsToPlay
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfItemsToPlay:(int64_t)play
{
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = play;
  v7 = *((*MEMORY[0x1E69E7D40] & *self) + 0x78);
  selfCopy = self;
  if (v6 < 1 == v7() > 0)
  {
    [(PXGridInlinePlaybackController *)selfCopy invalidatePlaybackEnabled];
  }
}

- (BOOL)enableSpatialPhotoPlayback
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnableSpatialPhotoPlayback:(BOOL)playback
{
  playbackCopy = playback;
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = playbackCopy;
  if (v6 != playbackCopy)
  {
    [(PXGridInlinePlaybackController *)self removeAllRecords];
  }
}

- (BOOL)isSpatialPhotoPlaybackEnabled
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x90);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (PXScrollViewSpeedometer)scrollViewSpeedometer
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScrollViewSpeedometer:(id)speedometer
{
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = speedometer;
  speedometerCopy = speedometer;
  selfCopy = self;
  sub_1A4911F1C(v6);
}

- (PXPhotosContentInlinePlaybackControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)pixelBufferSourceForDisplayAsset:(id)asset mediaProvider:(id)provider spriteReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale
{
  scale = [(PXGridInlinePlaybackController *)self checkOutPlaybackRecordForDisplayAsset:asset mediaProvider:provider geometryReference:reference spriteSize:size.width displayScale:size.height, scale];
  if (scale)
  {
    v8 = scale;
    scale = swift_dynamicCastObjCProtocolConditional();
    if (!scale)
    {

      scale = 0;
    }
  }

  return scale;
}

- (void)recyclePixelBufferSourceForDisplayAssets:(id)assets pixelBufferSource:(id)source
{
  if (source)
  {
    selfCopy = self;
    assetsCopy = assets;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      source = v7;
    }

    else
    {
      source = 0;
    }

    assets = assetsCopy;
    self = selfCopy;
  }

  sourceCopy = source;
  [(PXGridInlinePlaybackController *)self checkInPlaybackRecordForDisplayAssets:assets record:?];
}

- (BOOL)isContentViewVisible
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosContentInlinePlaybackController();
  return [(PXGridInlinePlaybackController *)&v3 isContentViewVisible];
}

- (void)setIsContentViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  v4.receiver = self;
  v4.super_class = type metadata accessor for PhotosContentInlinePlaybackController();
  [(PXGridInlinePlaybackController *)&v4 setIsContentViewVisible:visibleCopy];
}

- (id)createPlaybackRecordForDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference spriteSize:(CGSize)size displayScale:(double)scale
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  providerCopy = provider;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v15 = sub_1A4912768(asset, provider, v17, width, height, scale);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v17);

  return v15;
}

- (BOOL)shouldEnablePlayback
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0x78);
  selfCopy = self;
  if (v3() < 1 || (v5 = (*((*v2 & *selfCopy) + 0xC0))()) != 0 && (v6 = [v5 shouldEnablePlaybackFor_], swift_unknownObjectRelease(), (v6 & 1) == 0))
  {

    return 0;
  }

  else
  {
    px_accessibilityIsReduceMotionEnabled = [objc_opt_self() px_accessibilityIsReduceMotionEnabled];

    return px_accessibilityIsReduceMotionEnabled ^ 1;
  }
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1A4912B8C();

  v3 = sub_1A524C634();

  return v3;
}

- (CGRect)currentVisibleRect
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xC0);
  selfCopy = self;
  v4 = v2();
  if (v4)
  {
    v5 = v4;
    [v4 visibleRectFor_];
    [v5 safeAreaInsetsFor_];
    PXEdgeInsetsInsetRect();
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (UIEdgeInsets)criticallyVisibleEdgeInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)frameForPlaybackRecord:(id)record minPlayableSize:(CGSize *)size
{
  recordCopy = record;
  selfCopy = self;
  sub_1A4912EE4(recordCopy, size);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)filterSortedRecordsToPlay:(id)play
{
  sub_1A3C52C70(0, &qword_1EB145058);
  v4 = sub_1A524CA34();
  selfCopy = self;
  sub_1A4913180(v4);

  v6 = sub_1A524CA14();

  return v6;
}

- (int64_t)maxNumberOfPlayingItems
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x78);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (PXPhotosContentInlinePlaybackController)init
{
  *(self + OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay) = 0;
  *(self + OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback) = 0;
  *(self + OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer) = 0;
  swift_unknownObjectWeakInit();
  v3 = (self + OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometerObservation);
  v4 = type metadata accessor for PhotosContentInlinePlaybackController();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(PXGridInlinePlaybackController *)&v6 init];
}

@end