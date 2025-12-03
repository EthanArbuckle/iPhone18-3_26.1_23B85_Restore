@interface PKPassWeatherInformation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWeatherInformation:(id)information;
- (PKPassWeatherInformation)initWithCityName:(id)name date:(id)date lightSymbol:(id)symbol darkSymbol:(id)darkSymbol weatherDescription:(id)description highTemperature:(id)temperature lowTemperature:(id)lowTemperature rawLocation:(id)self0 attributionURL:(id)self1 weatherURL:(id)self2 isHistoricalEstimate:(BOOL)self3 isForPastDate:(BOOL)self4;
- (PKPassWeatherInformation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassWeatherInformation

- (PKPassWeatherInformation)initWithCityName:(id)name date:(id)date lightSymbol:(id)symbol darkSymbol:(id)darkSymbol weatherDescription:(id)description highTemperature:(id)temperature lowTemperature:(id)lowTemperature rawLocation:(id)self0 attributionURL:(id)self1 weatherURL:(id)self2 isHistoricalEstimate:(BOOL)self3 isForPastDate:(BOOL)self4
{
  nameCopy = name;
  obj = date;
  dateCopy = date;
  symbolCopy = symbol;
  symbolCopy2 = symbol;
  darkSymbolCopy = darkSymbol;
  descriptionCopy = description;
  descriptionCopy2 = description;
  temperatureCopy = temperature;
  temperatureCopy2 = temperature;
  lowTemperatureCopy = lowTemperature;
  locationCopy = location;
  lCopy = l;
  rLCopy = rL;
  v38.receiver = self;
  v38.super_class = PKPassWeatherInformation;
  v25 = [(PKPassWeatherInformation *)&v38 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_cityName, name);
    objc_storeStrong(&v26->_date, obj);
    objc_storeStrong(&v26->_lightSymbol, symbolCopy);
    objc_storeStrong(&v26->_darkSymbol, darkSymbol);
    objc_storeStrong(&v26->_weatherDescription, descriptionCopy);
    objc_storeStrong(&v26->_highTemperature, temperatureCopy);
    objc_storeStrong(&v26->_lowTemperature, lowTemperature);
    objc_storeStrong(&v26->_rawLocation, location);
    objc_storeStrong(&v26->_attributionURL, l);
    objc_storeStrong(&v26->_weatherURL, rL);
    v26->_isHistoricalEstimate = estimate;
    v26->_isForPastDate = pastDate;
  }

  return v26;
}

