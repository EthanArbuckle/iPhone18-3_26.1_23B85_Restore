@interface PSSpecifierContentConfigurationCell
- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithCoder:(id)a3;
- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSSpecifierContentConfigurationCell

- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v9 = [(PSTableCell *)&v11 initWithStyle:a3 reuseIdentifier:v7];

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B0129EC(a3);
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

- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
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
  return PSSpecifierContentConfigurationCell.init(style:reuseIdentifier:specifier:)(a3, v7, v9, a5);
}

- (_TtC11Preferences35PSSpecifierContentConfigurationCell)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel);
  *v4 = 0u;
  v4[1] = 0u;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PSSpecifierContentConfigurationCell();
  v5 = a3;
  v6 = [(PSSpecifierContentConfigurationCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end