@interface PXPhotosContentInlinePlaybackController
- (BOOL)enableSpatialPhotoPlayback;
- (BOOL)isContentViewVisible;
- (BOOL)isSpatialPhotoPlaybackEnabled;
- (BOOL)shouldEnablePlayback;
- (CGRect)currentVisibleRect;
- (CGRect)frameForPlaybackRecord:(id)a3 minPlayableSize:(CGSize *)a4;
- (NSString)debugDescription;
- (PXPhotosContentInlinePlaybackController)init;
- (PXPhotosContentInlinePlaybackControllerDelegate)delegate;
- (PXScrollViewSpeedometer)scrollViewSpeedometer;
- (UIEdgeInsets)criticallyVisibleEdgeInsets;
- (id)createPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7;
- (id)filterSortedRecordsToPlay:(id)a3;
- (id)pixelBufferSourceForDisplayAsset:(id)a3 mediaProvider:(id)a4 spriteReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7;
- (int64_t)maxNumberOfPlayingItems;
- (int64_t)numberOfItemsToPlay;
- (void)recyclePixelBufferSourceForDisplayAssets:(id)a3 pixelBufferSource:(id)a4;
- (void)setEnableSpatialPhotoPlayback:(BOOL)a3;
- (void)setIsContentViewVisible:(BOOL)a3;
- (void)setNumberOfItemsToPlay:(int64_t)a3;
- (void)setScrollViewSpeedometer:(id)a3;
@end

@implementation PXPhotosContentInlinePlaybackController

- (int64_t)numberOfItemsToPlay
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfItemsToPlay:(int64_t)a3
{
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = *((*MEMORY[0x1E69E7D40] & *self) + 0x78);
  v8 = self;
  if (v6 < 1 == v7() > 0)
  {
    [(PXGridInlinePlaybackController *)v8 invalidatePlaybackEnabled];
  }
}

- (BOOL)enableSpatialPhotoPlayback
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnableSpatialPhotoPlayback:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
  if (v6 != v3)
  {
    [(PXGridInlinePlaybackController *)self removeAllRecords];
  }
}

- (BOOL)isSpatialPhotoPlaybackEnabled
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x90);
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (PXScrollViewSpeedometer)scrollViewSpeedometer
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScrollViewSpeedometer:(id)a3
{
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;
  sub_1A4911F1C(v6);
}

- (PXPhotosContentInlinePlaybackControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)pixelBufferSourceForDisplayAsset:(id)a3 mediaProvider:(id)a4 spriteReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7
{
  v7 = [(PXGridInlinePlaybackController *)self checkOutPlaybackRecordForDisplayAsset:a3 mediaProvider:a4 geometryReference:a5 spriteSize:a6.width displayScale:a6.height, a7];
  if (v7)
  {
    v8 = v7;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (!v7)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)recyclePixelBufferSourceForDisplayAssets:(id)a3 pixelBufferSource:(id)a4
{
  if (a4)
  {
    v4 = self;
    v5 = a3;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      a4 = v7;
    }

    else
    {
      a4 = 0;
    }

    a3 = v5;
    self = v4;
  }

  v8 = a4;
  [(PXGridInlinePlaybackController *)self checkInPlaybackRecordForDisplayAssets:a3 record:?];
}

- (BOOL)isContentViewVisible
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosContentInlinePlaybackController();
  return [(PXGridInlinePlaybackController *)&v3 isContentViewVisible];
}

- (void)setIsContentViewVisible:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for PhotosContentInlinePlaybackController();
  [(PXGridInlinePlaybackController *)&v4 setIsContentViewVisible:v3];
}

- (id)createPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7
{
  height = a6.height;
  width = a6.width;
  swift_unknownObjectRetain();
  v13 = a4;
  swift_unknownObjectRetain();
  v14 = self;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v15 = sub_1A4912768(a3, a4, v17, width, height, a7);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v17);

  return v15;
}

- (BOOL)shouldEnablePlayback
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0x78);
  v4 = self;
  if (v3() < 1 || (v5 = (*((*v2 & *v4) + 0xC0))()) != 0 && (v6 = [v5 shouldEnablePlaybackFor_], swift_unknownObjectRelease(), (v6 & 1) == 0))
  {

    return 0;
  }

  else
  {
    v7 = [objc_opt_self() px_accessibilityIsReduceMotionEnabled];

    return v7 ^ 1;
  }
}

- (NSString)debugDescription
{
  v2 = self;
  sub_1A4912B8C();

  v3 = sub_1A524C634();

  return v3;
}

- (CGRect)currentVisibleRect
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xC0);
  v3 = self;
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

- (CGRect)frameForPlaybackRecord:(id)a3 minPlayableSize:(CGSize *)a4
{
  v6 = a3;
  v7 = self;
  sub_1A4912EE4(v6, a4);
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

- (id)filterSortedRecordsToPlay:(id)a3
{
  sub_1A3C52C70(0, &qword_1EB145058);
  v4 = sub_1A524CA34();
  v5 = self;
  sub_1A4913180(v4);

  v6 = sub_1A524CA14();

  return v6;
}

- (int64_t)maxNumberOfPlayingItems
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x78);
  v3 = self;
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