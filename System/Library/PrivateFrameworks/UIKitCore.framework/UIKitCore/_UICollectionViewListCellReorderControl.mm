@interface _UICollectionViewListCellReorderControl
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)_minimumSizeForHitTesting;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UICollectionViewListCellReorderControl)initWithDelegate:(id)delegate constants:(id)constants;
- (_UICollectionViewListCellReorderControlDelegate)delegate;
- (void)_setTracking:(BOOL)tracking;
- (void)_updateImageViewIfNeeded;
- (void)beginReordering;
- (void)cancelReorderingGesture;
- (void)endReordering:(BOOL)reordering;
- (void)gestureMovedToPoint:(CGPoint)point;
- (void)layoutSubviews;
- (void)pan:(id)pan;
- (void)setAccessoryTintColor:(id)color;
- (void)setConstants:(id)constants;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation _UICollectionViewListCellReorderControl

- (_UICollectionViewListCellReorderControl)initWithDelegate:(id)delegate constants:(id)constants
{
  delegateCopy = delegate;
  constantsCopy = constants;
  v20.receiver = self;
  v20.super_class = _UICollectionViewListCellReorderControl;
  v8 = [(UIControl *)&v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_constants, constants);
    v10 = objc_alloc_init(UIImageView);
    [(UIView *)v9 addSubview:v10];
    imageView = v9->_imageView;
    v9->_imageView = v10;
    v12 = v10;

    v9->_needsImageViewUpdate = 1;
    v13 = +[UITraitCollection systemTraitsAffectingColorAppearance];
    v14 = +[UITraitCollection systemTraitsAffectingImageLookup];
    v15 = [v13 arrayByAddingObjectsFromArray:v14];

    v16 = [(UIView *)v9 registerForTraitChanges:v15 withAction:sel__setNeedsImageViewUpdate];
    v17 = [[UILongPressGestureRecognizer alloc] initWithTarget:v9 action:sel_pan_];
    [(UIGestureRecognizer *)v17 setDelegate:v9];
    [(UILongPressGestureRecognizer *)v17 setMinimumPressDuration:0.0];
    [(UIView *)v9 addGestureRecognizer:v17];
    reorderRecognizer = v9->_reorderRecognizer;
    v9->_reorderRecognizer = v17;
  }

  return v9;
}

- (void)setConstants:(id)constants
{
  constantsCopy = constants;
  if (self->_constants != constantsCopy)
  {
    v6 = constantsCopy;
    objc_storeStrong(&self->_constants, constants);
    [(_UICollectionViewListCellReorderControl *)self _setNeedsImageViewUpdate];
    constantsCopy = v6;
  }
}

- (void)setAccessoryTintColor:(id)color
{
  colorCopy = color;
  if (self->_accessoryTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_accessoryTintColor, color);
    [(_UICollectionViewListCellReorderControl *)self _setNeedsImageViewUpdate];
    colorCopy = v6;
  }
}

- (void)_setTracking:(BOOL)tracking
{
  if (self->_tracking != tracking)
  {
    self->_tracking = tracking;
    [(_UICollectionViewListCellReorderControl *)self _setNeedsImageViewUpdate];
  }
}

- (void)_updateImageViewIfNeeded
{
  if (self->_needsImageViewUpdate)
  {
    self->_needsImageViewUpdate = 0;
    constants = self->_constants;
    traitCollection = [(UIView *)self traitCollection];
    v5 = [(UITableConstants *)constants defaultReorderControlImageForTraitCollection:traitCollection withAccessoryBaseColor:self->_accessoryTintColor isTracking:self->_tracking];
    [(UIImageView *)self->_imageView setImage:v5];
  }
}

