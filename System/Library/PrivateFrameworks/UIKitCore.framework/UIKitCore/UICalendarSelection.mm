@interface UICalendarSelection
- (UICalendarView)view;
- (id)_init;
- (void)setView:(id)view;
@end

@implementation UICalendarSelection

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UICalendarSelection;
  return [(UICalendarSelection *)&v3 init];
}

- (void)setView:(id)view
{
  viewCopy = view;
  [(UICalendarSelection *)self willMoveToCalendarView:viewCopy];
  objc_storeWeak(&self->_view, viewCopy);

  [(UICalendarSelection *)self didMoveToCalendarView];
}

- (UICalendarView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end