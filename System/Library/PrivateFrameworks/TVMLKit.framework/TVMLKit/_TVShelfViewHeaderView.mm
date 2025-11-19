@interface _TVShelfViewHeaderView
- (_TVShelfViewHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation _TVShelfViewHeaderView

- (_TVShelfViewHeaderView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _TVShelfViewHeaderView;
  v3 = [(_TVShelfViewHeaderView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(_TVShelfViewHeaderView *)v3 setBackgroundColor:v4];

    v5 = objc_opt_new();
    [v5 setWantsDimmingOverlay:1];
    [(_TVShelfViewHeaderView *)v3 _setIdleModeLayoutAttributes:v5];
  }

  return v3;
}

@end