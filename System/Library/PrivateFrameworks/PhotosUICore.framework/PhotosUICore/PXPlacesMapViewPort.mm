@interface PXPlacesMapViewPort
- ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRect;
- (BOOL)isEqual:(id)equal;
- (CGSize)viewSize;
- (PXPlacesMapViewPort)initWithMapRect:(id)rect andViewSize:(CGSize)size zoomLevel:(double)level pitch:(double)pitch;
- (id)copyWithZone:(_NSZone *)zone;
- (id)viewPortsBySplitingAt180thMerdian;
@end

@implementation PXPlacesMapViewPort

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRect
{
  x = self->_mapRect.origin.x;
  y = self->_mapRect.origin.y;
  width = self->_mapRect.size.width;
  height = self->_mapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (id)viewPortsBySplitingAt180thMerdian
{
  v20[2] = *MEMORY[0x1E69E9840];
  [(PXPlacesMapViewPort *)self mapRect];
  if (MKMapRectSpans180thMeridian(v22))
  {
    [(PXPlacesMapViewPort *)self mapRect];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v24 = MKMapRectIntersection(v23, *MEMORY[0x1E696F0D8]);
    v7 = v24.origin.x;
    v8 = v24.origin.y;
    v9 = v24.size.width;
    v10 = v24.size.height;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v25 = MKMapRectRemainder(v24);
    v11 = v25.origin.x;
    v12 = v25.origin.y;
    v13 = v25.size.width;
    v14 = v25.size.height;
    v15 = [(PXPlacesMapViewPort *)self copyWithZone:0];
    [v15 setMapRect:{v7, v8, v9, v10}];
    v16 = [(PXPlacesMapViewPort *)self copyWithZone:0];
    [v16 setMapRect:{v11, v12, v13, v14}];
    v20[0] = v15;
    v20[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  }

  else
  {
    v15 = [(PXPlacesMapViewPort *)self copyWithZone:0];
    v19 = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXPlacesMapViewPort alloc];
  [(PXPlacesMapViewPort *)self mapRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PXPlacesMapViewPort *)self viewSize];
  v14 = v13;
  v16 = v15;
  [(PXPlacesMapViewPort *)self zoomLevel];
  v18 = v17;
  [(PXPlacesMapViewPort *)self pitch];
  v20 = [(PXPlacesMapViewPort *)v4 initWithMapRect:v6 andViewSize:v8 zoomLevel:v10 pitch:v12, v14, v16, v18, v19];
  [(PXPlacesMapViewPort *)self scale];
  [(PXPlacesMapViewPort *)v20 setScale:?];
  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(PXPlacesMapViewPort *)self mapRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 mapRect];
    v18 = v7 == v17 && v9 == v14;
    if (v18 && (v11 == v15 ? (v19 = v13 == v16) : (v19 = 0), v19))
    {
      [(PXPlacesMapViewPort *)self viewSize];
      v22 = v21;
      v24 = v23;
      [v5 viewSize];
      v20 = v24 == v26 && v22 == v25;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (PXPlacesMapViewPort)initWithMapRect:(id)rect andViewSize:(CGSize)size zoomLevel:(double)level pitch:(double)pitch
{
  height = size.height;
  width = size.width;
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v12 = rect.var0.var1;
  v13 = rect.var0.var0;
  v16.receiver = self;
  v16.super_class = PXPlacesMapViewPort;
  result = [(PXPlacesMapViewPort *)&v16 init];
  if (result)
  {
    result->_mapRect.origin.y = v12;
    result->_mapRect.size.width = var0;
    result->_mapRect.size.height = var1;
    result->_viewSize.height = height;
    result->_mapRect.origin.x = v13;
    result->_zoomLevel = level;
    result->_pitch = pitch;
    v15 = var0 / width;
    if (width <= 0.0)
    {
      v15 = 0.0;
    }

    result->_scale = v15;
    result->_viewSize.width = width;
  }

  return result;
}

@end