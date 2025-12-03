@interface SettingsCellularButtonSpinnerCell
- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithCoder:(id)coder;
- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SettingsCellularButtonSpinnerCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_2658E458C(specifier);
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

- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_26596A2AC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return SettingsCellularButtonSpinnerCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  coderCopy = coder;
  v5 = [(SettingsCellularButtonSpinnerCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end