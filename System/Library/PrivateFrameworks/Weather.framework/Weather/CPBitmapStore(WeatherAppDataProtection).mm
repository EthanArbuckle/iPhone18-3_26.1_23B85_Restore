@interface CPBitmapStore(WeatherAppDataProtection)
- (uint64_t)setVersion:()WeatherAppDataProtection withOptions:;
@end

@implementation CPBitmapStore(WeatherAppDataProtection)

- (uint64_t)setVersion:()WeatherAppDataProtection withOptions:
{
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  stringValue = [v6 stringValue];
  v8 = [stringValue dataUsingEncoding:4];
  _versionPath = [self _versionPath];
  [v8 writeToFile:_versionPath options:a4 | 1 error:0];

  return [self version];
}

@end