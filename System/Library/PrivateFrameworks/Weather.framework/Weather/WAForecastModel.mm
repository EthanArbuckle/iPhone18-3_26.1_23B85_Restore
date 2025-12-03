@interface WAForecastModel
- (BOOL)isEqual:(id)equal;
- (BOOL)isPopulated;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation WAForecastModel

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WAForecastModel allocWithZone:?]];
  city = [(WAForecastModel *)self city];
  [(WAForecastModel *)v4 setCity:city];

  location = [(WAForecastModel *)self location];
  [(WAForecastModel *)v4 setLocation:location];

  currentConditions = [(WAForecastModel *)self currentConditions];
  [(WAForecastModel *)v4 setCurrentConditions:currentConditions];

  airQualityConditions = [(WAForecastModel *)self airQualityConditions];
  [(WAForecastModel *)v4 setAirQualityConditions:airQualityConditions];

  hourlyForecasts = [(WAForecastModel *)self hourlyForecasts];
  [(WAForecastModel *)v4 setHourlyForecasts:hourlyForecasts];

  dailyForecasts = [(WAForecastModel *)self dailyForecasts];
  [(WAForecastModel *)v4 setDailyForecasts:dailyForecasts];

  sunrise = [(WAForecastModel *)self sunrise];
  [(WAForecastModel *)v4 setSunrise:sunrise];

  sunset = [(WAForecastModel *)self sunset];
  [(WAForecastModel *)v4 setSunset:sunset];

  deepLink = [(WAForecastModel *)self deepLink];
  [(WAForecastModel *)v4 setDeepLink:deepLink];

  link = [(WAForecastModel *)self link];
  [(WAForecastModel *)v4 setLink:link];

  severeWeatherEvents = [(WAForecastModel *)self severeWeatherEvents];
  [(WAForecastModel *)v4 setSevereWeatherEvents:severeWeatherEvents];

  changeForecasts = [(WAForecastModel *)self changeForecasts];
  [(WAForecastModel *)v4 setChangeForecasts:changeForecasts];

  nextHourPrecipitation = [(WAForecastModel *)self nextHourPrecipitation];
  [(WAForecastModel *)v4 setNextHourPrecipitation:nextHourPrecipitation];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = equalCopy;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    location = [(WAForecastModel *)self location];
    geoLocation = [location geoLocation];

    location2 = [(WAForecastModel *)v7 location];
    geoLocation2 = [location2 geoLocation];

    [geoLocation2 distanceFromLocation:geoLocation];
    if (v12 <= 0.0)
    {
      sunrise = [(WAForecastModel *)self sunrise];
      sunrise2 = [(WAForecastModel *)v7 sunrise];
      if (WAObjectIsEqual(sunrise, sunrise2))
      {
        sunset = [(WAForecastModel *)self sunset];
        sunset2 = [(WAForecastModel *)v7 sunset];
        if (WAObjectIsEqual(sunset, sunset2))
        {
          v33 = sunset2;
          v34 = sunset;
          currentConditions = [(WAForecastModel *)self currentConditions];
          currentConditions2 = [(WAForecastModel *)v7 currentConditions];
          IsEqual = WAObjectIsEqual(currentConditions, currentConditions2);

          if (!IsEqual)
          {
            goto LABEL_17;
          }

          dailyForecasts = [(WAForecastModel *)self dailyForecasts];
          dailyForecasts2 = [(WAForecastModel *)v7 dailyForecasts];
          v23 = WAObjectIsEqual(dailyForecasts, dailyForecasts2);

          if (!v23)
          {
            goto LABEL_17;
          }

          hourlyForecasts = [(WAForecastModel *)self hourlyForecasts];
          hourlyForecasts2 = [(WAForecastModel *)v7 hourlyForecasts];
          v26 = WAObjectIsEqual(hourlyForecasts, hourlyForecasts2);

          if (!v26)
          {
            goto LABEL_17;
          }

          severeWeatherEvents = [(WAForecastModel *)self severeWeatherEvents];
          severeWeatherEvents2 = [(WAForecastModel *)v7 severeWeatherEvents];
          v29 = WAObjectIsEqual(severeWeatherEvents, severeWeatherEvents2);

          if (v29)
          {
            nextHourPrecipitation = [(WAForecastModel *)self nextHourPrecipitation];
            nextHourPrecipitation2 = [(WAForecastModel *)v7 nextHourPrecipitation];
            v13 = WAObjectIsEqual(nextHourPrecipitation, nextHourPrecipitation2);
          }

          else
          {
LABEL_17:
            v13 = 0;
          }

          sunset2 = v33;
          sunset = v34;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(WAForecastModel *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  location = [(WAForecastModel *)self location];
  sunset = [(WAForecastModel *)self sunset];
  sunrise = [(WAForecastModel *)self sunrise];
  currentConditions = [(WAForecastModel *)self currentConditions];
  dailyForecasts = [(WAForecastModel *)self dailyForecasts];
  hourlyForecasts = [(WAForecastModel *)self hourlyForecasts];
  airQualityConditions = [(WAForecastModel *)self airQualityConditions];
  link = [(WAForecastModel *)self link];
  deepLink = [(WAForecastModel *)self deepLink];
  v13 = [v3 stringWithFormat:@"<WAForecastModel location:'%@' sunset:'%@' sunrise:'%@' current conditions:'%@' dailyForecasts:'%@' hourlyForecasts:'%@' air quality: '%@' link:'%@' deepLink:'%@'>", location, sunset, sunrise, currentConditions, dailyForecasts, hourlyForecasts, airQualityConditions, link, deepLink];

  return v13;
}

- (BOOL)isPopulated
{
  city = [(WAForecastModel *)self city];
  if (city)
  {
    location = [(WAForecastModel *)self location];
    if (location)
    {
      currentConditions = [(WAForecastModel *)self currentConditions];
      if (currentConditions)
      {
        hourlyForecasts = [(WAForecastModel *)self hourlyForecasts];
        if (hourlyForecasts)
        {
          dailyForecasts = [(WAForecastModel *)self dailyForecasts];
          if (dailyForecasts)
          {
            sunrise = [(WAForecastModel *)self sunrise];
            if (sunrise)
            {
              sunset = [(WAForecastModel *)self sunset];
              v10 = sunset != 0;
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end