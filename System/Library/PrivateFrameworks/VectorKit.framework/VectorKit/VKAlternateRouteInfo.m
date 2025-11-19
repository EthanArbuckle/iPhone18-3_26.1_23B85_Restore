@interface VKAlternateRouteInfo
- (VKAlternateRouteInfo)initWithComposedRoute:(id)a3 etaDescription:(id)a4 divergenceRouteCoordinate:(PolylineCoordinate)a5 convergenceRouteCoordinate:(PolylineCoordinate)a6;
- (VKAlternateRouteInfo)initWithComposedRoute:(id)a3 etaText:(id)a4 divergenceRouteCoordinate:(PolylineCoordinate)a5 convergenceRouteCoordinate:(PolylineCoordinate)a6;
- (id).cxx_construct;
@end

@implementation VKAlternateRouteInfo

- (id).cxx_construct
{
  *(self + 13) = 0xBF80000000000000;
  *(self + 14) = 0xBF80000000000000;
  return self;
}

- (VKAlternateRouteInfo)initWithComposedRoute:(id)a3 etaDescription:(id)a4 divergenceRouteCoordinate:(PolylineCoordinate)a5 convergenceRouteCoordinate:(PolylineCoordinate)a6
{
  v12.receiver = self;
  v12.super_class = VKAlternateRouteInfo;
  v8 = [(VKRouteInfo *)&v12 initWithComposedRoute:a3 etaDescription:a4];
  v9 = v8;
  if (v8)
  {
    v8->_divergenceCoordinate = a5;
    v8->_convergenceCoordinate = a6;
    v10 = v8;
  }

  return v9;
}

- (VKAlternateRouteInfo)initWithComposedRoute:(id)a3 etaText:(id)a4 divergenceRouteCoordinate:(PolylineCoordinate)a5 convergenceRouteCoordinate:(PolylineCoordinate)a6
{
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    v12 = [[VKRouteEtaDescription alloc] initWithEtaText:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(VKAlternateRouteInfo *)self initWithComposedRoute:v10 etaDescription:v12 divergenceRouteCoordinate:a5 convergenceRouteCoordinate:a6];

  return v13;
}

@end