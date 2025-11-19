@interface TUIGenmojiTipView
- (TUIGenmojiTipView)initWith:(id)a3;
- (TUIGenmojiTipView)initWithCoder:(id)a3;
- (TUIGenmojiTipView)initWithFrame:(CGRect)a3;
- (void)setHostingController:(id)a3;
@end

@implementation TUIGenmojiTipView

- (void)setHostingController:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___TUIGenmojiTipView_hostingController);
  *(&self->super.super.super.isa + OBJC_IVAR___TUIGenmojiTipView_hostingController) = a3;
  v3 = a3;
}

- (TUIGenmojiTipView)initWith:(id)a3
{
  v3 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v3;
  sub_18FFFB5BC();
  return result;
}

- (TUIGenmojiTipView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___TUIGenmojiTipView_viewModel;
  type metadata accessor for TipView.ViewModel();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  _s11TextInputUI31DefaultKeyboardSettingsProviderC22__observationRegistrar33_DA9299E8CEE167062A5E24FB32D1EB0511Observation0rI0Vvpfi_0();
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_1900B1930();
  __break(1u);
  return result;
}

- (TUIGenmojiTipView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end