@interface VideosExtrasNavigationBar
- (VideosExtrasNavigationBar)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation VideosExtrasNavigationBar

- (VideosExtrasNavigationBar)initWithFrame:(CGRect)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VideosExtrasNavigationBar;
  v3 = [(VideosExtrasNavigationBar *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VideosExtrasNavigationBar *)v3 setTranslucent:1];
    v5 = [MEMORY[0x1E69DC888] blackColor];
    v6 = [(VideosExtrasNavigationBar *)v4 _backgroundView];
    [v6 setBackgroundColor:v5];

    [(VideosExtrasNavigationBar *)v4 _setHidesShadow:1];
    v12 = *MEMORY[0x1E69DB650];
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(VideosExtrasNavigationBar *)v4 setTitleTextAttributes:v8];

    v14.width = 1.0;
    v14.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
    v9 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [(VideosExtrasNavigationBar *)v4 setBackgroundImage:v9 forBarMetrics:0];
    [(VideosExtrasNavigationBar *)v4 setBackgroundImage:v9 forBarMetrics:101];
    [(VideosExtrasNavigationBar *)v4 setBackgroundImage:v9 forBarMetrics:1];
    [(VideosExtrasNavigationBar *)v4 setBackgroundImage:v9 forBarMetrics:102];
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = VideosExtrasNavigationBar;
  v5 = [(VideosExtrasNavigationBar *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = VideosExtrasNavigationBar;
  v3 = [(VideosExtrasNavigationBar *)&v6 layoutSubviews];
  if (MEMORY[0x1E6913230](v3))
  {
    if ([MEMORY[0x1E69DF6F0] isPhone])
    {
      [(VideosExtrasNavigationBar *)self bounds];
      v5 = v4;
      [(VideosExtrasNavigationBar *)self bounds];
      [(VideosExtrasNavigationBar *)self setFrame:0.0, 0.0, v5];
    }
  }
}

@end