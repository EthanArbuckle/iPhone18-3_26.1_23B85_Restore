@interface STStatusBarDataWeatherEntry
+ (id)entryWithImageName:(id)a3 temperature:(id)a4 aqi:(id)a5;
- (STStatusBarDataWeatherEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataWeatherEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataWeatherEntry

+ (id)entryWithImageName:(id)a3 temperature:(id)a4 aqi:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 entryWithImageNamed:a3];
  v11 = [v9 copy];

  v12 = v10[3];
  v10[3] = v11;

  v13 = [v8 copy];
  v14 = v10[4];
  v10[4] = v13;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataWeatherEntry;
  v4 = a3;
  [(STStatusBarDataImageEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_temperature forKey:{@"temperature", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_aqi forKey:@"aqi"];
}

- (STStatusBarDataWeatherEntry)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = STStatusBarDataWeatherEntry;
  v3 = a3;
  v4 = [(STStatusBarDataImageEntry *)&v10 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"temperature", v10.receiver, v10.super_class}];
  temperature = v4->_temperature;
  v4->_temperature = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"aqi"];

  aqi = v4->_aqi;
  v4->_aqi = v7;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataWeatherEntry;
  v3 = [(STStatusBarDataImageEntry *)&v7 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataWeatherEntry *)self temperature];
  [v3 appendString:v4 withName:@"temperature"];

  v5 = [(STStatusBarDataWeatherEntry *)self aqi];
  [v3 appendString:v5 withName:@"aqi"];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STStatusBarDataWeatherEntry;
  v5 = [(STStatusBarDataImageEntry *)&v18 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataWeatherEntry *)self temperature];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__STStatusBarDataWeatherEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DDD28;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendString:v7 counterpart:v16];

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
  v3 = [(STStatusBarDataImageEntry *)&v9 _hashBuilder];
  v4 = [(STStatusBarDataWeatherEntry *)self temperature];
  v5 = [v3 appendString:v4];

  v6 = [(STStatusBarDataWeatherEntry *)self aqi];
  v7 = [v3 appendString:v6];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataWeatherEntry;
  v4 = a3;
  [(STStatusBarDataImageEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeObject:self->_temperature forKey:{@"temperature", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_aqi forKey:@"aqi"];
}

- (STStatusBarDataWeatherEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STStatusBarDataWeatherEntry;
  v5 = [(STStatusBarDataImageEntry *)&v11 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v6;

    v8 = [v4 decodeStringForKey:@"aqi"];
    aqi = v5->_aqi;
    v5->_aqi = v8;
  }

  return v5;
}

@end