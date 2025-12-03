@interface WACurrentForecast
+ (id)currentForecastForLocation:(id)location conditions:(id)conditions;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation WACurrentForecast

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WACurrentForecast allocWithZone:?]];
  temperature = [(WACurrentForecast *)self temperature];
  v6 = [temperature copy];
  [(WACurrentForecast *)v4 setTemperature:v6];

  feelsLike = [(WACurrentForecast *)self feelsLike];
  v8 = [feelsLike copy];
  [(WACurrentForecast *)v4 setFeelsLike:v8];

  [(WACurrentForecast *)self windSpeed];
  [(WACurrentForecast *)v4 setWindSpeed:?];
  [(WACurrentForecast *)self windDirection];
  [(WACurrentForecast *)v4 setWindDirection:?];
  [(WACurrentForecast *)self humidity];
  [(WACurrentForecast *)v4 setHumidity:?];
  [(WACurrentForecast *)self dewPoint];
  [(WACurrentForecast *)v4 setDewPoint:?];
  [(WACurrentForecast *)self visibility];
  [(WACurrentForecast *)v4 setVisibility:?];
  [(WACurrentForecast *)self pressure];
  [(WACurrentForecast *)v4 setPressure:?];
  [(WACurrentForecast *)v4 setPressureRising:[(WACurrentForecast *)self pressureRising]];
  [(WACurrentForecast *)v4 setUVIndex:[(WACurrentForecast *)self UVIndex]];
  [(WACurrentForecast *)self precipitationPast24Hours];
  [(WACurrentForecast *)v4 setPrecipitationPast24Hours:?];
  [(WACurrentForecast *)v4 setConditionCode:[(WACurrentForecast *)self conditionCode]];
  [(WACurrentForecast *)v4 setObservationTime:[(WACurrentForecast *)self observationTime]];
  providerName = [(WACurrentForecast *)self providerName];
  [(WACurrentForecast *)v4 setProviderName:providerName];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  temperature = [(WACurrentForecast *)self temperature];
  feelsLike = [(WACurrentForecast *)self feelsLike];
  [(WACurrentForecast *)self windSpeed];
  v7 = v6;
  [(WACurrentForecast *)self windDirection];
  v9 = v8;
  [(WACurrentForecast *)self humidity];
  v11 = v10;
  [(WACurrentForecast *)self dewPoint];
  v13 = v12;
  [(WACurrentForecast *)self visibility];
  v15 = v14;
  [(WACurrentForecast *)self pressure];
  v17 = v16;
  pressureRising = [(WACurrentForecast *)self pressureRising];
  uVIndex = [(WACurrentForecast *)self UVIndex];
  [(WACurrentForecast *)self precipitationPast24Hours];
  v21 = v20;
  conditionCode = [(WACurrentForecast *)self conditionCode];
  observationTime = [(WACurrentForecast *)self observationTime];
  providerName = [(WACurrentForecast *)self providerName];
  v25 = [v3 stringWithFormat:@"<WACurrentForecast temperature: '%@' feelsLike: '%@' windSpeed: '%f' windDirection: '%f' humidity: '%f' dewPoint: '%f' visibility: '%f' pressure: '%f' pressureRising: '%lu' UVIndex: '%lu' precipitationPast24Hours: '%f' conditionCode: '%ld' observationTime: '%lu' providerName: %@>", temperature, feelsLike, *&v7, *&v9, *&v11, *&v13, *&v15, *&v17, pressureRising, uVIndex, *&v21, conditionCode, observationTime, providerName];

  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v41 = 1;
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

    temperature = [(WACurrentForecast *)self temperature];
    temperature2 = [(WACurrentForecast *)v7 temperature];
    IsEqual = WAObjectIsEqual(temperature, temperature2);

    if (!IsEqual)
    {
      goto LABEL_19;
    }

    feelsLike = [(WACurrentForecast *)self feelsLike];
    feelsLike2 = [(WACurrentForecast *)v7 feelsLike];
    v13 = WAObjectIsEqual(feelsLike, feelsLike2);

    if (!v13)
    {
      goto LABEL_19;
    }

    [(WACurrentForecast *)self windSpeed];
    v15 = v14;
    [(WACurrentForecast *)v7 windSpeed];
    if (!WAFloatIsEqual(v15, v16))
    {
      goto LABEL_19;
    }

    [(WACurrentForecast *)self windDirection];
    v18 = v17;
    [(WACurrentForecast *)v7 windDirection];
    if (!WAFloatIsEqual(v18, v19))
    {
      goto LABEL_19;
    }

    [(WACurrentForecast *)self humidity];
    v21 = v20;
    [(WACurrentForecast *)v7 humidity];
    if (!WAFloatIsEqual(v21, v22))
    {
      goto LABEL_19;
    }

    [(WACurrentForecast *)self dewPoint];
    v24 = v23;
    [(WACurrentForecast *)v7 dewPoint];
    if (!WAFloatIsEqual(v24, v25))
    {
      goto LABEL_19;
    }

    [(WACurrentForecast *)self visibility];
    v27 = v26;
    [(WACurrentForecast *)v7 visibility];
    if (!WAFloatIsEqual(v27, v28))
    {
      goto LABEL_19;
    }

    [(WACurrentForecast *)self pressure];
    v30 = v29;
    [(WACurrentForecast *)v7 pressure];
    if (!WAFloatIsEqual(v30, v31))
    {
      goto LABEL_19;
    }

    pressureRising = [(WACurrentForecast *)self pressureRising];
    if (pressureRising == [(WACurrentForecast *)v7 pressureRising]&& (v33 = [(WACurrentForecast *)self UVIndex], v33 == [(WACurrentForecast *)v7 UVIndex]) && ([(WACurrentForecast *)self precipitationPast24Hours], v35 = v34, [(WACurrentForecast *)v7 precipitationPast24Hours], WAFloatIsEqual(v35, v36)) && (v37 = [(WACurrentForecast *)self conditionCode], v37 == [(WACurrentForecast *)v7 conditionCode]) && (v38 = [(WACurrentForecast *)self observationTime], v38 == [(WACurrentForecast *)v7 observationTime]))
    {
      providerName = [(WACurrentForecast *)self providerName];
      providerName2 = [(WACurrentForecast *)v7 providerName];
      v41 = [providerName isEqualToString:providerName2];
    }

    else
    {
LABEL_19:
      v41 = 0;
    }
  }

  return v41;
}

