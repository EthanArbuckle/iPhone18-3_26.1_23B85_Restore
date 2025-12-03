@interface PSSpecifierDeleteButtonContentConfigurationCell
- (_TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell)initWithCoder:(id)coder;
- (_TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSSpecifierDeleteButtonContentConfigurationCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_18B0E6F00(specifier);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PSSpecifierDeleteButtonContentConfigurationCell();
  v2 = v3.receiver;
  [(PSTableCell *)&v3 prepareForReuse];
  sub_18B0EDD88();
  *&v2[OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel] = 0;
}

- (_TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
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
  return PSSpecifierDeleteButtonContentConfigurationCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (_TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_18B0F51B0();
    *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel) = 0;
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for PSSpecifierDeleteButtonContentConfigurationCell();
  v7 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PSSpecifierDeleteButtonContentConfigurationCell();
  coderCopy = coder;
  v5 = [(PSSpecifierDeleteButtonContentConfigurationCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end