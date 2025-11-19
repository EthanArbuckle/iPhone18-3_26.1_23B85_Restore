@interface WFAPIConfigurationFactory
+ (id)configurationForAPIVersion:(id)a3;
@end

@implementation WFAPIConfigurationFactory

+ (id)configurationForAPIVersion:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"_"];
  if ([v3 count] < 2)
  {
    v6 = [[WFWeatherChannelAPIConfiguration alloc] initWithVersion:0];
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    if ([v3 count] == 3)
    {
      v5 = [v3 objectAtIndexedSubscript:1];
    }

    else
    {
      v5 = &stru_28823D638;
    }

    if ([v3 count] == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [v3 objectAtIndexedSubscript:v7];
    if ([@"wds" isEqualToString:v4])
    {
      v9 = [[WFWeatherDataServiceAPIConfiguration alloc] initWithVersion:v8 environment:v5];
    }

    else
    {
      v9 = [[WFWeatherChannelAPIConfiguration alloc] initWithVersion:v8];
    }

    v6 = v9;
  }

  return v6;
}

@end