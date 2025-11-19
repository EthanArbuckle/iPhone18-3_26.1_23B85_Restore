@interface VKEVChargeStationRouteWaypoint
- (GEOComposedRouteEVChargingStationInfo)chargeInfo;
- (VKEVChargeStationRouteWaypoint)initWithWaypoint:(id)a3 displayInfo:(id)a4 legIndex:(unint64_t)a5 routeCoordinate:(id)a6 adjacentRouteCoordinate:(id)a7 polylineCoordinate:(PolylineCoordinate)a8;
- (void)setChargeTimeText:(id)a3;
@end

@implementation VKEVChargeStationRouteWaypoint

- (GEOComposedRouteEVChargingStationInfo)chargeInfo
{
  v2 = [(VKRouteWaypointInfo *)self waypoint];
  v3 = [v2 chargingInfo];

  return v3;
}

- (void)setChargeTimeText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_chargeTimeText isEqualToString:?])
  {
    objc_storeStrong(&self->_chargeTimeText, a3);
    [(VKRouteWaypointInfo *)self setNeedsTextUpdate:1];
  }
}

- (VKEVChargeStationRouteWaypoint)initWithWaypoint:(id)a3 displayInfo:(id)a4 legIndex:(unint64_t)a5 routeCoordinate:(id)a6 adjacentRouteCoordinate:(id)a7 polylineCoordinate:(PolylineCoordinate)a8
{
  v12.receiver = self;
  v12.super_class = VKEVChargeStationRouteWaypoint;
  v8 = [(VKRouteWaypointInfo *)&v12 initWithWaypoint:a3 displayInfo:a4 legIndex:a5 routeCoordinate:a8 adjacentRouteCoordinate:2 polylineCoordinate:a6.var0 waypointType:a6.var1, a6.var2, a7.var0, a7.var1, a7.var2];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end