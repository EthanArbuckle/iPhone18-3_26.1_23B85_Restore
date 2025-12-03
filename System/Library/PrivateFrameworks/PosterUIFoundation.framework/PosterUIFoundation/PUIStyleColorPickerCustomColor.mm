@interface PUIStyleColorPickerCustomColor
- (PUIStyleColorPickerCustomColor)colorWithVariation:(double)variation;
- (PUIStyleColorPickerCustomColor)initWithInitialVariation:(double)variation colorProvider:(id)provider localizedName:(id)name;
@end

@implementation PUIStyleColorPickerCustomColor

- (PUIStyleColorPickerCustomColor)initWithInitialVariation:(double)variation colorProvider:(id)provider localizedName:(id)name
{
  if (self)
  {
    self->_initialVariation = variation;
    nameCopy = name;
    v8 = [provider copy];
    colorProvider = self->_colorProvider;
    self->_colorProvider = v8;

    v10 = [nameCopy copy];
    localizedName = self->_localizedName;
    self->_localizedName = v10;
  }

  return self;
}

- (PUIStyleColorPickerCustomColor)colorWithVariation:(double)variation
{
  colorProvider = [(PUIStyleColorPickerCustomColor *)self colorProvider];
  v5 = colorProvider[2](variation);
  v6 = [[PUIStyleColor alloc] initWithColor:v5 preferredStyle:1];

  return v6;
}

@end