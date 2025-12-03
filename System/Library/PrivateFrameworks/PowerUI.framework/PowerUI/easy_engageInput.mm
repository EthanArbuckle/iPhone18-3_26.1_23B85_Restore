@interface easy_engageInput
- (easy_engageInput)initWithClassic_time_between_uses_med_dur_1:(double)classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:(double)classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:(double)classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:(double)classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:(double)classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:(double)classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:(double)classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:(double)self0 hour:(double)self1 is_weekend:(double)self2 hour_plus_0:(double)self3 hour_plus_1:(double)self4 hour_plus_2:(double)self5 hour_plus_3:(double)self6 hour_plus_4:(double)self7 hour_plus_5:(double)self8 hours_until_use:(double)self9 meaningful_undercharge_rolling_average:(double)meaningful_undercharge_rolling_average;
- (id)featureValueForName:(id)name;
@end

@implementation easy_engageInput

- (easy_engageInput)initWithClassic_time_between_uses_med_dur_1:(double)classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:(double)classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:(double)classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:(double)classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:(double)classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:(double)classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:(double)classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:(double)self0 hour:(double)self1 is_weekend:(double)self2 hour_plus_0:(double)self3 hour_plus_1:(double)self4 hour_plus_2:(double)self5 hour_plus_3:(double)self6 hour_plus_4:(double)self7 hour_plus_5:(double)self8 hours_until_use:(double)self9 meaningful_undercharge_rolling_average:(double)meaningful_undercharge_rolling_average
{
  v29.receiver = self;
  v29.super_class = easy_engageInput;
  result = [(easy_engageInput *)&v29 init];
  if (result)
  {
    result->_classic_time_between_uses_med_dur_1 = classic_time_between_uses_med_dur_1;
    result->_classic_time_between_uses_med_dur_2 = classic_time_between_uses_med_dur_2;
    result->_classic_time_between_uses_med_dur_4 = classic_time_between_uses_med_dur_4;
    result->_classic_time_between_uses_med_dur_24 = classic_time_between_uses_med_dur_24;
    result->_classic_time_between_uses_std_dur_1 = classic_time_between_uses_std_dur_1;
    result->_classic_time_between_uses_std_dur_2 = classic_time_between_uses_std_dur_2;
    result->_classic_time_between_uses_std_dur_4 = classic_time_between_uses_std_dur_4;
    result->_classic_time_between_uses_std_dur_24 = classic_time_between_uses_std_dur_24;
    result->_hour = hour;
    result->_is_weekend = is_weekend;
    result->_hour_plus_0 = hour_plus_0;
    result->_hour_plus_1 = hour_plus_1;
    result->_hour_plus_2 = hour_plus_2;
    result->_hour_plus_3 = hour_plus_3;
    result->_hour_plus_4 = hour_plus_4;
    result->_hour_plus_5 = hour_plus_5;
    result->_hours_until_use = hours_until_use;
    result->_meaningful_undercharge_rolling_average = meaningful_undercharge_rolling_average;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"classic_time_between_uses_med_dur_1"] || objc_msgSend(nameCopy, "isEqualToString:", @"classic_time_between_uses_med_dur_2") || objc_msgSend(nameCopy, "isEqualToString:", @"classic_time_between_uses_med_dur_4") || objc_msgSend(nameCopy, "isEqualToString:", @"classic_time_between_uses_med_dur_24"))
  {
    v5 = MEMORY[0x277CBFEF8];
    [(easy_engageInput *)self classic_time_between_uses_med_dur];
LABEL_30:
    v6 = [v5 featureValueWithDouble:?];
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"classic_time_between_uses_std_dur_1"] || objc_msgSend(nameCopy, "isEqualToString:", @"classic_time_between_uses_std_dur_2") || objc_msgSend(nameCopy, "isEqualToString:", @"classic_time_between_uses_std_dur_4") || objc_msgSend(nameCopy, "isEqualToString:", @"classic_time_between_uses_std_dur_24"))
  {
    v5 = MEMORY[0x277CBFEF8];
    [(easy_engageInput *)self classic_time_between_uses_std_dur];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"hour"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(easy_engageInput *)self hour];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"is_weekend"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(easy_engageInput *)self is_weekend];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"hour_plus_0"] || objc_msgSend(nameCopy, "isEqualToString:", @"hour_plus_1") || objc_msgSend(nameCopy, "isEqualToString:", @"hour_plus_2") || objc_msgSend(nameCopy, "isEqualToString:", @"hour_plus_3") || objc_msgSend(nameCopy, "isEqualToString:", @"hour_plus_4") || objc_msgSend(nameCopy, "isEqualToString:", @"hour_plus_5"))
  {
    v5 = MEMORY[0x277CBFEF8];
    [(easy_engageInput *)self hour_plus];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"hours_until_use"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(easy_engageInput *)self hours_until_use];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"meaningful_undercharge_rolling_average"])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(easy_engageInput *)self meaningful_undercharge_rolling_average];
    goto LABEL_30;
  }

  v6 = 0;
LABEL_31:

  return v6;
}

@end