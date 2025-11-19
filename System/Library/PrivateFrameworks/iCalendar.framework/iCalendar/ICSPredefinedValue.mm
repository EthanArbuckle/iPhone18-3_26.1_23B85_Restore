@interface ICSPredefinedValue
+ (id)numberWithLong:(int64_t)a3;
- (ICSPredefinedValue)initWithBytes:(const void *)a3 objCType:(const char *)a4;
- (ICSPredefinedValue)initWithCoder:(id)a3;
- (ICSPredefinedValue)initWithLong:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICSPredefinedValue

+ (id)numberWithLong:(int64_t)a3
{
  v3 = [objc_allocWithZone(a1) initWithLong:a3];

  return v3;
}

- (ICSPredefinedValue)initWithLong:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICSPredefinedValue;
  result = [(ICSPredefinedValue *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (ICSPredefinedValue)initWithBytes:(const void *)a3 objCType:(const char *)a4
{
  v6.receiver = self;
  v6.super_class = ICSPredefinedValue;
  result = [(ICSPredefinedValue *)&v6 init:a3];
  if (result)
  {
    result->_value = *a3;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  value = self->_value;
  v5 = a3;
  v6 = [v3 numberWithLong:value];
  [v5 encodeObject:v6 forKey:@"EnumValue"];
}

- (ICSPredefinedValue)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICSPredefinedValue;
  v5 = [(ICSPredefinedValue *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EnumValue"];
    v5->_value = [v6 longValue];
  }

  return v5;
}

@end