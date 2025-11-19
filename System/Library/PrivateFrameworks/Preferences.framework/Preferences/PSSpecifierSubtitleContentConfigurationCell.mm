@interface PSSpecifierSubtitleContentConfigurationCell
- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithCoder:(id)a3;
- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSSpecifierSubtitleContentConfigurationCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B0E9CCC(a3);
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

- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_18B0F51B0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return PSSpecifierSubtitleContentConfigurationCell.init(style:reuseIdentifier:specifier:)(a3, v7, v9, a5);
}

- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PSSpecifierSubtitleContentConfigurationCell();
  v4 = a3;
  v5 = [(PSSpecifierSubtitleContentConfigurationCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end