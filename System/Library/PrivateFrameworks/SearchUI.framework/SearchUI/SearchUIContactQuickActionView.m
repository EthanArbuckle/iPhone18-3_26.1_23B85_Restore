@interface SearchUIContactQuickActionView
- (SearchUIContactButtonItem)buttonItem;
- (SearchUIContactButtonItemGenerator)generator;
- (void)setEnabled:(BOOL)a3;
@end

@implementation SearchUIContactQuickActionView

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    v4 = [(SearchUIContactQuickActionView *)self generator];
    [v4 updateButtons];
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