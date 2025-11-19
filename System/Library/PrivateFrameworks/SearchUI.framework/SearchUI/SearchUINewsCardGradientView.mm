@interface SearchUINewsCardGradientView
- (SearchUINewsCardGradientView)init;
@end

@implementation SearchUINewsCardGradientView

- (SearchUINewsCardGradientView)init
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SearchUINewsCardGradientView;
  v2 = [(SearchUINewsCardGradientView *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    v13[0] = [v3 CGColor];
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [v4 colorWithAlphaComponent:0.5];
    v13[1] = [v5 CGColor];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v7 = [(SearchUINewsCardGradientView *)v2 layer];
    [v7 setColors:v6];

    v8 = [(SearchUINewsCardGradientView *)v2 layer];
    v9 = 0.0;
    [v8 setStartPoint:{0.0, 0.5}];

    if (![MEMORY[0x1E69D9240] isMacOS])
    {
      v9 = 1.0;
    }

    v10 = [(SearchUINewsCardGradientView *)v2 layer];
    [v10 setEndPoint:{0.0, v9}];
  }

  return v2;
}

@end