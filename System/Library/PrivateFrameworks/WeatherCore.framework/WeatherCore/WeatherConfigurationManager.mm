@interface WeatherConfigurationManager
- (_TtC11WeatherCore27WeatherConfigurationManager)initWithContentDirectoryURL:(id)a3;
@end

@implementation WeatherConfigurationManager

- (_TtC11WeatherCore27WeatherConfigurationManager)initWithContentDirectoryURL:(id)a3
{
  v3 = sub_1C96A4764();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A4734();
  return WeatherConfigurationManager.init(contentDirectoryURL:)(v5);
}

@end