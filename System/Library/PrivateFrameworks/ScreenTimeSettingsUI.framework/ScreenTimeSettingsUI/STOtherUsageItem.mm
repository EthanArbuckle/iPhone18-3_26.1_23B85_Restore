@interface STOtherUsageItem
- (id)displayName;
@end

@implementation STOtherUsageItem

- (id)displayName
{
  v2 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [v2 localizedStringForKey:@"OtherUsageCategoryTitle" value:&stru_28766E5A8 table:0];

  return v3;
}

@end