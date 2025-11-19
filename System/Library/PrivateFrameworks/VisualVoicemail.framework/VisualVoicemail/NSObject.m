@interface NSObject
+ (id)vm_classIdentifier;
@end

@implementation NSObject

+ (id)vm_classIdentifier
{
  v2 = objc_opt_class();
  v3 = [NSBundle bundleForClass:v2];
  v4 = [v3 bundleIdentifier];
  v5 = NSStringFromClass(v2);
  v6 = [NSString stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

@end