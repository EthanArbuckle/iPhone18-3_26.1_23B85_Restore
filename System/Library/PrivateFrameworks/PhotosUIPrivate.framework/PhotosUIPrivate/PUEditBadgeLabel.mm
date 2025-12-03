@interface PUEditBadgeLabel
- (NSString)text;
- (PUEditBadgeLabel)initWithText:(id)text style:(unint64_t)style interfaceTheme:(id)theme;
- (PUInterfaceTheme)interfaceTheme;
- (unint64_t)style;
- (void)setInterfaceTheme:(id)theme;
- (void)setStyle:(unint64_t)style;
- (void)setText:(id)text;
- (void)setupViews;
@end

@implementation PUEditBadgeLabel

- (NSString)text
{
  selfCopy = self;
  PUEditBadgeLabel.text.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1B3C9C5A8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)text
{
  if (text)
  {
    v4 = sub_1B3C9C5E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  PUEditBadgeLabel.text.setter(v4, v6);
}

- (unint64_t)style
{
  selfCopy = self;
  v3 = PUEditBadgeLabel.style.getter();

  return v3;
}

- (void)setStyle:(unint64_t)style
{
  selfCopy = self;
  PUEditBadgeLabel.style.setter(style);
}

- (PUInterfaceTheme)interfaceTheme
{
  selfCopy = self;
  v3 = PUEditBadgeLabel.interfaceTheme.getter();

  return v3;
}

- (void)setInterfaceTheme:(id)theme
{
  swift_unknownObjectRetain();
  selfCopy = self;
  PUEditBadgeLabel.interfaceTheme.setter(theme);
}

- (PUEditBadgeLabel)initWithText:(id)text style:(unint64_t)style interfaceTheme:(id)theme
{
  if (text)
  {
    v7 = sub_1B3C9C5E8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  swift_unknownObjectRetain();
  return PUEditBadgeLabel.init(text:style:interfaceTheme:)(v7, v9, style, theme);
}

- (void)setupViews
{
  selfCopy = self;
  sub_1B3799474();
}

@end