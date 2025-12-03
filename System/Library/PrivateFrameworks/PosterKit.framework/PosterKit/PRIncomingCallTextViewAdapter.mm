@interface PRIncomingCallTextViewAdapter
- (BOOL)displayNameIsSuitableForVerticalLayout;
- (BOOL)multilineNameIsDisplayed;
- (BOOL)statusIsHidden;
- (BOOL)statusIsSuitableForVerticalLayout;
- (CGRect)frame;
- (CGRect)tightFrame;
- (CGSize)sizeThatFitsIn:(CGSize)in;
- (NSNumber)maximumTextWidth;
- (NSString)displayNameText;
- (NSString)statusText;
- (PRIncomingCallTextViewAdapter)init;
- (PRIncomingCallTextViewAdapter)initWithContact:(id)contact status:(id)status callIsActive:(BOOL)active;
- (PRIncomingCallTextViewAdapter)initWithName:(id)name status:(id)status callIsActive:(BOOL)active;
- (UIColor)textColor;
- (UIFont)emphasizedNameFont;
- (UIFont)secondaryNameFont;
- (UIFont)statusFont;
- (unint64_t)alignment;
- (unint64_t)layout;
- (unint64_t)preferredAlignment;
- (unint64_t)preferredLayout;
- (void)overrideTitleLayoutWith:(unint64_t)with;
- (void)posterAppearanceDidChange:(id)change;
- (void)removeTitleLayoutOverride;
- (void)setDisplayNameText:(id)text;
- (void)setEmphasizedNameFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setMarqueeRunning:(BOOL)running;
- (void)setMaximumTextWidth:(id)width;
- (void)setPreferredAlignment:(unint64_t)alignment;
- (void)setPreferredLayout:(unint64_t)layout;
- (void)setSecondaryNameFont:(id)font;
- (void)setStatusFont:(id)font;
- (void)setStatusIsHidden:(BOOL)hidden;
- (void)setStatusText:(id)text;
- (void)setTextColor:(id)color;
- (void)setTextFontUsingDefaultFontSizes:(id)sizes;
- (void)transitionCallToActiveStateAnimated:(BOOL)animated;
@end

@implementation PRIncomingCallTextViewAdapter

- (BOOL)statusIsHidden
{
  selfCopy = self;
  v3 = IncomingCallTextViewAdapter.statusIsHidden.getter();

  return v3 & 1;
}

- (void)setStatusIsHidden:(BOOL)hidden
{
  selfCopy = self;

  v5 = sub_1A8BC142C(v8);
  v7 = v6;
  memmove(__dst, v6, 0x91uLL);
  if (sub_1A8AADFA8(__dst) != 1)
  {
    v7[32] = hidden;
  }

  (v5)(v8, 0);
}

- (CGRect)frame
{
  v2 = *(&self->super.isa + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController);
  selfCopy = self;
  view = [v2 view];
  if (view)
  {
    v9 = view;
    [view frame];
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  IncomingCallTextViewAdapter.frame.setter(x, y, width, height);
}

- (CGRect)tightFrame
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = IncomingCallTextViewAdapter.preferredAlignment.getter();

  return v3;
}

- (void)setPreferredAlignment:(unint64_t)alignment
{
  selfCopy = self;
  IncomingCallTextViewAdapter.preferredAlignment.setter(alignment);
}

- (unint64_t)preferredLayout
{
  selfCopy = self;
  v3 = IncomingCallTextViewAdapter.preferredLayout.getter();

  return v3;
}

- (void)setPreferredLayout:(unint64_t)layout
{
  selfCopy = self;
  IncomingCallTextViewAdapter.preferredLayout.setter(layout);
}

- (UIColor)textColor
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

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

- (void)setTextColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  IncomingCallTextViewAdapter.textColor.setter(colorCopy);
}

- (UIFont)emphasizedNameFont
{
  selfCopy = self;
  v3 = IncomingCallTextViewAdapter.emphasizedNameFont.getter();

  return v3;
}

- (void)setEmphasizedNameFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  IncomingCallTextViewAdapter.emphasizedNameFont.setter(fontCopy);
}

- (UIFont)secondaryNameFont
{
  selfCopy = self;
  v3 = IncomingCallTextViewAdapter.secondaryNameFont.getter();

  return v3;
}

- (void)setSecondaryNameFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  IncomingCallTextViewAdapter.secondaryNameFont.setter(font);
}

- (UIFont)statusFont
{
  selfCopy = self;
  v3 = IncomingCallTextViewAdapter.statusFont.getter();

  return v3;
}

- (void)setStatusFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  IncomingCallTextViewAdapter.statusFont.setter(font);
}

