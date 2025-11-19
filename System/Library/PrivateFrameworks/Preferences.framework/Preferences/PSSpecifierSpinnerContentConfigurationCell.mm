@interface PSSpecifierSpinnerContentConfigurationCell
- (_TtC11Preferences42PSSpecifierSpinnerContentConfigurationCell)initWithCoder:(id)a3;
- (_TtC11Preferences42PSSpecifierSpinnerContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC11Preferences42PSSpecifierSpinnerContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSSpecifierSpinnerContentConfigurationCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B0E936C(a3);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PSSpecifierSpinnerContentConfigurationCell();
  v2 = v3.receiver;
  [(PSTableCell *)&v3 prepareForReuse];
  sub_18B0EDD88();
}

- (_TtC11Preferences42PSSpecifierSpinnerContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
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
  return PSSpecifierSpinnerContentConfigurationCell.init(style:reuseIdentifier:specifier:)(a3, v7, v9, a5);
}

- (_TtC11Preferences42PSSpecifierSpinnerContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_18B0F51B0();
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for PSSpecifierSpinnerContentConfigurationCell();
  v7 = [(PSSpinnerTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC11Preferences42PSSpecifierSpinnerContentConfigurationCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PSSpecifierSpinnerContentConfigurationCell();
  v4 = a3;
  v5 = [(PSSpecifierSpinnerContentConfigurationCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end