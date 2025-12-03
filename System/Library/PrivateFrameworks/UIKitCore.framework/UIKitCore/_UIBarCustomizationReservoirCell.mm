@interface _UIBarCustomizationReservoirCell
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setChiclet:(id)chiclet;
@end

@implementation _UIBarCustomizationReservoirCell

- (void)setChiclet:(id)chiclet
{
  chicletCopy = chiclet;
  chiclet = self->_chiclet;
  if (chiclet != chicletCopy)
  {
    v10 = chicletCopy;
    superview = [(UIView *)chiclet superview];
    contentView = [(UICollectionViewCell *)self contentView];

    if (superview == contentView)
    {
      [(UIView *)self->_chiclet removeFromSuperview];
    }

    objc_storeStrong(&self->_chiclet, chiclet);
    contentView2 = [(UICollectionViewCell *)self contentView];
    [contentView2 addSubview:self->_chiclet];

    [(UIView *)self setNeedsLayout];
    chicletCopy = v10;
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = _UIBarCustomizationReservoirCell;
  [(UICollectionViewCell *)&v11 layoutSubviews];
  contentView = [(UICollectionViewCell *)self contentView];
  [contentView bounds];
  v6 = v5 + v4 * 0.5;
  v9 = v8 + v7 * 0.5;
  chiclet = [(_UIBarCustomizationReservoirCell *)self chiclet];
  [chiclet setCenter:{v6, v9}];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  chiclet = [(_UIBarCustomizationReservoirCell *)self chiclet];
  if (chiclet)
  {
    [(UIView *)self convertPoint:chiclet toView:x, y];
    v9 = [chiclet pointInside:eventCopy withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  chiclet = [(_UIBarCustomizationReservoirCell *)self chiclet];
  if (chiclet)
  {
    chiclet2 = [(_UIBarCustomizationReservoirCell *)self chiclet];
    [(UIView *)self convertPoint:chiclet2 toView:x, y];
    v10 = [chiclet2 hitTest:eventCopy withEvent:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end