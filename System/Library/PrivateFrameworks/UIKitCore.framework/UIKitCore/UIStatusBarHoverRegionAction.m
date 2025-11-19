@interface UIStatusBarHoverRegionAction
- (UIStatusBarHoverRegionAction)initWithRegion:(int64_t)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (int64_t)region;
@end

@implementation UIStatusBarHoverRegionAction

- (UIStatusBarHoverRegionAction)initWithRegion:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = UIStatusBarHoverRegionAction;
  v7 = [(UIStatusBarHoverRegionAction *)&v9 initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v7;
}

- (int64_t)region
{
  v2 = [(UIStatusBarHoverRegionAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"statusBarRegion";
  }

  else
  {
    return 0;
  }
}

uint64_t __55___UIStatusBarHoverRegionAction__hoverActionForRegion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([UIApp handleStatusBarHoverActionForRegion:*(a1 + 32)] & 1) == 0)
  {
    v4 = [[UIStatusBarHoverRegionAction alloc] initWithRegion:*(a1 + 32)];
    v5 = [v3 window];
    v6 = [(UIWindow *)v5 _fbsScene];
    v7 = [MEMORY[0x1E695DFD8] setWithObject:v4];
    [v6 sendActions:v7];
  }

  return 1;
}

@end