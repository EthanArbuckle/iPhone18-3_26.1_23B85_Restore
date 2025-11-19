@interface RMModelPayloadBase
+ (id)rm_payloadTypeName;
@end

@implementation RMModelPayloadBase

+ (id)rm_payloadTypeName
{
  if (objc_opt_class() == a1)
  {
    v3 = @"com.apple.activation";
  }

  else if (objc_opt_class() == a1)
  {
    v3 = @"com.apple.asset";
  }

  else if (objc_opt_class() == a1)
  {
    v3 = @"com.apple.configuration";
  }

  else if (objc_opt_class() == a1)
  {
    v3 = @"com.apple.command";
  }

  else
  {
    v3 = NSStringFromClass(a1);
  }

  return v3;
}

@end