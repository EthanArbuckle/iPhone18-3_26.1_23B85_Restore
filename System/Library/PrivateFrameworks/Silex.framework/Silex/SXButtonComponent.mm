@interface SXButtonComponent
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
@end

@implementation SXButtonComponent

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"action"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [valueCopy objectForKey:@"type"];
    v9 = [SXClassFactory classForBaseClass:objc_opt_class() type:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SXButtonComponent;
    v9 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  return v9;
}

@end