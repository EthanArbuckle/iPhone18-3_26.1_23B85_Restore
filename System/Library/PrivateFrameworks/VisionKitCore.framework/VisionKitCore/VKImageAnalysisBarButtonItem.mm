@interface VKImageAnalysisBarButtonItem
+ (id)analysisButtonWithTarget:(id)target action:(SEL)action mode:(unint64_t)mode;
+ (id)imageForMode:(unint64_t)mode;
- (void)setMode:(unint64_t)mode;
@end

@implementation VKImageAnalysisBarButtonItem

+ (id)analysisButtonWithTarget:(id)target action:(SEL)action mode:(unint64_t)mode
{
  targetCopy = target;
  v8 = objc_alloc_init(VKImageAnalysisBarButtonItem);
  [(VKSelectableBarButtonItem *)v8 setTarget:targetCopy];

  [(VKSelectableBarButtonItem *)v8 setAction:action];
  v9 = [objc_opt_class() imageForMode:mode];
  [(VKSelectableBarButtonItem *)v8 setImage:v9];

  v8->_mode = mode;
  [(VKSelectableBarButtonItem *)v8 setCornerRadiusRatio:0.25];

  return v8;
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    v5 = [objc_opt_class() imageForMode:mode];
    [(VKSelectableBarButtonItem *)self setImage:v5];
  }
}

+ (id)imageForMode:(unint64_t)mode
{
  if (mode > 2)
  {
    v6 = 0;
  }

  else
  {
    v3 = off_1E7BE4438[mode];
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:0];
    v6 = [v4 systemImageNamed:v3 withConfiguration:v5];
  }

  return v6;
}

@end