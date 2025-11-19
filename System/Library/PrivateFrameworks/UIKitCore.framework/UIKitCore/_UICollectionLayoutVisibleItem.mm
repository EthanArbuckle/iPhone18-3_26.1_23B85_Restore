@interface _UICollectionLayoutVisibleItem
- (CATransform3D)transform3D;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (NSString)description;
- (id)initWithLayoutAttributes:(void *)a3 layoutItem:;
- (unint64_t)representedElementCategory;
- (void)setTransform3D:(CATransform3D *)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation _UICollectionLayoutVisibleItem

- (id)initWithLayoutAttributes:(void *)a3 layoutItem:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = _UICollectionLayoutVisibleItem;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 2, a2);
    objc_storeStrong(v6 + 3, a3);
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_dirty];
  v7 = [v3 stringWithFormat:@"<%@ %p: isDirty:%@ layoutAttributes:%@; layoutItem:%@>", v5, self, v6, self->_layoutAttributes, self->_layoutItem];;

  return v7;
}

- (CATransform3D)transform3D
{
  result = self->_layoutAttributes;
  if (result)
  {
    return [(CATransform3D *)result transform3D];
  }

  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  return result;
}

- (void)setTransform3D:(CATransform3D *)a3
{
  self->_dirty = 1;
  v3 = *&a3->m33;
  v7[4] = *&a3->m31;
  v7[5] = v3;
  v4 = *&a3->m43;
  v7[6] = *&a3->m41;
  v7[7] = v4;
  v5 = *&a3->m13;
  v7[0] = *&a3->m11;
  v7[1] = v5;
  v6 = *&a3->m23;
  v7[2] = *&a3->m21;
  v7[3] = v6;
  [(UICollectionViewLayoutAttributes *)self->_layoutAttributes setTransform3D:v7];
}

- (CGAffineTransform)transform
{
  result = self->_layoutAttributes;
  if (result)
  {
    return [(CGAffineTransform *)result transform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  self->_dirty = 1;
  v3 = *&a3->c;
  v4[0] = *&a3->a;
  v4[1] = v3;
  v4[2] = *&a3->tx;
  [(UICollectionViewLayoutAttributes *)self->_layoutAttributes setTransform:v4];
}

- (unint64_t)representedElementCategory
{
  layoutAttributes = self->_layoutAttributes;
  if (!layoutAttributes)
  {
    return 0;
  }

  layoutFlags = layoutAttributes->_layoutFlags;
  v4 = 1;
  if ((*&layoutFlags & 2) != 0)
  {
    v4 = 2;
  }

  if (*&layoutFlags)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (CGRect)frame
{
  [(UICollectionViewLayoutAttributes *)self->_layoutAttributes frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)center
{
  [(UICollectionViewLayoutAttributes *)self->_layoutAttributes center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)bounds
{
  [(UICollectionViewLayoutAttributes *)self->_layoutAttributes bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end