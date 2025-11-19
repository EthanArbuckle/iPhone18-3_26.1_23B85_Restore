@interface PXStoryRelatedLayoutMetrics
- (BOOL)isEqual:(id)a3;
- (CGPoint)scrollOffset;
- (UIEdgeInsets)margins;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXStoryRelatedLayoutMetrics

- (CGPoint)scrollOffset
{
  x = self->_scrollOffset.x;
  y = self->_scrollOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PXStoryRelatedLayoutMetrics;
  result = [(PXLayoutMetrics *)&v6 copyWithZone:a3];
  if (result)
  {
    v5 = *&self->_margins.bottom;
    *(result + 72) = *&self->_margins.top;
    *(result + 88) = v5;
    *(result + 3) = *&self->_interitemSpacing;
    *(result + 4) = self->_layoutMode;
    *(result + 56) = self->_scrollOffset;
    *(result + 5) = *&self->_offscreenFraction;
    *(result + 6) = self->_userInterfaceDirection;
  }

  return result;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PXStoryRelatedLayoutMetrics;
  v3 = [(PXLayoutMetrics *)&v6 hash];
  [(PXStoryRelatedLayoutMetrics *)self scrollOffset];
  return v3 ^ (2 * v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8.receiver = self;
      v8.super_class = PXStoryRelatedLayoutMetrics;
      if ([(PXLayoutMetrics *)&v8 isEqual:v5])
      {
        [(PXStoryRelatedLayoutMetrics *)self margins];
        [(PXStoryRelatedLayoutMetrics *)v5 margins];
        PXEdgeInsetsEqualToEdgeInsets();
      }

      v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end