- (NSString)displayNameText
{
  selfCopy = self;
  IncomingCallTextViewAdapter.displayNameText.getter();

  v3 = sub_1A8BDE104();

  return v3;
}

- (void)setDisplayNameText:(id)text
{
  v4 = sub_1A8BDE134();
  v6 = v5;
  selfCopy = self;
  IncomingCallTextViewAdapter.displayNameText.setter(v4, v6);
}

- (NSString)statusText
{
  selfCopy = self;
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

- (void)setStatusText:(id)text
{
  if (text)
  {
    v4 = sub_1A8BDE134();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;

  sub_1A8BC2A28(v4, v6);
}

- (unint64_t)alignment
{
  selfCopy = self;

  v3 = sub_1A8BC222C();

  return v3 & 1;
}

- (unint64_t)layout
{
  v3 = sub_1A8BDDF84();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;

  sub_1A8BC25F4(v5);

  v7 = sub_1A8BC0DC8(v5);

  return v7;
}

- (BOOL)displayNameIsSuitableForVerticalLayout
{
  selfCopy = self;
  v3 = IncomingCallTextViewAdapter.displayNameIsSuitableForVerticalLayout.getter();

  return v3 & 1;
}

- (BOOL)statusIsSuitableForVerticalLayout
{
  selfCopy = self;
  v3 = IncomingCallTextViewAdapter.statusIsSuitableForVerticalLayout.getter();

  return v3 & 1;
}

- (void)setMarqueeRunning:(BOOL)running
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC84();
}

- (NSNumber)maximumTextWidth
{
  selfCopy = self;
  v3 = IncomingCallTextViewAdapter.maximumTextWidth.getter();

  return v3;
}

- (void)setMaximumTextWidth:(id)width
{
  if (width)
  {
    selfCopy = self;
    widthCopy = width;
    [widthCopy doubleValue];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1A8BDDC84();
  }
}

- (BOOL)multilineNameIsDisplayed
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

  sub_1A8BDDC74();

  memcpy(v5, __src, 0x12BuLL);
  memcpy(__src, v5, 0x12BuLL);
  LOBYTE(selfCopy) = sub_1A8BAECD4(__src) == 1;
  sub_1A8AAD988(__src);
  sub_1A8BAECE0(v5);
  return selfCopy;
}

- (PRIncomingCallTextViewAdapter)initWithName:(id)name status:(id)status callIsActive:(BOOL)active
{
  activeCopy = active;
  ObjectType = swift_getObjectType();
  v8 = sub_1A8BDE134();
  if (status)
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

  v15 = sub_1A8BC3778(v8, v9, v12, v14, activeCopy);
  v16 = objc_allocWithZone(ObjectType);
  v17 = sub_1A8BBECF0(v15);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

- (PRIncomingCallTextViewAdapter)initWithContact:(id)contact status:(id)status callIsActive:(BOOL)active
{
  activeCopy = active;
  ObjectType = swift_getObjectType();
  if (status)
  {
    status = sub_1A8BDE134();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  contactCopy = contact;
  v12 = sub_1A8BC4030(contactCopy, status, v10, activeCopy);
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

- (void)setTextFontUsingDefaultFontSizes:(id)sizes
{
  sizesCopy = sizes;
  selfCopy = self;
  IncomingCallTextViewAdapter.setTextFontUsingDefaultFontSizes(newFont:)(sizesCopy);
}

- (void)transitionCallToActiveStateAnimated:(BOOL)animated
{
  selfCopy = self;
  IncomingCallTextViewAdapter.transitionCallToActiveState(animated:)(animated);
}

- (void)overrideTitleLayoutWith:(unint64_t)with
{
  selfCopy = self;
  IncomingCallTextViewAdapter.overrideTitleLayout(with:)(with);
}

- (void)removeTitleLayoutOverride
{
  selfCopy = self;
  IncomingCallTextViewAdapter.removeTitleLayoutOverride()();
}

- (CGSize)sizeThatFitsIn:(CGSize)in
{
  v3 = *(&self->super.isa + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController);
  selfCopy = self;
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

- (void)posterAppearanceDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  font = [changeCopy font];
  IncomingCallTextViewAdapter.setTextFontUsingDefaultFontSizes(newFont:)(font);

  labelColor = [changeCopy labelColor];
  color = [labelColor color];

  if (color)
  {
    IncomingCallTextViewAdapter.textColor.setter(color);
  }

  IncomingCallTextViewAdapter.preferredAlignment.setter([changeCopy preferredTitleAlignment]);
  IncomingCallTextViewAdapter.preferredLayout.setter([changeCopy preferredTitleLayout]);
}

@end