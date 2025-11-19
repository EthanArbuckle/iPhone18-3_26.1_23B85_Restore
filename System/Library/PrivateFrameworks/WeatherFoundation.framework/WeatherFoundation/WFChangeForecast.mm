@interface WFChangeForecast
- (WFChangeForecast)initWithCoder:(id)a3;
- (WFChangeForecast)initWithDate:(id)a3 descriptionSameTimeZone:(id)a4 descriptionDifferentTimeZone:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFChangeForecast

- (WFChangeForecast)initWithDate:(id)a3 descriptionSameTimeZone:(id)a4 descriptionDifferentTimeZone:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = WFChangeForecast;
  v11 = [(WFChangeForecast *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    date = v11->_date;
    v11->_date = v12;

    objc_storeStrong(&v11->_descriptionSameTimeZone, a4);
    objc_storeStrong(&v11->_descriptionDifferentTimeZone, a5);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WFChangeForecast alloc];
  date = self->_date;
  descriptionSameTimeZone = self->_descriptionSameTimeZone;

  return [(WFChangeForecast *)v4 initWithDate:date descriptionSameTimeZone:descriptionSameTimeZone descriptionDifferentTimeZone:descriptionSameTimeZone];
}

- (WFChangeForecast)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFChangeForecastDateKey"];
  v6 = [v4 decodeObjectForKey:@"WFChangeForecastSameTimeZoneDescriptionKey"];
  v7 = [v4 decodeObjectForKey:@"WFChangeForecastDifferentTimeZoneDescriptionKey"];

  v8 = [(WFChangeForecast *)self initWithDate:v5 descriptionSameTimeZone:v6 descriptionDifferentTimeZone:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"WFChangeForecastDateKey"];
  [v5 encodeObject:self->_descriptionSameTimeZone forKey:@"WFChangeForecastSameTimeZoneDescriptionKey"];
  [v5 encodeObject:self->_descriptionDifferentTimeZone forKey:@"WFChangeForecastDifferentTimeZoneDescriptionKey"];
}

@end