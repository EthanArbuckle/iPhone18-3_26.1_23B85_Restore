@interface TSPortTest
+ (BOOL)mangled;
@end

@implementation TSPortTest

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
  if (![v7 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v8 = objc_opt_class();
  if (![v8 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v9 = objc_opt_class();
  if (![v9 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v10 = objc_opt_class();
  if (![v10 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v11 = objc_opt_class();
  if (![v11 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v12 = objc_opt_class();
  if (![v12 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v13 = objc_opt_class();
  v14 = objc_opt_class();

  return [v13 isSubclassOfClass:v14];
}

@end