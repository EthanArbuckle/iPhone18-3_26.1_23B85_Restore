@interface WFAirQualityResponse
- (WFAirQualityResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAirQualityResponse

- (WFAirQualityResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFAirQualityResponse;
  v5 = [(WFResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityResponseConditionsKey"];
    [(WFAirQualityResponse *)v5 setAirQualityConditions:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFAirQualityResponse;
  v4 = a3;
  [(WFResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFAirQualityResponse *)self airQualityConditions:v6.receiver];
  [v4 encodeObject:v5 forKey:@"WFAirQualityResponseConditionsKey"];
}

@end