@interface VUIActivityIndicatorView
+ (id)vui_activityIndicatorViewWithActivityIndicatorStyle:(unint64_t)style;
- (void)vui_startTimer:(double)timer;
@end

@implementation VUIActivityIndicatorView

+ (id)vui_activityIndicatorViewWithActivityIndicatorStyle:(unint64_t)style
{
  v3 = 100;
  if (style == 1)
  {
    v3 = 101;
  }

  if (style == 2)
  {
    v4 = 20;
  }

  else
  {
    v4 = v3;
  }

  v5 = [[VUIActivityIndicatorView alloc] initWithActivityIndicatorStyle:v4];

  return v5;
}

- (void)vui_startTimer:(double)timer
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_vui_startAnimating object:0];

  [(VUIActivityIndicatorView *)self performSelector:sel_vui_startAnimating withObject:0 afterDelay:timer];
}

@end