@interface _SKUIClickThroughWindow
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _SKUIClickThroughWindow

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  interactionView = [(_SKUIClickThroughWindow *)self interactionView];

  if (interactionView)
  {
    interactionView2 = [(_SKUIClickThroughWindow *)self interactionView];
    [(_SKUIClickThroughWindow *)self convertPoint:interactionView2 toView:x, y];
    v11 = v10;
    v13 = v12;

    interactionView3 = [(_SKUIClickThroughWindow *)self interactionView];
    v15 = [interactionView3 pointInside:eventCopy withEvent:{v11, v13}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = _SKUIClickThroughWindow;
  v5 = [(_SKUIClickThroughWindow *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end