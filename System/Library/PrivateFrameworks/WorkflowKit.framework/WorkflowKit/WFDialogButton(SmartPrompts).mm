@interface WFDialogButton(SmartPrompts)
- (id)smartPromptIntentButton;
@end

@implementation WFDialogButton(SmartPrompts)

- (id)smartPromptIntentButton
{
  v2 = objc_alloc(MEMORY[0x1E69E0D40]);
  identifier = [self identifier];
  title = [self title];
  v5 = [v2 initWithIdentifier:identifier displayString:title];

  return v5;
}

@end