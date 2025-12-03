@interface OZShaderParameter
- (OZShaderParameter)initWithName:(id)name type:(int64_t)type;
- (void)dealloc;
@end

@implementation OZShaderParameter

- (OZShaderParameter)initWithName:(id)name type:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = OZShaderParameter;
  v6 = [(OZShaderParameter *)&v8 init];
  if (v6)
  {
    v6->_name = [name copy];
    v6->_type = type;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OZShaderParameter;
  [(OZShaderParameter *)&v3 dealloc];
}

@end