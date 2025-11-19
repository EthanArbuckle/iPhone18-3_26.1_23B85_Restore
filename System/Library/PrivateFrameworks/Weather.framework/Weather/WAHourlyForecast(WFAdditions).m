@interface WAHourlyForecast(WFAdditions)
@end

@implementation WAHourlyForecast(WFAdditions)

+ (void)hourlyForecastForLocation:()WFAdditions conditions:sunriseDateComponents:sunsetDateComponents:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WAHourlyForecast+WFAdditions.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"location"}];
}

+ (void)hourlyForecastForLocation:()WFAdditions conditions:sunriseDateComponents:sunsetDateComponents:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WAHourlyForecast+WFAdditions.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"conditions"}];
}

@end