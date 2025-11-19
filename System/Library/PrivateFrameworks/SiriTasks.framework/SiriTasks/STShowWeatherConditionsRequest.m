@interface STShowWeatherConditionsRequest
- (STShowWeatherConditionsRequest)initWithCoder:(id)a3;
- (id)_initWithAttributes:(id)a3 city:(id)a4;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowWeatherConditionsRequest

- (STShowWeatherConditionsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STShowWeatherConditionsRequest;
  v5 = [(AFSiriRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowWeatherConditionsRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_attributes forKey:{@"_attributes", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_city forKey:@"_city"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithAttributes:(id)a3 city:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STShowWeatherConditionsRequest;
  v9 = [(AFSiriRequest *)&v12 init];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_attributes, a3);
    objc_storeStrong(p_isa + 6, a4);
  }

  return p_isa;
}

@end