@interface PXPhotosHighlightsOverlayController
- (BOOL)canHandleObjectReference:(id)reference;
- (NSArray)availableLenses;
- (PXPhotosHighlightsOverlayController)init;
- (PXPhotosHighlightsOverlayController)initWithPhotoLibrary:(id)library;
- (PXPhotosLensControlItem)currentLens;
- (PXPhotosOverlayControllerDelegate)delegate;
- (PXPhotosViewModel)photosViewModel;
- (id)overlayLayoutProvider;
- (void)handleTap:(id)tap;
- (void)setCurrentLens:(id)lens;
- (void)setPhotosViewModel:(id)model;
@end

@implementation PXPhotosHighlightsOverlayController

- (PXPhotosHighlightsOverlayController)initWithPhotoLibrary:(id)library
{
  *(self + OBJC_IVAR___PXPhotosHighlightsOverlayController____lazy_storage___rootLayout) = 0;
  *(self + OBJC_IVAR___PXPhotosHighlightsOverlayController_currentLens) = 0;
  *(self + OBJC_IVAR___PXPhotosHighlightsOverlayController_photosViewModel) = 0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___PXPhotosHighlightsOverlayController_isSwitchingLens) = 0;
  *(self + OBJC_IVAR___PXPhotosHighlightsOverlayController_photoLibrary) = library;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosHighlightsOverlayController();
  libraryCopy = library;
  return [(PXPhotosHighlightsOverlayController *)&v7 init];
}

- (id)overlayLayoutProvider
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v7[4] = sub_1A47BF2D8;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3F6EAB4;
  v7[3] = &block_descriptor_273;
  v4 = _Block_copy(v7);
  selfCopy = self;

  return v4;
}

- (NSArray)availableLenses
{
  sub_1A3CB8F68();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9DE0;
  if (qword_1EB1D3888 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v2 + 32) = qword_1EB1D3890;
  v3 = qword_1EB1D3898;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v2 + 40) = qword_1EB1D38A0;
  sub_1A4401870();
  swift_unknownObjectRetain();
  v4 = sub_1A524CA14();

  return v4;
}

- (PXPhotosLensControlItem)currentLens
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setCurrentLens:(id)lens
{
  v5 = OBJC_IVAR___PXPhotosHighlightsOverlayController_currentLens;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = lens;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_1A47BD724(v6);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (PXPhotosViewModel)photosViewModel
{
  v3 = OBJC_IVAR___PXPhotosHighlightsOverlayController_photosViewModel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPhotosViewModel:(id)model
{
  v5 = OBJC_IVAR___PXPhotosHighlightsOverlayController_photosViewModel;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = model;
  modelCopy = model;
}

- (PXPhotosOverlayControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_1A47BE660(tapCopy);
}

- (BOOL)canHandleObjectReference:(id)reference
{
  swift_unknownObjectRetain();
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C57128(&v7, &v6);
  sub_1A47BEC78();
  v3 = swift_dynamicCast();
  if (v3)
  {
    v4 = v3;

    LOBYTE(v3) = v4;
  }

  return v3;
}

- (PXPhotosHighlightsOverlayController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end