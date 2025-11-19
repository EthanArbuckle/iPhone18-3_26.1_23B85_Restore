@interface PILevelsRGBAutoCalculator
- (id)calculateSettingsForImageHistogram:(id)a3;
@end

@implementation PILevelsRGBAutoCalculator

- (id)calculateSettingsForImageHistogram:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 red];
  v8 = [(PILevelsAutoCalculator *)self calculateSettingsForSingleChannelHistogram:v7 suffix:@"Red"];
  [v6 addEntriesFromDictionary:v8];

  v9 = [v5 green];
  v10 = [(PILevelsAutoCalculator *)self calculateSettingsForSingleChannelHistogram:v9 suffix:@"Green"];
  [v6 addEntriesFromDictionary:v10];

  v11 = [v5 blue];

  v12 = [(PILevelsAutoCalculator *)self calculateSettingsForSingleChannelHistogram:v11 suffix:@"Blue"];
  [v6 addEntriesFromDictionary:v12];

  return v6;
}

@end