@interface VKRouteRangeAnnotationInfo
- (BOOL)isEqual:(id)equal;
- (VKRouteRangeAnnotationInfo)initWithEtaDescription:(id)description start:(PolylineCoordinate)start end:(PolylineCoordinate)end;
- (id).cxx_construct;
- (int64_t)compare:(id)compare;
@end

@implementation VKRouteRangeAnnotationInfo

- (id).cxx_construct
{
  *(self + 2) = 0xBF80000000000000;
  *(self + 3) = 0xBF80000000000000;
  return self;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [compareCopy start];
  v5 = GEOPolylineCoordinateCompare();
  if (v5 || ([compareCopy end], (v5 = GEOPolylineCoordinateCompare()) != 0))
  {
    if (v5 == -1)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    etaDescription = self->_etaDescription;
    etaDescription = [compareCopy etaDescription];
    v6 = [(VKRouteEtaDescription *)etaDescription compare:etaDescription];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(VKRouteRangeAnnotationInfo *)self compare:equalCopy]== 0;
  }

  return v6;
}

- (VKRouteRangeAnnotationInfo)initWithEtaDescription:(id)description start:(PolylineCoordinate)start end:(PolylineCoordinate)end
{
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = VKRouteRangeAnnotationInfo;
  v10 = [(VKRouteRangeAnnotationInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_etaDescription, description);
    v11->_start = start;
    v11->_end = end;
    v12 = v11;
  }

  return v11;
}

@end