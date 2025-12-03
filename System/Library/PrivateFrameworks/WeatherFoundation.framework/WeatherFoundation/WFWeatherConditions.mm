@interface WFWeatherConditions
+ (NSCalendar)calendar;
- (BOOL)wf_isDay;
- (BOOL)wf_isDayIfSunrise:(id)sunrise sunset:(id)sunset;
- (NSMutableDictionary)components;
- (WFWeatherConditions)init;
- (WFWeatherConditions)initWithCoder:(id)coder;
- (id)allComponents;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)valueForComponent:(id)component;
- (id)valueForComponentSync:(id)sync;
- (void)editLinksWithLocale:(id)locale trackingParameter:(id)parameter;
- (void)encodeWithCoder:(id)coder;
- (void)setComponents:(id)components;
- (void)setLocation:(id)location;
- (void)setValue:(id)value forComponent:(id)component;
- (void)setValueSync:(id)sync forComponent:(id)component;
@end

@implementation WFWeatherConditions

- (void)editLinksWithLocale:(id)locale trackingParameter:(id)parameter
{
  parameterCopy = parameter;
  localeCopy = locale;
  v7 = [(WFWeatherConditions *)self valueForComponent:@"WFWeatherIOSLinkComponent"];
  v8 = [(WFWeatherConditions *)self valueForComponent:@"WFWeatherMobileLinkComponent"];
  v9 = [(WFWeatherConditions *)self valueForComponent:@"WFWeatherWebLinkComponent"];
  if (v7 && ([v7 wf_URLHasParameter:parameterCopy] & 1) == 0)
  {
    v10 = [v7 wf_URLWithTracking:parameterCopy];

    [(WFWeatherConditions *)self setValue:v10 forComponent:@"WFWeatherIOSLinkComponent"];
    v7 = v10;
  }

  v11 = [localeCopy objectForKey:*MEMORY[0x277CBE690]];
  uppercaseString = [v11 uppercaseString];

  v13 = [localeCopy objectForKey:*MEMORY[0x277CBE6C8]];

  lowercaseString = [v13 lowercaseString];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", lowercaseString, uppercaseString];
  v16 = [parameterCopy stringByAppendingFormat:@"&locale=%@", v15];
  if (v8 && ([v8 wf_URLHasParameter:v16] & 1) == 0)
  {
    v17 = [v8 wf_URLWithTracking:v16];

    [(WFWeatherConditions *)self setValue:v17 forComponent:@"WFWeatherMobileLinkComponent"];
    v8 = v17;
  }

  if (v9 && ([v9 wf_URLHasParameter:v16] & 1) == 0)
  {
    v18 = [v9 wf_URLWithTracking:v16];

    [(WFWeatherConditions *)self setValue:v18 forComponent:@"WFWeatherWebLinkComponent"];
    v9 = v18;
  }
}

- (WFWeatherConditions)init
{
  v6.receiver = self;
  v6.super_class = WFWeatherConditions;
  v2 = [(WFWeatherConditions *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    components = v2->_components;
    v2->_components = v3;

    [(WFWeatherConditions *)v2 _commonInit];
  }

  return v2;
}

- (WFWeatherConditions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFWeatherConditions;
  v5 = [(WFWeatherConditions *)&v12 init];
  if (v5)
  {
    if (initWithCoder__onceToken_0 != -1)
    {
      [WFWeatherConditions initWithCoder:];
    }

    v6 = [coderCopy decodeObjectOfClasses:initWithCoder__classes_0 forKey:@"WFWeatherForecastComponentsDictionary"];
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6 copyItems:1];
    components = v5->_components;
    v5->_components = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFWeatherForecastComponentsLocationKey"];
    location = v5->_location;
    v5->_location = v9;

    v5->_nightForecast = [coderCopy decodeBoolForKey:@"WFWeatherForecastComponentsIsNightForecastKey"];
    [(WFWeatherConditions *)v5 _commonInit];
  }

  return v5;
}

