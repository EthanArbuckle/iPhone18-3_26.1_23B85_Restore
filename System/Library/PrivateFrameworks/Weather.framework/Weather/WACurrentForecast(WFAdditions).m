@interface WACurrentForecast(WFAdditions)
@end

@implementation WACurrentForecast(WFAdditions)

+ (void)currentForecastForLocation:()WFAdditions conditions:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WACurrentForecast+WFAdditions.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"location"}];
}

+ (void)currentForecastForLocation:()WFAdditions conditions:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WACurrentForecast+WFAdditions.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"conditions"}];
}

@end