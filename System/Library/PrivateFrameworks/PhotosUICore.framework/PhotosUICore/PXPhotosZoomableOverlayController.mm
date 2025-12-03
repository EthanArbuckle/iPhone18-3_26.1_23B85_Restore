@interface PXPhotosZoomableOverlayController
- (BOOL)canHandleObjectReference:(id)reference;
- (NSArray)availableLenses;
- (PXPhotosLensControlItem)currentLens;
- (PXPhotosOverlayControllerDelegate)delegate;
- (PXPhotosViewModel)photosViewModel;
- (PXPhotosZoomableOverlayController)init;
- (id)overlayLayoutProvider;
- (void)setCurrentLens:(id)lens;
- (void)setOverlayLayoutProvider:(id)provider;
- (void)setPhotosViewModel:(id)model;
@end

@implementation PXPhotosZoomableOverlayController

- (id)overlayLayoutProvider
{
  v2 = (self + OBJC_IVAR___PXPhotosZoomableOverlayController_overlayLayoutProvider);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3F6EAB4;
    aBlock[3] = &block_descriptor_22_4;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOverlayLayoutProvider:(id)provider
{
  v4 = _Block_copy(provider);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A3F6FD58;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___PXPhotosZoomableOverlayController_overlayLayoutProvider);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A3C33378(v7);
}

- (NSArray)availableLenses
{
  sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9DE0;
  v3 = sub_1A47BCE58();
  swift_beginAccess();
  *(v2 + 32) = *v3;
  swift_unknownObjectRetain();
  v4 = sub_1A47BCEA8();
  swift_beginAccess();
  *(v2 + 40) = *v4;
  sub_1A4401870();
  swift_unknownObjectRetain();
  v5 = sub_1A524CA14();

  return v5;
}

- (PXPhotosViewModel)photosViewModel
{
  v3 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPhotosViewModel:(id)model
{
  v5 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = model;
  modelCopy = model;
  selfCopy = self;
  sub_1A494B760(v6);
}

- (PXPhotosLensControlItem)currentLens
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setCurrentLens:(id)lens
{
  v5 = OBJC_IVAR___PXPhotosZoomableOverlayController_currentLens;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = lens;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_1A494BCB0(v6);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (PXPhotosOverlayControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)canHandleObjectReference:(id)reference
{
  swift_unknownObjectRetain();
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v4);
  return 0;
}

- (PXPhotosZoomableOverlayController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end