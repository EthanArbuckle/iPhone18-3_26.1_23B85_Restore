@interface UIKeyboardSuggestedInputMode
- (UIKeyboardSuggestedInputMode)initWithIdentifier:(id)a3 enabled:(BOOL)a4;
- (id)description;
@end

@implementation UIKeyboardSuggestedInputMode

- (UIKeyboardSuggestedInputMode)initWithIdentifier:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = UIKeyboardSuggestedInputMode;
  v5 = [(UIKeyboardInputMode *)&v8 initWithIdentifier:a3];
  v6 = v5;
  if (v5)
  {
    [(UIKeyboardSuggestedInputMode *)v5 setEnabled:v4];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIKeyboardInputMode *)self identifier];
  v5 = [(UIKeyboardSuggestedInputMode *)self enabled];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"identifier: %@, enabled: %@", v4, v6];

  return v7;
}

@end