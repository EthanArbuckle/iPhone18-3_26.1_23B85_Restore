@interface WFTypes
+ (id)WeatherDescriptions;
@end

@implementation WFTypes

+ (id)WeatherDescriptions
{
  if (WeatherDescriptions_onceToken != -1)
  {
    +[WFTypes WeatherDescriptions];
  }

  v3 = WeatherDescriptions_WeatherDescriptions;

  return v3;
}

void __30__WFTypes_WeatherDescriptions__block_invoke()
{
  v0 = WeatherDescriptions_WeatherDescriptions;
  WeatherDescriptions_WeatherDescriptions = &unk_288254B80;
}

@end