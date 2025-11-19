@interface PILevelsLuminanceAutoCalculator
- (id)calculateSettingsForImageHistogram:(id)a3;
@end

@implementation PILevelsLuminanceAutoCalculator

- (id)calculateSettingsForImageHistogram:(id)a3
{
  v4 = [a3 luminance];
  v5 = [(PILevelsAutoCalculator *)self calculateSettingsForSingleChannelHistogram:v4 suffix:@"RGB"];

  return v5;
}

@end