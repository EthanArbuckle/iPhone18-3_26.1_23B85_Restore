@interface WFLinkCalendarDeleteCalendarAction
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkCalendarDeleteCalendarAction

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Deletes the specified calendar.", @"Deletes the specified calendar.");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Delete Calendar", @"Delete Calendar");
  v5 = [v3 localize:v4];

  return v5;
}

@end