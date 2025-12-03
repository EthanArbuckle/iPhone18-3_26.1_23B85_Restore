@interface STShowWeatherConditionsRequest
- (STShowWeatherConditionsRequest)initWithCoder:(id)coder;
- (id)_initWithAttributes:(id)attributes city:(id)city;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowWeatherConditionsRequest

- (STShowWeatherConditionsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STShowWeatherConditionsRequest;
  v5 = [(AFSiriRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    city = v5->_city;
    v5->_city = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowWeatherConditionsRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_attributes forKey:{@"_attributes", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_city forKey:@"_city"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithAttributes:(id)attributes city:(id)city
{
  attributesCopy = attributes;
  cityCopy = city;
  v12.receiver = self;
  v12.super_class = STShowWeatherConditionsRequest;
  v9 = [(AFSiriRequest *)&v12 init];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_attributes, attributes);
    objc_storeStrong(p_isa + 6, city);
  }

  return p_isa;
}

@end