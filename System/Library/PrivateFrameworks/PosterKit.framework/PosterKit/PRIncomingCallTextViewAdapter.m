@interface PRIncomingCallTextViewAdapter
- (BOOL)displayNameIsSuitableForVerticalLayout;
- (BOOL)multilineNameIsDisplayed;
- (BOOL)statusIsHidden;
- (BOOL)statusIsSuitableForVerticalLayout;
- (CGRect)frame;
- (CGRect)tightFrame;
- (CGSize)sizeThatFitsIn:(CGSize)a3;
- (NSNumber)maximumTextWidth;
- (NSString)displayNameText;
- (NSString)statusText;
- (PRIncomingCallTextViewAdapter)init;
- (PRIncomingCallTextViewAdapter)initWithContact:(id)a3 status:(id)a4 callIsActive:(BOOL)a5;
- (PRIncomingCallTextViewAdapter)initWithName:(id)a3 status:(id)a4 callIsActive:(BOOL)a5;
- (UIColor)textColor;
- (UIFont)emphasizedNameFont;
- (UIFont)secondaryNameFont;
- (UIFont)statusFont;
- (unint64_t)alignment;
- (unint64_t)layout;
- (unint64_t)preferredAlignment;
- (unint64_t)preferredLayout;
- (void)overrideTitleLayoutWith:(unint64_t)a3;
- (void)posterAppearanceDidChange:(id)a3;
- (void)removeTitleLayoutOverride;
- (void)setDisplayNameText:(id)a3;
- (void)setEmphasizedNameFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMarqueeRunning:(BOOL)a3;
- (void)setMaximumTextWidth:(id)a3;
- (void)setPreferredAlignment:(unint64_t)a3;
- (void)setPreferredLayout:(unint64_t)a3;
- (void)setSecondaryNameFont:(id)a3;
- (void)setStatusFont:(id)a3;
- (void)setStatusIsHidden:(BOOL)a3;
- (void)setStatusText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTextFontUsingDefaultFontSizes:(id)a3;
- (void)transitionCallToActiveStateAnimated:(BOOL)a3;
@end

@implementation PRIncomingCallTextViewAdapter

- (BOOL)statusIsHidden
{
  v2 = self;
  v3 = IncomingCallTextViewAdapter.statusIsHidden.getter();

  return v3 & 1;
}

- (void)setStatusIsHidden:(BOOL)a3
{
  v4 = self;

  v5 = sub_1A8BC142C(v8);
  v7 = v6;
  memmove(__dst, v6, 0x91uLL);
  if (sub_1A8AADFA8(__dst) != 1)
  {
    v7[32] = a3;
  }

  (v5)(v8, 0);
}

