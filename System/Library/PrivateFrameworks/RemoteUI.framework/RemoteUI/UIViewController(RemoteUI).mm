@interface UIViewController(RemoteUI)
- (BOOL)containsDescendant:()RemoteUI;
- (BOOL)containsDescendantFromArray:()RemoteUI;
@end

@implementation UIViewController(RemoteUI)

- (BOOL)containsDescendant:()RemoteUI
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    childViewControllers = [self childViewControllers];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__UIViewController_RemoteUI__containsDescendant___block_invoke;
    v9[3] = &unk_2782E8320;
    v10 = v4;
    v6 = [childViewControllers aaf_firstObjectPassingTest:v9];
    v7 = v6 != 0;
  }

  return v7;
}

- (BOOL)containsDescendantFromArray:()RemoteUI
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__UIViewController_RemoteUI__containsDescendantFromArray___block_invoke;
  v6[3] = &unk_2782E8320;
  v6[4] = self;
  v3 = [a3 aaf_firstObjectPassingTest:v6];
  v4 = v3 != 0;

  return v4;
}

@end