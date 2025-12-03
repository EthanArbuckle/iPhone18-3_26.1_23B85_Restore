@interface _TVShelfViewHeaderView
- (_TVShelfViewHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation _TVShelfViewHeaderView

- (_TVShelfViewHeaderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _TVShelfViewHeaderView;
  v3 = [(_TVShelfViewHeaderView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(_TVShelfViewHeaderView *)v3 setBackgroundColor:clearColor];

    v5 = objc_opt_new();
    [v5 setWantsDimmingOverlay:1];
    [(_TVShelfViewHeaderView *)v3 _setIdleModeLayoutAttributes:v5];
  }

  return v3;
}

@end