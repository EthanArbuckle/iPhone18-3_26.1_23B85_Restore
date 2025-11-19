@interface WFLinkNotesFindAction
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkNotesFindAction

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Find Notes", @"Find Notes");
  v5 = [v3 localize:v4];

  return v5;
}

@end