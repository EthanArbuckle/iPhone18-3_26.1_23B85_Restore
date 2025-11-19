@interface TSClockManagerTest
+ (BOOL)mangled;
@end

@implementation TSClockManagerTest

+ (BOOL)mangled
{
  v2 = objc_opt_class();
  if (![v2 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v3 = objc_opt_class();
  if (![v3 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v4 = objc_opt_class();
  if (![v4 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (![v5 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v6 = objc_opt_class();
  if (![v6 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v7 = objc_opt_class();
  v8 = objc_opt_class();

  return [v7 isSubclassOfClass:v8];
}

@end