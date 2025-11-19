@interface WAForecastModel
- (BOOL)isEqual:(id)a3;
- (BOOL)isPopulated;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation WAForecastModel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WAForecastModel allocWithZone:?]];
  v5 = [(WAForecastModel *)self city];
  [(WAForecastModel *)v4 setCity:v5];

  v6 = [(WAForecastModel *)self location];
  [(WAForecastModel *)v4 setLocation:v6];

  v7 = [(WAForecastModel *)self currentConditions];
  [(WAForecastModel *)v4 setCurrentConditions:v7];

  v8 = [(WAForecastModel *)self airQualityConditions];
  [(WAForecastModel *)v4 setAirQualityConditions:v8];

  v9 = [(WAForecastModel *)self hourlyForecasts];
  [(WAForecastModel *)v4 setHourlyForecasts:v9];

  v10 = [(WAForecastModel *)self dailyForecasts];
  [(WAForecastModel *)v4 setDailyForecasts:v10];

  v11 = [(WAForecastModel *)self sunrise];
  [(WAForecastModel *)v4 setSunrise:v11];

  v12 = [(WAForecastModel *)self sunset];
  [(WAForecastModel *)v4 setSunset:v12];

  v13 = [(WAForecastModel *)self deepLink];
  [(WAForecastModel *)v4 setDeepLink:v13];

  v14 = [(WAForecastModel *)self link];
  [(WAForecastModel *)v4 setLink:v14];

  v15 = [(WAForecastModel *)self severeWeatherEvents];
  [(WAForecastModel *)v4 setSevereWeatherEvents:v15];

  v16 = [(WAForecastModel *)self changeForecasts];
  [(WAForecastModel *)v4 setChangeForecasts:v16];

  v17 = [(WAForecastModel *)self nextHourPrecipitation];
  [(WAForecastModel *)v4 setNextHourPrecipitation:v17];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [(WAForecastModel *)self location];
    v9 = [v8 geoLocation];

    v10 = [(WAForecastModel *)v7 location];
    v11 = [v10 geoLocation];

    [v11 distanceFromLocation:v9];
    if (v12 <= 0.0)
    {
      v14 = [(WAForecastModel *)self sunrise];
      v15 = [(WAForecastModel *)v7 sunrise];
      if (WAObjectIsEqual(v14, v15))
      {
        v16 = [(WAForecastModel *)self sunset];
        v17 = [(WAForecastModel *)v7 sunset];
        if (WAObjectIsEqual(v16, v17))
        {
          v33 = v17;
          v34 = v16;
          v18 = [(WAForecastModel *)self currentConditions];
          v19 = [(WAForecastModel *)v7 currentConditions];
          IsEqual = WAObjectIsEqual(v18, v19);

          if (!IsEqual)
          {
            goto LABEL_17;
          }

          v21 = [(WAForecastModel *)self dailyForecasts];
          v22 = [(WAForecastModel *)v7 dailyForecasts];
          v23 = WAObjectIsEqual(v21, v22);

          if (!v23)
          {
            goto LABEL_17;
          }

          v24 = [(WAForecastModel *)self hourlyForecasts];
          v25 = [(WAForecastModel *)v7 hourlyForecasts];
          v26 = WAObjectIsEqual(v24, v25);

          if (!v26)
          {
            goto LABEL_17;
          }

          v27 = [(WAForecastModel *)self severeWeatherEvents];
          v28 = [(WAForecastModel *)v7 severeWeatherEvents];
          v29 = WAObjectIsEqual(v27, v28);

          if (v29)
          {
            v30 = [(WAForecastModel *)self nextHourPrecipitation];
            v31 = [(WAForecastModel *)v7 nextHourPrecipitation];
            v13 = WAObjectIsEqual(v30, v31);
          }

          else
          {
LABEL_17:
            v13 = 0;
          }

          v17 = v33;
          v16 = v34;
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
  v4 = [(WAForecastModel *)self location];
  v5 = [(WAForecastModel *)self sunset];
  v6 = [(WAForecastModel *)self sunrise];
  v7 = [(WAForecastModel *)self currentConditions];
  v8 = [(WAForecastModel *)self dailyForecasts];
  v9 = [(WAForecastModel *)self hourlyForecasts];
  v10 = [(WAForecastModel *)self airQualityConditions];
  v11 = [(WAForecastModel *)self link];
  v12 = [(WAForecastModel *)self deepLink];
  v13 = [v3 stringWithFormat:@"<WAForecastModel location:'%@' sunset:'%@' sunrise:'%@' current conditions:'%@' dailyForecasts:'%@' hourlyForecasts:'%@' air quality: '%@' link:'%@' deepLink:'%@'>", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BOOL)isPopulated
{
  v3 = [(WAForecastModel *)self city];
  if (v3)
  {
    v4 = [(WAForecastModel *)self location];
    if (v4)
    {
      v5 = [(WAForecastModel *)self currentConditions];
      if (v5)
      {
        v6 = [(WAForecastModel *)self hourlyForecasts];
        if (v6)
        {
          v7 = [(WAForecastModel *)self dailyForecasts];
          if (v7)
          {
            v8 = [(WAForecastModel *)self sunrise];
            if (v8)
            {
              v9 = [(WAForecastModel *)self sunset];
              v10 = v9 != 0;
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