@interface PILevelsLuminanceAutoCalculator
- (id)calculateSettingsForImageHistogram:(id)histogram;
@end

@implementation PILevelsLuminanceAutoCalculator

- (id)calculateSettingsForImageHistogram:(id)histogram
{
  luminance = [histogram luminance];
  v5 = [(PILevelsAutoCalculator *)self calculateSettingsForSingleChannelHistogram:luminance suffix:@"RGB"];

  return v5;
}

@end