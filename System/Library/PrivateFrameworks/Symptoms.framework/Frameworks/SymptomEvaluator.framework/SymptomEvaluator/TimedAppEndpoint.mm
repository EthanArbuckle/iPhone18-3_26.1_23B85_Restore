@interface TimedAppEndpoint
- (BOOL)isEqual:(id)equal;
- (TimedAppEndpoint)initWithCoder:(id)coder;
- (TimedAppEndpoint)initWithEndpointName:(id)name type:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TimedAppEndpoint

- (TimedAppEndpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TimedAppEndpoint;
  v5 = [(TimedAppEndpoint *)&v10 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  name = [(TimedAppEndpoint *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInteger:-[TimedAppEndpoint type](self forKey:{"type"), @"type"}];
  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TimedAppEndpoint);
  objc_storeStrong(&v4->_name, self->_name);
  v4->_type = self->_type;
  return v4;
}

- (TimedAppEndpoint)initWithEndpointName:(id)name type:(unint64_t)type
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = TimedAppEndpoint;
  v8 = [(TimedAppEndpoint *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_type = type;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  name = [(TimedAppEndpoint *)self name];
  v5 = [v3 initWithFormat:@"%@-%lu", name, -[TimedAppEndpoint type](self, "type")];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(TimedAppEndpoint *)self name];
      name2 = [(TimedAppEndpoint *)v5 name];

      v8 = [name isEqualToString:name2];
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
  name = [(TimedAppEndpoint *)self name];
  v5 = [v3 initWithFormat:@"%@", name];

  v6 = [v5 hash];
  return v6;
}

@end