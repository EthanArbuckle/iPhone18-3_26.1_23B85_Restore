@interface RTPlaceTypeClassifierModelRankerInput
- (RTPlaceTypeClassifierModelRankerInput)initWithMean_daily_longest_charging_duration_bucketed:(double)mean_daily_longest_charging_duration_bucketed mean_daily_longest_screen_lock_duration_bucketed:(double)mean_daily_longest_screen_lock_duration_bucketed mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)fi_connection_duration_bucketed mean_daily_total_charging_duration_bucketed:(double)mean_daily_total_charging_duration_bucketed mean_daily_total_screen_lock_duration_bucketed:(double)mean_daily_total_screen_lock_duration_bucketed mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)wiFi_connection_duration_bucketed mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:(double)fi_connection_stability_ratio_bucketed median_daily_longest_charging_duration_bucketed:(double)self0 median_daily_longest_screen_lock_duration_bucketed:(double)self1 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)self2 median_daily_total_charging_duration_bucketed:(double)self3 median_daily_total_screen_lock_duration_bucketed:(double)self4 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)self5 percentage_of_days_with_charging_bucketed:(double)self6 percentage_of_days_with_screen_lock_bucketed:(double)self7 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:(double)self8 is_iPhone:(double)self9 is_iPad:(double)pad is_Watch:(double)watch;
- (id)featureValueForName:(id)name;
@end

@implementation RTPlaceTypeClassifierModelRankerInput

- (RTPlaceTypeClassifierModelRankerInput)initWithMean_daily_longest_charging_duration_bucketed:(double)mean_daily_longest_charging_duration_bucketed mean_daily_longest_screen_lock_duration_bucketed:(double)mean_daily_longest_screen_lock_duration_bucketed mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)fi_connection_duration_bucketed mean_daily_total_charging_duration_bucketed:(double)mean_daily_total_charging_duration_bucketed mean_daily_total_screen_lock_duration_bucketed:(double)mean_daily_total_screen_lock_duration_bucketed mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)wiFi_connection_duration_bucketed mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:(double)fi_connection_stability_ratio_bucketed median_daily_longest_charging_duration_bucketed:(double)self0 median_daily_longest_screen_lock_duration_bucketed:(double)self1 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)self2 median_daily_total_charging_duration_bucketed:(double)self3 median_daily_total_screen_lock_duration_bucketed:(double)self4 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)self5 percentage_of_days_with_charging_bucketed:(double)self6 percentage_of_days_with_screen_lock_bucketed:(double)self7 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:(double)self8 is_iPhone:(double)self9 is_iPad:(double)pad is_Watch:(double)watch
{
  v30.receiver = self;
  v30.super_class = RTPlaceTypeClassifierModelRankerInput;
  result = [(RTPlaceTypeClassifierModelRankerInput *)&v30 init];
  if (result)
  {
    result->_mean_daily_longest_charging_duration_bucketed = mean_daily_longest_charging_duration_bucketed;
    result->_mean_daily_longest_screen_lock_duration_bucketed = mean_daily_longest_screen_lock_duration_bucketed;
    result->_mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed = fi_connection_duration_bucketed;
    result->_mean_daily_total_charging_duration_bucketed = mean_daily_total_charging_duration_bucketed;
    result->_mean_daily_total_screen_lock_duration_bucketed = mean_daily_total_screen_lock_duration_bucketed;
    result->_mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed = wiFi_connection_duration_bucketed;
    result->_mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed = fi_connection_stability_ratio_bucketed;
    result->_median_daily_longest_charging_duration_bucketed = median_daily_longest_charging_duration_bucketed;
    result->_median_daily_longest_screen_lock_duration_bucketed = median_daily_longest_screen_lock_duration_bucketed;
    result->_median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed = median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed;
    result->_median_daily_total_charging_duration_bucketed = median_daily_total_charging_duration_bucketed;
    result->_median_daily_total_screen_lock_duration_bucketed = median_daily_total_screen_lock_duration_bucketed;
    result->_median_daily_total_uninterrupted_WiFi_connection_duration_bucketed = median_daily_total_uninterrupted_WiFi_connection_duration_bucketed;
    result->_percentage_of_days_with_charging_bucketed = percentage_of_days_with_charging_bucketed;
    result->_percentage_of_days_with_screen_lock_bucketed = percentage_of_days_with_screen_lock_bucketed;
    result->_percentage_of_days_with_uninterrupted_WiFi_connection_bucketed = fi_connection_bucketed;
    result->_is_iPhone = phone;
    result->_is_iPad = pad;
    result->_is_Watch = watch;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"mean_daily_longest_charging_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self mean_daily_longest_charging_duration_bucketed];
LABEL_39:
    v6 = [v5 featureValueWithDouble:?];
    goto LABEL_40;
  }

  if ([nameCopy isEqualToString:@"mean_daily_longest_screen_lock_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self mean_daily_longest_screen_lock_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"mean_daily_total_charging_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self mean_daily_total_charging_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"mean_daily_total_screen_lock_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self mean_daily_total_screen_lock_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"median_daily_longest_charging_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self median_daily_longest_charging_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"median_daily_longest_screen_lock_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self median_daily_longest_screen_lock_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"median_daily_total_charging_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self median_daily_total_charging_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"median_daily_total_screen_lock_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self median_daily_total_screen_lock_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"median_daily_total_uninterrupted_WiFi_connection_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self median_daily_total_uninterrupted_WiFi_connection_duration_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"percentage_of_days_with_charging_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self percentage_of_days_with_charging_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"percentage_of_days_with_screen_lock_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self percentage_of_days_with_screen_lock_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"percentage_of_days_with_uninterrupted_WiFi_connection_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self percentage_of_days_with_uninterrupted_WiFi_connection_bucketed];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"is_iPhone"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self is_iPhone];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"is_iPad"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self is_iPad];
    goto LABEL_39;
  }

  if ([nameCopy isEqualToString:@"is_Watch"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerInput *)self is_Watch];
    goto LABEL_39;
  }

  v6 = 0;
LABEL_40:

  return v6;
}

@end