@interface WFAccessibilitySettingUpdaterAction
- (NSString)iconBackgroundColorName;
- (NSString)iconSymbolName;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFAccessibilitySettingUpdaterAction

- (NSString)iconSymbolName
{
  v2 = sub_1CA94C368();

  return v2;
}

- (NSString)iconBackgroundColorName
{
  v2 = sub_1CA94C368();

  return v2;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA5669B4();

  v6 = sub_1CA94C368();

  return v6;
}

@end