@interface WFTemperatureUnitChangeRequest
- (void)startWithService:(id)a3;
@end

@implementation WFTemperatureUnitChangeRequest

- (void)startWithService:(id)a3
{
  v4 = a3;
  v5 = [(WFTemperatureUnitChangeRequest *)self temperatureUnit];
  v6 = [(WFTask *)self identifier];
  [v4 replaceTemperatureUnitWith:v5 identifier:v6];
}

@end