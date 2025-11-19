@interface _UIBarCustomizationReservoirCell
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setChiclet:(id)a3;
@end

@implementation _UIBarCustomizationReservoirCell

- (void)setChiclet:(id)a3
{
  v5 = a3;
  chiclet = self->_chiclet;
  if (chiclet != v5)
  {
    v10 = v5;
    v7 = [(UIView *)chiclet superview];
    v8 = [(UICollectionViewCell *)self contentView];

    if (v7 == v8)
    {
      [(UIView *)self->_chiclet removeFromSuperview];
    }

    objc_storeStrong(&self->_chiclet, a3);
    v9 = [(UICollectionViewCell *)self contentView];
    [v9 addSubview:self->_chiclet];

    [(UIView *)self setNeedsLayout];
    v5 = v10;
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = _UIBarCustomizationReservoirCell;
  [(UICollectionViewCell *)&v11 layoutSubviews];
  v3 = [(UICollectionViewCell *)self contentView];
  [v3 bounds];
  v6 = v5 + v4 * 0.5;
  v9 = v8 + v7 * 0.5;
  v10 = [(_UIBarCustomizationReservoirCell *)self chiclet];
  [v10 setCenter:{v6, v9}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIBarCustomizationReservoirCell *)self chiclet];
  if (v8)
  {
    [(UIView *)self convertPoint:v8 toView:x, y];
    v9 = [v8 pointInside:v7 withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIBarCustomizationReservoirCell *)self chiclet];
  if (v8)
  {
    v9 = [(_UIBarCustomizationReservoirCell *)self chiclet];
    [(UIView *)self convertPoint:v9 toView:x, y];
    v10 = [v9 hitTest:v7 withEvent:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end