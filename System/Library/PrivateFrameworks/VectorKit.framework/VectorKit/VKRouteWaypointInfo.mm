@interface VKRouteWaypointInfo
+ (id)newRouteWaypointForAnchorpoint:(id)a3 legIndex:(unint64_t)a4 routeCoordinate:(id)a5 adjacentRouteCoordinate:(id)a6 polylineCoordinate:(PolylineCoordinate)a7;
+ (id)newRouteWaypointForWaypoint:(id)a3 displayInfo:(id)a4 legIndex:(unint64_t)a5 routeCoordinate:(id)a6 adjacentRouteCoordinate:(id)a7 polylineCoordinate:(PolylineCoordinate)a8;
- ($1AB5FA073B851C12C2339EC22442E995)adjacentRouteCoordinate;
- ($1AB5FA073B851C12C2339EC22442E995)coordinate;
- ($1AB5FA073B851C12C2339EC22442E995)routeCoordinate;
- (GEOFeatureStyleAttributes)styleAttributes;
- (NSString)name;
- (VKRouteWaypointInfo)initWithWaypoint:(id)a3 displayInfo:(id)a4 legIndex:(unint64_t)a5 routeCoordinate:(id)a6 adjacentRouteCoordinate:(id)a7 polylineCoordinate:(PolylineCoordinate)a8 waypointType:(unsigned __int8)a9;
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
    v3 = [(VKRouteWaypointInfo *)self _anchorpoint];
    [v3 locationCoordinate];
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
    v3 = [(VKRouteWaypointInfo *)self _anchorpoint];
    v4 = [v3 muid];

    return v4;
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
    v3 = [(VKRouteWaypointInfo *)self _anchorpoint];
    v4 = [v3 name];
  }

  else
  {
    v4 = [(GEOComposedWaypoint *)self->_waypoint name];
  }

  return v4;
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
  v3 = [(GEOComposedWaypointDisplayInfo *)self->_displayInfo artwork];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69A1DB0]);
    v5 = [(GEOComposedWaypointDisplayInfo *)self->_displayInfo artwork];
    v6 = [v5 icon];
    v7 = [v6 styleAttributes];
    v8 = [v4 initWithGEOStyleAttributes:v7];
LABEL_5:
    v11 = v8;

    goto LABEL_6;
  }

  v9 = [(GEOComposedWaypoint *)self->_waypoint artwork];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69A1DB0]);
    v5 = [(GEOComposedWaypoint *)self->_waypoint artwork];
    v6 = [v5 iconDataSource];
    v7 = [v6 styleAttributes];
    v8 = [v10 initWithGEOStyleAttributes:v7];
    goto LABEL_5;
  }

  v13 = [(VKRouteWaypointInfo *)self _anchorpoint];
  v14 = [v13 styleAttributes];

  if (!v14)
  {
    v15 = [(GEOComposedWaypoint *)self->_waypoint styleAttributes];

    if (v15)
    {
      v16 = [(GEOComposedWaypoint *)self->_waypoint styleAttributes];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, 348, 0}];
    }

    v11 = v16;
    goto LABEL_7;
  }

  v5 = [(VKRouteWaypointInfo *)self _anchorpoint];
  v11 = [v5 styleAttributes];
LABEL_6:

LABEL_7:

  return v11;
}

