@interface UIApplicationRotationFollowingControllerView
- (UIApplicationRotationFollowingControllerView)init;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation UIApplicationRotationFollowingControllerView

- (UIApplicationRotationFollowingControllerView)init
{
  v6.receiver = self;
  v6.super_class = UIApplicationRotationFollowingControllerView;
  v2 = [(UIView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 setOpaque:0];
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIApplicationRotationFollowingControllerView;
  v5 = [(UIView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end