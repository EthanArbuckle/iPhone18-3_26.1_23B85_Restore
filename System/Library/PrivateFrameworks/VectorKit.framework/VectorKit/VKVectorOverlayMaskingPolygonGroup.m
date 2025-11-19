@interface VKVectorOverlayMaskingPolygonGroup
- (VKVectorOverlayMaskingPolygonGroup)initWithPolygons:(id)a3;
@end

@implementation VKVectorOverlayMaskingPolygonGroup

- (VKVectorOverlayMaskingPolygonGroup)initWithPolygons:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VKVectorOverlayMaskingPolygonGroup;
  v6 = [(VKVectorOverlayData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_polygons, a3);
    v7->_fillMode = 0;
    v7->_style = 0;
    v8 = v7;
  }

  return v7;
}

@end