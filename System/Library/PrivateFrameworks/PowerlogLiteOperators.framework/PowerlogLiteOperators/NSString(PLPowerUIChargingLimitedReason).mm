@interface NSString(PLPowerUIChargingLimitedReason)
+ (id)chargingIntervalTypes;
+ (id)priorities;
- (BOOL)isSupported;
- (uint64_t)chargingIntervalType;
- (uint64_t)statePriority;
@end

@implementation NSString(PLPowerUIChargingLimitedReason)

+ (id)priorities
{
  if (qword_2811F7080 != -1)
  {
    dispatch_once(&qword_2811F7080, &__block_literal_global_23);
  }

  v1 = qword_2811F7078;

  return v1;
}

+ (id)chargingIntervalTypes
{
  if (qword_2811F7090 != -1)
  {
    dispatch_once(&qword_2811F7090, &__block_literal_global_36);
  }

  v1 = qword_2811F7088;

  return v1;
}

- (BOOL)isSupported
{
  v2 = [objc_opt_class() chargingIntervalTypes];
  v3 = [v2 objectForKeyedSubscript:a1];
  v4 = v3 != 0;

  return v4;
}

- (uint64_t)statePriority
{
  v2 = [objc_opt_class() priorities];
  v3 = [v2 objectForKeyedSubscript:a1];
  v4 = [v3 intValue];

  return v4;
}

- (uint64_t)chargingIntervalType
{
  v2 = [objc_opt_class() chargingIntervalTypes];
  v3 = [v2 objectForKeyedSubscript:a1];
  v4 = [v3 shortValue];

  return v4;
}

@end