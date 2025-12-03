@interface PXCompositeEditorialLayoutMetrics
- (PXCompositeEditorialLayoutMetrics)init;
- (UIEdgeInsets)padding;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXCompositeEditorialLayoutMetrics

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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PXCompositeEditorialLayoutMetrics;
  v4 = [(PXLayoutMetrics *)&v7 copyWithZone:zone];
  *(v4 + 4) = *&self->_interTileSpacing;
  v5 = *&self->_padding.bottom;
  *(v4 + 3) = *&self->_padding.top;
  *(v4 + 4) = v5;
  *(v4 + 24) = self->_useSaliency;
  objc_storeStrong(v4 + 5, self->_editorialLayoutSpec);
  return v4;
}

- (PXCompositeEditorialLayoutMetrics)init
{
  v8.receiver = self;
  v8.super_class = PXCompositeEditorialLayoutMetrics;
  v2 = [(PXCompositeEditorialLayoutMetrics *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_interTileSpacing = 2.0;
    v4 = *(off_1E7721FA8 + 1);
    *&v2->_padding.top = *off_1E7721FA8;
    *&v2->_padding.bottom = v4;
    v5 = +[PXCompositeEditorialLayoutSpec defaultSpec];
    editorialLayoutSpec = v3->_editorialLayoutSpec;
    v3->_editorialLayoutSpec = v5;
  }

  return v3;
}

@end