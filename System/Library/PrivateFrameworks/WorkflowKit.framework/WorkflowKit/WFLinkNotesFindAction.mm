@interface WFLinkNotesFindAction
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkNotesFindAction

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Find Notes", @"Find Notes");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end