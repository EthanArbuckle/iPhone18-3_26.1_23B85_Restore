@interface VKTransitStationPolylinePath
- (VKTransitStationPolylinePath)initWithOverlay:(id)a3 section:(id)a4 points:(void *)a5 pointCount:(unint64_t)a6 routeStartIndex:(unsigned int)a7 routeEndIndex:(unsigned int)a8;
@end

@implementation VKTransitStationPolylinePath

- (VKTransitStationPolylinePath)initWithOverlay:(id)a3 section:(id)a4 points:(void *)a5 pointCount:(unint64_t)a6 routeStartIndex:(unsigned int)a7 routeEndIndex:(unsigned int)a8
{
  v14 = a3;
  v15 = a4;
  matchedPathSegments = self->super._matchedPathSegments;
  v25.receiver = self;
  v25.super_class = VKTransitStationPolylinePath;
  v17 = [(VKPolylinePath *)&v25 initWithOverlay:v14 section:v15 matchedPathSegments:matchedPathSegments];
  v18 = v17;
  if (v17)
  {
    v17->super._routeStart.index = a7;
    v17->super._routeStart.offset = 0.0;
    v17->super._routeEnd.index = a8;
    v17->super._routeEnd.offset = 0.0;
    std::vector<gm::Matrix<float,3,1>>::resize(&v17->super._points.__begin_, a6);
    std::vector<geo::PolylineCoordinate>::resize(&v18->super._polylineCoordinates, a6);
    if (a6)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v18->super._points.__begin_ + v19;
        *v21 = *(a5 + v20 * 8);
        *(v21 + 2) = 0;
        v22 = &v18->super._polylineCoordinates.__begin_[v20];
        *v22 = a7;
        v22[1] = 0;
        ++v20;
        ++a7;
        v19 += 12;
        --a6;
      }

      while (a6);
    }

    v23 = v18;
  }

  return v18;
}

@end