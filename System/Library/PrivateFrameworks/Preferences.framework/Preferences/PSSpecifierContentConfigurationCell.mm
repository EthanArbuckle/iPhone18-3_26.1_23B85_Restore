@interface PSSpecifierContentConfigurationCell
- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithCoder:(id)coder;
- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSSpecifierContentConfigurationCell

- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_18B0F51B0();
    v6 = (self + OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel);
    *v6 = 0u;
    v6[1] = 0u;
    v7 = sub_18B0F5180();
  }

  else
  {
    v7 = 0;
    v8 = (self + OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel);
    *v8 = 0u;
    v8[1] = 0u;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PSSpecifierContentConfigurationCell();
  v9 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:v7];

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_18B0129EC(specifier);
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PSSpecifierContentConfigurationCell();
  v2 = v5.receiver;
  [(PSTableCell *)&v5 prepareForReuse];
  sub_18B0EDD88();
  memset(v4, 0, sizeof(v4));
  v3 = OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel;
  swift_beginAccess();
  sub_18B0142BC(v4, v2 + v3);
  swift_endAccess();
}

- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_18B0F51B0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return PSSpecifierContentConfigurationCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel);
  *v4 = 0u;
  v4[1] = 0u;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PSSpecifierContentConfigurationCell();
  coderCopy = coder;
  v6 = [(PSSpecifierContentConfigurationCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end