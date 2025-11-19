@interface PUIPosterSceneExtension
+ (id)hostComponents;
@end

@implementation PUIPosterSceneExtension

+ (id)hostComponents
{
  v2 = objc_opt_new();
  [v2 addObject:objc_opt_class()];

  return v2;
}

@end