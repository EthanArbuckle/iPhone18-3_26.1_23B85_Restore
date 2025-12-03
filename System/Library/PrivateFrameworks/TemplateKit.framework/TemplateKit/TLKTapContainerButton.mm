@interface TLKTapContainerButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIView)containerView;
@end

@implementation TLKTapContainerButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  containerView = [(TLKTapContainerButton *)self containerView];
  if (containerView)
  {
    containerView2 = [(TLKTapContainerButton *)self containerView];
    v10 = [containerView2 pointInside:eventCopy withEvent:{x, y}];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TLKTapContainerButton;
    v10 = [(TLKTapContainerButton *)&v12 pointInside:eventCopy withEvent:x, y];
  }

  return v10;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

@end