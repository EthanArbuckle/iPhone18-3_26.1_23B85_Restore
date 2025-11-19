@interface TLKTapContainerButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIView)containerView;
@end

@implementation TLKTapContainerButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(TLKTapContainerButton *)self containerView];
  if (v8)
  {
    v9 = [(TLKTapContainerButton *)self containerView];
    v10 = [v9 pointInside:v7 withEvent:{x, y}];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TLKTapContainerButton;
    v10 = [(TLKTapContainerButton *)&v12 pointInside:v7 withEvent:x, y];
  }

  return v10;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

@end