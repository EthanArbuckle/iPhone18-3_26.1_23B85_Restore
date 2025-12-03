@interface SearchUIContactQuickActionView
- (SearchUIContactButtonItem)buttonItem;
- (SearchUIContactButtonItemGenerator)generator;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation SearchUIContactQuickActionView

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    generator = [(SearchUIContactQuickActionView *)self generator];
    [generator updateButtons];
  }
}

- (SearchUIContactButtonItemGenerator)generator
{
  WeakRetained = objc_loadWeakRetained(&self->_generator);

  return WeakRetained;
}

- (SearchUIContactButtonItem)buttonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonItem);

  return WeakRetained;
}

@end