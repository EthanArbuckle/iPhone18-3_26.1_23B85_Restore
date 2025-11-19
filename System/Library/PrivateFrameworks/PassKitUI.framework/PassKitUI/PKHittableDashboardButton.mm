@interface PKHittableDashboardButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PKHittableDashboardButton

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(PKHittableDashboardButton *)self hitRect];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(PKHittableDashboardButton *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

@end