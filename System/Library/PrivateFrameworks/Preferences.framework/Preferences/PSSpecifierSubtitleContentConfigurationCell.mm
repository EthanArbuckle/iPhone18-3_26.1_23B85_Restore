@interface PSSpecifierSubtitleContentConfigurationCell
- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithCoder:(id)coder;
- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSSpecifierSubtitleContentConfigurationCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_18B0E9CCC(specifier);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PSSpecifierSubtitleContentConfigurationCell();
  v2 = v3.receiver;
  [(PSTableCell *)&v3 prepareForReuse];
  sub_18B0EDD88();
  *&v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel] = 0;
}

- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
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
  return PSSpecifierSubtitleContentConfigurationCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_18B0F51B0();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel) = 0;
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for PSSpecifierSubtitleContentConfigurationCell();
  v7 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PSSpecifierSubtitleContentConfigurationCell();
  coderCopy = coder;
  v5 = [(PSSpecifierSubtitleContentConfigurationCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end