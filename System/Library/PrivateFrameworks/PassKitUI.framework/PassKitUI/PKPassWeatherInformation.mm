@interface PKPassWeatherInformation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWeatherInformation:(id)a3;
- (PKPassWeatherInformation)initWithCityName:(id)a3 date:(id)a4 lightSymbol:(id)a5 darkSymbol:(id)a6 weatherDescription:(id)a7 highTemperature:(id)a8 lowTemperature:(id)a9 rawLocation:(id)a10 attributionURL:(id)a11 weatherURL:(id)a12 isHistoricalEstimate:(BOOL)a13 isForPastDate:(BOOL)a14;
- (PKPassWeatherInformation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassWeatherInformation

- (PKPassWeatherInformation)initWithCityName:(id)a3 date:(id)a4 lightSymbol:(id)a5 darkSymbol:(id)a6 weatherDescription:(id)a7 highTemperature:(id)a8 lowTemperature:(id)a9 rawLocation:(id)a10 attributionURL:(id)a11 weatherURL:(id)a12 isHistoricalEstimate:(BOOL)a13 isForPastDate:(BOOL)a14
{
  v37 = a3;
  obj = a4;
  v36 = a4;
  v29 = a5;
  v35 = a5;
  v34 = a6;
  v30 = a7;
  v33 = a7;
  v31 = a8;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v38.receiver = self;
  v38.super_class = PKPassWeatherInformation;
  v25 = [(PKPassWeatherInformation *)&v38 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_cityName, a3);
    objc_storeStrong(&v26->_date, obj);
    objc_storeStrong(&v26->_lightSymbol, v29);
    objc_storeStrong(&v26->_darkSymbol, a6);
    objc_storeStrong(&v26->_weatherDescription, v30);
    objc_storeStrong(&v26->_highTemperature, v31);
    objc_storeStrong(&v26->_lowTemperature, a9);
    objc_storeStrong(&v26->_rawLocation, a10);
    objc_storeStrong(&v26->_attributionURL, a11);
    objc_storeStrong(&v26->_weatherURL, a12);
    v26->_isHistoricalEstimate = a13;
    v26->_isForPastDate = a14;
  }

  return v26;
}

- (PKPassWeatherInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKPassWeatherInformation;
  v5 = [(PKPassWeatherInformation *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cityName"];
    cityName = v5->_cityName;
    v5->_cityName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weatherDate"];
    date = v5->_date;
    v5->_date = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lightSymbol"];
    lightSymbol = v5->_lightSymbol;
    v5->_lightSymbol = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"darkSymbol"];
    darkSymbol = v5->_darkSymbol;
    v5->_darkSymbol = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weatherDescription"];
    weatherDescription = v5->_weatherDescription;
    v5->_weatherDescription = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"highTemperature"];
    highTemperature = v5->_highTemperature;
    v5->_highTemperature = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lowTemperature"];
    lowTemperature = v5->_lowTemperature;
    v5->_lowTemperature = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawLocation"];
    rawLocation = v5->_rawLocation;
    v5->_rawLocation = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributionURL"];
    attributionURL = v5->_attributionURL;
    v5->_attributionURL = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weatherURL"];
    weatherURL = v5->_weatherURL;
    v5->_weatherURL = v24;

    v5->_isHistoricalEstimate = [v4 decodeBoolForKey:@"historicalEstimate"];
    v5->_isForPastDate = [v4 decodeBoolForKey:@"forPastDate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cityName = self->_cityName;
  v5 = a3;
  [v5 encodeObject:cityName forKey:@"cityName"];
  [v5 encodeObject:self->_date forKey:@"weatherDate"];
  [v5 encodeObject:self->_lightSymbol forKey:@"lightSymbol"];
  [v5 encodeObject:self->_darkSymbol forKey:@"darkSymbol"];
  [v5 encodeObject:self->_weatherDescription forKey:@"weatherDescription"];
  [v5 encodeObject:self->_highTemperature forKey:@"highTemperature"];
  [v5 encodeObject:self->_lowTemperature forKey:@"lowTemperature"];
  [v5 encodeObject:self->_rawLocation forKey:@"rawLocation"];
  [v5 encodeObject:self->_attributionURL forKey:@"attributionURL"];
  [v5 encodeObject:self->_weatherURL forKey:@"weatherURL"];
  [v5 encodeBool:self->_isHistoricalEstimate forKey:@"historicalEstimate"];
  [v5 encodeBool:self->_isForPastDate forKey:@"forPastDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(PKPassWeatherInformation);
  v6 = [(NSString *)self->_cityName copyWithZone:a3];
  cityName = v5->_cityName;
  v5->_cityName = v6;

  v8 = [(NSDate *)self->_date copyWithZone:a3];
  date = v5->_date;
  v5->_date = v8;

  v10 = [(PKPassWeatherSymbol *)self->_lightSymbol copyWithZone:a3];
  lightSymbol = v5->_lightSymbol;
  v5->_lightSymbol = v10;

  v12 = [(PKPassWeatherSymbol *)self->_darkSymbol copyWithZone:a3];
  darkSymbol = v5->_darkSymbol;
  v5->_darkSymbol = v12;

  v14 = [(NSString *)self->_weatherDescription copyWithZone:a3];
  weatherDescription = v5->_weatherDescription;
  v5->_weatherDescription = v14;

  v16 = [(NSMeasurement *)self->_highTemperature copyWithZone:a3];
  highTemperature = v5->_highTemperature;
  v5->_highTemperature = v16;

  v18 = [(NSMeasurement *)self->_lowTemperature copyWithZone:a3];
  lowTemperature = v5->_lowTemperature;
  v5->_lowTemperature = v18;

  v20 = [(CLLocation *)self->_rawLocation copyWithZone:a3];
  rawLocation = v5->_rawLocation;
  v5->_rawLocation = v20;

  v22 = [(NSURL *)self->_attributionURL copyWithZone:a3];
  attributionURL = v5->_attributionURL;
  v5->_attributionURL = v22;

  v24 = [(NSURL *)self->_weatherURL copyWithZone:a3];
  weatherURL = v5->_weatherURL;
  v5->_weatherURL = v24;

  v5->_isHistoricalEstimate = self->_isHistoricalEstimate;
  v5->_isForPastDate = self->_isForPastDate;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassWeatherInformation *)self isEqualToWeatherInformation:v5];
  }

  return v6;
}

- (BOOL)isEqualToWeatherInformation:(id)a3
{
  v4 = a3;
  if (!PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects())
  {
    goto LABEL_19;
  }

  v5 = v4[7];
  v6 = self->_weatherDescription;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {

LABEL_19:
      v10 = 0;
      goto LABEL_20;
    }

    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (!PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects() || self->_isHistoricalEstimate != *(v4 + 8))
  {
    goto LABEL_19;
  }

  v10 = self->_isForPastDate == *(v4 + 9);
LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_cityName];
  [v3 safelyAddObject:self->_date];
  [v3 safelyAddObject:self->_lightSymbol];
  [v3 safelyAddObject:self->_darkSymbol];
  [v3 safelyAddObject:self->_weatherDescription];
  [v3 safelyAddObject:self->_highTemperature];
  [v3 safelyAddObject:self->_lowTemperature];
  [v3 safelyAddObject:self->_rawLocation];
  [v3 safelyAddObject:self->_attributionURL];
  [v3 safelyAddObject:self->_weatherURL];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHistoricalEstimate];
  [v3 safelyAddObject:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isForPastDate];
  [v3 safelyAddObject:v5];

  v6 = PKCombinedHash();
  return v6;
}

@end