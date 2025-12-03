@interface WFTemperatureUnitResponse
- (WFTemperatureUnitResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFTemperatureUnitResponse

- (WFTemperatureUnitResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFTemperatureUnitResponse;
  v5 = [(WFResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"WFTemperatureUnitResponseKey"];
    [(WFTemperatureUnitResponse *)v5 setTemperatureUnit:NSStringToWFTemperatureUnit(v6)];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFTemperatureUnitResponse;
  coderCopy = coder;
  [(WFResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = NSStringFromWFTemperatureUnit([(WFTemperatureUnitResponse *)self temperatureUnit:v6.receiver]);
  [coderCopy encodeObject:v5 forKey:@"WFTemperatureUnitResponseKey"];
}

@end