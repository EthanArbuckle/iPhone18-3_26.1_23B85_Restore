@interface NSObject(TelephonyPreferences)
+ (id)tps_classIdentifier;
@end

@implementation NSObject(TelephonyPreferences)

+ (id)tps_classIdentifier
{
  v0 = objc_opt_class();
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:v0];
  bundleIdentifier = [v2 bundleIdentifier];
  v4 = NSStringFromClass(v0);
  v5 = [v1 stringWithFormat:@"%@.%@", bundleIdentifier, v4];

  return v5;
}

@end