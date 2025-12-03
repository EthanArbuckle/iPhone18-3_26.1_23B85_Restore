@interface PUIMutableStylePickerHomeScreenConfiguration
- (void)setAccentColor:(id)color;
- (void)setLuminance:(double)luminance;
- (void)setSaturation:(double)saturation;
- (void)setVariation:(double)variation;
@end

@implementation PUIMutableStylePickerHomeScreenConfiguration

- (void)setAccentColor:(id)color
{
  colorCopy = color;
  accentStyle = [(PUIStylePickerHomeScreenConfiguration *)self accentStyle];
  v5 = [accentStyle copyWithVariatedColor:colorCopy];

  [(PUIStylePickerHomeScreenConfiguration *)self setAccentStyle:v5];
}

- (void)setVariation:(double)variation
{
  accentStyle = [(PUIStylePickerHomeScreenConfiguration *)self accentStyle];
  v5 = [accentStyle copyWithVariation:variation];
  [(PUIStylePickerHomeScreenConfiguration *)self setAccentStyle:v5];
}

- (void)setLuminance:(double)luminance
{
  accentStyle = [(PUIStylePickerHomeScreenConfiguration *)self accentStyle];
  v5 = [accentStyle copyWithLuminance:luminance];
  [(PUIStylePickerHomeScreenConfiguration *)self setAccentStyle:v5];
}

- (void)setSaturation:(double)saturation
{
  accentStyle = [(PUIStylePickerHomeScreenConfiguration *)self accentStyle];
  accentStyle2 = [(PUIStylePickerHomeScreenConfiguration *)self accentStyle];
  [accentStyle2 luminance];
  v5 = [accentStyle copyWithLuminance:? saturation:?];
  [(PUIStylePickerHomeScreenConfiguration *)self setAccentStyle:v5];
}

@end