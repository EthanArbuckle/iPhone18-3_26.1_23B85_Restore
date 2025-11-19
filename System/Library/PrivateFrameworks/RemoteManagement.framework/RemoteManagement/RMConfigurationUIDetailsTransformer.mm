@interface RMConfigurationUIDetailsTransformer
+ (id)allowedTopLevelClasses;
@end

@implementation RMConfigurationUIDetailsTransformer

+ (id)allowedTopLevelClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end