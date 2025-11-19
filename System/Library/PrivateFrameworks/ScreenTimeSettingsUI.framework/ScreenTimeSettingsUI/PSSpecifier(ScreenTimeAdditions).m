@interface PSSpecifier(ScreenTimeAdditions)
+ (id)st_emptyGroupSpecifier;
@end

@implementation PSSpecifier(ScreenTimeAdditions)

+ (id)st_emptyGroupSpecifier
{
  v2 = objc_opt_new();
  v3 = [v2 UUIDString];
  v4 = [a1 groupSpecifierWithID:v3];

  return v4;
}

@end