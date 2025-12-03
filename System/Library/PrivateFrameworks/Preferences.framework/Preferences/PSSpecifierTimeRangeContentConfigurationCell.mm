@interface PSSpecifierTimeRangeContentConfigurationCell
- (_TtC11Preferences44PSSpecifierTimeRangeContentConfigurationCell)initWithCoder:(id)coder;
- (_TtC11Preferences44PSSpecifierTimeRangeContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC11Preferences44PSSpecifierTimeRangeContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSSpecifierTimeRangeContentConfigurationCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_18B0EB5A0(specifier);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PSSpecifierTimeRangeContentConfigurationCell();
  v2 = v3.receiver;
  [(PSTableCell *)&v3 prepareForReuse];
  sub_18B0EDD88();
}

- (_TtC11Preferences44PSSpecifierTimeRangeContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
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
  return PSSpecifierTimeRangeContentConfigurationCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (_TtC11Preferences44PSSpecifierTimeRangeContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_18B0F51B0();
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for PSSpecifierTimeRangeContentConfigurationCell();
  v7 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC11Preferences44PSSpecifierTimeRangeContentConfigurationCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PSSpecifierTimeRangeContentConfigurationCell();
  coderCopy = coder;
  v5 = [(PSSpecifierTimeRangeContentConfigurationCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end