- (VKRouteWaypointInfo)initWithWaypoint:(id)a3 displayInfo:(id)a4 legIndex:(unint64_t)a5 routeCoordinate:(id)a6 adjacentRouteCoordinate:(id)a7 polylineCoordinate:(PolylineCoordinate)a8 waypointType:(unsigned __int8)a9
{
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v14 = a6.var2;
  v15 = a6.var1;
  v16 = a6.var0;
  v21 = a3;
  v22 = a4;
  v31.receiver = self;
  v31.super_class = VKRouteWaypointInfo;
  v23 = [(VKRouteWaypointInfo *)&v31 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_waypoint, a3);
    objc_storeStrong(&v24->_displayInfo, a4);
    v24->_type = a9;
    v24->_legIndex = a5;
    v24->_needsTextUpdate = 0;
    v24->_routeCoordinate.latitude = v16;
    v24->_routeCoordinate.longitude = v15;
    v24->_routeCoordinate.altitude = v14;
    v24->_adjacentRouteCoordinate.latitude = var0;
    v24->_adjacentRouteCoordinate.longitude = var1;
    v24->_adjacentRouteCoordinate.altitude = var2;
    v24->_polylineCoordinate = a8;
    v24->_when = 1;
    displayInfo = v24->_displayInfo;
    if (displayInfo)
    {
      v26 = [(GEOComposedWaypointDisplayInfo *)displayInfo waypointCaption];
      v27 = [v26 stringWithDefaultOptions];
      annotationText = v24->_annotationText;
      v24->_annotationText = v27;
    }

    else
    {
      v26 = v24->_annotationText;
      v24->_annotationText = 0;
    }

    v29 = v24;
  }

  return v24;
}

+ (id)newRouteWaypointForAnchorpoint:(id)a3 legIndex:(unint64_t)a4 routeCoordinate:(id)a5 adjacentRouteCoordinate:(id)a6 polylineCoordinate:(PolylineCoordinate)a7
{
  var2 = a6.var2;
  var1 = a6.var1;
  var0 = a6.var0;
  v11 = a5.var2;
  v12 = a5.var1;
  v13 = a5.var0;
  v15 = a3;
  v16 = [VKRouteWaypointInfo alloc];
  v17 = [v15 displayInfo];
  v18 = [(VKRouteWaypointInfo *)v16 initWithWaypoint:v15 displayInfo:v17 legIndex:a4 routeCoordinate:a7 adjacentRouteCoordinate:4 polylineCoordinate:v13 waypointType:v12, v11, var0, var1, var2];

  return v18;
}

+ (id)newRouteWaypointForWaypoint:(id)a3 displayInfo:(id)a4 legIndex:(unint64_t)a5 routeCoordinate:(id)a6 adjacentRouteCoordinate:(id)a7 polylineCoordinate:(PolylineCoordinate)a8
{
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v12 = a6.var2;
  v13 = a6.var1;
  v14 = a6.var0;
  v17 = a3;
  v18 = a4;
  v19 = [v17 chargingInfo];

  if (!v19)
  {
    v22 = v17;
    v23 = [v22 styleAttributes];

    if (v23)
    {
      v24 = [v22 styleAttributes];
      v25 = [v24 featureStyleAttributes];
      if (*(v25 + 33))
      {
        v26 = 0;
        v27 = *v25;
        while (1)
        {
          v28 = *v27;
          v27 += 2;
          if (v28 == 6)
          {
            break;
          }

          if (*(v25 + 33) == ++v26)
          {
            goto LABEL_9;
          }
        }

        v31 = *(*v25 + 8 * v26 + 4);

        if (v31 == 456)
        {
          v20 = off_1E7B2ECA0;
          goto LABEL_3;
        }

LABEL_11:
        v21 = [[VKRouteWaypointInfo alloc] initWithWaypoint:v22 displayInfo:v18 legIndex:a5 routeCoordinate:a8 adjacentRouteCoordinate:1 polylineCoordinate:v14 waypointType:v13, v12, var0, var1, var2];
        goto LABEL_12;
      }

LABEL_9:
    }

    goto LABEL_11;
  }

  v20 = off_1E7B2EB90;
LABEL_3:
  v21 = [objc_alloc(*v20) initWithWaypoint:v17 displayInfo:v18 legIndex:a5 routeCoordinate:a8 adjacentRouteCoordinate:v14 polylineCoordinate:{v13, v12, var0, var1, var2}];
LABEL_12:
  v29 = v21;

  return v29;
}

@end