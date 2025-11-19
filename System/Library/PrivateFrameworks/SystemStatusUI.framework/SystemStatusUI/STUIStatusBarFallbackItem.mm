@interface STUIStatusBarFallbackItem
- (STUIStatusBarStringView)label;
- (void)_create_label;
@end

@implementation STUIStatusBarFallbackItem

- (STUIStatusBarStringView)label
{
  label = self->_label;
  if (!label)
  {
    [(STUIStatusBarFallbackItem *)self _create_label];
    label = self->_label;
  }

  return label;
}

- (void)_create_label
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  label = self->_label;
  self->_label = v4;

  v6 = self->_label;

  [(STUIStatusBarStringView *)v6 setText:@"😳 rdar:45025538"];
}

@end