- (CGRect)frame
{
  v2 = *(&self->super.isa + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController);
  v3 = self;
  v4 = [v2 view];
  if (v4)
  {
    v9 = v4;
    [v4 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v5 = v11;
    v6 = v13;
    v7 = v15;
    v8 = v17;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  IncomingCallTextViewAdapter.frame.setter(x, y, width, height);
}

- (CGRect)tightFrame
{
  v2 = self;
  IncomingCallTextViewAdapter.tightFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unint64_t)preferredAlignment
{
  v2 = self;
  v3 = IncomingCallTextViewAdapter.preferredAlignment.getter();

  return v3;
}

- (void)setPreferredAlignment:(unint64_t)a3
{
  v4 = self;
  IncomingCallTextViewAdapter.preferredAlignment.setter(a3);
}

- (unint64_t)preferredLayout
{
  v2 = self;
  v3 = IncomingCallTextViewAdapter.preferredLayout.getter();

  return v3;
}

- (void)setPreferredLayout:(unint64_t)a3
{
  v4 = self;
  IncomingCallTextViewAdapter.preferredLayout.setter(a3);
}

- (UIColor)textColor
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  if (sub_1A8BAECD4(__src) == 1)
  {
    sub_1A8AAD988(__src);
    memcpy(v7, __dst, 0x12BuLL);
    v4 = v7;
  }

  else
  {
    v4 = __src;
  }

  v5 = *(sub_1A8AAD988(v4) + 16);
  sub_1A8BAECE0(__dst);

  return v5;
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = self;
  IncomingCallTextViewAdapter.textColor.setter(v4);
}

- (UIFont)emphasizedNameFont
{
  v2 = self;
  v3 = IncomingCallTextViewAdapter.emphasizedNameFont.getter();

  return v3;
}

- (void)setEmphasizedNameFont:(id)a3
{
  v4 = a3;
  v5 = self;
  IncomingCallTextViewAdapter.emphasizedNameFont.setter(v4);
}

- (UIFont)secondaryNameFont
{
  v2 = self;
  v3 = IncomingCallTextViewAdapter.secondaryNameFont.getter();

  return v3;
}

- (void)setSecondaryNameFont:(id)a3
{
  v5 = a3;
  v6 = self;
  IncomingCallTextViewAdapter.secondaryNameFont.setter(a3);
}

- (UIFont)statusFont
{
  v2 = self;
  v3 = IncomingCallTextViewAdapter.statusFont.getter();

  return v3;
}

- (void)setStatusFont:(id)a3
{
  v5 = a3;
  v6 = self;
  IncomingCallTextViewAdapter.statusFont.setter(a3);
}

- (NSString)displayNameText
{
  v2 = self;
  IncomingCallTextViewAdapter.displayNameText.getter();

  v3 = sub_1A8BDE104();

  return v3;
}

- (void)setDisplayNameText:(id)a3
{
  v4 = sub_1A8BDE134();
  v6 = v5;
  v7 = self;
  IncomingCallTextViewAdapter.displayNameText.setter(v4, v6);
}

- (NSString)statusText
{
  v2 = self;
  IncomingCallTextViewAdapter.statusText.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1A8BDE104();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStatusText:(id)a3
{
  if (a3)
  {
    v4 = sub_1A8BDE134();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;

  sub_1A8BC2A28(v4, v6);
}

- (unint64_t)alignment
{
  v2 = self;

  v3 = sub_1A8BC222C();

  return v3 & 1;
}

- (unint64_t)layout
{
  v3 = sub_1A8BDDF84();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = self;

  sub_1A8BC25F4(v5);

  v7 = sub_1A8BC0DC8(v5);

  return v7;
}

- (BOOL)displayNameIsSuitableForVerticalLayout
{
  v2 = self;
  v3 = IncomingCallTextViewAdapter.displayNameIsSuitableForVerticalLayout.getter();

  return v3 & 1;
}

- (BOOL)statusIsSuitableForVerticalLayout
{
  v2 = self;
  v3 = IncomingCallTextViewAdapter.statusIsSuitableForVerticalLayout.getter();

  return v3 & 1;
}

- (void)setMarqueeRunning:(BOOL)a3
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC84();
}

- (NSNumber)maximumTextWidth
{
  v2 = self;
  v3 = IncomingCallTextViewAdapter.maximumTextWidth.getter();

  return v3;
}

- (void)setMaximumTextWidth:(id)a3
{
  if (a3)
  {
    v4 = self;
    v5 = a3;
    [v5 doubleValue];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1A8BDDC84();
  }
}

- (BOOL)multilineNameIsDisplayed
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;

  sub_1A8BDDC74();

  memcpy(v5, __src, 0x12BuLL);
  memcpy(__src, v5, 0x12BuLL);
  LOBYTE(v3) = sub_1A8BAECD4(__src) == 1;
  sub_1A8AAD988(__src);
  sub_1A8BAECE0(v5);
  return v3;
}

- (PRIncomingCallTextViewAdapter)initWithName:(id)a3 status:(id)a4 callIsActive:(BOOL)a5
{
  v5 = a5;
  ObjectType = swift_getObjectType();
  v8 = sub_1A8BDE134();
  if (a4)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_1A8BDE134();
    v8 = v10;
    v14 = v13;
    v9 = v11;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = sub_1A8BC3778(v8, v9, v12, v14, v5);
  v16 = objc_allocWithZone(ObjectType);
  v17 = sub_1A8BBECF0(v15);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

- (PRIncomingCallTextViewAdapter)initWithContact:(id)a3 status:(id)a4 callIsActive:(BOOL)a5
{
  v5 = a5;
  ObjectType = swift_getObjectType();
  if (a4)
  {
    a4 = sub_1A8BDE134();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  v12 = sub_1A8BC4030(v11, a4, v10, v5);
  v13 = objc_allocWithZone(ObjectType);
  v14 = sub_1A8BBECF0(v12);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

- (PRIncomingCallTextViewAdapter)init
{
  *(&self->super.isa + OBJC_IVAR___PRIncomingCallTextViewAdapter_emojiHostingController) = 0;
  result = sub_1A8BDE344();
  __break(1u);
  return result;
}

- (void)setTextFontUsingDefaultFontSizes:(id)a3
{
  v4 = a3;
  v5 = self;
  IncomingCallTextViewAdapter.setTextFontUsingDefaultFontSizes(newFont:)(v4);
}

- (void)transitionCallToActiveStateAnimated:(BOOL)a3
{
  v4 = self;
  IncomingCallTextViewAdapter.transitionCallToActiveState(animated:)(a3);
}

- (void)overrideTitleLayoutWith:(unint64_t)a3
{
  v4 = self;
  IncomingCallTextViewAdapter.overrideTitleLayout(with:)(a3);
}

- (void)removeTitleLayoutOverride
{
  v2 = self;
  IncomingCallTextViewAdapter.removeTitleLayoutOverride()();
}

- (CGSize)sizeThatFitsIn:(CGSize)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController);
  v4 = self;
  v5 = v3;
  sub_1A8BDDE04();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)posterAppearanceDidChange:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [v4 font];
  IncomingCallTextViewAdapter.setTextFontUsingDefaultFontSizes(newFont:)(v5);

  v6 = [v4 labelColor];
  v7 = [v6 color];

  if (v7)
  {
    IncomingCallTextViewAdapter.textColor.setter(v7);
  }

  IncomingCallTextViewAdapter.preferredAlignment.setter([v4 preferredTitleAlignment]);
  IncomingCallTextViewAdapter.preferredLayout.setter([v4 preferredTitleLayout]);
}

@end