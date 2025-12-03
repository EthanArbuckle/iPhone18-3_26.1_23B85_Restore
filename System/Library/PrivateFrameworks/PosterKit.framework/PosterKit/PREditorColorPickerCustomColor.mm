@interface PREditorColorPickerCustomColor
- (PREditorColorPickerCustomColor)colorWithVariation:(double)variation;
- (PREditorColorPickerCustomColor)initWithInitialVariation:(double)variation colorProvider:(id)provider localizedName:(id)name;
@end

@implementation PREditorColorPickerCustomColor

- (PREditorColorPickerCustomColor)initWithInitialVariation:(double)variation colorProvider:(id)provider localizedName:(id)name
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

- (PREditorColorPickerCustomColor)colorWithVariation:(double)variation
{
  colorProvider = [(PREditorColorPickerCustomColor *)self colorProvider];
  v5 = colorProvider[2](variation);
  v6 = [[PRPosterColor alloc] initWithColor:v5 preferredStyle:1];

  return v6;
}

@end