@interface VKEVChargeStationRouteWaypoint
- (GEOComposedRouteEVChargingStationInfo)chargeInfo;
- (VKEVChargeStationRouteWaypoint)initWithWaypoint:(id)waypoint displayInfo:(id)info legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate;
- (void)setChargeTimeText:(id)text;
@end

@implementation VKEVChargeStationRouteWaypoint

- (GEOComposedRouteEVChargingStationInfo)chargeInfo
{
  waypoint = [(VKRouteWaypointInfo *)self waypoint];
  chargingInfo = [waypoint chargingInfo];

  return chargingInfo;
}

- (void)setChargeTimeText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_chargeTimeText isEqualToString:?])
  {
    objc_storeStrong(&self->_chargeTimeText, text);
    [(VKRouteWaypointInfo *)self setNeedsTextUpdate:1];
  }
}

- (VKEVChargeStationRouteWaypoint)initWithWaypoint:(id)waypoint displayInfo:(id)info legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate
{
  v12.receiver = self;
  v12.super_class = VKEVChargeStationRouteWaypoint;
  v8 = [(VKRouteWaypointInfo *)&v12 initWithWaypoint:waypoint displayInfo:info legIndex:index routeCoordinate:polylineCoordinate adjacentRouteCoordinate:2 polylineCoordinate:coordinate.var0 waypointType:coordinate.var1, coordinate.var2, routeCoordinate.var0, routeCoordinate.var1, routeCoordinate.var2];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end