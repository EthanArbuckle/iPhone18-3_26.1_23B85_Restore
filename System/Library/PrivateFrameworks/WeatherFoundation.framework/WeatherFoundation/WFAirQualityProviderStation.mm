@interface WFAirQualityProviderStation
- (WFAirQualityProviderStation)initWithLocation:(id)location lastReadDate:(id)date;
- (id)description;
@end

@implementation WFAirQualityProviderStation

- (WFAirQualityProviderStation)initWithLocation:(id)location lastReadDate:(id)date
{
  locationCopy = location;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = WFAirQualityProviderStation;
  v9 = [(WFAirQualityProviderStation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_location, location);
    objc_storeStrong(&v10->_lastReadDate, date);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  location = [(WFAirQualityProviderStation *)self location];
  lastReadDate = [(WFAirQualityProviderStation *)self lastReadDate];
  v6 = [v3 stringWithFormat:@"<WFAirQualityProviderStation location: %@, lastReadDate: %@", location, lastReadDate];

  return v6;
}

@end