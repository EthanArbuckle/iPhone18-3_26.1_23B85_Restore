@interface UISplitViewControllerDisplayModeBarButtonItem
- (SEL)action;
- (UISplitViewControllerImpl)_impl;
- (id)target;
- (void)_setOwningNavigationItem:(id)item;
- (void)_wasUsed;
@end

@implementation UISplitViewControllerDisplayModeBarButtonItem

- (void)_setOwningNavigationItem:(id)item
{
  itemCopy = item;
  _owningNavigationItem = [(UIBarButtonItem *)self _owningNavigationItem];
  v6.receiver = self;
  v6.super_class = UISplitViewControllerDisplayModeBarButtonItem;
  [(UIBarButtonItem *)&v6 _setOwningNavigationItem:itemCopy];

  if (itemCopy && !_owningNavigationItem)
  {
    [(UISplitViewControllerDisplayModeBarButtonItem *)self _wasUsed];
  }
}

- (id)target
{
  [(UISplitViewControllerDisplayModeBarButtonItem *)self _wasUsed];
  v5.receiver = self;
  v5.super_class = UISplitViewControllerDisplayModeBarButtonItem;
  target = [(UIBarButtonItem *)&v5 target];

  return target;
}

- (SEL)action
{
  [(UISplitViewControllerDisplayModeBarButtonItem *)self _wasUsed];
  v4.receiver = self;
  v4.super_class = UISplitViewControllerDisplayModeBarButtonItem;
  return [(UIBarButtonItem *)&v4 action];
}

- (void)_wasUsed
{
  if (!self->_hasBeenUsed)
  {
    self->_hasBeenUsed = 1;
    _impl = [(UISplitViewControllerDisplayModeBarButtonItem *)self _impl];
    [_impl _displayModeBarButtonItemWasUsedForFirstTime:self];
  }
}

- (UISplitViewControllerImpl)_impl
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);

  return WeakRetained;
}

@end