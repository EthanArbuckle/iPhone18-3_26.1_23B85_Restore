@interface TTRIUIDividedGridViewWeekView
- (NSLayoutConstraint)heightConstraint;
- (TTRIUIDividedGridViewWeekView)init;
@end

@implementation TTRIUIDividedGridViewWeekView

- (TTRIUIDividedGridViewWeekView)init
{
  v5.receiver = self;
  v5.super_class = TTRIUIDividedGridViewWeekView;
  v2 = [(TTRIUIDividedGridViewWeekView *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(TTRIUIDividedGridViewWeekView *)v2 setButtonViews:v3];
  }

  return v2;
}

- (NSLayoutConstraint)heightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_heightConstraint);

  return WeakRetained;
}

@end