@interface _UICollectionViewListCellReorderControl
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)_minimumSizeForHitTesting;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UICollectionViewListCellReorderControl)initWithDelegate:(id)a3 constants:(id)a4;
- (_UICollectionViewListCellReorderControlDelegate)delegate;
- (void)_setTracking:(BOOL)a3;
- (void)_updateImageViewIfNeeded;
- (void)beginReordering;
- (void)cancelReorderingGesture;
- (void)endReordering:(BOOL)a3;
- (void)gestureMovedToPoint:(CGPoint)a3;
- (void)layoutSubviews;
- (void)pan:(id)a3;
- (void)setAccessoryTintColor:(id)a3;
- (void)setConstants:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation _UICollectionViewListCellReorderControl

- (_UICollectionViewListCellReorderControl)initWithDelegate:(id)a3 constants:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _UICollectionViewListCellReorderControl;
  v8 = [(UIControl *)&v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_constants, a4);
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

- (void)setConstants:(id)a3
{
  v5 = a3;
  if (self->_constants != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_constants, a3);
    [(_UICollectionViewListCellReorderControl *)self _setNeedsImageViewUpdate];
    v5 = v6;
  }
}

- (void)setAccessoryTintColor:(id)a3
{
  v5 = a3;
  if (self->_accessoryTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryTintColor, a3);
    [(_UICollectionViewListCellReorderControl *)self _setNeedsImageViewUpdate];
    v5 = v6;
  }
}

- (void)_setTracking:(BOOL)a3
{
  if (self->_tracking != a3)
  {
    self->_tracking = a3;
    [(_UICollectionViewListCellReorderControl *)self _setNeedsImageViewUpdate];
  }
}

- (void)_updateImageViewIfNeeded
{
  if (self->_needsImageViewUpdate)
  {
    self->_needsImageViewUpdate = 0;
    constants = self->_constants;
    v6 = [(UIView *)self traitCollection];
    v5 = [(UITableConstants *)constants defaultReorderControlImageForTraitCollection:v6 withAccessoryBaseColor:self->_accessoryTintColor isTracking:self->_tracking];
    [(UIImageView *)self->_imageView setImage:v5];
  }
}

- (CGSize)_minimumSizeForHitTesting
{
  v2 = [(UIView *)self isUserInteractionEnabled];
  v3 = 44.0;
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (v2)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v3 = [(UIImageView *)self->_imageView _currentImage];
  [v3 size];
  v5 = v4;
  v7 = v6;

  [(UIImageView *)self->_imageView setBounds:0.0, 0.0, v5, v7];
  [(UIView *)self bounds];
  [(UIImageView *)self->_imageView setCenter:v9 + v8 * 0.5, v11 + v10 * 0.5];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewListCellReorderControl;
  v6 = a3;
  [(UIControl *)&v8 touchesBegan:v6 withEvent:a4];
  v7 = [(_UICollectionViewListCellReorderControl *)self delegate:v8.receiver];
  [v7 _reorderControl:self didReceiveTouchesBegan:v6];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_reorderRecognizer == a3)
  {
    v5 = [(_UICollectionViewListCellReorderControl *)self delegate];
    v6 = [v5 _reorderControlShouldBeginReordering:self];

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UICollectionViewListCellReorderControl;
    return [(UIView *)&v7 gestureRecognizerShouldBegin:?];
  }
}

- (void)pan:(id)a3
{
  v22 = a3;
  v5 = [v22 state];
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        if (!self->_tracking)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"_tracking"}];
        }

        [v22 locationInView:self];
        v11 = v10;
        v13 = v12;
        [(_UICollectionViewListCellReorderControl *)self endReordering:0];
        [(_UICollectionViewListCellReorderControl *)self gestureMovedToPoint:v11, v13];
        break;
      case 4:
        if (!self->_tracking)
        {
          v21 = [MEMORY[0x1E696AAA8] currentHandler];
          [v21 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"_tracking"}];
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

  switch(v5)
  {
    case 0:
LABEL_11:
      if (self->_tracking)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"!_tracking"}];
      }

      goto LABEL_24;
    case 1:
      if (self->_tracking)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"!_tracking"}];
      }

      [(_UICollectionViewListCellReorderControl *)self _setTracking:1];
      [v22 locationInView:self];
      v15 = v14;
      v17 = v16;
      [(_UICollectionViewListCellReorderControl *)self beginReordering];
      v8 = self;
      v6 = v15;
      v7 = v17;
      break;
    case 2:
      if (!self->_tracking)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellReorderControl.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"_tracking"}];
      }

      [v22 locationInView:self];
      v8 = self;
      break;
    default:
      goto LABEL_24;
  }

  [(_UICollectionViewListCellReorderControl *)v8 gestureMovedToPoint:v6, v7];
LABEL_24:
}

- (void)beginReordering
{
  v3 = [(_UICollectionViewListCellReorderControl *)self delegate];
  [v3 _reorderControlDidBeginReordering:self];
}

- (void)gestureMovedToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v12 = [(_UICollectionViewListCellReorderControl *)self delegate];
  [v12 _reorderControl:self didUpdateWithOffset:{x - MidX, v11}];
}

- (void)endReordering:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UICollectionViewListCellReorderControl *)self delegate];
  [v5 _reorderControlDidEndReordering:self cancelled:v3];
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