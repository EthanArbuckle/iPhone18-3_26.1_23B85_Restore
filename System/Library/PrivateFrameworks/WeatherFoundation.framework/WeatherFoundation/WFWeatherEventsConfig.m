@interface WFWeatherEventsConfig
- (WFWeatherEventsConfig)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WFWeatherEventsConfig

- (WFWeatherEventsConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFWeatherEventsConfig;
  v5 = [(WFWeatherEventsConfig *)&v16 init];
  if (v5)
  {
    v6 = [v4 dictionaryForKey:@"cic"];
    v7 = [v4 dictionaryForKey:@"nhp"];
    v8 = [v4 dictionaryForKey:@"severe"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(WFWeatherEventConfig *)self->_changeInConditions copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(WFWeatherEventConfig *)self->_nextHourPrecipitation copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(WFWeatherEventConfig *)self->_severeWeather copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

@end