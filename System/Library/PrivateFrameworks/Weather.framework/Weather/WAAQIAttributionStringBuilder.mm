@interface WAAQIAttributionStringBuilder
- (id)buildAttributionStringFromCity:(id)city;
- (id)stationStringWithTimeElapsedFromCity:(id)city;
@end

@implementation WAAQIAttributionStringBuilder

- (id)buildAttributionStringFromCity:(id)city
{
  cityCopy = city;
  airQualityAttribution = [cityCopy airQualityAttribution];
  dataOrigination = [airQualityAttribution dataOrigination];
  if (!dataOrigination || dataOrigination == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(WAAQIAttributionStringBuilder *)self stationStringWithTimeElapsedFromCity:cityCopy];
  }

  else if (dataOrigination == 1)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"AQI_VIEW_ATTRIBUTION_MODELED_DATA" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    name = [airQualityAttribution name];
    v11 = [v7 stringWithFormat:v9, name];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)stationStringWithTimeElapsedFromCity:(id)city
{
  cityCopy = city;
  date = [MEMORY[0x277CBEAA8] date];
  airQualityAttribution = [cityCopy airQualityAttribution];
  stationLastReadDate = [airQualityAttribution stationLastReadDate];
  [date timeIntervalSinceDate:stationLastReadDate];
  v8 = v7;

  v9 = vcvtad_u64_f64(v8 / 60.0 / 60.0);
  airQualityAttribution2 = [cityCopy airQualityAttribution];
  stationLocationName = [airQualityAttribution2 stationLocationName];

  if (![stationLocationName length])
  {
    name = [cityCopy name];

    stationLocationName = name;
  }

  if (v9 == 1)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = v14;
    v16 = @"AQI_VIEW_ATTRIBUTION_STATION_DATA_ONE_HOUR_AGO";
  }

  else
  {
    if (v9)
    {
      v19 = WANumberFormatterForDisplayingAQI();
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
      v15 = [v19 stringFromNumber:v20];

      v21 = MEMORY[0x277CCACA8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v17 localizedStringForKey:@"AQI_VIEW_ATTRIBUTION_STATION_DATA_MORE_THAN_ONE_HOUR_AGO" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      v18 = [v21 stringWithFormat:v22, stationLocationName, v15];

      goto LABEL_9;
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = v14;
    v16 = @"AQI_VIEW_ATTRIBUTION_STATION_DATA_LESS_THAN_ONE_HOUR_AGO";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v18 = [v13 stringWithFormat:v17, stationLocationName];
LABEL_9:

  airQualityLearnMoreURL = [cityCopy airQualityLearnMoreURL];
  if (airQualityLearnMoreURL)
  {
    v24 = airQualityLearnMoreURL;
    airQualityAttribution3 = [cityCopy airQualityAttribution];

    if (airQualityAttribution3)
    {
      v26 = MEMORY[0x277CCACA8];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"AQI_VIEW_ATTRIBUTION_STATION_DATA_LEARN_MORE_SUFFIX" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      airQualityAttribution4 = [cityCopy airQualityAttribution];
      name2 = [airQualityAttribution4 name];
      v31 = [v26 stringWithFormat:v28, name2];

      v32 = [v18 stringByAppendingString:v31];

      v18 = v32;
    }
  }

  return v18;
}

@end