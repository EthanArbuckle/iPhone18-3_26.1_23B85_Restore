@interface WFLinkCalendarCloseScreenAction
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkCalendarCloseScreenAction

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Closes the specified screen.", @"Closes the specified screen.");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Close Screen", @"Close Screen");
  v5 = [v3 localize:v4];

  return v5;
}

@end