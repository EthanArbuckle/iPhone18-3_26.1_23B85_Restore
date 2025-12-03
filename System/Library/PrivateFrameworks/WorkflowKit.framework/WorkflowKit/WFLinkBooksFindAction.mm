@interface WFLinkBooksFindAction
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkBooksFindAction

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Find Books", @"Find Books");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end