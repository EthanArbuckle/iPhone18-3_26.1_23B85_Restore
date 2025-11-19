@interface VUIProgressBarLayout
+ (id)defaultProgressBarLayout;
- (UIEdgeInsets)margin;
- (UIEdgeInsets)padding;
@end

@implementation VUIProgressBarLayout

+ (id)defaultProgressBarLayout
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 2)
  {
    [v2 setHeight:10.0];
    [v2 setPadding:{2.0, 2.0, 2.0, 2.0}];
    v5 = [MEMORY[0x1E69DC888] vui_progressBarFillColor];
    [v2 setFillColor:v5];

    [v2 setCornerRadius:5.0];
    [v2 setShouldProgressBarUseRoundCorner:1];
    [v2 setUseMaterial:1];
    [v2 setTintColor:0];
  }

  else
  {
    [v2 setHeight:2.0];
    [v2 setCornerRadius:5.0];
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.847058824 green:0.847058824 blue:0.847058824 alpha:0.4];
    [v2 setTintColor:v6];

    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [v2 setFillColor:v7];

    [v2 setShouldProgressBarUseRoundCorner:1];
    [v2 setUseMaterial:0];
  }

  return v2;
}

- (UIEdgeInsets)margin
{
  top = self->_margin.top;
  left = self->_margin.left;
  bottom = self->_margin.bottom;
  right = self->_margin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end