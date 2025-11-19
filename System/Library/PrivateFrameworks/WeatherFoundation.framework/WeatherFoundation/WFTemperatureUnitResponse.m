@interface WFTemperatureUnitResponse
- (WFTemperatureUnitResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFTemperatureUnitResponse

- (WFTemperatureUnitResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFTemperatureUnitResponse;
  v5 = [(WFResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"WFTemperatureUnitResponseKey"];
    [(WFTemperatureUnitResponse *)v5 setTemperatureUnit:NSStringToWFTemperatureUnit(v6)];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFTemperatureUnitResponse;
  v4 = a3;
  [(WFResponse *)&v6 encodeWithCoder:v4];
  v5 = NSStringFromWFTemperatureUnit([(WFTemperatureUnitResponse *)self temperatureUnit:v6.receiver]);
  [v4 encodeObject:v5 forKey:@"WFTemperatureUnitResponseKey"];
}

@end