@interface STUIStatusBarSystemNavigationAction
+ (id)_navigationActionForDestination:(unint64_t)a3;
@end

@implementation STUIStatusBarSystemNavigationAction

+ (id)_navigationActionForDestination:(unint64_t)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__STUIStatusBarSystemNavigationAction__navigationActionForDestination___block_invoke;
  v5[3] = &__block_descriptor_40_e23_B16__0__STUIStatusBar_8l;
  v5[4] = a3;
  v3 = [a1 actionWithBlock:v5];

  return v3;
}

uint64_t __71__STUIStatusBarSystemNavigationAction__navigationActionForDestination___block_invoke(uint64_t a1)
{
  v2 = [*MEMORY[0x277D76620] _systemNavigationAction];
  v3 = [v2 canSendResponse];
  if (v3)
  {
    [v2 sendResponseForDestination:*(a1 + 32)];
  }

  return v3;
}

@end