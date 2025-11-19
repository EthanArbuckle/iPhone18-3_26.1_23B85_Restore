@interface VKRouteRoadInfo
- (VKRouteRoadInfo)initWithName:(id)a3 shieldGroup:(id)a4 offset:(PolylineCoordinate)a5;
@end

@implementation VKRouteRoadInfo

- (VKRouteRoadInfo)initWithName:(id)a3 shieldGroup:(id)a4 offset:(PolylineCoordinate)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = VKRouteRoadInfo;
  v11 = [(VKRouteRoadInfo *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_routeOffset = a5;
    objc_storeStrong(&v11->_name, a3);
    objc_storeStrong(&v12->_shieldGroup, a4);
    v13 = v12;
  }

  return v12;
}

@end