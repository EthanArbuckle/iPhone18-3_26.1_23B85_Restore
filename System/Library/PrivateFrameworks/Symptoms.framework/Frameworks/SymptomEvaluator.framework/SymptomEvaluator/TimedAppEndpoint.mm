@interface TimedAppEndpoint
- (BOOL)isEqual:(id)a3;
- (TimedAppEndpoint)initWithCoder:(id)a3;
- (TimedAppEndpoint)initWithEndpointName:(id)a3 type:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TimedAppEndpoint

- (TimedAppEndpoint)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TimedAppEndpoint;
  v5 = [(TimedAppEndpoint *)&v10 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(TimedAppEndpoint *)self name];
  [v6 encodeObject:v5 forKey:@"name"];

  [v6 encodeInteger:-[TimedAppEndpoint type](self forKey:{"type"), @"type"}];
  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TimedAppEndpoint);
  objc_storeStrong(&v4->_name, self->_name);
  v4->_type = self->_type;
  return v4;
}

- (TimedAppEndpoint)initWithEndpointName:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TimedAppEndpoint;
  v8 = [(TimedAppEndpoint *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_type = a4;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(TimedAppEndpoint *)self name];
  v5 = [v3 initWithFormat:@"%@-%lu", v4, -[TimedAppEndpoint type](self, "type")];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TimedAppEndpoint *)self name];
      v7 = [(TimedAppEndpoint *)v5 name];

      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(TimedAppEndpoint *)self name];
  v5 = [v3 initWithFormat:@"%@", v4];

  v6 = [v5 hash];
  return v6;
}

@end