@interface TUIGenmojiButton
- (BOOL)showText;
- (TUIGenmojiButton)initWithAction:(id)a3;
- (TUIGenmojiButton)initWithCoder:(id)a3;
- (TUIGenmojiButton)initWithFrame:(CGRect)a3;
- (void)setShowText:(BOOL)a3;
@end

@implementation TUIGenmojiButton

- (BOOL)showText
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___TUIGenmojiButton_viewModel);
  swift_getKeyPath();
  sub_190005098(&qword_1EAD34D60, type metadata accessor for GenmojiButtonView.ViewModel);
  v4 = self;

  sub_1900B0BF0();

  LOBYTE(v4) = *(v3 + 16);

  return v4;
}

- (void)setShowText:(BOOL)a3
{
  v4 = self;
  sub_1900029E4(a3);
}

- (TUIGenmojiButton)initWithAction:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_190002BF4(sub_190005088, v4);
}

- (TUIGenmojiButton)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___TUIGenmojiButton_viewModel;
  type metadata accessor for GenmojiButtonView.ViewModel(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  _s11TextInputUI31DefaultKeyboardSettingsProviderC22__observationRegistrar33_DA9299E8CEE167062A5E24FB32D1EB0511Observation0rI0Vvpfi_0();
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_1900B1930();
  __break(1u);
  return result;
}

- (TUIGenmojiButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end