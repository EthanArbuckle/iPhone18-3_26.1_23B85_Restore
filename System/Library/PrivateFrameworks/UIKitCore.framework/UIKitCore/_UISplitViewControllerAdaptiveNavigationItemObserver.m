@interface _UISplitViewControllerAdaptiveNavigationItemObserver
- (id)initWithDelegate:(void *)a1;
- (void)navigationItemUpdatedLeftBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedRightBarButtonItems:(id)a3 animated:(BOOL)a4;
@end

@implementation _UISplitViewControllerAdaptiveNavigationItemObserver

- (id)initWithDelegate:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = _UISplitViewControllerAdaptiveNavigationItemObserver;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(v3 + 1, a2);
  }

  return v4;
}

- (void)navigationItemUpdatedLeftBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v5 = self;
  [(_UISplitViewControllerAdaptiveNavigationItemObserver *)self navigationItemBarButtonItemGroupsDidChange:v4, a4];
}

- (void)navigationItemUpdatedRightBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v5 = self;
  [(_UISplitViewControllerAdaptiveNavigationItemObserver *)self navigationItemBarButtonItemGroupsDidChange:v4, a4];
}

@end