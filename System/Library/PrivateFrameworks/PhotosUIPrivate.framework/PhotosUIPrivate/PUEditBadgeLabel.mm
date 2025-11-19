@interface PUEditBadgeLabel
- (NSString)text;
- (PUEditBadgeLabel)initWithText:(id)a3 style:(unint64_t)a4 interfaceTheme:(id)a5;
- (PUInterfaceTheme)interfaceTheme;
- (unint64_t)style;
- (void)setInterfaceTheme:(id)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setText:(id)a3;
- (void)setupViews;
@end

@implementation PUEditBadgeLabel

- (NSString)text
{
  v2 = self;
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

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = sub_1B3C9C5E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  PUEditBadgeLabel.text.setter(v4, v6);
}

- (unint64_t)style
{
  v2 = self;
  v3 = PUEditBadgeLabel.style.getter();

  return v3;
}

- (void)setStyle:(unint64_t)a3
{
  v4 = self;
  PUEditBadgeLabel.style.setter(a3);
}

- (PUInterfaceTheme)interfaceTheme
{
  v2 = self;
  v3 = PUEditBadgeLabel.interfaceTheme.getter();

  return v3;
}

- (void)setInterfaceTheme:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  PUEditBadgeLabel.interfaceTheme.setter(a3);
}

- (PUEditBadgeLabel)initWithText:(id)a3 style:(unint64_t)a4 interfaceTheme:(id)a5
{
  if (a3)
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
  return PUEditBadgeLabel.init(text:style:interfaceTheme:)(v7, v9, a4, a5);
}

- (void)setupViews
{
  v2 = self;
  sub_1B3799474();
}

@end