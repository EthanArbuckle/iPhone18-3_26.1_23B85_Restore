@interface UICalendarSelection
- (UICalendarView)view;
- (id)_init;
- (void)setView:(id)a3;
@end

@implementation UICalendarSelection

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UICalendarSelection;
  return [(UICalendarSelection *)&v3 init];
}

- (void)setView:(id)a3
{
  v4 = a3;
  [(UICalendarSelection *)self willMoveToCalendarView:v4];
  objc_storeWeak(&self->_view, v4);

  [(UICalendarSelection *)self didMoveToCalendarView];
}

- (UICalendarView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end