- (unint64_t)hash
{
  v2 = [(WACurrentForecast *)self description];
  v3 = [v2 hash];

  return v3;
}

+ (id)currentForecastForLocation:(id)location conditions:(id)conditions
{
  locationCopy = location;
  conditionsCopy = conditions;
  v9 = conditionsCopy;
  if (locationCopy)
  {
    if (conditionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [WACurrentForecast(WFAdditions) currentForecastForLocation:a2 conditions:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [WACurrentForecast(WFAdditions) currentForecastForLocation:a2 conditions:self];
LABEL_3:
  v10 = objc_opt_new();
  v11 = [v9 valueForComponent:*MEMORY[0x277D7B370]];
  [v10 setTemperature:v11];

  v12 = [v9 valueForComponent:*MEMORY[0x277D7B308]];
  [v10 setFeelsLike:v12];

  v13 = [v9 valueForComponent:*MEMORY[0x277D7B2F8]];
  [v10 setProviderName:v13];

  v14 = [v9 valueForComponent:*MEMORY[0x277D7B390]];
  v52 = v14;
  if (v14)
  {
    [v14 floatValue];
  }

  else
  {
    LODWORD(v15) = 0x800000;
  }

  [v10 setWindDirection:v15];
  v16 = [v9 valueForComponent:*MEMORY[0x277D7B398]];
  v51 = v16;
  if (v16)
  {
    [v16 floatValue];
  }

  else
  {
    LODWORD(v17) = 0x800000;
  }

  [v10 setWindSpeed:v17];
  v18 = [v9 valueForComponent:*MEMORY[0x277D7B320]];
  v50 = v18;
  if (v18)
  {
    [v18 floatValue];
  }

  else
  {
    LODWORD(v19) = 0x800000;
  }

  [v10 setHumidity:v19];
  v20 = [v9 valueForComponent:*MEMORY[0x277D7B300]];
  v49 = v20;
  if (v20)
  {
    [v20 floatValue];
  }

  else
  {
    LODWORD(v21) = 0x800000;
  }

  [v10 setDewPoint:v21];
  v22 = [v9 valueForComponent:*MEMORY[0x277D7B380]];
  v48 = v22;
  if (v22)
  {
    [v22 floatValue];
  }

  else
  {
    LODWORD(v23) = 0x800000;
  }

  [v10 setVisibility:v23];
  v24 = [v9 valueForComponent:*MEMORY[0x277D7B350]];
  v47 = v24;
  if (v24)
  {
    [v24 floatValue];
  }

  else
  {
    LODWORD(v25) = 0x800000;
  }

  [v10 setPressure:v25];
  v26 = [v9 valueForComponent:*MEMORY[0x277D7B358]];
  v27 = v26;
  if (v26)
  {
    unsignedIntegerValue = [v26 unsignedIntegerValue];
    if (unsignedIntegerValue <= 4)
    {
      [v10 setPressureRising:PressureStatesMap[unsignedIntegerValue]];
    }
  }

  v46 = [v9 valueForComponent:*MEMORY[0x277D7B378]];
  [v10 setUVIndex:{objc_msgSend(v46, "unsignedIntegerValue")}];
  v45 = [v9 valueForComponent:*MEMORY[0x277D7B340]];
  [v45 doubleValue];
  v30 = v29 / 10.0;
  *&v30 = v30;
  [v10 setPrecipitationPast24Hours:v30];
  v31 = [v9 valueForComponent:*MEMORY[0x277D7B3A0]];
  v32 = v31;
  v33 = &unk_288235760;
  if (v31)
  {
    v33 = v31;
  }

  v34 = v33;

  unsignedIntegerValue2 = [v34 unsignedIntegerValue];
  [v10 setConditionCode:unsignedIntegerValue2];
  v36 = +[City _ISO8601Calendar];
  timeZone = [locationCopy timeZone];
  [v9 valueForComponent:*MEMORY[0x277D7B310]];
  v38 = v44 = locationCopy;
  date = [v38 date];
  [date timeIntervalSince1970];
  v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v40];
  [v36 setTimeZone:timeZone];
  v42 = [v36 components:96 fromDate:v41];
  [v10 setObservationTime:{objc_msgSend(v42, "minute") + 100 * objc_msgSend(v42, "hour")}];

  return v10;
}

@end