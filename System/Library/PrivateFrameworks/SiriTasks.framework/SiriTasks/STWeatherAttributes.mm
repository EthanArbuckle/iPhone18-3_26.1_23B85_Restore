@interface STWeatherAttributes
- (STWeatherAttributes)initWithCoder:(id)a3;
- (id)_initWithCondition:(int64_t)a3 temperature:(id)a4 highTemperature:(id)a5 lowTemperature:(id)a6 chanceOfPrecipitation:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STWeatherAttributes

- (STWeatherAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STWeatherAttributes;
  v5 = [(STSiriModelObject *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_condition = [v4 decodeIntegerForKey:@"_condition"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_highTemperature"];
    highTemperature = v5->_highTemperature;
    v5->_highTemperature = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lowTemperature"];
    lowTemperature = v5->_lowTemperature;
    v5->_lowTemperature = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_chanceOfPrecipitation"];
    chanceOfPrecipitation = v5->_chanceOfPrecipitation;
    v5->_chanceOfPrecipitation = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STWeatherAttributes;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_condition forKey:{@"_condition", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_temperature forKey:@"_temperature"];
  [v4 encodeObject:self->_highTemperature forKey:@"_highTemperature"];
  [v4 encodeObject:self->_lowTemperature forKey:@"_lowTemperature"];
  [v4 encodeObject:self->_chanceOfPrecipitation forKey:@"_chanceOfPrecipitation"];
}

- (id)_initWithCondition:(int64_t)a3 temperature:(id)a4 highTemperature:(id)a5 lowTemperature:(id)a6 chanceOfPrecipitation:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = STWeatherAttributes;
  v17 = [(STWeatherAttributes *)&v20 init];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    v17->_condition = a3;
    objc_storeStrong(&v17->_temperature, a4);
    objc_storeStrong(p_isa + 4, a5);
    objc_storeStrong(p_isa + 5, a6);
    objc_storeStrong(p_isa + 6, a7);
  }

  return p_isa;
}

@end