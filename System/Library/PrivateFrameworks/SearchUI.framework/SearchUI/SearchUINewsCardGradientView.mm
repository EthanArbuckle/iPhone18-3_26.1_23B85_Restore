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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v13[0] = [clearColor CGColor];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v5 = [blackColor colorWithAlphaComponent:0.5];
    v13[1] = [v5 CGColor];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    layer = [(SearchUINewsCardGradientView *)v2 layer];
    [layer setColors:v6];

    layer2 = [(SearchUINewsCardGradientView *)v2 layer];
    v9 = 0.0;
    [layer2 setStartPoint:{0.0, 0.5}];

    if (![MEMORY[0x1E69D9240] isMacOS])
    {
      v9 = 1.0;
    }

    layer3 = [(SearchUINewsCardGradientView *)v2 layer];
    [layer3 setEndPoint:{0.0, v9}];
  }

  return v2;
}

@end