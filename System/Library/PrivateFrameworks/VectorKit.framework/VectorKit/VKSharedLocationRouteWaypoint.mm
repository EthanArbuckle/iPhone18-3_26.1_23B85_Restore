@interface VKSharedLocationRouteWaypoint
- (VKSharedLocationRouteWaypoint)initWithWaypoint:(id)waypoint displayInfo:(id)info legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate;
- (void)setAnnotationText:(id)text;
- (void)setImageProvider:(id)provider withKey:(id)key;
@end

@implementation VKSharedLocationRouteWaypoint

- (void)setAnnotationText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_annotationText isEqualToString:?])
  {
    v4 = [textCopy copy];
    annotationText = self->_annotationText;
    self->_annotationText = v4;

    [(VKRouteWaypointInfo *)self setNeedsTextUpdate:1];
  }
}

- (void)setImageProvider:(id)provider withKey:(id)key
{
  providerCopy = provider;
  keyCopy = key;
  imageProvider = self->_imageProvider;
  self->_imageProvider = providerCopy;
  v10 = providerCopy;

  customImageKey = self->_customImageKey;
  self->_customImageKey = keyCopy;
}

- (VKSharedLocationRouteWaypoint)initWithWaypoint:(id)waypoint displayInfo:(id)info legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate
{
  v14.receiver = self;
  v14.super_class = VKSharedLocationRouteWaypoint;
  v8 = [(VKRouteWaypointInfo *)&v14 initWithWaypoint:waypoint displayInfo:info legIndex:index routeCoordinate:polylineCoordinate adjacentRouteCoordinate:3 polylineCoordinate:coordinate.var0 waypointType:coordinate.var1, coordinate.var2, routeCoordinate.var0, routeCoordinate.var1, routeCoordinate.var2];
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