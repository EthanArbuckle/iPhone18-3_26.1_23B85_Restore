@interface WFParsedForecastData
- (id)objectForForecastType:(unint64_t)type;
@end

@implementation WFParsedForecastData

- (id)objectForForecastType:(unint64_t)type
{
  pollenForecasts = 0;
  if (type > 15)
  {
    if (type <= 63)
    {
      if (type == 16)
      {
        pollenForecasts = [(WFParsedForecastData *)self pollenForecasts];
      }

      else if (type == 32)
      {
        pollenForecasts = [(WFParsedForecastData *)self lastTwentyFourHoursOfObservations];
      }

      goto LABEL_19;
    }

    if (type != 64 && type != 128)
    {
      goto LABEL_19;
    }

LABEL_15:
    pollenForecasts = [(WFParsedForecastData *)self currentConditions];
    goto LABEL_19;
  }

  if (type > 3)
  {
    if (type == 4)
    {
      pollenForecasts = [(WFParsedForecastData *)self hourlyForecasts];
    }

    else if (type == 8)
    {
      pollenForecasts = [(WFParsedForecastData *)self dailyForecasts];
    }

    goto LABEL_19;
  }

  if (type == 1)
  {
    pollenForecasts = [(WFParsedForecastData *)self airQualityObservations];
    goto LABEL_19;
  }

  if (type == 2)
  {
    goto LABEL_15;
  }

LABEL_19:

  return pollenForecasts;
}

@end