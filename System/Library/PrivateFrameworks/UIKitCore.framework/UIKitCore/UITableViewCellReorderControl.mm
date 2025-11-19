@interface UITableViewCellReorderControl
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)shouldTrack;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UITableViewCellReorderControl)initWithTableViewCell:(id)a3;
- (id)grabberImage;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateImageView;
- (void)adjustLayoutForFocalRect:(CGRect)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAccessoryTintColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setTracking:(BOOL)a3;
@end

@implementation UITableViewCellReorderControl

- (id)grabberImage
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v4 = [WeakRetained _reorderControlImage];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    accessoryTintColor = self->_accessoryTintColor;
    if (accessoryTintColor)
    {
      v8 = accessoryTintColor;
    }

    else
    {
      v9 = [WeakRetained _tableView];
      v8 = [v9 _accessoryBaseColor];
    }

    v10 = [WeakRetained _constants];
    v11 = [WeakRetained traitCollection];
    v6 = [v10 defaultReorderControlImageForTraitCollection:v11 withAccessoryBaseColor:v8 isTracking:{-[UIControl isTracking](self, "isTracking")}];
  }

  return v6;
}

- (UITableViewCellReorderControl)initWithTableViewCell:(id)a3
{
  v4 = a3;
  v5 = [v4 _constants];
  v6 = [v4 _tableView];
  v7 = [v6 _accessoryBaseColor];
  [v5 defaultReorderControlSizeForCell:v4 withAccessoryBaseColor:v7];
  v9 = v8;
  v11 = v10;

  v28.receiver = self;
  v28.super_class = UITableViewCellReorderControl;
  v12 = [(UIControl *)&v28 initWithFrame:0.0, 0.0, v9, v11];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_cell, v4);
    [(UIView *)v13 setOpaque:0];
    [(UIView *)v13 setExclusiveTouch:1];
    [(UIView *)v13 setAutoresizingMask:1];
    [(UIView *)v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(UITableViewCellReorderControl *)v13 grabberImage];
    [v22 size];
    v25 = [[UIImageView alloc] initWithFrame:round(v15 + (v19 - v23) * 0.5), round(v17 + (v21 - v24) * 0.5), v23, v24];
    [(UIImageView *)v25 setImage:v22];
    [(UIView *)v13 addSubview:v25];
    imageView = v13->_imageView;
    v13->_imageView = v25;

    v13->_focalY = NAN;
    v13->_focalHeight = NAN;
  }

  return v13;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  [(UIView *)self frame];
  v5 = v4;
  v6 = height;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)adjustLayoutForFocalRect:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  IsEmpty = CGRectIsEmpty(a3);
  v7 = NAN;
  if (IsEmpty)
  {
    v8 = NAN;
  }

  else
  {
    v8 = y;
  }

  if (!IsEmpty)
  {
    v7 = height;
  }

  self->_focalY = v8;
  self->_focalHeight = v7;

  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v9 = self->_imageView;
  [(UIView *)v9 frame];
  v4 = v3;
  v6 = v5;
  [(UIView *)self bounds];
  [(UIImageView *)v9 setFrame:round(v8 + (v7 - v4) * 0.5), round(self->_focalY + (self->_focalHeight - v6) * 0.5), v4, v6];
}

- (void)_updateImageView
{
  v3 = [(UITableViewCellReorderControl *)self grabberImage];
  [(UIImageView *)self->_imageView setImage:v3];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellReorderControl;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self layoutBelowIfNeeded];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = UITableViewCellReorderControl;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(UITableViewCellReorderControl *)self _updateImageView];
}

- (void)setAccessoryTintColor:(id)a3
{
  v5 = a3;
  if (![(UIColor *)self->_accessoryTintColor isEqual:?])
  {
    objc_storeStrong(&self->_accessoryTintColor, a3);
    [(UITableViewCellReorderControl *)self _updateImageView];
  }
}

- (void)setTracking:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellReorderControl;
  [(UIControl *)&v4 setTracking:a3];
  [(UITableViewCellReorderControl *)self _updateImageView];
}

- (BOOL)shouldTrack
{
  if ([(UIControl *)self isTracking])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v5 = [WeakRetained _isReorderControlActive];

  return v5;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(UITableViewCellReorderControl *)self setTracking:1];
  [v5 locationInView:self];
  self->_downPoint.x = v6;
  self->_downPoint.y = v7;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  LOBYTE(self) = [WeakRetained _grabberBeganReorder:self touch:v5];

  return self;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  [v5 locationInView:self];
  v8 = round(v7 - self->_downPoint.y);
  *&v8 = v8;
  [WeakRetained _grabberDragged:self yDelta:v5 touch:v8];

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [(UITableViewCellReorderControl *)self setTracking:0, a4];
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  [WeakRetained _grabberReleased:self];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  if ([(UIControl *)self isTracking])
  {
    [(UITableViewCellReorderControl *)self endTrackingWithTouch:0 withEvent:v4];
  }
}

@end