@interface WBSHostTabProvider
- (void)_setHostTab:(id)tab;
- (void)setHostTab:(id)tab;
@end

@implementation WBSHostTabProvider

- (void)setHostTab:(id)tab
{
  tabCopy = tab;
  [(WBSHostTabProvider *)self _setHostTab:tabCopy];
  if (tabCopy)
  {
    v4 = +[WBSHostTabProviderManager sharedManager];
    [v4 registerHostTab:tabCopy];
  }
}

- (void)_setHostTab:(id)tab
{
  tabCopy = tab;
  hostTab = self->_hostTab;
  if (hostTab != tabCopy)
  {
    v8 = tabCopy;
    v7 = hostTab;
    objc_storeStrong(&self->_hostTab, tab);
    if (v7)
    {
      [(WBSHostableTab *)v7 setHostTabProvider:self];
    }

    if (v8)
    {
      [(WBSHostableTab *)v8 setHostTabProvider:0];
    }

    tabCopy = v8;
  }
}

@end