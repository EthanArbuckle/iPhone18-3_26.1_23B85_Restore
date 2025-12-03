@interface PXMemoriesFeedLayoutMetrics
- (UIEdgeInsets)contentInsets;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXMemoriesFeedLayoutMetrics

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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PXMemoriesFeedLayoutMetrics;
  v4 = [(PXLayoutMetrics *)&v7 copyWithZone:zone];
  objc_storeStrong(v4 + 3, self->_spec);
  v5 = *&self->_contentInsets.bottom;
  *(v4 + 2) = *&self->_contentInsets.top;
  *(v4 + 3) = v5;
  return v4;
}

@end