- (CGSize)_minimumSizeForHitTesting
{
  isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];
  v3 = 44.0;
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (isUserInteractionEnabled)
  {
    v4 = 44.0;
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(_UICollectionViewListCellReorderControl *)self _updateImageViewIfNeeded];
  [(UIImageView *)self->_imageView sizeThatFits:width, height];
  v7 = v6;
  v9 = v8;
  [(_UICollectionViewListCellReorderControl *)self _minimumSizeForHitTesting];
  if (v9 >= v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (height >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = height;
  }

  v13 = v7;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = _UICollectionViewListCellReorderControl;
  [(UIView *)&v12 layoutSubviews];
  [(_UICollectionViewListCellReorderControl *)self _updateImageViewIfNeeded];
  _currentImage = [(UIImageView *)self->_imageView _currentImage];
  [_currentImage size];
  v5 = v4;
  v7 = v6;

  [(UIImageView *)self->_imageView setBounds:0.0, 0.0, v5, v7];
  [(UIView *)self bounds];
  [(UIImageView *)self->_imageView setCenter:v9 + v8 * 0.5, v11 + v10 * 0.5];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewListCellReorderControl;
  beganCopy = began;
  [(UIControl *)&v8 touchesBegan:beganCopy withEvent:event];
  v7 = [(_UICollectionViewListCellReorderControl *)self delegate:v8.receiver];
  [v7 _reorderControl:self didReceiveTouchesBegan:beganCopy];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_reorderRecognizer == begin)
  {
    delegate = [(_UICollectionViewListCellReorderControl *)self delegate];
    v6 = [delegate _reorderControlShouldBeginReordering:self];

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UICollectionViewListCellReorderControl;
    return [(UIView *)&v7 gestureRecognizerShouldBegin:?];
  }
}

- (void)pan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if (state > 2)
  {
    switch(state)
    {
      case 3:
        if (!self->_tracking)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"_tracking"}];
        }

        [panCopy locationInView:self];
        v11 = v10;
        v13 = v12;
        [(_UICollectionViewListCellReorderControl *)self endReordering:0];
        [(_UICollectionViewListCellReorderControl *)self gestureMovedToPoint:v11, v13];
        break;
      case 4:
        if (!self->_tracking)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"_tracking"}];
        }

        [(_UICollectionViewListCellReorderControl *)self endReordering:1];
        break;
      case 5:
        goto LABEL_11;
      default:
        goto LABEL_24;
    }

    [(_UICollectionViewListCellReorderControl *)self _setTracking:0];
    goto LABEL_24;
  }

  switch(state)
  {
    case 0:
LABEL_11:
      if (self->_tracking)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"!_tracking"}];
      }

      goto LABEL_24;
    case 1:
      if (self->_tracking)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"!_tracking"}];
      }

      [(_UICollectionViewListCellReorderControl *)self _setTracking:1];
      [panCopy locationInView:self];
      v15 = v14;
      v17 = v16;
      [(_UICollectionViewListCellReorderControl *)self beginReordering];
      selfCopy2 = self;
      v6 = v15;
      v7 = v17;
      break;
    case 2:
      if (!self->_tracking)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"_tracking"}];
      }

      [panCopy locationInView:self];
      selfCopy2 = self;
      break;
    default:
      goto LABEL_24;
  }

  [(_UICollectionViewListCellReorderControl *)selfCopy2 gestureMovedToPoint:v6, v7];
LABEL_24:
}

- (void)beginReordering
{
  delegate = [(_UICollectionViewListCellReorderControl *)self delegate];
  [delegate _reorderControlDidBeginReordering:self];
}

- (void)gestureMovedToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UIView *)self bounds];
  v6 = v14.origin.x;
  v7 = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = v6;
  v15.origin.y = v7;
  v15.size.width = width;
  v15.size.height = height;
  v11 = y - CGRectGetMidY(v15);
  delegate = [(_UICollectionViewListCellReorderControl *)self delegate];
  [delegate _reorderControl:self didUpdateWithOffset:{x - MidX, v11}];
}

- (void)endReordering:(BOOL)reordering
{
  reorderingCopy = reordering;
  delegate = [(_UICollectionViewListCellReorderControl *)self delegate];
  [delegate _reorderControlDidEndReordering:self cancelled:reorderingCopy];
}

- (void)cancelReorderingGesture
{
  v2 = self->_reorderRecognizer;
  [(UIGestureRecognizer *)v2 setEnabled:0];
  [(UIGestureRecognizer *)v2 setEnabled:1];
}

- (_UICollectionViewListCellReorderControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end