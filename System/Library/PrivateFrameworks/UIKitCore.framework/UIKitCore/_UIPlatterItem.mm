@interface _UIPlatterItem
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (UIView)heldView;
- (_UIPlatterItem)initWithView:(id)view;
- (void)setCenter:(CGPoint)center;
@end

@implementation _UIPlatterItem

- (_UIPlatterItem)initWithView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _UIPlatterItem;
  v5 = [(_UIPlatterItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_heldView, viewCopy);
  }

  return v6;
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  WeakRetained = objc_loadWeakRetained(&self->_heldView);
  [WeakRetained setCenter:{x, y}];
}

- (CGPoint)center
{
  WeakRetained = objc_loadWeakRetained(&self->_heldView);
  [WeakRetained center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGAffineTransform)transform
{
  WeakRetained = objc_loadWeakRetained(&self->_heldView);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained transform];
    WeakRetained = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGRect)bounds
{
  WeakRetained = objc_loadWeakRetained(&self->_heldView);
  [WeakRetained bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIView)heldView
{
  WeakRetained = objc_loadWeakRetained(&self->_heldView);

  return WeakRetained;
}

@end