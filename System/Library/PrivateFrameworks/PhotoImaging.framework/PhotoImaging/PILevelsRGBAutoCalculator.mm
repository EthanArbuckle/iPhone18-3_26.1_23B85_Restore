@interface PILevelsRGBAutoCalculator
- (id)calculateSettingsForImageHistogram:(id)histogram;
@end

@implementation PILevelsRGBAutoCalculator

- (id)calculateSettingsForImageHistogram:(id)histogram
{
  v4 = MEMORY[0x1E695DF90];
  histogramCopy = histogram;
  v6 = objc_alloc_init(v4);
  v7 = [histogramCopy red];
  v8 = [(PILevelsAutoCalculator *)self calculateSettingsForSingleChannelHistogram:v7 suffix:@"Red"];
  [v6 addEntriesFromDictionary:v8];

  green = [histogramCopy green];
  v10 = [(PILevelsAutoCalculator *)self calculateSettingsForSingleChannelHistogram:green suffix:@"Green"];
  [v6 addEntriesFromDictionary:v10];

  blue = [histogramCopy blue];

  v12 = [(PILevelsAutoCalculator *)self calculateSettingsForSingleChannelHistogram:blue suffix:@"Blue"];
  [v6 addEntriesFromDictionary:v12];

  return v6;
}

@end