uint64_t __37__WFWeatherConditions_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  initWithCoder__classes_0 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  components = [(WFWeatherConditions *)self components];
  [coderCopy encodeObject:components forKey:@"WFWeatherForecastComponentsDictionary"];

  location = [(WFWeatherConditions *)self location];
  [coderCopy encodeObject:location forKey:@"WFWeatherForecastComponentsLocationKey"];

  [coderCopy encodeBool:-[WFWeatherConditions isNightForecast](self forKey:{"isNightForecast"), @"WFWeatherForecastComponentsIsNightForecastKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  components = [(WFWeatherConditions *)self components];
  v7 = [v5 initWithDictionary:components copyItems:1];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  location = [(WFWeatherConditions *)self location];
  v10 = *(v4 + 8);
  *(v4 + 8) = location;

  *(v4 + 16) = [(WFWeatherConditions *)self isNightForecast];
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p, ", objc_opt_class(), self];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyy-MM-dd'T'hh:mm:ss"];
  components = [(WFWeatherConditions *)self components];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__WFWeatherConditions_description__block_invoke;
  v12[3] = &unk_279E6EED8;
  v13 = v4;
  v14 = v3;
  v6 = v3;
  v7 = v4;
  [components enumerateKeysAndObjectsUsingBlock:v12];

  v8 = MEMORY[0x277CCACA8];
  v9 = [v6 substringWithRange:{0, objc_msgSend(v6, "length") - 2}];
  v10 = [v8 stringWithFormat:@"%@>", v9];

  return v10;
}

void __34__WFWeatherConditions_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v5 date];
    v6 = [v7 stringFromDate:v8];
  }

  [*(a1 + 40) appendFormat:@"%@ = %@, ", v9, v6];
}

- (void)setLocation:(id)location
{
  self->_location = [location copy];

  MEMORY[0x2821F96F8]();
}

- (NSMutableDictionary)components
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_components copy];
  os_unfair_lock_unlock(&self->_componentsLock);

  return v3;
}

- (void)setComponents:(id)components
{
  componentsCopy = components;
  os_unfair_lock_lock_with_options();
  v5 = [componentsCopy copy];

  components = self->_components;
  self->_components = v5;

  os_unfair_lock_unlock(&self->_componentsLock);
}

- (id)valueForComponentSync:(id)sync
{
  syncCopy = sync;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_components valueForKey:syncCopy];

  os_unfair_lock_unlock(&self->_componentsLock);

  return v5;
}

- (void)setValueSync:(id)sync forComponent:(id)component
{
  componentCopy = component;
  syncCopy = sync;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_components setValue:syncCopy forKey:componentCopy];

  os_unfair_lock_unlock(&self->_componentsLock);
}

