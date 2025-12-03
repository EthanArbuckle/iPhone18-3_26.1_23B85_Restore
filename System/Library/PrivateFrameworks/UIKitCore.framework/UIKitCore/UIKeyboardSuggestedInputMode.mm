@interface UIKeyboardSuggestedInputMode
- (UIKeyboardSuggestedInputMode)initWithIdentifier:(id)identifier enabled:(BOOL)enabled;
- (id)description;
@end

@implementation UIKeyboardSuggestedInputMode

- (UIKeyboardSuggestedInputMode)initWithIdentifier:(id)identifier enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = UIKeyboardSuggestedInputMode;
  v5 = [(UIKeyboardInputMode *)&v8 initWithIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    [(UIKeyboardSuggestedInputMode *)v5 setEnabled:enabledCopy];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(UIKeyboardInputMode *)self identifier];
  enabled = [(UIKeyboardSuggestedInputMode *)self enabled];
  v6 = @"NO";
  if (enabled)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"identifier: %@, enabled: %@", identifier, v6];

  return v7;
}

@end