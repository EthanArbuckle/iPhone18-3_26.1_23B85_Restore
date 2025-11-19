@interface CPBitmapStore(WeatherAppDataProtection)
- (uint64_t)setVersion:()WeatherAppDataProtection withOptions:;
@end

@implementation CPBitmapStore(WeatherAppDataProtection)

- (uint64_t)setVersion:()WeatherAppDataProtection withOptions:
{
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [v6 stringValue];
  v8 = [v7 dataUsingEncoding:4];
  v9 = [a1 _versionPath];
  [v8 writeToFile:v9 options:a4 | 1 error:0];

  return [a1 version];
}

@end