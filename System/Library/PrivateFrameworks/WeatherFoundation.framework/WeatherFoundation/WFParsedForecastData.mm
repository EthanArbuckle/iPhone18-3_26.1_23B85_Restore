@interface WFParsedForecastData
- (id)objectForForecastType:(unint64_t)a3;
@end

@implementation WFParsedForecastData

- (id)objectForForecastType:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 15)
  {
    if (a3 <= 63)
    {
      if (a3 == 16)
      {
        v4 = [(WFParsedForecastData *)self pollenForecasts];
      }

      else if (a3 == 32)
      {
        v4 = [(WFParsedForecastData *)self lastTwentyFourHoursOfObservations];
      }

      goto LABEL_19;
    }

    if (a3 != 64 && a3 != 128)
    {
      goto LABEL_19;
    }

LABEL_15:
    v4 = [(WFParsedForecastData *)self currentConditions];
    goto LABEL_19;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v4 = [(WFParsedForecastData *)self hourlyForecasts];
    }

    else if (a3 == 8)
    {
      v4 = [(WFParsedForecastData *)self dailyForecasts];
    }

    goto LABEL_19;
  }

  if (a3 == 1)
  {
    v4 = [(WFParsedForecastData *)self airQualityObservations];
    goto LABEL_19;
  }

  if (a3 == 2)
  {
    goto LABEL_15;
  }

LABEL_19:

  return v4;
}

@end