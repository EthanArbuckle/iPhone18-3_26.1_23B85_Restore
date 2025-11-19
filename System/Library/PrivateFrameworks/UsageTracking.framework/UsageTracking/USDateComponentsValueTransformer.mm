@interface USDateComponentsValueTransformer
+ (id)allowedTopLevelClasses;
@end

@implementation USDateComponentsValueTransformer

+ (id)allowedTopLevelClasses
{
  v2 = MEMORY[0x277CBEA60];
  v3 = objc_opt_class();

  return [v2 arrayWithObject:v3];
}

@end