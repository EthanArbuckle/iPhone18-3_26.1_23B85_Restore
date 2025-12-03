@interface TouchExclusionView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (TouchExclusionView)initWithFrame:(CGRect)frame excludingView:(id)view;
@end

@implementation TouchExclusionView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(UIView *)self->_excludingView convertPoint:self fromView:x, y];
  if ([(UIView *)self->_excludingView pointInside:eventCopy withEvent:?])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TouchExclusionView;
    v8 = [(TouchExclusionView *)&v10 pointInside:eventCopy withEvent:x, y];
  }

  return v8;
}

- (TouchExclusionView)initWithFrame:(CGRect)frame excludingView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = TouchExclusionView;
  height = [(TouchExclusionView *)&v14 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_excludingView, view);
  }

  return v12;
}

@end