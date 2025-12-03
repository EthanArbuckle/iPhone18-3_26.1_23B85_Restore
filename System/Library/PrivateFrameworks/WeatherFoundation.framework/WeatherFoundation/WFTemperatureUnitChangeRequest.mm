@interface WFTemperatureUnitChangeRequest
- (void)startWithService:(id)service;
@end

@implementation WFTemperatureUnitChangeRequest

- (void)startWithService:(id)service
{
  serviceCopy = service;
  temperatureUnit = [(WFTemperatureUnitChangeRequest *)self temperatureUnit];
  identifier = [(WFTask *)self identifier];
  [serviceCopy replaceTemperatureUnitWith:temperatureUnit identifier:identifier];
}

@end