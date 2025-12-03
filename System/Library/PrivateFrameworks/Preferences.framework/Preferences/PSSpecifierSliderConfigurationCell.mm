@interface PSSpecifierSliderConfigurationCell
- (PSSpecifierSliderConfigurationCell)initWithCoder:(id)coder;
- (PSSpecifierSliderConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PSSpecifierSliderConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (UIControl)control;
- (UISlider)slider;
- (id)controlValue;
- (void)_configureSlider;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setSlider:(id)slider;
- (void)setValue:(id)value;
@end

@implementation PSSpecifierSliderConfigurationCell

- (UISlider)slider
{
  selfCopy = self;
  v3 = sub_18B0E7870();

  return v3;
}

- (void)setSlider:(id)slider
{
  v4 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider);
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider) = slider;
  sliderCopy = slider;
}

- (UIControl)control
{
  slider = [(PSSpecifierSliderConfigurationCell *)self slider];

  return slider;
}

- (PSSpecifierSliderConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    styleCopy = style;
    sub_18B0F51B0();
    *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider) = 0;
    v6 = sub_18B0F5180();

    style = styleCopy;
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider) = 0;
  }

  v9.receiver = self;
  v9.super_class = PSSpecifierSliderConfigurationCell;
  v7 = [(PSSliderTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  [(PSSpecifierSliderConfigurationCell *)v7 _configureSlider];
  return v7;
}

- (PSSpecifierSliderConfigurationCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider) = 0;
  result = sub_18B0F52E0();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  PSSpecifierSliderConfigurationCell.refreshCellContents(with:)(specifier);
}

- (void)_configureSlider
{
  selfCopy = self;
  sub_18B0E8644();
}

- (void)prepareForReuse
{
  selfCopy = self;
  PSSpecifierSliderConfigurationCell.prepareForReuse()();
}

- (id)controlValue
{
  selfCopy = self;
  slider = [(PSSpecifierSliderConfigurationCell *)selfCopy slider];
  [(UISlider *)slider value];

  v4 = sub_18B0F5360();

  return v4;
}

- (void)setValue:(id)value
{
  if (value)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  PSSpecifierSliderConfigurationCell.setValue(_:)(v6);

  sub_18B012FDC(v6);
}

- (PSSpecifierSliderConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end