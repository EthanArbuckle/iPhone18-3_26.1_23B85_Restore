@interface SearchUIContactViewNavigationController
- (BOOL)_canShowWhileLocked;
- (SearchUIContactViewNavigationController)initWithContact:(id)contact;
@end

@implementation SearchUIContactViewNavigationController

- (SearchUIContactViewNavigationController)initWithContact:(id)contact
{
  v4 = [MEMORY[0x1E695D148] viewControllerForNewContact:contact];
  v7.receiver = self;
  v7.super_class = SearchUIContactViewNavigationController;
  v5 = [(SearchUIContactViewNavigationController *)&v7 initWithRootViewController:v4];
  if (v5)
  {
    [v4 setDelegate:v5];
  }

  return v5;
}

- (BOOL)_canShowWhileLocked
{
  viewControllers = [(SearchUIContactViewNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];
  _canShowWhileLocked = [firstObject _canShowWhileLocked];

  return _canShowWhileLocked;
}

@end