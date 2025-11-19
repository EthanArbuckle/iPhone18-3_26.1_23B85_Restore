@interface WCDefaultCity
+ (id)cityFromAlCity:(id)a3;
- (id)description;
@end

@implementation WCDefaultCity

+ (id)cityFromAlCity:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WCDefaultCity);
  v5 = [v3 localeCode];
  [(WCDefaultCity *)v4 setLocaleCode:v5];

  v6 = [v3 timeZone];
  [(WCDefaultCity *)v4 setTimeZone:v6];

  [v3 longitude];
  [(WCDefaultCity *)v4 setLongitude:?];
  [v3 latitude];
  [(WCDefaultCity *)v4 setLatitude:?];
  v7 = [v3 name];
  [(WCDefaultCity *)v4 setName:v7];

  v8 = [v3 unlocalizedName];
  [(WCDefaultCity *)v4 setUnlocalizedName:v8];

  v9 = [v3 countryName];
  [(WCDefaultCity *)v4 setCountryName:v9];

  v10 = [v3 unlocalizedCountryName];
  [(WCDefaultCity *)v4 setUnlocalizedCountryName:v10];

  v11 = [v3 countryOverride];
  [(WCDefaultCity *)v4 setCountryOverride:v11];

  v12 = [v3 unlocalizedCountryOverride];

  [(WCDefaultCity *)v4 setUnlocalizedCountryOverride:v12];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = WCDefaultCity;
  v4 = [(WCDefaultCity *)&v10 description];
  v5 = [(WCDefaultCity *)self name];
  v6 = [(WCDefaultCity *)self countryName];
  v7 = [(WCDefaultCity *)self countryOverride];
  v8 = [v3 stringWithFormat:@"%@ %@, %@ [%@] || %@, %@ || %f %f", v4, v5, v6, v7, self->_timeZone, self->_localeCode, self->_latitude, self->_longitude];

  return v8;
}

@end