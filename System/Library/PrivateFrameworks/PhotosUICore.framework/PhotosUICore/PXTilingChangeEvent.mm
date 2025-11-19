@interface PXTilingChangeEvent
- (CGSize)referenceSize;
- (PXTilingChangeEvent)init;
- (PXTilingChangeEvent)initWithChangeToContentInset:(UIEdgeInsets)a3;
- (PXTilingChangeEvent)initWithChangeToLayout:(id)a3;
- (PXTilingChangeEvent)initWithChangeToReferenceSize:(CGSize)a3;
- (PXTilingChangeEvent)initWithCoordinateSpaceChange;
- (PXTilingChangeEvent)initWithLayoutInvalidationContext:(id)a3;
- (UIEdgeInsets)contentInset;
- (id)description;
@end

@implementation PXTilingChangeEvent

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = v3;
  type = self->_type;
  if (type > 2)
  {
    if (type == 3)
    {
      v6 = NSStringFromUIEdgeInsets(self->_contentInset);
      [v4 appendFormat:@", type=contentInsetChange, contentInset=%@", v6];
LABEL_12:

      goto LABEL_17;
    }

    if (type != 4)
    {
      if (type == 5)
      {
        [v3 appendFormat:@", type=layoutInvalidation, context=%@", self->_context];
      }

      goto LABEL_17;
    }

    v7 = @", type=coordinateSpaceChange";
LABEL_16:
    [v3 appendString:v7];
    goto LABEL_17;
  }

  if (!type)
  {
    v7 = @", type=?";
    goto LABEL_16;
  }

  if (type != 1)
  {
    if (type != 2)
    {
      goto LABEL_17;
    }

    v6 = NSStringFromCGSize(self->_referenceSize);
    [v4 appendFormat:@", type=referenceSizeChange, referenceSize=%@", v6];
    goto LABEL_12;
  }

  [v3 appendFormat:@", type=layoutChange, layout=%@", self->_layout];
LABEL_17:
  [v4 appendString:@">"];

  return v4;
}

- (PXTilingChangeEvent)initWithLayoutInvalidationContext:(id)a3
{
  v5 = a3;
  v6 = [(PXTilingChangeEvent *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 5;
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (PXTilingChangeEvent)initWithCoordinateSpaceChange
{
  result = [(PXTilingChangeEvent *)self init];
  if (result)
  {
    result->_type = 4;
  }

  return result;
}

- (PXTilingChangeEvent)initWithChangeToContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  result = [(PXTilingChangeEvent *)self init];
  if (result)
  {
    result->_type = 3;
    result->_contentInset.top = top;
    result->_contentInset.left = left;
    result->_contentInset.bottom = bottom;
    result->_contentInset.right = right;
  }

  return result;
}

- (PXTilingChangeEvent)initWithChangeToReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  result = [(PXTilingChangeEvent *)self init];
  if (result)
  {
    result->_type = 2;
    result->_referenceSize.width = width;
    result->_referenceSize.height = height;
  }

  return result;
}

- (PXTilingChangeEvent)initWithChangeToLayout:(id)a3
{
  v5 = a3;
  v6 = [(PXTilingChangeEvent *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_layout, a3);
  }

  return v7;
}

- (PXTilingChangeEvent)init
{
  v3.receiver = self;
  v3.super_class = PXTilingChangeEvent;
  result = [(PXTilingChangeEvent *)&v3 init];
  if (result)
  {
    result->_type = 0;
  }

  return result;
}

@end