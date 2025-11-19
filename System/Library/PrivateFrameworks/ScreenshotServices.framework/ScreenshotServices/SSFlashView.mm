@interface SSFlashView
+ (Class)_flashViewClass;
+ (double)expectedAnimationDurationForStyle:(unint64_t)a3;
+ (id)flashViewForStyle:(unint64_t)a3;
- (SSFlashView)initWithFrame:(CGRect)a3;
- (void)flashWithCompletion:(id)a3;
@end

@implementation SSFlashView

+ (Class)_flashViewClass
{
  UIAccessibilityIsReduceTransparencyEnabled();
  v2 = objc_opt_class();

  return v2;
}

+ (id)flashViewForStyle:(unint64_t)a3
{
  v4 = objc_alloc_init([a1 _flashViewClass]);
  [v4 setStyle:a3];

  return v4;
}

- (SSFlashView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SSFlashView;
  v3 = [(SSFlashView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SSFlashView *)v3 setUserInteractionEnabled:0];
  return v3;
}

+ (double)expectedAnimationDurationForStyle:(unint64_t)a3
{
  v4 = [a1 _flashViewClass];

  [v4 expectedAnimationDurationForStyle:a3];
  return result;
}

- (void)flashWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

@end