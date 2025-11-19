@interface WBSHostTabProvider
- (void)_setHostTab:(id)a3;
- (void)setHostTab:(id)a3;
@end

@implementation WBSHostTabProvider

- (void)setHostTab:(id)a3
{
  v5 = a3;
  [(WBSHostTabProvider *)self _setHostTab:v5];
  if (v5)
  {
    v4 = +[WBSHostTabProviderManager sharedManager];
    [v4 registerHostTab:v5];
  }
}

- (void)_setHostTab:(id)a3
{
  v5 = a3;
  hostTab = self->_hostTab;
  if (hostTab != v5)
  {
    v8 = v5;
    v7 = hostTab;
    objc_storeStrong(&self->_hostTab, a3);
    if (v7)
    {
      [(WBSHostableTab *)v7 setHostTabProvider:self];
    }

    if (v8)
    {
      [(WBSHostableTab *)v8 setHostTabProvider:0];
    }

    v5 = v8;
  }
}

@end