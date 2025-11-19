@interface PUIStyleColorPickerCustomColor
- (PUIStyleColorPickerCustomColor)colorWithVariation:(double)a3;
- (PUIStyleColorPickerCustomColor)initWithInitialVariation:(double)a3 colorProvider:(id)a4 localizedName:(id)a5;
@end

@implementation PUIStyleColorPickerCustomColor

- (PUIStyleColorPickerCustomColor)initWithInitialVariation:(double)a3 colorProvider:(id)a4 localizedName:(id)a5
{
  if (self)
  {
    self->_initialVariation = a3;
    v7 = a5;
    v8 = [a4 copy];
    colorProvider = self->_colorProvider;
    self->_colorProvider = v8;

    v10 = [v7 copy];
    localizedName = self->_localizedName;
    self->_localizedName = v10;
  }

  return self;
}

- (PUIStyleColorPickerCustomColor)colorWithVariation:(double)a3
{
  v4 = [(PUIStyleColorPickerCustomColor *)self colorProvider];
  v5 = v4[2](a3);
  v6 = [[PUIStyleColor alloc] initWithColor:v5 preferredStyle:1];

  return v6;
}

@end