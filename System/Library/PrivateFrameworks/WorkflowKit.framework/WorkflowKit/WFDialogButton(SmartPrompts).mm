@interface WFDialogButton(SmartPrompts)
- (id)smartPromptIntentButton;
@end

@implementation WFDialogButton(SmartPrompts)

- (id)smartPromptIntentButton
{
  v2 = objc_alloc(MEMORY[0x1E69E0D40]);
  v3 = [a1 identifier];
  v4 = [a1 title];
  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

@end