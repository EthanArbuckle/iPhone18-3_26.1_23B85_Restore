@interface _UIGlyphPathBoundsIntersectionViewData
- (CGRect)availableBounds;
- (CGRect)glyphPathBounds;
- (UIView)clippingView;
- (_UIGlyphPathBoundsIntersectionViewData)init;
- (id)debugDescription;
@end

@implementation _UIGlyphPathBoundsIntersectionViewData

- (_UIGlyphPathBoundsIntersectionViewData)init
{
  v7.receiver = self;
  v7.super_class = _UIGlyphPathBoundsIntersectionViewData;
  v2 = [(_UIGlyphPathBoundsIntersectionViewData *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 16);
    v2->_availableBounds.origin = *MEMORY[0x1E695F058];
    v2->_availableBounds.size = v5;
    v2->_glyphPathBounds.origin = v4;
    v2->_glyphPathBounds.size = v5;
    objc_storeWeak(&v2->_clippingView, 0);
  }

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UIGlyphPathBoundsIntersectionViewData *)self _frameDebugDescription:self->_availableBounds.origin.x, self->_availableBounds.origin.y, self->_availableBounds.size.width, self->_availableBounds.size.height];
  v7 = [(_UIGlyphPathBoundsIntersectionViewData *)self _frameDebugDescription:self->_glyphPathBounds.origin.x, self->_glyphPathBounds.origin.y, self->_glyphPathBounds.size.width, self->_glyphPathBounds.size.height];
  WeakRetained = objc_loadWeakRetained(&self->_clippingView);
  v9 = [WeakRetained debugDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p availableBounds: %@, glyphPathBounds: %@, clippingView: %@>", v5, self, v6, v7, v9];

  return v10;
}

- (CGRect)availableBounds
{
  x = self->_availableBounds.origin.x;
  y = self->_availableBounds.origin.y;
  width = self->_availableBounds.size.width;
  height = self->_availableBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)glyphPathBounds
{
  x = self->_glyphPathBounds.origin.x;
  y = self->_glyphPathBounds.origin.y;
  width = self->_glyphPathBounds.size.width;
  height = self->_glyphPathBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)clippingView
{
  WeakRetained = objc_loadWeakRetained(&self->_clippingView);

  return WeakRetained;
}

@end