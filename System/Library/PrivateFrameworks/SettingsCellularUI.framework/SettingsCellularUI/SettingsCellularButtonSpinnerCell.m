@interface SettingsCellularButtonSpinnerCell
- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithCoder:(id)a3;
- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SettingsCellularButtonSpinnerCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2658E458C(a3);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  v2 = v4.receiver;
  [(PSTableCell *)&v4 prepareForReuse];
  v3 = sub_2658E4514();
  [v3 stopAnimating];

  [v2 setAccessoryView_];
}

- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_26596A2AC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return SettingsCellularButtonSpinnerCell.init(style:reuseIdentifier:specifier:)(a3, v7, v9, a5);
}

- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_26596A2AC();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel) = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator) = 0;
    v6 = sub_26596A27C();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel) = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  v7 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  v4 = a3;
  v5 = [(SettingsCellularButtonSpinnerCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end