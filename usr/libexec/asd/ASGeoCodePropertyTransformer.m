@interface ASGeoCodePropertyTransformer
+ (id)allowedTopLevelClasses;
@end

@implementation ASGeoCodePropertyTransformer

+ (id)allowedTopLevelClasses
{
  v2 = objc_opt_self();
  v7[0] = v2;
  v3 = objc_opt_self();
  v7[1] = v3;
  v4 = objc_opt_self();
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

@end