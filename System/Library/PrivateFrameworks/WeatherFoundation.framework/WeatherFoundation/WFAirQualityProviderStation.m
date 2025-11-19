@interface WFAirQualityProviderStation
- (WFAirQualityProviderStation)initWithLocation:(id)a3 lastReadDate:(id)a4;
- (id)description;
@end

@implementation WFAirQualityProviderStation

- (WFAirQualityProviderStation)initWithLocation:(id)a3 lastReadDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = WFAirQualityProviderStation;
  v9 = [(WFAirQualityProviderStation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_location, a3);
    objc_storeStrong(&v10->_lastReadDate, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFAirQualityProviderStation *)self location];
  v5 = [(WFAirQualityProviderStation *)self lastReadDate];
  v6 = [v3 stringWithFormat:@"<WFAirQualityProviderStation location: %@, lastReadDate: %@", v4, v5];

  return v6;
}

@end