@interface SXHints
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
@end

@implementation SXHints

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"conditions"] || objc_msgSend(propertyCopy, "isEqualToString:", @"conditionals"))
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SXHints;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v9 = v8;

  return v9;
}

@end