@interface WCDefaultCity
+ (id)cityFromAlCity:(id)city;
- (id)description;
@end

@implementation WCDefaultCity

+ (id)cityFromAlCity:(id)city
{
  cityCopy = city;
  v4 = objc_alloc_init(WCDefaultCity);
  localeCode = [cityCopy localeCode];
  [(WCDefaultCity *)v4 setLocaleCode:localeCode];

  timeZone = [cityCopy timeZone];
  [(WCDefaultCity *)v4 setTimeZone:timeZone];

  [cityCopy longitude];
  [(WCDefaultCity *)v4 setLongitude:?];
  [cityCopy latitude];
  [(WCDefaultCity *)v4 setLatitude:?];
  name = [cityCopy name];
  [(WCDefaultCity *)v4 setName:name];

  unlocalizedName = [cityCopy unlocalizedName];
  [(WCDefaultCity *)v4 setUnlocalizedName:unlocalizedName];

  countryName = [cityCopy countryName];
  [(WCDefaultCity *)v4 setCountryName:countryName];

  unlocalizedCountryName = [cityCopy unlocalizedCountryName];
  [(WCDefaultCity *)v4 setUnlocalizedCountryName:unlocalizedCountryName];

  countryOverride = [cityCopy countryOverride];
  [(WCDefaultCity *)v4 setCountryOverride:countryOverride];

  unlocalizedCountryOverride = [cityCopy unlocalizedCountryOverride];

  [(WCDefaultCity *)v4 setUnlocalizedCountryOverride:unlocalizedCountryOverride];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = WCDefaultCity;
  v4 = [(WCDefaultCity *)&v10 description];
  name = [(WCDefaultCity *)self name];
  countryName = [(WCDefaultCity *)self countryName];
  countryOverride = [(WCDefaultCity *)self countryOverride];
  v8 = [v3 stringWithFormat:@"%@ %@, %@ [%@] || %@, %@ || %f %f", v4, name, countryName, countryOverride, self->_timeZone, self->_localeCode, self->_latitude, self->_longitude];

  return v8;
}

@end