@interface WFAirQualityResponse
- (WFAirQualityResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAirQualityResponse

- (WFAirQualityResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFAirQualityResponse;
  v5 = [(WFResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityResponseConditionsKey"];
    [(WFAirQualityResponse *)v5 setAirQualityConditions:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFAirQualityResponse;
  coderCopy = coder;
  [(WFResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFAirQualityResponse *)self airQualityConditions:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"WFAirQualityResponseConditionsKey"];
}

@end