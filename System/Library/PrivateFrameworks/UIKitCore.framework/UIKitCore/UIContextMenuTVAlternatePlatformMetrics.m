@interface UIContextMenuTVAlternatePlatformMetrics
@end

@implementation UIContextMenuTVAlternatePlatformMetrics

id __54___UIContextMenuTVAlternatePlatformMetrics_Glass_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [UIBlurEffect effectWithStyle:8];
  v5 = [UIVibrancyEffect effectForBlurEffect:v4 style:6];
  [v3 setEffect:v5];

  v6 = +[UIColor whiteColor];
  [v3 setContentBackgroundColor:v6];

  [v3 setBackgroundShape:v2];

  return v3;
}

UIVisualEffectView *__54___UIContextMenuTVAlternatePlatformMetrics_Glass_init__block_invoke_2()
{
  v0 = [UIVisualEffectView alloc];
  v1 = [UIBlurEffect effectWithStyle:6];
  v2 = [(UIVisualEffectView *)v0 initWithEffect:v1];

  return v2;
}

UIColor *__54___UIContextMenuTVAlternatePlatformMetrics_Glass_init__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = 0.0;
  if (v2 == 2)
  {
    v3 = 1.0;
  }

  return [UIColor colorWithWhite:v3 alpha:0.08];
}

id __48___UIContextMenuTVAlternatePlatformMetrics_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [UIColor colorWithDynamicProvider:&__block_literal_global_5_6];
  [v3 setContentBackgroundColor:v4];

  [v3 setBackgroundShape:v2];

  return v3;
}

id __48___UIContextMenuTVAlternatePlatformMetrics_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = +[UIColor whiteColor];
  v4 = v3;
  v5 = v2 == 1000 || v2 == 2;
  v6 = 0.7;
  if (v5)
  {
    v6 = 0.15;
  }

  v7 = [v3 colorWithAlphaComponent:v6];

  return v7;
}

UIColor *__48___UIContextMenuTVAlternatePlatformMetrics_init__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = 0.0;
  if (v2 == 2)
  {
    v3 = 1.0;
  }

  return [UIColor colorWithWhite:v3 alpha:0.1];
}

@end