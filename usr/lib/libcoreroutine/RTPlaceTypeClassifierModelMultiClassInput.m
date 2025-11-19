@interface RTPlaceTypeClassifierModelMultiClassInput
- (RTPlaceTypeClassifierModelMultiClassInput)initWithMean_daily_longest_charging_duration_bucketed:(double)a3 mean_daily_longest_screen_lock_duration_bucketed:(double)a4 mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)a5 mean_daily_total_charging_duration_bucketed:(double)a6 mean_daily_total_screen_lock_duration_bucketed:(double)a7 mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)a8 mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:(double)a9 median_daily_longest_charging_duration_bucketed:(double)a10 median_daily_longest_screen_lock_duration_bucketed:(double)a11 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)a12 median_daily_total_charging_duration_bucketed:(double)a13 median_daily_total_screen_lock_duration_bucketed:(double)a14 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)a15 percentage_of_days_with_charging_bucketed:(double)a16 percentage_of_days_with_screen_lock_bucketed:(double)a17 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:(double)a18 is_iPhone:(double)a19 is_iPad:(double)a20 is_Watch:(double)a21;
- (id)featureValueForName:(id)a3;
@end

@implementation RTPlaceTypeClassifierModelMultiClassInput

- (RTPlaceTypeClassifierModelMultiClassInput)initWithMean_daily_longest_charging_duration_bucketed:(double)a3 mean_daily_longest_screen_lock_duration_bucketed:(double)a4 mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)a5 mean_daily_total_charging_duration_bucketed:(double)a6 mean_daily_total_screen_lock_duration_bucketed:(double)a7 mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)a8 mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:(double)a9 median_daily_longest_charging_duration_bucketed:(double)a10 median_daily_longest_screen_lock_duration_bucketed:(double)a11 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)a12 median_daily_total_charging_duration_bucketed:(double)a13 median_daily_total_screen_lock_duration_bucketed:(double)a14 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)a15 percentage_of_days_with_charging_bucketed:(double)a16 percentage_of_days_with_screen_lock_bucketed:(double)a17 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:(double)a18 is_iPhone:(double)a19 is_iPad:(double)a20 is_Watch:(double)a21
{
  v30.receiver = self;
  v30.super_class = RTPlaceTypeClassifierModelMultiClassInput;
  result = [(RTPlaceTypeClassifierModelMultiClassInput *)&v30 init];
  if (result)
  {
    result->_mean_daily_longest_charging_duration_bucketed = a3;
    result->_mean_daily_longest_screen_lock_duration_bucketed = a4;
    result->_mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed = a5;
    result->_mean_daily_total_charging_duration_bucketed = a6;
    result->_mean_daily_total_screen_lock_duration_bucketed = a7;
    result->_mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed = a8;
    result->_mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed = a9;
    result->_median_daily_longest_charging_duration_bucketed = a10;
    result->_median_daily_longest_screen_lock_duration_bucketed = a11;
    result->_median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed = a12;
    result->_median_daily_total_charging_duration_bucketed = a13;
    result->_median_daily_total_screen_lock_duration_bucketed = a14;
    result->_median_daily_total_uninterrupted_WiFi_connection_duration_bucketed = a15;
    result->_percentage_of_days_with_charging_bucketed = a16;
    result->_percentage_of_days_with_screen_lock_bucketed = a17;
    result->_percentage_of_days_with_uninterrupted_WiFi_connection_bucketed = a18;
    result->_is_iPhone = a19;
    result->_is_iPad = a20;
    result->_is_Watch = a21;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"mean_daily_longest_charging_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self mean_daily_longest_charging_duration_bucketed];
LABEL_39:
    v6 = [v5 featureValueWithDouble:?];
    goto LABEL_40;
  }

  if ([v4 isEqualToString:@"mean_daily_longest_screen_lock_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self mean_daily_longest_screen_lock_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"mean_daily_total_charging_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self mean_daily_total_charging_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"mean_daily_total_screen_lock_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self mean_daily_total_screen_lock_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"median_daily_longest_charging_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self median_daily_longest_charging_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"median_daily_longest_screen_lock_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self median_daily_longest_screen_lock_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"median_daily_total_charging_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self median_daily_total_charging_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"median_daily_total_screen_lock_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self median_daily_total_screen_lock_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"median_daily_total_uninterrupted_WiFi_connection_duration_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self median_daily_total_uninterrupted_WiFi_connection_duration_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"percentage_of_days_with_charging_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self percentage_of_days_with_charging_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"percentage_of_days_with_screen_lock_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self percentage_of_days_with_screen_lock_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"percentage_of_days_with_uninterrupted_WiFi_connection_bucketed"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self percentage_of_days_with_uninterrupted_WiFi_connection_bucketed];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"is_iPhone"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self is_iPhone];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"is_iPad"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self is_iPad];
    goto LABEL_39;
  }

  if ([v4 isEqualToString:@"is_Watch"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelMultiClassInput *)self is_Watch];
    goto LABEL_39;
  }

  v6 = 0;
LABEL_40:

  return v6;
}

@end