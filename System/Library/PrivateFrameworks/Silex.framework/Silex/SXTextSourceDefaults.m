@interface SXTextSourceDefaults
+ (id)defaults;
- (SXTextSourceDefaults)init;
@end

@implementation SXTextSourceDefaults

+ (id)defaults
{
  v0 = objc_alloc_init(objc_opt_self());

  return v0;
}

- (SXTextSourceDefaults)init
{
  v3.receiver = self;
  v3.super_class = SXTextSourceDefaults;
  result = [(SXTextSourceDefaults *)&v3 init];
  if (result)
  {
    result->_fontSize = 18.0;
  }

  return result;
}

@end