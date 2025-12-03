@interface WFWeatherEventsConfig
- (WFWeatherEventsConfig)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WFWeatherEventsConfig

- (WFWeatherEventsConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = WFWeatherEventsConfig;
  v5 = [(WFWeatherEventsConfig *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy dictionaryForKey:@"cic"];
    v7 = [dictionaryCopy dictionaryForKey:@"nhp"];
    v8 = [dictionaryCopy dictionaryForKey:@"severe"];
    v9 = [[WFWeatherEventConfig alloc] initWithDictionary:v6 defaulEnabled:1];
    changeInConditions = v5->_changeInConditions;
    v5->_changeInConditions = v9;

    v11 = [[WFWeatherEventConfig alloc] initWithDictionary:v7 defaulEnabled:1];
    nextHourPrecipitation = v5->_nextHourPrecipitation;
    v5->_nextHourPrecipitation = v11;

    v13 = [[WFWeatherEventConfig alloc] initWithDictionary:v8 defaulEnabled:1];
    severeWeather = v5->_severeWeather;
    v5->_severeWeather = v13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(WFWeatherEventConfig *)self->_changeInConditions copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(WFWeatherEventConfig *)self->_nextHourPrecipitation copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(WFWeatherEventConfig *)self->_severeWeather copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

@end