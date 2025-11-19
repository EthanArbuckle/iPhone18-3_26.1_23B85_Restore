@interface WFLinkCalendarOpenScreenAction
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkCalendarOpenScreenAction

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Opens a specific screen in Calendar.", @"Opens a specific screen in Calendar.");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Open Screen", @"Open Screen");
  v5 = [v3 localize:v4];

  return v5;
}

@end