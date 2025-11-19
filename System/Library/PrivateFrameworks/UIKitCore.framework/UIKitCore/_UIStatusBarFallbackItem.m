@interface _UIStatusBarFallbackItem
- (_UIStatusBarStringView)label;
- (void)_create_label;
@end

@implementation _UIStatusBarFallbackItem

- (_UIStatusBarStringView)label
{
  label = self->_label;
  if (!label)
  {
    [(_UIStatusBarFallbackItem *)self _create_label];
    label = self->_label;
  }

  return label;
}

- (void)_create_label
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  label = self->_label;
  self->_label = v4;

  v6 = self->_label;

  [(_UIStatusBarStringView *)v6 setText:@"😳 rdar:45025538"];
}

@end