- (PKPassWeatherInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = PKPassWeatherInformation;
  v5 = [(PKPassWeatherInformation *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cityName"];
    cityName = v5->_cityName;
    v5->_cityName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weatherDate"];
    date = v5->_date;
    v5->_date = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lightSymbol"];
    lightSymbol = v5->_lightSymbol;
    v5->_lightSymbol = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"darkSymbol"];
    darkSymbol = v5->_darkSymbol;
    v5->_darkSymbol = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weatherDescription"];
    weatherDescription = v5->_weatherDescription;
    v5->_weatherDescription = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"highTemperature"];
    highTemperature = v5->_highTemperature;
    v5->_highTemperature = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lowTemperature"];
    lowTemperature = v5->_lowTemperature;
    v5->_lowTemperature = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawLocation"];
    rawLocation = v5->_rawLocation;
    v5->_rawLocation = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributionURL"];
    attributionURL = v5->_attributionURL;
    v5->_attributionURL = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weatherURL"];
    weatherURL = v5->_weatherURL;
    v5->_weatherURL = v24;

    v5->_isHistoricalEstimate = [coderCopy decodeBoolForKey:@"historicalEstimate"];
    v5->_isForPastDate = [coderCopy decodeBoolForKey:@"forPastDate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cityName = self->_cityName;
  coderCopy = coder;
  [coderCopy encodeObject:cityName forKey:@"cityName"];
  [coderCopy encodeObject:self->_date forKey:@"weatherDate"];
  [coderCopy encodeObject:self->_lightSymbol forKey:@"lightSymbol"];
  [coderCopy encodeObject:self->_darkSymbol forKey:@"darkSymbol"];
  [coderCopy encodeObject:self->_weatherDescription forKey:@"weatherDescription"];
  [coderCopy encodeObject:self->_highTemperature forKey:@"highTemperature"];
  [coderCopy encodeObject:self->_lowTemperature forKey:@"lowTemperature"];
  [coderCopy encodeObject:self->_rawLocation forKey:@"rawLocation"];
  [coderCopy encodeObject:self->_attributionURL forKey:@"attributionURL"];
  [coderCopy encodeObject:self->_weatherURL forKey:@"weatherURL"];
  [coderCopy encodeBool:self->_isHistoricalEstimate forKey:@"historicalEstimate"];
  [coderCopy encodeBool:self->_isForPastDate forKey:@"forPastDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(PKPassWeatherInformation);
  v6 = [(NSString *)self->_cityName copyWithZone:zone];
  cityName = v5->_cityName;
  v5->_cityName = v6;

  v8 = [(NSDate *)self->_date copyWithZone:zone];
  date = v5->_date;
  v5->_date = v8;

  v10 = [(PKPassWeatherSymbol *)self->_lightSymbol copyWithZone:zone];
  lightSymbol = v5->_lightSymbol;
  v5->_lightSymbol = v10;

  v12 = [(PKPassWeatherSymbol *)self->_darkSymbol copyWithZone:zone];
  darkSymbol = v5->_darkSymbol;
  v5->_darkSymbol = v12;

  v14 = [(NSString *)self->_weatherDescription copyWithZone:zone];
  weatherDescription = v5->_weatherDescription;
  v5->_weatherDescription = v14;

  v16 = [(NSMeasurement *)self->_highTemperature copyWithZone:zone];
  highTemperature = v5->_highTemperature;
  v5->_highTemperature = v16;

  v18 = [(NSMeasurement *)self->_lowTemperature copyWithZone:zone];
  lowTemperature = v5->_lowTemperature;
  v5->_lowTemperature = v18;

  v20 = [(CLLocation *)self->_rawLocation copyWithZone:zone];
  rawLocation = v5->_rawLocation;
  v5->_rawLocation = v20;

  v22 = [(NSURL *)self->_attributionURL copyWithZone:zone];
  attributionURL = v5->_attributionURL;
  v5->_attributionURL = v22;

  v24 = [(NSURL *)self->_weatherURL copyWithZone:zone];
  weatherURL = v5->_weatherURL;
  v5->_weatherURL = v24;

  v5->_isHistoricalEstimate = self->_isHistoricalEstimate;
  v5->_isForPastDate = self->_isForPastDate;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassWeatherInformation *)self isEqualToWeatherInformation:v5];
  }

  return v6;
}

- (BOOL)isEqualToWeatherInformation:(id)information
{
  informationCopy = information;
  if (!PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects())
  {
    goto LABEL_19;
  }

  v5 = informationCopy[7];
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

  if (!PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects() || !PKEqualObjects() || self->_isHistoricalEstimate != *(informationCopy + 8))
  {
    goto LABEL_19;
  }

  v10 = self->_isForPastDate == *(informationCopy + 9);
LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_cityName];
  [array safelyAddObject:self->_date];
  [array safelyAddObject:self->_lightSymbol];
  [array safelyAddObject:self->_darkSymbol];
  [array safelyAddObject:self->_weatherDescription];
  [array safelyAddObject:self->_highTemperature];
  [array safelyAddObject:self->_lowTemperature];
  [array safelyAddObject:self->_rawLocation];
  [array safelyAddObject:self->_attributionURL];
  [array safelyAddObject:self->_weatherURL];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHistoricalEstimate];
  [array safelyAddObject:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isForPastDate];
  [array safelyAddObject:v5];

  v6 = PKCombinedHash();
  return v6;
}

@end