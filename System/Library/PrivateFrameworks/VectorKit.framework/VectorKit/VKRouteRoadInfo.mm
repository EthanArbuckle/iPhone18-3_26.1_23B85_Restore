@interface VKRouteRoadInfo
- (VKRouteRoadInfo)initWithName:(id)name shieldGroup:(id)group offset:(PolylineCoordinate)offset;
@end

@implementation VKRouteRoadInfo

- (VKRouteRoadInfo)initWithName:(id)name shieldGroup:(id)group offset:(PolylineCoordinate)offset
{
  nameCopy = name;
  groupCopy = group;
  v15.receiver = self;
  v15.super_class = VKRouteRoadInfo;
  v11 = [(VKRouteRoadInfo *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_routeOffset = offset;
    objc_storeStrong(&v11->_name, name);
    objc_storeStrong(&v12->_shieldGroup, group);
    v13 = v12;
  }

  return v12;
}

@end