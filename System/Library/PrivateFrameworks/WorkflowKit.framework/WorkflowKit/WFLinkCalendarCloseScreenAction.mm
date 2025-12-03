@interface WFLinkCalendarCloseScreenAction
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkCalendarCloseScreenAction

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Closes the specified screen.", @"Closes the specified screen.");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Close Screen", @"Close Screen");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end