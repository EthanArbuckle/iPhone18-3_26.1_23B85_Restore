@interface _UIDocumentCarouselViewLayoutAttributes
- (_UIDocumentCarouselViewLayoutAttributes)init;
- (id)description;
@end

@implementation _UIDocumentCarouselViewLayoutAttributes

- (_UIDocumentCarouselViewLayoutAttributes)init
{
  v5.receiver = self;
  v5.super_class = _UIDocumentCarouselViewLayoutAttributes;
  result = [(_UIDocumentCarouselViewLayoutAttributes *)&v5 init];
  if (result)
  {
    result->_alpha = 1.0;
    v3 = MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_transform.a = *MEMORY[0x1E695EFD0];
    *&result->_transform.c = v4;
    *&result->_transform.tx = *(v3 + 32);
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGPoint(self->_center);
  v7 = NSStringFromCGSize(self->_size);
  zIndex = self->_zIndex;
  alpha = self->_alpha;
  v10 = *&self->_transform.c;
  *&transform.a = *&self->_transform.a;
  *&transform.c = v10;
  *&transform.tx = *&self->_transform.tx;
  v11 = NSStringFromCGAffineTransform(&transform);
  v12 = [v3 stringWithFormat:@"<%@ %p center = %@ size = %@; zIndex = %g; alpha = %g; transform = %@", v5, self, v6, v7, *&zIndex, *&alpha, v11];;

  return v12;
}

@end