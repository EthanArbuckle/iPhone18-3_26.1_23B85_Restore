@interface STStatusBarDataWeatherEntry
+ (id)entryWithImageName:(id)name temperature:(id)temperature aqi:(id)aqi;
- (STStatusBarDataWeatherEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataWeatherEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataWeatherEntry

+ (id)entryWithImageName:(id)name temperature:(id)temperature aqi:(id)aqi
{
  aqiCopy = aqi;
  temperatureCopy = temperature;
  v10 = [self entryWithImageNamed:name];
  v11 = [temperatureCopy copy];

  v12 = v10[3];
  v10[3] = v11;

  v13 = [aqiCopy copy];
  v14 = v10[4];
  v10[4] = v13;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataWeatherEntry;
  coderCopy = coder;
  [(STStatusBarDataImageEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_temperature forKey:{@"temperature", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_aqi forKey:@"aqi"];
}

- (STStatusBarDataWeatherEntry)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = STStatusBarDataWeatherEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataImageEntry *)&v10 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"temperature", v10.receiver, v10.super_class}];
  temperature = v4->_temperature;
  v4->_temperature = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aqi"];

  aqi = v4->_aqi;
  v4->_aqi = v7;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataWeatherEntry;
  succinctDescriptionBuilder = [(STStatusBarDataImageEntry *)&v7 succinctDescriptionBuilder];
  temperature = [(STStatusBarDataWeatherEntry *)self temperature];
  [succinctDescriptionBuilder appendString:temperature withName:@"temperature"];

  v5 = [(STStatusBarDataWeatherEntry *)self aqi];
  [succinctDescriptionBuilder appendString:v5 withName:@"aqi"];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = STStatusBarDataWeatherEntry;
  v5 = [(STStatusBarDataImageEntry *)&v18 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  temperature = [(STStatusBarDataWeatherEntry *)self temperature];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__STStatusBarDataWeatherEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DDD28;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendString:temperature counterpart:v16];

  v10 = [(STStatusBarDataWeatherEntry *)self aqi];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__STStatusBarDataWeatherEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DDD28;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendString:v10 counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v9.receiver = self;
  v9.super_class = STStatusBarDataWeatherEntry;
  _hashBuilder = [(STStatusBarDataImageEntry *)&v9 _hashBuilder];
  temperature = [(STStatusBarDataWeatherEntry *)self temperature];
  v5 = [_hashBuilder appendString:temperature];

  v6 = [(STStatusBarDataWeatherEntry *)self aqi];
  v7 = [_hashBuilder appendString:v6];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataWeatherEntry;
  coderCopy = coder;
  [(STStatusBarDataImageEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_temperature forKey:{@"temperature", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_aqi forKey:@"aqi"];
}

- (STStatusBarDataWeatherEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STStatusBarDataWeatherEntry;
  v5 = [(STStatusBarDataImageEntry *)&v11 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v6;

    v8 = [coderCopy decodeStringForKey:@"aqi"];
    aqi = v5->_aqi;
    v5->_aqi = v8;
  }

  return v5;
}

@end