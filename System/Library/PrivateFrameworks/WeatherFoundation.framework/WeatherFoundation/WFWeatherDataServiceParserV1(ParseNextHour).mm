@interface WFWeatherDataServiceParserV1(ParseNextHour)
+ (id)dateFormatter;
@end

@implementation WFWeatherDataServiceParserV1(ParseNextHour)

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    +[WFWeatherDataServiceParserV1(ParseNextHour) dateFormatter];
  }

  v3 = dateFormatter_dateFormatter;

  return v3;
}

@end