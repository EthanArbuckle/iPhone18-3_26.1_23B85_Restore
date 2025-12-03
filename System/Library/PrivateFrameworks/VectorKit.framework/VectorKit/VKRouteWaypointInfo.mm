@interface VKRouteWaypointInfo
+ (id)newRouteWaypointForAnchorpoint:(id)anchorpoint legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate;
+ (id)newRouteWaypointForWaypoint:(id)waypoint displayInfo:(id)info legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate;
- ($1AB5FA073B851C12C2339EC22442E995)adjacentRouteCoordinate;
- ($1AB5FA073B851C12C2339EC22442E995)coordinate;
- ($1AB5FA073B851C12C2339EC22442E995)routeCoordinate;
- (GEOFeatureStyleAttributes)styleAttributes;
- (NSString)name;
- (VKRouteWaypointInfo)initWithWaypoint:(id)waypoint displayInfo:(id)info legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate waypointType:(unsigned __int8)type;
- (id)_anchorpoint;
- (unint64_t)muid;
@end

@implementation VKRouteWaypointInfo

- ($1AB5FA073B851C12C2339EC22442E995)adjacentRouteCoordinate
{
  latitude = self->_adjacentRouteCoordinate.latitude;
  longitude = self->_adjacentRouteCoordinate.longitude;
  altitude = self->_adjacentRouteCoordinate.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)routeCoordinate
{
  latitude = self->_routeCoordinate.latitude;
  longitude = self->_routeCoordinate.longitude;
  altitude = self->_routeCoordinate.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)coordinate
{
  if ([(VKRouteWaypointInfo *)self _isAnchorpoint])
  {
    _anchorpoint = [(VKRouteWaypointInfo *)self _anchorpoint];
    [_anchorpoint locationCoordinate];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = v5;
    v11 = v7;
    v12 = v9;
  }

  else
  {
    waypoint = self->_waypoint;

    [(GEOComposedWaypoint *)waypoint coordinate];
  }

  result.var2 = v12;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (unint64_t)muid
{
  if ([(VKRouteWaypointInfo *)self _isAnchorpoint])
  {
    _anchorpoint = [(VKRouteWaypointInfo *)self _anchorpoint];
    muid = [_anchorpoint muid];

    return muid;
  }

  else
  {
    waypoint = self->_waypoint;

    return [(GEOComposedWaypoint *)waypoint muid];
  }
}

- (NSString)name
{
  if ([(VKRouteWaypointInfo *)self _isAnchorpoint])
  {
    _anchorpoint = [(VKRouteWaypointInfo *)self _anchorpoint];
    name = [_anchorpoint name];
  }

  else
  {
    name = [(GEOComposedWaypoint *)self->_waypoint name];
  }

  return name;
}

- (id)_anchorpoint
{
  if ([(VKRouteWaypointInfo *)self _isAnchorpoint])
  {
    waypoint = self->_waypoint;
  }

  else
  {
    waypoint = 0;
  }

  return waypoint;
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  artwork = [(GEOComposedWaypointDisplayInfo *)self->_displayInfo artwork];

  if (artwork)
  {
    v4 = objc_alloc(MEMORY[0x1E69A1DB0]);
    artwork2 = [(GEOComposedWaypointDisplayInfo *)self->_displayInfo artwork];
    icon = [artwork2 icon];
    styleAttributes = [icon styleAttributes];
    v8 = [v4 initWithGEOStyleAttributes:styleAttributes];
LABEL_5:
    styleAttributes5 = v8;

    goto LABEL_6;
  }

  artwork3 = [(GEOComposedWaypoint *)self->_waypoint artwork];

  if (artwork3)
  {
    v10 = objc_alloc(MEMORY[0x1E69A1DB0]);
    artwork2 = [(GEOComposedWaypoint *)self->_waypoint artwork];
    icon = [artwork2 iconDataSource];
    styleAttributes = [icon styleAttributes];
    v8 = [v10 initWithGEOStyleAttributes:styleAttributes];
    goto LABEL_5;
  }

  _anchorpoint = [(VKRouteWaypointInfo *)self _anchorpoint];
  styleAttributes2 = [_anchorpoint styleAttributes];

  if (!styleAttributes2)
  {
    styleAttributes3 = [(GEOComposedWaypoint *)self->_waypoint styleAttributes];

    if (styleAttributes3)
    {
      styleAttributes4 = [(GEOComposedWaypoint *)self->_waypoint styleAttributes];
    }

    else
    {
      styleAttributes4 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, 348, 0}];
    }

    styleAttributes5 = styleAttributes4;
    goto LABEL_7;
  }

  artwork2 = [(VKRouteWaypointInfo *)self _anchorpoint];
  styleAttributes5 = [artwork2 styleAttributes];
LABEL_6:

LABEL_7:

  return styleAttributes5;
}

