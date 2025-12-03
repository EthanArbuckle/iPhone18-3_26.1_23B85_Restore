@interface WFChangeForecast
- (WFChangeForecast)initWithCoder:(id)coder;
- (WFChangeForecast)initWithDate:(id)date descriptionSameTimeZone:(id)zone descriptionDifferentTimeZone:(id)timeZone;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFChangeForecast

- (WFChangeForecast)initWithDate:(id)date descriptionSameTimeZone:(id)zone descriptionDifferentTimeZone:(id)timeZone
{
  dateCopy = date;
  zoneCopy = zone;
  timeZoneCopy = timeZone;
  v15.receiver = self;
  v15.super_class = WFChangeForecast;
  v11 = [(WFChangeForecast *)&v15 init];
  if (v11)
  {
    v12 = [dateCopy copy];
    date = v11->_date;
    v11->_date = v12;

    objc_storeStrong(&v11->_descriptionSameTimeZone, zone);
    objc_storeStrong(&v11->_descriptionDifferentTimeZone, timeZone);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WFChangeForecast alloc];
  date = self->_date;
  descriptionSameTimeZone = self->_descriptionSameTimeZone;

  return [(WFChangeForecast *)v4 initWithDate:date descriptionSameTimeZone:descriptionSameTimeZone descriptionDifferentTimeZone:descriptionSameTimeZone];
}

- (WFChangeForecast)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFChangeForecastDateKey"];
  v6 = [coderCopy decodeObjectForKey:@"WFChangeForecastSameTimeZoneDescriptionKey"];
  v7 = [coderCopy decodeObjectForKey:@"WFChangeForecastDifferentTimeZoneDescriptionKey"];

  v8 = [(WFChangeForecast *)self initWithDate:v5 descriptionSameTimeZone:v6 descriptionDifferentTimeZone:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"WFChangeForecastDateKey"];
  [coderCopy encodeObject:self->_descriptionSameTimeZone forKey:@"WFChangeForecastSameTimeZoneDescriptionKey"];
  [coderCopy encodeObject:self->_descriptionDifferentTimeZone forKey:@"WFChangeForecastDifferentTimeZoneDescriptionKey"];
}

@end