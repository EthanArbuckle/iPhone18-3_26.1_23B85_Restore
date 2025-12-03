@interface WFWeatherEventConfig
- (WFWeatherEventConfig)initWithDictionary:(id)dictionary defaulEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WFWeatherEventConfig

- (WFWeatherEventConfig)initWithDictionary:(id)dictionary defaulEnabled:(BOOL)enabled
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = WFWeatherEventConfig;
  v7 = [(WFWeatherEventConfig *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_enabled = enabled;
    v9 = [dictionaryCopy numberForKey:@"ios"];
    v10 = v9;
    if (v9)
    {
      enabled = [v9 BOOLValue];
    }

    v8->_enabled = enabled;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = self->_enabled;
  return result;
}

@end