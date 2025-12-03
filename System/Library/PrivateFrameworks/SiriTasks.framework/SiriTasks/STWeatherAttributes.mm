@interface STWeatherAttributes
- (STWeatherAttributes)initWithCoder:(id)coder;
- (id)_initWithCondition:(int64_t)condition temperature:(id)temperature highTemperature:(id)highTemperature lowTemperature:(id)lowTemperature chanceOfPrecipitation:(id)precipitation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STWeatherAttributes

- (STWeatherAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = STWeatherAttributes;
  v5 = [(STSiriModelObject *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_condition = [coderCopy decodeIntegerForKey:@"_condition"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_highTemperature"];
    highTemperature = v5->_highTemperature;
    v5->_highTemperature = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lowTemperature"];
    lowTemperature = v5->_lowTemperature;
    v5->_lowTemperature = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_chanceOfPrecipitation"];
    chanceOfPrecipitation = v5->_chanceOfPrecipitation;
    v5->_chanceOfPrecipitation = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STWeatherAttributes;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_condition forKey:{@"_condition", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_temperature forKey:@"_temperature"];
  [coderCopy encodeObject:self->_highTemperature forKey:@"_highTemperature"];
  [coderCopy encodeObject:self->_lowTemperature forKey:@"_lowTemperature"];
  [coderCopy encodeObject:self->_chanceOfPrecipitation forKey:@"_chanceOfPrecipitation"];
}

- (id)_initWithCondition:(int64_t)condition temperature:(id)temperature highTemperature:(id)highTemperature lowTemperature:(id)lowTemperature chanceOfPrecipitation:(id)precipitation
{
  temperatureCopy = temperature;
  highTemperatureCopy = highTemperature;
  lowTemperatureCopy = lowTemperature;
  precipitationCopy = precipitation;
  v20.receiver = self;
  v20.super_class = STWeatherAttributes;
  v17 = [(STWeatherAttributes *)&v20 init];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    v17->_condition = condition;
    objc_storeStrong(&v17->_temperature, temperature);
    objc_storeStrong(p_isa + 4, highTemperature);
    objc_storeStrong(p_isa + 5, lowTemperature);
    objc_storeStrong(p_isa + 6, precipitation);
  }

  return p_isa;
}

@end