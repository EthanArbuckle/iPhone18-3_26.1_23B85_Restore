@interface _PortraitOnlyNavigationController
- (void)dealloc;
- (void)viewWillMoveToWindow:(id)a3;
@end

@implementation _PortraitOnlyNavigationController

- (void)viewWillMoveToWindow:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_PortraitOnlyNavigationController *)self presentedViewController];
    v5 = v6 != 0;
  }

  [MEMORY[0x1E69DF6F0] enablePortraitLock:v5];
  v7.receiver = self;
  v7.super_class = _PortraitOnlyNavigationController;
  [(_PortraitOnlyNavigationController *)&v7 viewWillMoveToWindow:v4];
}

- (void)dealloc
{
  [MEMORY[0x1E69DF6F0] enablePortraitLock:0];
  v3.receiver = self;
  v3.super_class = _PortraitOnlyNavigationController;
  [(_PortraitOnlyNavigationController *)&v3 dealloc];
}

@end