@interface _UIStatusBarSystemNavigationAction
+ (id)_navigationActionForDestination:(unint64_t)destination;
@end

@implementation _UIStatusBarSystemNavigationAction

+ (id)_navigationActionForDestination:(unint64_t)destination
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70___UIStatusBarSystemNavigationAction__navigationActionForDestination___block_invoke;
  v5[3] = &__block_descriptor_40_e22_B16__0___UIStatusBar_8l;
  v5[4] = destination;
  v3 = [self actionWithBlock:v5];

  return v3;
}

@end