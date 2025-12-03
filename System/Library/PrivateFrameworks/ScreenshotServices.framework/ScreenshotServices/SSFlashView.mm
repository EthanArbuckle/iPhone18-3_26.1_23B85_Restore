@interface SSFlashView
+ (Class)_flashViewClass;
+ (double)expectedAnimationDurationForStyle:(unint64_t)style;
+ (id)flashViewForStyle:(unint64_t)style;
- (SSFlashView)initWithFrame:(CGRect)frame;
- (void)flashWithCompletion:(id)completion;
@end

@implementation SSFlashView

+ (Class)_flashViewClass
{
  UIAccessibilityIsReduceTransparencyEnabled();
  v2 = objc_opt_class();

  return v2;
}

+ (id)flashViewForStyle:(unint64_t)style
{
  v4 = objc_alloc_init([self _flashViewClass]);
  [v4 setStyle:style];

  return v4;
}

- (SSFlashView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SSFlashView;
  v3 = [(SSFlashView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SSFlashView *)v3 setUserInteractionEnabled:0];
  return v3;
}

+ (double)expectedAnimationDurationForStyle:(unint64_t)style
{
  _flashViewClass = [self _flashViewClass];

  [_flashViewClass expectedAnimationDurationForStyle:style];
  return result;
}

- (void)flashWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end