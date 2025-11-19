@interface WFConfiguredSystemNothingAction
- (WFConfiguredSystemNothingAction)init;
@end

@implementation WFConfiguredSystemNothingAction

- (WFConfiguredSystemNothingAction)init
{
  v3 = WFLocalizedString(@"No Action");
  v6.receiver = self;
  v6.super_class = WFConfiguredSystemNothingAction;
  v4 = [(WFConfiguredStaccatoAction *)&v6 initWithIdentifier:@"WFConfiguredStaccatoNothingAction" associatedBundleIdentifier:@"com.apple.springboard" name:v3 previewIcon:0 shortcutsMetadata:0 colorScheme:0];

  return v4;
}

@end