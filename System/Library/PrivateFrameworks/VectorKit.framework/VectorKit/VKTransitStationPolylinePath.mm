@interface VKTransitStationPolylinePath
- (VKTransitStationPolylinePath)initWithOverlay:(id)overlay section:(id)section points:(void *)points pointCount:(unint64_t)count routeStartIndex:(unsigned int)index routeEndIndex:(unsigned int)endIndex;
@end

@implementation VKTransitStationPolylinePath

- (VKTransitStationPolylinePath)initWithOverlay:(id)overlay section:(id)section points:(void *)points pointCount:(unint64_t)count routeStartIndex:(unsigned int)index routeEndIndex:(unsigned int)endIndex
{
  overlayCopy = overlay;
  sectionCopy = section;
  matchedPathSegments = self->super._matchedPathSegments;
  v25.receiver = self;
  v25.super_class = VKTransitStationPolylinePath;
  v17 = [(VKPolylinePath *)&v25 initWithOverlay:overlayCopy section:sectionCopy matchedPathSegments:matchedPathSegments];
  v18 = v17;
  if (v17)
  {
    v17->super._routeStart.index = index;
    v17->super._routeStart.offset = 0.0;
    v17->super._routeEnd.index = endIndex;
    v17->super._routeEnd.offset = 0.0;
    std::vector<gm::Matrix<float,3,1>>::resize(&v17->super._points.__begin_, count);
    std::vector<geo::PolylineCoordinate>::resize(&v18->super._polylineCoordinates, count);
    if (count)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v18->super._points.__begin_ + v19;
        *v21 = *(points + v20 * 8);
        *(v21 + 2) = 0;
        v22 = &v18->super._polylineCoordinates.__begin_[v20];
        *v22 = index;
        v22[1] = 0;
        ++v20;
        ++index;
        v19 += 12;
        --count;
      }

      while (count);
    }

    v23 = v18;
  }

  return v18;
}

@end