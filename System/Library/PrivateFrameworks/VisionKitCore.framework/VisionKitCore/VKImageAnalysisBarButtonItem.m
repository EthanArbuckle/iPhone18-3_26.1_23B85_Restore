@interface VKImageAnalysisBarButtonItem
+ (id)analysisButtonWithTarget:(id)a3 action:(SEL)a4 mode:(unint64_t)a5;
+ (id)imageForMode:(unint64_t)a3;
- (void)setMode:(unint64_t)a3;
@end

@implementation VKImageAnalysisBarButtonItem

+ (id)analysisButtonWithTarget:(id)a3 action:(SEL)a4 mode:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_alloc_init(VKImageAnalysisBarButtonItem);
  [(VKSelectableBarButtonItem *)v8 setTarget:v7];

  [(VKSelectableBarButtonItem *)v8 setAction:a4];
  v9 = [objc_opt_class() imageForMode:a5];
  [(VKSelectableBarButtonItem *)v8 setImage:v9];

  v8->_mode = a5;
  [(VKSelectableBarButtonItem *)v8 setCornerRadiusRatio:0.25];

  return v8;
}

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    v5 = [objc_opt_class() imageForMode:a3];
    [(VKSelectableBarButtonItem *)self setImage:v5];
  }
}

+ (id)imageForMode:(unint64_t)a3
{
  if (a3 > 2)
  {
    v6 = 0;
  }

  else
  {
    v3 = off_1E7BE4438[a3];
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:0];
    v6 = [v4 systemImageNamed:v3 withConfiguration:v5];
  }

  return v6;
}

@end