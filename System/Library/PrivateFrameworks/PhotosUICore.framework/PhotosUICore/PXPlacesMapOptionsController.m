@interface PXPlacesMapOptionsController
- (BOOL)enableUserTrackingButton;
- (PXPlacesMapOptionsController)init;
- (PXPlacesMapOptionsControllerDelegate)delegate;
- (unint64_t)mapStyle;
- (unint64_t)perspectiveButtonState;
- (void)chooseMapViewDidTapAttributionWithURL:(id)a3;
- (void)chooseMapViewDidTapCardForMapStyle:(unint64_t)a3;
- (void)mapOptionsViewDidTapMapModeSettingsButton:(id)a3;
- (void)mapOptionsViewDidTapPerspectiveButton:(id)a3;
- (void)setEnableUserTrackingButton:(BOOL)a3;
@end

@implementation PXPlacesMapOptionsController

- (PXPlacesMapOptionsControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (unint64_t)mapStyle
{
  v2 = *(self + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController);
  v3 = self;
  v4 = sub_1A49B5C34([v2 mapStyle]);

  return v4;
}

- (unint64_t)perspectiveButtonState
{
  v2 = self;
  v3 = sub_1A49B4568();

  return v3;
}

- (BOOL)enableUserTrackingButton
{
  v3 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnableUserTrackingButton:(BOOL)a3
{
  v5 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = *((*MEMORY[0x1E69E7D40] & *self) + 0x90);
  v7 = self;
  v8 = v6();
  if (v8)
  {
    [v8 mapOptionsControllerDidInvalidateMapOptions_];
    swift_unknownObjectRelease();
  }
}

- (PXPlacesMapOptionsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mapOptionsViewDidTapMapModeSettingsButton:(id)a3
{
  v4 = a3;
  v5 = self;
  PlacesMapOptionsController.mapOptionsViewDidTapMapModeSettingsButton(_:)(v4);
}

- (void)mapOptionsViewDidTapPerspectiveButton:(id)a3
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(self + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController);
  v12 = self;
  if (![v8 toggle3DModeIfPossible])
  {
    v10 = sub_1A3CB8D34();
    (*(v5 + 16))(v7, v10, v4);
    sub_1A49B63A8();
  }

  v9 = v12;
}

- (void)chooseMapViewDidTapCardForMapStyle:(unint64_t)a3
{
  v4 = *(self + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController);
  v5 = self;
  [v4 setMapStyle_];
}

- (void)chooseMapViewDidTapAttributionWithURL:(id)a3
{
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5240DE4();
  _s12PhotosUICore26PlacesMapOptionsControllerC06chooseD28ViewDidTapAttributionWithURLyy10Foundation0M0VF_0(v6);
  (*(v4 + 8))(v6, v3);
}

@end