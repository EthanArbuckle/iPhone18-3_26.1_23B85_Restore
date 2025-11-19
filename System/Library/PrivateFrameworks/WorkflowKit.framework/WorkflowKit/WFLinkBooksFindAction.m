@interface WFLinkBooksFindAction
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkBooksFindAction

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Find Books", @"Find Books");
  v5 = [v3 localize:v4];

  return v5;
}

@end