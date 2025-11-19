@interface UIScrollView(SUAdditions)
- (uint64_t)setTopExtensionViewColor:()SUAdditions;
- (uint64_t)topExtensionViewColor;
@end

@implementation UIScrollView(SUAdditions)

- (uint64_t)setTopExtensionViewColor:()SUAdditions
{
  v5 = [a1 viewWithTag:800];
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      [a1 sendSubviewToBack:v5];
    }

    else
    {
      v7 = *MEMORY[0x1E695F058];
      v12 = *MEMORY[0x1E695F060];
      if (SUGradientColorIsPatternColor(a3, &v12))
      {
        v8 = *(&v12 + 1);
      }

      else
      {
        [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
        v8 = v9;
      }

      [a1 frame];
      v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, -v8, v10, v8}];
      [v6 setAutoresizingMask:2];
      [v6 setTag:800];
      [a1 insertSubview:v6 atIndex:0];
    }
  }

  else
  {
    [v5 removeFromSuperview];
    v6 = 0;
  }

  return [v6 setBackgroundColor:a3];
}

- (uint64_t)topExtensionViewColor
{
  v1 = [a1 viewWithTag:800];

  return [v1 backgroundColor];
}

@end