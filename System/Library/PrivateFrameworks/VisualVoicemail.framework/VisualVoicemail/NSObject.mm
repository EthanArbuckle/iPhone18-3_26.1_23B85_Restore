@interface NSObject
+ (id)vm_classIdentifier;
@end

@implementation NSObject

+ (id)vm_classIdentifier
{
  v2 = objc_opt_class();
  v3 = [NSBundle bundleForClass:v2];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = NSStringFromClass(v2);
  v6 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, v5];

  return v6;
}

@end