@interface PXOverlayFeedLayoutMetrics
- (CGSize)interItemSpacing;
- (UIEdgeInsets)contentInsets;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXOverlayFeedLayoutMetrics

- (CGSize)interItemSpacing
{
  width = self->_interItemSpacing.width;
  height = self->_interItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PXOverlayFeedLayoutMetrics;
  result = [(PXLayoutMetrics *)&v6 copyWithZone:a3];
  v5 = *&self->_contentInsets.bottom;
  *(result + 72) = *&self->_contentInsets.top;
  *(result + 88) = v5;
  *(result + 56) = self->_interItemSpacing;
  *(result + 4) = *&self->_firstRowTopMargin;
  *(result + 5) = *&self->_regularItemAspectRatio;
  *(result + 6) = *&self->_largeItemAspectRatio;
  *(result + 24) = self->_useSimpleLayout;
  return result;
}

@end