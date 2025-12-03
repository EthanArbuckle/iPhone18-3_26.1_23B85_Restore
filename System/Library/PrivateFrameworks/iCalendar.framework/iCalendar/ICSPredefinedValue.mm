@interface ICSPredefinedValue
+ (id)numberWithLong:(int64_t)long;
- (ICSPredefinedValue)initWithBytes:(const void *)bytes objCType:(const char *)type;
- (ICSPredefinedValue)initWithCoder:(id)coder;
- (ICSPredefinedValue)initWithLong:(int64_t)long;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICSPredefinedValue

+ (id)numberWithLong:(int64_t)long
{
  v3 = [objc_allocWithZone(self) initWithLong:long];

  return v3;
}

- (ICSPredefinedValue)initWithLong:(int64_t)long
{
  v5.receiver = self;
  v5.super_class = ICSPredefinedValue;
  result = [(ICSPredefinedValue *)&v5 init];
  if (result)
  {
    result->_value = long;
  }

  return result;
}

- (ICSPredefinedValue)initWithBytes:(const void *)bytes objCType:(const char *)type
{
  v6.receiver = self;
  v6.super_class = ICSPredefinedValue;
  result = [(ICSPredefinedValue *)&v6 init:bytes];
  if (result)
  {
    result->_value = *bytes;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  value = self->_value;
  coderCopy = coder;
  v6 = [v3 numberWithLong:value];
  [coderCopy encodeObject:v6 forKey:@"EnumValue"];
}

- (ICSPredefinedValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ICSPredefinedValue;
  v5 = [(ICSPredefinedValue *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EnumValue"];
    v5->_value = [v6 longValue];
  }

  return v5;
}

@end