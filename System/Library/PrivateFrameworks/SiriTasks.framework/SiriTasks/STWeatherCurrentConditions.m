@interface STWeatherCurrentConditions
- (STWeatherCurrentConditions)initWithCoder:(id)a3;
- (id)_initWithConditionCode:(int64_t)a3 temperature:(id)a4 highTemperature:(id)a5 lowTemperature:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STWeatherCurrentConditions

- (STWeatherCurrentConditions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STWeatherCurrentConditions;
  v5 = [(STSiriModelObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_conditionCode = [v4 decodeIntegerForKey:@"_conditionCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_highTemperature"];
    highTemperature = v5->_highTemperature;
    v5->_highTemperature = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lowTemperature"];
    lowTemperature = v5->_lowTemperature;
    v5->_lowTemperature = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STWeatherCurrentConditions;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_conditionCode forKey:{@"_conditionCode", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_temperature forKey:@"_temperature"];
  [v4 encodeObject:self->_highTemperature forKey:@"_highTemperature"];
  [v4 encodeObject:self->_lowTemperature forKey:@"_lowTemperature"];
}

- (id)_initWithConditionCode:(int64_t)a3 temperature:(id)a4 highTemperature:(id)a5 lowTemperature:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = STWeatherCurrentConditions;
  v14 = [(STWeatherCurrentConditions *)&v17 init];
  p_isa = &v14->super.super.isa;
  if (v14)
  {
    v14->_conditionCode = a3;
    objc_storeStrong(&v14->_temperature, a4);
    objc_storeStrong(p_isa + 4, a5);
    objc_storeStrong(p_isa + 5, a6);
  }

  return p_isa;
}

@end