@interface SBHPageManagementIconViewScalingAttributes
- (SBHPageManagementIconViewScalingAttributes)initWithMinificationFilter:(id)filter shouldRasterize:(BOOL)rasterize rasterizationScale:(double)scale allowsEdgeAntialiasing:(BOOL)antialiasing;
@end

@implementation SBHPageManagementIconViewScalingAttributes

- (SBHPageManagementIconViewScalingAttributes)initWithMinificationFilter:(id)filter shouldRasterize:(BOOL)rasterize rasterizationScale:(double)scale allowsEdgeAntialiasing:(BOOL)antialiasing
{
  filterCopy = filter;
  v15.receiver = self;
  v15.super_class = SBHPageManagementIconViewScalingAttributes;
  v11 = [(SBHPageManagementIconViewScalingAttributes *)&v15 init];
  if (v11)
  {
    v12 = [filterCopy copy];
    minificationFilter = v11->_minificationFilter;
    v11->_minificationFilter = v12;

    v11->_shouldRasterize = rasterize;
    v11->_rasterizationScale = scale;
    v11->_allowsEdgeAntialiasing = antialiasing;
  }

  return v11;
}

@end