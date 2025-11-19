@interface PXMapOptionsView
- (BOOL)enableUserTrackingButton;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXMapOptionsView)initWithFrame:(CGRect)a3;
- (PXMapOptionsViewDelegate)delegate;
- (unint64_t)mapStyle;
- (void)didTapMapModeSettingsButton;
- (void)didTapPerspectiveButtonWithSender:(id)a3;
- (void)setEnableUserTrackingButton:(BOOL)a3;
- (void)setMapStyle:(unint64_t)a3;
- (void)setPerspectiveButtonState:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation PXMapOptionsView

- (unint64_t)mapStyle
{
  v3 = OBJC_IVAR___PXMapOptionsView_mapStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMapStyle:(unint64_t)a3
{
  v5 = OBJC_IVAR___PXMapOptionsView_mapStyle;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1A47C4488();
}

- (BOOL)enableUserTrackingButton
{
  v3 = OBJC_IVAR___PXMapOptionsView_enableUserTrackingButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnableUserTrackingButton:(BOOL)a3
{
  v5 = OBJC_IVAR___PXMapOptionsView_enableUserTrackingButton;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = *((*MEMORY[0x1E69E7D40] & *self) + 0xC8);
  v7 = self;
  [*(v7 + OBJC_IVAR___PXMapOptionsView_userLocationButton) setHidden_];
}

- (PXMapOptionsViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(self + OBJC_IVAR___PXMapOptionsView_platterStackView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setPerspectiveButtonState:(unint64_t)a3 animated:(BOOL)a4
{
  if (*(self + OBJC_IVAR___PXMapOptionsView_perspectiveButtonState) != a3)
  {
    v7 = self;
    sub_1A47C4BE0(a3, a4);
  }
}

- (void)didTapMapModeSettingsButton
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xF8);
  v4 = self;
  v3 = v2();
  if (v3)
  {
    [v3 mapOptionsViewDidTapMapModeSettingsButton_];
    swift_unknownObjectRelease();
  }
}

- (void)didTapPerspectiveButtonWithSender:(id)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0xF8);
  v5 = self;
  v4 = v3();
  if (v4)
  {
    [v4 mapOptionsViewDidTapPerspectiveButton_];
    swift_unknownObjectRelease();
  }
}

- (PXMapOptionsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end