- (VKRouteWaypointInfo)initWithWaypoint:(id)waypoint displayInfo:(id)info legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate waypointType:(unsigned __int8)type
{
  var2 = routeCoordinate.var2;
  var1 = routeCoordinate.var1;
  var0 = routeCoordinate.var0;
  v14 = coordinate.var2;
  v15 = coordinate.var1;
  v16 = coordinate.var0;
  waypointCopy = waypoint;
  infoCopy = info;
  v31.receiver = self;
  v31.super_class = VKRouteWaypointInfo;
  v23 = [(VKRouteWaypointInfo *)&v31 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_waypoint, waypoint);
    objc_storeStrong(&v24->_displayInfo, info);
    v24->_type = type;
    v24->_legIndex = index;
    v24->_needsTextUpdate = 0;
    v24->_routeCoordinate.latitude = v16;
    v24->_routeCoordinate.longitude = v15;
    v24->_routeCoordinate.altitude = v14;
    v24->_adjacentRouteCoordinate.latitude = var0;
    v24->_adjacentRouteCoordinate.longitude = var1;
    v24->_adjacentRouteCoordinate.altitude = var2;
    v24->_polylineCoordinate = polylineCoordinate;
    v24->_when = 1;
    displayInfo = v24->_displayInfo;
    if (displayInfo)
    {
      waypointCaption = [(GEOComposedWaypointDisplayInfo *)displayInfo waypointCaption];
      stringWithDefaultOptions = [waypointCaption stringWithDefaultOptions];
      annotationText = v24->_annotationText;
      v24->_annotationText = stringWithDefaultOptions;
    }

    else
    {
      waypointCaption = v24->_annotationText;
      v24->_annotationText = 0;
    }

    v29 = v24;
  }

  return v24;
}

+ (id)newRouteWaypointForAnchorpoint:(id)anchorpoint legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate
{
  var2 = routeCoordinate.var2;
  var1 = routeCoordinate.var1;
  var0 = routeCoordinate.var0;
  v11 = coordinate.var2;
  v12 = coordinate.var1;
  v13 = coordinate.var0;
  anchorpointCopy = anchorpoint;
  v16 = [VKRouteWaypointInfo alloc];
  displayInfo = [anchorpointCopy displayInfo];
  var2 = [(VKRouteWaypointInfo *)v16 initWithWaypoint:anchorpointCopy displayInfo:displayInfo legIndex:index routeCoordinate:polylineCoordinate adjacentRouteCoordinate:4 polylineCoordinate:v13 waypointType:v12, v11, var0, var1, var2];

  return var2;
}

+ (id)newRouteWaypointForWaypoint:(id)waypoint displayInfo:(id)info legIndex:(unint64_t)index routeCoordinate:(id)coordinate adjacentRouteCoordinate:(id)routeCoordinate polylineCoordinate:(PolylineCoordinate)polylineCoordinate
{
  var2 = routeCoordinate.var2;
  var1 = routeCoordinate.var1;
  var0 = routeCoordinate.var0;
  v12 = coordinate.var2;
  v13 = coordinate.var1;
  v14 = coordinate.var0;
  waypointCopy = waypoint;
  infoCopy = info;
  chargingInfo = [waypointCopy chargingInfo];

  if (!chargingInfo)
  {
    v22 = waypointCopy;
    styleAttributes = [v22 styleAttributes];

    if (styleAttributes)
    {
      styleAttributes2 = [v22 styleAttributes];
      featureStyleAttributes = [styleAttributes2 featureStyleAttributes];
      if (*(featureStyleAttributes + 33))
      {
        v26 = 0;
        v27 = *featureStyleAttributes;
        while (1)
        {
          v28 = *v27;
          v27 += 2;
          if (v28 == 6)
          {
            break;
          }

          if (*(featureStyleAttributes + 33) == ++v26)
          {
            goto LABEL_9;
          }
        }

        v31 = *(*featureStyleAttributes + 8 * v26 + 4);

        if (v31 == 456)
        {
          v20 = off_1E7B2ECA0;
          goto LABEL_3;
        }

LABEL_11:
        var2 = [[VKRouteWaypointInfo alloc] initWithWaypoint:v22 displayInfo:infoCopy legIndex:index routeCoordinate:polylineCoordinate adjacentRouteCoordinate:1 polylineCoordinate:v14 waypointType:v13, v12, var0, var1, var2];
        goto LABEL_12;
      }

LABEL_9:
    }

    goto LABEL_11;
  }

  v20 = off_1E7B2EB90;
LABEL_3:
  var2 = [objc_alloc(*v20) initWithWaypoint:waypointCopy displayInfo:infoCopy legIndex:index routeCoordinate:polylineCoordinate adjacentRouteCoordinate:v14 polylineCoordinate:{v13, v12, var0, var1, var2}];
LABEL_12:
  v29 = var2;

  return v29;
}

@end