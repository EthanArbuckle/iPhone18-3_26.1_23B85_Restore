@interface UISplitViewControllerDisplayModeBarButtonItem
- (SEL)action;
- (UISplitViewControllerImpl)_impl;
- (id)target;
- (void)_setOwningNavigationItem:(id)a3;
- (void)_wasUsed;
@end

@implementation UISplitViewControllerDisplayModeBarButtonItem

- (void)_setOwningNavigationItem:(id)a3
{
  v4 = a3;
  v5 = [(UIBarButtonItem *)self _owningNavigationItem];
  v6.receiver = self;
  v6.super_class = UISplitViewControllerDisplayModeBarButtonItem;
  [(UIBarButtonItem *)&v6 _setOwningNavigationItem:v4];

  if (v4 && !v5)
  {
    [(UISplitViewControllerDisplayModeBarButtonItem *)self _wasUsed];
  }
}

- (id)target
{
  [(UISplitViewControllerDisplayModeBarButtonItem *)self _wasUsed];
  v5.receiver = self;
  v5.super_class = UISplitViewControllerDisplayModeBarButtonItem;
  v3 = [(UIBarButtonItem *)&v5 target];

  return v3;
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
    v4 = [(UISplitViewControllerDisplayModeBarButtonItem *)self _impl];
    [v4 _displayModeBarButtonItemWasUsedForFirstTime:self];
  }
}

- (UISplitViewControllerImpl)_impl
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);

  return WeakRetained;
}

@end