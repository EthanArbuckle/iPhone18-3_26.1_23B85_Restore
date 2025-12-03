@interface VKAlternateRouteInfo
- (VKAlternateRouteInfo)initWithComposedRoute:(id)route etaDescription:(id)description divergenceRouteCoordinate:(PolylineCoordinate)coordinate convergenceRouteCoordinate:(PolylineCoordinate)routeCoordinate;
- (VKAlternateRouteInfo)initWithComposedRoute:(id)route etaText:(id)text divergenceRouteCoordinate:(PolylineCoordinate)coordinate convergenceRouteCoordinate:(PolylineCoordinate)routeCoordinate;
- (id).cxx_construct;
@end

@implementation VKAlternateRouteInfo

- (id).cxx_construct
{
  *(self + 13) = 0xBF80000000000000;
  *(self + 14) = 0xBF80000000000000;
  return self;
}

- (VKAlternateRouteInfo)initWithComposedRoute:(id)route etaDescription:(id)description divergenceRouteCoordinate:(PolylineCoordinate)coordinate convergenceRouteCoordinate:(PolylineCoordinate)routeCoordinate
{
  v12.receiver = self;
  v12.super_class = VKAlternateRouteInfo;
  v8 = [(VKRouteInfo *)&v12 initWithComposedRoute:route etaDescription:description];
  v9 = v8;
  if (v8)
  {
    v8->_divergenceCoordinate = coordinate;
    v8->_convergenceCoordinate = routeCoordinate;
    v10 = v8;
  }

  return v9;
}

- (VKAlternateRouteInfo)initWithComposedRoute:(id)route etaText:(id)text divergenceRouteCoordinate:(PolylineCoordinate)coordinate convergenceRouteCoordinate:(PolylineCoordinate)routeCoordinate
{
  routeCopy = route;
  textCopy = text;
  if (textCopy)
  {
    v12 = [[VKRouteEtaDescription alloc] initWithEtaText:textCopy];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(VKAlternateRouteInfo *)self initWithComposedRoute:routeCopy etaDescription:v12 divergenceRouteCoordinate:coordinate convergenceRouteCoordinate:routeCoordinate];

  return v13;
}

@end