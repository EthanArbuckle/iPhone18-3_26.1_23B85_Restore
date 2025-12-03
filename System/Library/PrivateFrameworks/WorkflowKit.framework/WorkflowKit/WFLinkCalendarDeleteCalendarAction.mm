@interface WFLinkCalendarDeleteCalendarAction
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkCalendarDeleteCalendarAction

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Deletes the specified calendar.", @"Deletes the specified calendar.");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Delete Calendar", @"Delete Calendar");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end