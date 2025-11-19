@interface UIScrollViewGradientMaskView
@end

@implementation UIScrollViewGradientMaskView

void __107___UIScrollViewGradientMaskView_updateWithFrame_gradientStartInsets_gradientEndInsets_gradientIntensities___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) gradientDirection];
  v3 = [*(a1 + 32) gradientLayer];
  v4 = v3;
  v5 = 0.0;
  if (v2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 0.5;
  }

  if (v2)
  {
    v5 = 0.5;
    v7 = 1.0;
  }

  else
  {
    v7 = 0.5;
  }

  if (v2)
  {
    v8 = 0.5;
  }

  else
  {
    v8 = 1.0;
  }

  [v3 setStartPoint:{v6, v5}];

  v9 = [*(a1 + 32) gradientLayer];
  [v9 setEndPoint:{v7, v8}];

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) gradientLayer];
  [v11 setColors:v10];

  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) gradientLayer];
  [v13 setLocations:v12];
}

@end