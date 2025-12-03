@interface UITableViewCellReorderControl
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)shouldTrack;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UITableViewCellReorderControl)initWithTableViewCell:(id)cell;
- (id)grabberImage;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateImageView;
- (void)adjustLayoutForFocalRect:(CGRect)rect;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAccessoryTintColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)setTracking:(BOOL)tracking;
@end

@implementation UITableViewCellReorderControl

- (id)grabberImage
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  _reorderControlImage = [WeakRetained _reorderControlImage];
  v5 = _reorderControlImage;
  if (_reorderControlImage)
  {
    v6 = _reorderControlImage;
  }

  else
  {
    accessoryTintColor = self->_accessoryTintColor;
    if (accessoryTintColor)
    {
      _accessoryBaseColor = accessoryTintColor;
    }

    else
    {
      _tableView = [WeakRetained _tableView];
      _accessoryBaseColor = [_tableView _accessoryBaseColor];
    }

    _constants = [WeakRetained _constants];
    traitCollection = [WeakRetained traitCollection];
    v6 = [_constants defaultReorderControlImageForTraitCollection:traitCollection withAccessoryBaseColor:_accessoryBaseColor isTracking:{-[UIControl isTracking](self, "isTracking")}];
  }

  return v6;
}

- (UITableViewCellReorderControl)initWithTableViewCell:(id)cell
{
  cellCopy = cell;
  _constants = [cellCopy _constants];
  _tableView = [cellCopy _tableView];
  _accessoryBaseColor = [_tableView _accessoryBaseColor];
  [_constants defaultReorderControlSizeForCell:cellCopy withAccessoryBaseColor:_accessoryBaseColor];
  v9 = v8;
  v11 = v10;

  v28.receiver = self;
  v28.super_class = UITableViewCellReorderControl;
  v12 = [(UIControl *)&v28 initWithFrame:0.0, 0.0, v9, v11];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_cell, cellCopy);
    [(UIView *)v13 setOpaque:0];
    [(UIView *)v13 setExclusiveTouch:1];
    [(UIView *)v13 setAutoresizingMask:1];
    [(UIView *)v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    grabberImage = [(UITableViewCellReorderControl *)v13 grabberImage];
    [grabberImage size];
    v25 = [[UIImageView alloc] initWithFrame:round(v15 + (v19 - v23) * 0.5), round(v17 + (v21 - v24) * 0.5), v23, v24];
    [(UIImageView *)v25 setImage:grabberImage];
    [(UIView *)v13 addSubview:v25];
    imageView = v13->_imageView;
    v13->_imageView = v25;

    v13->_focalY = NAN;
    v13->_focalHeight = NAN;
  }

  return v13;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  [(UIView *)self frame];
  v5 = v4;
  v6 = height;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)adjustLayoutForFocalRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  IsEmpty = CGRectIsEmpty(rect);
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
  grabberImage = [(UITableViewCellReorderControl *)self grabberImage];
  [(UIImageView *)self->_imageView setImage:grabberImage];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = UITableViewCellReorderControl;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)self layoutBelowIfNeeded];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = UITableViewCellReorderControl;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(UITableViewCellReorderControl *)self _updateImageView];
}

- (void)setAccessoryTintColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_accessoryTintColor isEqual:?])
  {
    objc_storeStrong(&self->_accessoryTintColor, color);
    [(UITableViewCellReorderControl *)self _updateImageView];
  }
}

- (void)setTracking:(BOOL)tracking
{
  v4.receiver = self;
  v4.super_class = UITableViewCellReorderControl;
  [(UIControl *)&v4 setTracking:tracking];
  [(UITableViewCellReorderControl *)self _updateImageView];
}

- (BOOL)shouldTrack
{
  if ([(UIControl *)self isTracking])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_cell);
  _isReorderControlActive = [WeakRetained _isReorderControlActive];

  return _isReorderControlActive;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  [(UITableViewCellReorderControl *)self setTracking:1];
  [touchCopy locationInView:self];
  self->_downPoint.x = v6;
  self->_downPoint.y = v7;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  LOBYTE(self) = [WeakRetained _grabberBeganReorder:self touch:touchCopy];

  return self;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  [touchCopy locationInView:self];
  v8 = round(v7 - self->_downPoint.y);
  *&v8 = v8;
  [WeakRetained _grabberDragged:self yDelta:touchCopy touch:v8];

  return 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  [(UITableViewCellReorderControl *)self setTracking:0, event];
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  [WeakRetained _grabberReleased:self];
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  if ([(UIControl *)self isTracking])
  {
    [(UITableViewCellReorderControl *)self endTrackingWithTouch:0 withEvent:eventCopy];
  }
}

@end