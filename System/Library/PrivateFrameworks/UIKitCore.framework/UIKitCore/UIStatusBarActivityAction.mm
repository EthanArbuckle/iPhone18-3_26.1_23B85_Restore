@interface UIStatusBarActivityAction
@end

@implementation UIStatusBarActivityAction

uint64_t __62___UIStatusBarActivityAction_actionForBackgroundActivityType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 > 0x25)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_18A6823B0[v4];
  }

  if (([UIApp handleDoubleHeightStatusBarTapWithStyleOverride:v5] & 1) == 0)
  {
    v6 = [[UIHandleStatusBarTapAction alloc] initWithStatusBarStyle:0 andStatusBarStyleOverride:v5];
    v7 = [v3 window];
    v8 = [(UIWindow *)v7 _fbsScene];
    v9 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    [v8 sendActions:v9];
  }

  return 1;
}

@end