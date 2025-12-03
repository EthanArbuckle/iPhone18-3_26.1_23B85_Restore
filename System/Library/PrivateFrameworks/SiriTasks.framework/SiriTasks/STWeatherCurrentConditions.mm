@interface STWeatherCurrentConditions
- (STWeatherCurrentConditions)initWithCoder:(id)coder;
- (id)_initWithConditionCode:(int64_t)code temperature:(id)temperature highTemperature:(id)highTemperature lowTemperature:(id)lowTemperature;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STWeatherCurrentConditions

- (STWeatherCurrentConditions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STWeatherCurrentConditions;
  v5 = [(STSiriModelObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_conditionCode = [coderCopy decodeIntegerForKey:@"_conditionCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_highTemperature"];
    highTemperature = v5->_highTemperature;
    v5->_highTemperature = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lowTemperature"];
    lowTemperature = v5->_lowTemperature;
    v5->_lowTemperature = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STWeatherCurrentConditions;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_conditionCode forKey:{@"_conditionCode", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_temperature forKey:@"_temperature"];
  [coderCopy encodeObject:self->_highTemperature forKey:@"_highTemperature"];
  [coderCopy encodeObject:self->_lowTemperature forKey:@"_lowTemperature"];
}

- (id)_initWithConditionCode:(int64_t)code temperature:(id)temperature highTemperature:(id)highTemperature lowTemperature:(id)lowTemperature
{
  temperatureCopy = temperature;
  highTemperatureCopy = highTemperature;
  lowTemperatureCopy = lowTemperature;
  v17.receiver = self;
  v17.super_class = STWeatherCurrentConditions;
  v14 = [(STWeatherCurrentConditions *)&v17 init];
  p_isa = &v14->super.super.isa;
  if (v14)
  {
    v14->_conditionCode = code;
    objc_storeStrong(&v14->_temperature, temperature);
    objc_storeStrong(p_isa + 4, highTemperature);
    objc_storeStrong(p_isa + 5, lowTemperature);
  }

  return p_isa;
}

@end