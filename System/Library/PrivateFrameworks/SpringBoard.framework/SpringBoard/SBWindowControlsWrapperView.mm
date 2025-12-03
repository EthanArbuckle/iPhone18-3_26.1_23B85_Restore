@interface SBWindowControlsWrapperView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (SBWindowControlsWrapperView)initWithWindowControlsView:(id)view;
@end

@implementation SBWindowControlsWrapperView

- (SBWindowControlsWrapperView)initWithWindowControlsView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v9.receiver = self;
  v9.super_class = SBWindowControlsWrapperView;
  v6 = [(SBWindowControlsWrapperView *)&v9 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowControlsView, view);
    [(SBWindowControlsWrapperView *)v7 addSubview:viewCopy];
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  v8 = self->_windowControlsView;
  eventCopy = event;
  [(UIView *)v8 convertPoint:selfCopy fromView:x, y];
  LOBYTE(selfCopy) = [(UIView *)v8 pointInside:eventCopy withEvent:?];

  return selfCopy;
}

@end