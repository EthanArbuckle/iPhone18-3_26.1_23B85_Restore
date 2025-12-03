@interface PXGAnchorConstraint
- (UIEdgeInsets)padding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PXGAnchorConstraint

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  inequality = [(PXGAnchorConstraint *)self inequality];
  spriteReference = [(PXGAnchorConstraint *)self spriteReference];
  v8 = [v3 stringWithFormat:@"<%@: %p inequality = %li, spriteReference = %@>", v5, self, inequality, spriteReference];;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 3, self->_spriteReference);
  v4[4] = self->_referencingOptions;
  v4[5] = self->_spriteAttribute;
  *(v4 + 8) = self->_visiblePortionOnly;
  v5 = *&self->_padding.bottom;
  *(v4 + 4) = *&self->_padding.top;
  *(v4 + 5) = v5;
  v4[6] = self->_inequality;
  *(v4 + 3) = self->_spriteEdge;
  *(v4 + 4) = self->_visibleRectEdge;
  v4[7] = *&self->_offset;
  return v4;
}

@end