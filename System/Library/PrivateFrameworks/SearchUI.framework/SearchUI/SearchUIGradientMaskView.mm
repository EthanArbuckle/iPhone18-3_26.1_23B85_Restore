@interface SearchUIGradientMaskView
- (SearchUIGradientMaskView)init;
@end

@implementation SearchUIGradientMaskView

- (SearchUIGradientMaskView)init
{
  v16[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SearchUIGradientMaskView;
  v2 = [(SearchUIGradientMaskView *)&v14 init];
  if (v2)
  {
    if ([MEMORY[0x1E69D91A8] isLTR])
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      cGColor = [whiteColor CGColor];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      v5 = 0.5;
      v6 = 1.0;
      v7 = &cGColor;
      v8 = 0.9;
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] clearColor];
      v16[0] = [whiteColor CGColor];
      clearColor = [MEMORY[0x1E69DC888] whiteColor];
      v5 = 0.5;
      v8 = 0.0;
      v7 = v16;
      v6 = 0.1;
    }

    v7[1] = [clearColor CGColor];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
    layer = [(SearchUIGradientMaskView *)v2 layer];
    [layer setColors:v9];

    layer2 = [(SearchUIGradientMaskView *)v2 layer];
    [layer2 setStartPoint:{v8, v5}];

    layer3 = [(SearchUIGradientMaskView *)v2 layer];
    [layer3 setEndPoint:{v6, v5}];
  }

  return v2;
}

@end