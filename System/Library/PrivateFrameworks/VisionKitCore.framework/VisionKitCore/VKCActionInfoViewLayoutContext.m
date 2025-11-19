@interface VKCActionInfoViewLayoutContext
- (CATransform3D)transform;
- (CGRect)containerBounds;
- (UIEdgeInsets)edgeInsets;
- (VKCActionInfoViewLayoutContext)init;
- (double)remainingWidth;
- (void)reset;
- (void)setTransform:(CATransform3D *)a3;
@end

@implementation VKCActionInfoViewLayoutContext

- (VKCActionInfoViewLayoutContext)init
{
  v8.receiver = self;
  v8.super_class = VKCActionInfoViewLayoutContext;
  v2 = [(VKCActionInfoViewLayoutContext *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leadingLayout = v2->_leadingLayout;
    v2->_leadingLayout = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    trailingLayout = v2->_trailingLayout;
    v2->_trailingLayout = v5;
  }

  return v2;
}

- (void)reset
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  self->_containerBounds.origin = *MEMORY[0x1E695F058];
  self->_containerBounds.size = v3;
  self->_padding = 0.0;
  self->_scale = 0.0;
  self->_edgeInsets = *VKUIEdgeInsetsZero;
  *&self->_didAddLeadingItem = 0;
  self->_animateItemVisibilityChanges = 0;
  self->_currentMaxX = 0.0;
  self->_currentMinX = 0.0;
  [(NSMutableArray *)self->_leadingLayout removeAllObjects];
  trailingLayout = self->_trailingLayout;

  [(NSMutableArray *)trailingLayout removeAllObjects];
}

- (double)remainingWidth
{
  [(VKCActionInfoViewLayoutContext *)self currentMaxX];
  v4 = v3;
  [(VKCActionInfoViewLayoutContext *)self currentMinX];
  return v4 - v5;
}

- (CGRect)containerBounds
{
  x = self->_containerBounds.origin.x;
  y = self->_containerBounds.origin.y;
  width = self->_containerBounds.size.width;
  height = self->_containerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CATransform3D)transform
{
  v3 = *&self[1].m33;
  *&retstr->m31 = *&self[1].m31;
  *&retstr->m33 = v3;
  v4 = *&self[1].m43;
  *&retstr->m41 = *&self[1].m41;
  *&retstr->m43 = v4;
  v5 = *&self[1].m13;
  *&retstr->m11 = *&self[1].m11;
  *&retstr->m13 = v5;
  v6 = *&self[1].m23;
  *&retstr->m21 = *&self[1].m21;
  *&retstr->m23 = v6;
  return self;
}

- (void)setTransform:(CATransform3D *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m13;
  v5 = *&a3->m23;
  *&self->_transform.m21 = *&a3->m21;
  *&self->_transform.m23 = v5;
  *&self->_transform.m11 = v3;
  *&self->_transform.m13 = v4;
  v6 = *&a3->m31;
  v7 = *&a3->m33;
  v8 = *&a3->m43;
  *&self->_transform.m41 = *&a3->m41;
  *&self->_transform.m43 = v8;
  *&self->_transform.m31 = v6;
  *&self->_transform.m33 = v7;
}

@end