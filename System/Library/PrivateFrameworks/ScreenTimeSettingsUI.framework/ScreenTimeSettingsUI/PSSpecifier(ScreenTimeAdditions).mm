@interface PSSpecifier(ScreenTimeAdditions)
+ (id)st_emptyGroupSpecifier;
@end

@implementation PSSpecifier(ScreenTimeAdditions)

+ (id)st_emptyGroupSpecifier
{
  v2 = objc_opt_new();
  uUIDString = [v2 UUIDString];
  v4 = [self groupSpecifierWithID:uUIDString];

  return v4;
}

@end