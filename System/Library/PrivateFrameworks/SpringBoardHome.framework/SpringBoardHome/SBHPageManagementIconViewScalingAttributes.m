@interface SBHPageManagementIconViewScalingAttributes
- (SBHPageManagementIconViewScalingAttributes)initWithMinificationFilter:(id)a3 shouldRasterize:(BOOL)a4 rasterizationScale:(double)a5 allowsEdgeAntialiasing:(BOOL)a6;
@end

@implementation SBHPageManagementIconViewScalingAttributes

- (SBHPageManagementIconViewScalingAttributes)initWithMinificationFilter:(id)a3 shouldRasterize:(BOOL)a4 rasterizationScale:(double)a5 allowsEdgeAntialiasing:(BOOL)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = SBHPageManagementIconViewScalingAttributes;
  v11 = [(SBHPageManagementIconViewScalingAttributes *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    minificationFilter = v11->_minificationFilter;
    v11->_minificationFilter = v12;

    v11->_shouldRasterize = a4;
    v11->_rasterizationScale = a5;
    v11->_allowsEdgeAntialiasing = a6;
  }

  return v11;
}

@end