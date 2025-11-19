@interface PSSpecifierSliderConfigurationCell
- (PSSpecifierSliderConfigurationCell)initWithCoder:(id)a3;
- (PSSpecifierSliderConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PSSpecifierSliderConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (UIControl)control;
- (UISlider)slider;
- (id)controlValue;
- (void)_configureSlider;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setSlider:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation PSSpecifierSliderConfigurationCell

- (UISlider)slider
{
  v2 = self;
  v3 = sub_18B0E7870();

  return v3;
}

- (void)setSlider:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider);
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider) = a3;
  v3 = a3;
}

- (UIControl)control
{
  v2 = [(PSSpecifierSliderConfigurationCell *)self slider];

  return v2;
}

- (PSSpecifierSliderConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v5 = a3;
    sub_18B0F51B0();
    *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider) = 0;
    v6 = sub_18B0F5180();

    a3 = v5;
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider) = 0;
  }

  v9.receiver = self;
  v9.super_class = PSSpecifierSliderConfigurationCell;
  v7 = [(PSSliderTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  [(PSSpecifierSliderConfigurationCell *)v7 _configureSlider];
  return v7;
}

- (PSSpecifierSliderConfigurationCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider) = 0;
  result = sub_18B0F52E0();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  PSSpecifierSliderConfigurationCell.refreshCellContents(with:)(a3);
}

- (void)_configureSlider
{
  v2 = self;
  sub_18B0E8644();
}

- (void)prepareForReuse
{
  v2 = self;
  PSSpecifierSliderConfigurationCell.prepareForReuse()();
}

- (id)controlValue
{
  v2 = self;
  v3 = [(PSSpecifierSliderConfigurationCell *)v2 slider];
  [(UISlider *)v3 value];

  v4 = sub_18B0F5360();

  return v4;
}

- (void)setValue:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  PSSpecifierSliderConfigurationCell.setValue(_:)(v6);

  sub_18B012FDC(v6);
}

- (PSSpecifierSliderConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end