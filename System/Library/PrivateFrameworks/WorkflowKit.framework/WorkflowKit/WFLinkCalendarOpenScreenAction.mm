@interface WFLinkCalendarOpenScreenAction
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkCalendarOpenScreenAction

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Opens a specific screen in Calendar.", @"Opens a specific screen in Calendar.");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Open Screen", @"Open Screen");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end