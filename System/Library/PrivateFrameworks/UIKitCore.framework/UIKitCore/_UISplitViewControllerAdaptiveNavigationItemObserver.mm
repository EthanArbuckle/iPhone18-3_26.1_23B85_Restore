@interface _UISplitViewControllerAdaptiveNavigationItemObserver
- (id)initWithDelegate:(void *)delegate;
- (void)navigationItemUpdatedLeftBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedRightBarButtonItems:(id)items animated:(BOOL)animated;
@end

@implementation _UISplitViewControllerAdaptiveNavigationItemObserver

- (id)initWithDelegate:(void *)delegate
{
  if (!delegate)
  {
    return 0;
  }

  v6.receiver = delegate;
  v6.super_class = _UISplitViewControllerAdaptiveNavigationItemObserver;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(v3 + 1, a2);
  }

  return v4;
}

- (void)navigationItemUpdatedLeftBarButtonItems:(id)items animated:(BOOL)animated
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  selfCopy2 = self;
  [(_UISplitViewControllerAdaptiveNavigationItemObserver *)self navigationItemBarButtonItemGroupsDidChange:selfCopy, animated];
}

- (void)navigationItemUpdatedRightBarButtonItems:(id)items animated:(BOOL)animated
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  selfCopy2 = self;
  [(_UISplitViewControllerAdaptiveNavigationItemObserver *)self navigationItemBarButtonItemGroupsDidChange:selfCopy, animated];
}

@end