@interface VKRouteRangeAnnotationInfo
- (BOOL)isEqual:(id)a3;
- (VKRouteRangeAnnotationInfo)initWithEtaDescription:(id)a3 start:(PolylineCoordinate)a4 end:(PolylineCoordinate)a5;
- (id).cxx_construct;
- (int64_t)compare:(id)a3;
@end

@implementation VKRouteRangeAnnotationInfo

- (id).cxx_construct
{
  *(self + 2) = 0xBF80000000000000;
  *(self + 3) = 0xBF80000000000000;
  return self;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [v4 start];
  v5 = GEOPolylineCoordinateCompare();
  if (v5 || ([v4 end], (v5 = GEOPolylineCoordinateCompare()) != 0))
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
    v9 = [v4 etaDescription];
    v6 = [(VKRouteEtaDescription *)etaDescription compare:v9];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(VKRouteRangeAnnotationInfo *)self compare:v4]== 0;
  }

  return v6;
}

- (VKRouteRangeAnnotationInfo)initWithEtaDescription:(id)a3 start:(PolylineCoordinate)a4 end:(PolylineCoordinate)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = VKRouteRangeAnnotationInfo;
  v10 = [(VKRouteRangeAnnotationInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_etaDescription, a3);
    v11->_start = a4;
    v11->_end = a5;
    v12 = v11;
  }

  return v11;
}

@end