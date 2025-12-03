@interface PXMapOptionsView
- (BOOL)enableUserTrackingButton;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXMapOptionsView)initWithFrame:(CGRect)frame;
- (PXMapOptionsViewDelegate)delegate;
- (unint64_t)mapStyle;
- (void)didTapMapModeSettingsButton;
- (void)didTapPerspectiveButtonWithSender:(id)sender;
- (void)setEnableUserTrackingButton:(BOOL)button;
- (void)setMapStyle:(unint64_t)style;
- (void)setPerspectiveButtonState:(unint64_t)state animated:(BOOL)animated;
@end

@implementation PXMapOptionsView

- (unint64_t)mapStyle
{
  v3 = OBJC_IVAR___PXMapOptionsView_mapStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMapStyle:(unint64_t)style
{
  v5 = OBJC_IVAR___PXMapOptionsView_mapStyle;
  swift_beginAccess();
  *(self + v5) = style;
  selfCopy = self;
  sub_1A47C4488();
}

- (BOOL)enableUserTrackingButton
{
  v3 = OBJC_IVAR___PXMapOptionsView_enableUserTrackingButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnableUserTrackingButton:(BOOL)button
{
  v5 = OBJC_IVAR___PXMapOptionsView_enableUserTrackingButton;
  swift_beginAccess();
  *(self + v5) = button;
  v6 = *((*MEMORY[0x1E69E7D40] & *self) + 0xC8);
  selfCopy = self;
  [*(selfCopy + OBJC_IVAR___PXMapOptionsView_userLocationButton) setHidden_];
}

- (PXMapOptionsViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(self + OBJC_IVAR___PXMapOptionsView_platterStackView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setPerspectiveButtonState:(unint64_t)state animated:(BOOL)animated
{
  if (*(self + OBJC_IVAR___PXMapOptionsView_perspectiveButtonState) != state)
  {
    selfCopy = self;
    sub_1A47C4BE0(state, animated);
  }
}

- (void)didTapMapModeSettingsButton
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xF8);
  selfCopy = self;
  v3 = v2();
  if (v3)
  {
    [v3 mapOptionsViewDidTapMapModeSettingsButton_];
    swift_unknownObjectRelease();
  }
}

- (void)didTapPerspectiveButtonWithSender:(id)sender
{
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0xF8);
  selfCopy = self;
  v4 = v3();
  if (v4)
  {
    [v4 mapOptionsViewDidTapPerspectiveButton_];
    swift_unknownObjectRelease();
  }
}

- (PXMapOptionsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end