- (id)allComponents
{
  v2 = MEMORY[0x277CBEB58];
  components = [(WFWeatherConditions *)self components];
  allKeys = [components allKeys];
  v5 = allKeys;
  if (allKeys)
  {
    v6 = allKeys;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [v2 setWithArray:v6];

  allObjects = [v7 allObjects];

  return allObjects;
}

- (id)valueForComponent:(id)component
{
  componentCopy = component;
  if (valueForComponent__onceToken != -1)
  {
    [WFWeatherConditions valueForComponent:];
  }

  v5 = [componentCopy hash];
  v6 = [(WFWeatherConditions *)self valueForComponentSync:componentCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_5:
    v9 = v8;
    goto LABEL_14;
  }

  if (v5 == valueForComponent__forecastTimeComponentHash)
  {
    v10 = [(WFWeatherConditions *)self valueForComponentSync:@"WFWeatherForecastDateComponent"];
    if (v10)
    {
      v11 = v10;
      v12 = +[WFWeatherConditions calendar];
      v9 = [v12 components:+[WFWeatherConditions dateComponentCalendarUnits](WFWeatherConditions fromDate:{"dateComponentCalendarUnits"), v11}];
      v13 = @"WFWeatherForecastTimeComponent";
LABEL_12:
      [(WFWeatherConditions *)self setValueSync:v9 forComponent:v13];
LABEL_13:

      goto LABEL_14;
    }
  }

  if (v5 == valueForComponent__forecastExpirationTimeComponentHash)
  {
    v14 = [(WFWeatherConditions *)self valueForComponentSync:@"WFWeatherForecastExpirationDateComponent"];
    if (v14)
    {
      v11 = v14;
      v12 = +[WFWeatherConditions calendar];
      v9 = [v12 components:+[WFWeatherConditions dateComponentCalendarUnits](WFWeatherConditions fromDate:{"dateComponentCalendarUnits"), v11}];
      v13 = @"WFWeatherForecastExpirationTimeComponent";
      goto LABEL_12;
    }
  }

  if (v5 != valueForComponent__sunriseTimeComponentHash && v5 != valueForComponent__sunsetTimeComponentHash && v5 != valueForComponent__sunriseDateComponentHash && v5 != valueForComponent__sunsetDateComponentHash)
  {
LABEL_21:
    v8 = [(WFWeatherConditions *)self valueForComponentSync:componentCopy];
    goto LABEL_5;
  }

  v16 = [(WFWeatherConditions *)self valueForComponentSync:@"WFWeatherForecastDateComponent"];
  if (v16)
  {
    v11 = v16;
    v17 = [(WFWeatherConditions *)self valueForComponentSync:@"WFWeatherSunriseDateComponent"];
    v18 = [(WFWeatherConditions *)self valueForComponentSync:@"WFWeatherSunsetDateComponent"];
    v19 = v18;
    if (v17 && v18)
    {
      v20 = v18;
      v12 = v17;
    }

    else
    {
      [(WFWeatherConditions *)self location];
      v28 = v19;
      v26 = v29 = v17;
      [v26 sunrise:&v29 andSunset:&v28 forDate:v11];
      v12 = v29;

      v20 = v28;
      if (v12 && v20)
      {
        [(WFWeatherConditions *)self setValueSync:v12 forComponent:@"WFWeatherSunriseDateComponent"];
        [(WFWeatherConditions *)self setValueSync:v20 forComponent:@"WFWeatherSunsetDateComponent"];
      }
    }

    v21 = v12;
    if (v5 == valueForComponent__sunriseDateComponentHash || (v21 = v20, v5 == valueForComponent__sunsetDateComponentHash))
    {
      v9 = v21;

      goto LABEL_13;
    }

    location = [(WFWeatherConditions *)self location];
    timeZone = [location timeZone];
    v23 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5D0]];
    v24 = [v23 componentsInTimeZone:timeZone fromDate:v12];
    v25 = [v23 componentsInTimeZone:timeZone fromDate:v20];
    [(WFWeatherConditions *)self setValueSync:v24 forComponent:@"WFWeatherSunriseTimeComponent"];
    [(WFWeatherConditions *)self setValueSync:v25 forComponent:@"WFWeatherSunsetTimeComponent"];

    goto LABEL_21;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

uint64_t __41__WFWeatherConditions_valueForComponent___block_invoke()
{
  valueForComponent__forecastTimeComponentHash = [@"WFWeatherForecastTimeComponent" hash];
  valueForComponent__forecastExpirationTimeComponentHash = [@"WFWeatherForecastExpirationTimeComponent" hash];
  valueForComponent__sunriseTimeComponentHash = [@"WFWeatherSunriseTimeComponent" hash];
  valueForComponent__sunsetTimeComponentHash = [@"WFWeatherSunsetTimeComponent" hash];
  valueForComponent__sunriseDateComponentHash = [@"WFWeatherSunriseDateComponent" hash];
  result = [@"WFWeatherSunsetDateComponent" hash];
  valueForComponent__sunsetDateComponentHash = result;
  return result;
}

- (id)dictionaryRepresentation
{
  v2 = MEMORY[0x277CBEAC0];
  components = [(WFWeatherConditions *)self components];
  v4 = [v2 dictionaryWithDictionary:components];

  return v4;
}

- (void)setValue:(id)value forComponent:(id)component
{
  if (component)
  {
    [(WFWeatherConditions *)self setValueSync:value forComponent:?];
  }
}

- (BOOL)wf_isDay
{
  v3 = [(WFWeatherConditions *)self valueForComponent:@"WFWeatherSunsetDateComponent"];
  v4 = [(WFWeatherConditions *)self valueForComponent:@"WFWeatherSunriseDateComponent"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6 && [(WFWeatherConditions *)self wf_isDayIfSunrise:v4 sunset:v3];

  return v7;
}

- (BOOL)wf_isDayIfSunrise:(id)sunrise sunset:(id)sunset
{
  sunriseCopy = sunrise;
  sunsetCopy = sunset;
  v8 = [(WFWeatherConditions *)self valueForComponent:@"WFWeatherForecastDateComponent"];
  v9 = v8;
  v10 = 1;
  if (sunriseCopy && sunsetCopy && v8)
  {
    [v8 timeIntervalSince1970];
    v12 = v11;
    [sunsetCopy timeIntervalSince1970];
    v14 = v13;
    [sunriseCopy timeIntervalSince1970];
    v16 = v12 <= v14;
    if (v12 >= v15)
    {
      v16 = 1;
    }

    v17 = v12 > v15;
    if (v12 >= v14)
    {
      v17 = 0;
    }

    if (v14 > v15)
    {
      v10 = v17;
    }

    else
    {
      v10 = v16;
    }
  }

  return v10;
}

+ (NSCalendar)calendar
{
  if (calendar_onceToken != -1)
  {
    +[WFWeatherConditions calendar];
  }

  v3 = calendar_Calendar;

  return v3;
}

void __31__WFWeatherConditions_calendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
  v2 = calendar_Calendar;
  calendar_Calendar = v1;

  v3 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [calendar_Calendar setTimeZone:v3];
}

@end