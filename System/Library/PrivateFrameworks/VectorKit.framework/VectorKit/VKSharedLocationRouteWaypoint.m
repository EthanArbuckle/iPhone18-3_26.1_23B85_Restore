@interface VKSharedLocationRouteWaypoint
- (VKSharedLocationRouteWaypoint)initWithWaypoint:(id)a3 displayInfo:(id)a4 legIndex:(unint64_t)a5 routeCoordinate:(id)a6 adjacentRouteCoordinate:(id)a7 polylineCoordinate:(PolylineCoordinate)a8;
- (void)setAnnotationText:(id)a3;
- (void)setImageProvider:(id)a3 withKey:(id)a4;
@end

@implementation VKSharedLocationRouteWaypoint

- (void)setAnnotationText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_annotationText isEqualToString:?])
  {
    v4 = [v6 copy];
    annotationText = self->_annotationText;
    self->_annotationText = v4;

    [(VKRouteWaypointInfo *)self setNeedsTextUpdate:1];
  }
}

- (void)setImageProvider:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  imageProvider = self->_imageProvider;
  self->_imageProvider = v6;
  v10 = v6;

  customImageKey = self->_customImageKey;
  self->_customImageKey = v7;
}

- (VKSharedLocationRouteWaypoint)initWithWaypoint:(id)a3 displayInfo:(id)a4 legIndex:(unint64_t)a5 routeCoordinate:(id)a6 adjacentRouteCoordinate:(id)a7 polylineCoordinate:(PolylineCoordinate)a8
{
  v14.receiver = self;
  v14.super_class = VKSharedLocationRouteWaypoint;
  v8 = [(VKRouteWaypointInfo *)&v14 initWithWaypoint:a3 displayInfo:a4 legIndex:a5 routeCoordinate:a8 adjacentRouteCoordinate:3 polylineCoordinate:a6.var0 waypointType:a6.var1, a6.var2, a7.var0, a7.var1, a7.var2];
  v9 = v8;
  if (v8)
  {
    customImageKey = v8->_customImageKey;
    v8->_customImageKey = 0;

    imageProvider = v9->_imageProvider;
    v9->_imageProvider = 0;

    v12 = v9;
  }

  return v9;
}

@end