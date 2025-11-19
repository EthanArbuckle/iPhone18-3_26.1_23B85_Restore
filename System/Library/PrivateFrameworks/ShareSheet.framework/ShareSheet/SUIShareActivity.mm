@interface SUIShareActivity
+ (unint64_t)_xpcAttributes;
- (id)activityTitle;
@end

@implementation SUIShareActivity

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Share[Activity]" value:@"Share" table:@"Localizable"];

  return v3;
}

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

@end