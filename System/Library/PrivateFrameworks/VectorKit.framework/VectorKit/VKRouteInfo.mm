@interface VKRouteInfo
- (BOOL)_isReRoute;
- (BOOL)hasRouteEta;
- (BOOL)hasRouteLegEtas;
- (VKRouteInfo)initWithAnchorPoint:(id)point;
- (VKRouteInfo)initWithComposedRoute:(id)route etaDescription:(id)description;
- (VKRouteInfo)initWithComposedRoute:(id)route etaText:(id)text;
- (id)waypointForWaypoint:(id)waypoint;
- (id)waypointInfoForWaypoint:(id)waypoint;
- (void)_assignIndexPositions;
- (void)_decodeVisualInfos:(id)infos withRouteEtaType:(int64_t)type into:(id)into needsDescription:(BOOL)description;
- (void)_processAnchorpoints:(id)anchorpoints;
- (void)_processWaypoints:(id)waypoints;
- (void)setEtaDescription:(id)description;
- (void)visitAnnotations:(id)annotations;
@end

@implementation VKRouteInfo

- (void)_assignIndexPositions
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v6 addObjectsFromArray:self->_waypoints];
  [v6 addObjectsFromArray:self->_anchorpoints];
  [v6 sortUsingComparator:&__block_literal_global_19313];
  v3 = v6;
  for (i = 0; i < [v3 count]; ++i)
  {
    v5 = [v6 objectAtIndexedSubscript:i];
    [v5 setWaypointIndex:i];

    v3 = v6;
  }
}

uint64_t __36__VKRouteInfo__assignIndexPositions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 polylineCoordinate];
  v6 = [v4 polylineCoordinate];
  if (v5 < v6 || v5 == v6 && *(&v5 + 1) < *(&v6 + 1))
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_processAnchorpoints:(id)anchorpoints
{
  anchorpointsCopy = anchorpoints;
  for (i = 0; ; ++i)
  {
    anchorPoints = [(GEOComposedRoute *)self->_route anchorPoints];
    v6 = [anchorPoints count];

    if (i >= v6)
    {
      break;
    }

    anchorPoints2 = [(GEOComposedRoute *)self->_route anchorPoints];
    v8 = [anchorPoints2 objectAtIndexedSubscript:i];

    if (v8 && [v8 anchorPointType] != 1 && objc_msgSend(v8, "anchorPointType") != 2)
    {
      -[GEOComposedRoute pointWithAltitudeCorrectionAtRouteCoordinate:](self->_route, "pointWithAltitudeCorrectionAtRouteCoordinate:", [v8 routeCoordinate]);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      if (([v8 routeCoordinate] & 0xFFFFFFFELL) != 0)
      {
        -[GEOComposedRoute pointWithAltitudeCorrectionAtRouteCoordinate:](self->_route, "pointWithAltitudeCorrectionAtRouteCoordinate:", [v8 routeCoordinate] - 1);
        v16 = v15;
        v18 = v17;
        v20 = v19;
      }

      else
      {
        v20 = 1.79769313e308;
        v16 = -180.0;
        v18 = -180.0;
      }

      v21 = +[VKRouteWaypointInfo newRouteWaypointForAnchorpoint:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:](VKRouteWaypointInfo, "newRouteWaypointForAnchorpoint:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:", v8, 0, [v8 routeCoordinate], v10, v12, v14, v16, v18, v20);
      [anchorpointsCopy addObject:v21];
    }
  }
}

- (void)_processWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  legs = [(GEOComposedRoute *)self->_route legs];
  v5 = [legs count];

  if (v5)
  {
    legs2 = [(GEOComposedRoute *)self->_route legs];
    v7 = [legs2 objectAtIndexedSubscript:0];

    origin = [v7 origin];
    v9 = origin;
    if (origin && (![origin isCurrentLocation] || -[VKRouteInfo _isHikingRoute](self, "_isHikingRoute") && !-[VKRouteInfo _isReRoute](self, "_isReRoute")))
    {
      -[GEOComposedRoute pointWithAltitudeCorrectionAtRouteCoordinate:](self->_route, "pointWithAltitudeCorrectionAtRouteCoordinate:", [v7 startRouteCoordinate]);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      if ([v7 pointCount] < 2)
      {
        v21 = 1.79769313e308;
        v17 = -180.0;
        v19 = -180.0;
      }

      else
      {
        -[GEOComposedRoute pointWithAltitudeCorrectionAtRouteCoordinate:](self->_route, "pointWithAltitudeCorrectionAtRouteCoordinate:", [v7 startPointIndex] + 1);
        v17 = v16;
        v19 = v18;
        v21 = v20;
      }

      v22 = [(GEOComposedRoute *)self->_route waypointDisplayInfoForWaypoint:v9];
      v23 = +[VKRouteWaypointInfo newRouteWaypointForWaypoint:displayInfo:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:](VKRouteWaypointInfo, "newRouteWaypointForWaypoint:displayInfo:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:", v9, v22, 0, [v7 startRouteCoordinate], v11, v13, v15, v17, v19, v21);
      [v23 setIsAtStart:1];
      [waypointsCopy addObject:v23];
    }
  }

  for (i = 0; ; ++i)
  {
    legs3 = [(GEOComposedRoute *)self->_route legs];
    v26 = [legs3 count];

    if (i >= v26)
    {
      break;
    }

    legs4 = [(GEOComposedRoute *)self->_route legs];
    v28 = [legs4 objectAtIndexedSubscript:i];

    destination = [v28 destination];
    v30 = destination;
    if (destination && (![destination isCurrentLocation] || -[VKRouteInfo _isHikingRoute](self, "_isHikingRoute")))
    {
      -[GEOComposedRoute pointWithAltitudeCorrectionAtRouteCoordinate:](self->_route, "pointWithAltitudeCorrectionAtRouteCoordinate:", [v28 endRouteCoordinate]);
      v32 = v31;
      v34 = v33;
      v36 = v35;
      if ([v28 pointCount] < 2)
      {
        v42 = 1.79769313e308;
        v40 = -180.0;
        v38 = -180.0;
      }

      else
      {
        -[GEOComposedRoute pointWithAltitudeCorrectionAtRouteCoordinate:](self->_route, "pointWithAltitudeCorrectionAtRouteCoordinate:", [v28 endPointIndex] - 1);
        v38 = v37;
        v40 = v39;
        v42 = v41;
      }

      v43 = [(GEOComposedRoute *)self->_route waypointDisplayInfoForWaypoint:v30];
      v44 = +[VKRouteWaypointInfo newRouteWaypointForWaypoint:displayInfo:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:](VKRouteWaypointInfo, "newRouteWaypointForWaypoint:displayInfo:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:", v30, v43, i, [v28 endRouteCoordinate], v32, v34, v36, v38, v40, v42);
      legs5 = [(GEOComposedRoute *)self->_route legs];
      v46 = [legs5 count] - 1;

      if (i == v46)
      {
        [v44 setIsAtEnd:1];
      }

      [waypointsCopy addObject:v44];
    }
  }
}

- (id)waypointInfoForWaypoint:(id)waypoint
{
  v18 = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
  if (waypointCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_waypoints;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          waypoint = [v9 waypoint];
          v11 = [waypoint isEqual:waypointCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)waypointForWaypoint:(id)waypoint
{
  v30 = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_waypoints;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        waypoint = [v9 waypoint];
        v11 = [waypoint isEqual:waypointCopy];

        if (v11)
        {
          waypoint2 = [v9 waypoint];
LABEL_20:
          v12 = waypoint2;
          goto LABEL_21;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_anchorpoints;
  v12 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = *v21;
    while (2)
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        waypoint3 = [v15 waypoint];
        v17 = [waypoint3 isEqual:waypointCopy];

        if (v17)
        {
          waypoint2 = [v15 waypoint];
          goto LABEL_20;
        }
      }

      v12 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  return v12;
}

- (void)visitAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__VKRouteInfo_visitAnnotations___block_invoke;
  v7[3] = &unk_1E7B382F0;
  v5 = annotationsCopy;
  v8 = v5;
  v6 = MEMORY[0x1B8C62DA0](v7);
  if (self->_routeEtaAnnotation)
  {
    v5[2](v5);
  }

  [(NSArray *)self->_debugAnnotations enumerateObjectsUsingBlock:v6];
  [(NSArray *)self->_routeLegEtaAnnotations enumerateObjectsUsingBlock:v6];
  [(NSArray *)self->_trafficAnnotations enumerateObjectsUsingBlock:v6];
  [(NSArray *)self->_exitSignAnnotations enumerateObjectsUsingBlock:v6];
  [(NSArray *)self->_routeNameAnnotations enumerateObjectsUsingBlock:v6];
}

- (BOOL)hasRouteLegEtas
{
  routeLegEtaAnnotations = self->_routeLegEtaAnnotations;
  if (routeLegEtaAnnotations)
  {
    LOBYTE(routeLegEtaAnnotations) = [(NSArray *)routeLegEtaAnnotations count]!= 0;
  }

  return routeLegEtaAnnotations;
}

- (BOOL)hasRouteEta
{
  etaDescription = self->_etaDescription;
  if (!etaDescription)
  {
    return 0;
  }

  etaText = [(VKRouteEtaDescription *)etaDescription etaText];
  if (etaText)
  {
    etaText2 = [(VKRouteEtaDescription *)self->_etaDescription etaText];
    v6 = [etaText2 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEtaDescription:(id)description
{
  descriptionCopy = description;
  if (self->_etaDescription != descriptionCopy)
  {
    v8 = descriptionCopy;
    objc_storeStrong(&self->_etaDescription, description);
    if (self->_etaDescription && self->_route)
    {
      v6 = [[VKRouteRangeAnnotationInfo alloc] initWithEtaDescription:self->_etaDescription start:0 end:[(GEOComposedRoute *)self->_route endRouteCoordinate]];
    }

    else
    {
      v6 = 0;
    }

    routeEtaAnnotation = self->_routeEtaAnnotation;
    self->_routeEtaAnnotation = v6;

    descriptionCopy = v8;
  }
}

- (VKRouteInfo)initWithAnchorPoint:(id)point
{
  pointCopy = point;
  v14.receiver = self;
  v14.super_class = VKRouteInfo;
  v5 = [(VKRouteInfo *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [pointCopy locationCoordinate];
    v10 = +[VKRouteWaypointInfo newRouteWaypointForAnchorpoint:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:](VKRouteWaypointInfo, "newRouteWaypointForAnchorpoint:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:", pointCopy, 0, [pointCopy routeCoordinate], v7, v8, v9, -180.0, -180.0, 1.79769313e308);
    [v10 setIsAtStart:1];
    [(NSArray *)v6 addObject:v10];
    waypoints = v5->_waypoints;
    v5->_waypoints = v6;

    v12 = v5;
  }

  return v5;
}

- (VKRouteInfo)initWithComposedRoute:(id)route etaDescription:(id)description
{
  v41 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  descriptionCopy = description;
  v39.receiver = self;
  v39.super_class = VKRouteInfo;
  v7 = [(VKRouteInfo *)&v39 init];
  v8 = v7;
  if (v7)
  {
    [(VKRouteInfo *)v7 setEtaDescription:descriptionCopy];
    objc_storeStrong(&v8->_route, route);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VKRouteInfo *)v8 _processWaypoints:v9];
    obj = v9;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VKRouteInfo *)v8 _processAnchorpoints:v10];
    v32 = v10;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    visualInfos = [routeCopy visualInfos];
    v14 = [visualInfos countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(visualInfos);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          type = [v17 type];
          v19 = v11;
          if (type != 131073)
          {
            type2 = [v17 type];
            v19 = v12;
            if (type2 != 191)
            {
              continue;
            }
          }

          [v19 addObject:v17];
        }

        v14 = [visualInfos countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v14);
    }

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VKRouteInfo *)v8 _decodeVisualInfos:v11 withRouteEtaType:1 into:v21 needsDescription:1];
    objc_storeStrong(&v8->_exitSignAnnotations, v21);
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VKRouteInfo *)v8 _decodeVisualInfos:v12 withRouteEtaType:5 into:v22 needsDescription:0];
    objc_storeStrong(&v8->_travelDirectionAnnotations, v22);
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableData = [routeCopy mutableData];
    if (mutableData)
    {
      mutableData2 = [routeCopy mutableData];
      trafficDelayInfos = [mutableData2 trafficDelayInfos];
    }

    else
    {
      trafficDelayInfos = 0;
    }

    [(VKRouteInfo *)v8 _decodeVisualInfos:trafficDelayInfos withRouteEtaType:2 into:v23 needsDescription:1];
    objc_storeStrong(&v8->_trafficAnnotations, v23);
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    visualInfosForRouteNameLabels = [routeCopy visualInfosForRouteNameLabels];
    [(VKRouteInfo *)v8 _decodeVisualInfos:visualInfosForRouteNameLabels withRouteEtaType:4 into:v27 needsDescription:1];
    objc_storeStrong(&v8->_routeNameAnnotations, v27);
    objc_storeStrong(&v8->_waypoints, obj);
    objc_storeStrong(&v8->_anchorpoints, v32);
    [(VKRouteInfo *)v8 _assignIndexPositions];
    v29 = v8;
  }

  return v8;
}

- (VKRouteInfo)initWithComposedRoute:(id)route etaText:(id)text
{
  routeCopy = route;
  textCopy = text;
  if (textCopy)
  {
    v8 = [[VKRouteEtaDescription alloc] initWithEtaText:textCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(VKRouteInfo *)self initWithComposedRoute:routeCopy etaDescription:v8];

  return v9;
}

- (BOOL)_isReRoute
{
  anchorPoints = [(GEOComposedRoute *)self->_route anchorPoints];
  firstObject = [anchorPoints firstObject];
  routeCoordinate = [firstObject routeCoordinate];
  v5 = (*MEMORY[0x1E69A1928] != routeCoordinate) | (vabds_f32(*(&routeCoordinate + 1), *(MEMORY[0x1E69A1928] + 4)) >= 0.00000011921);

  return v5 & 1;
}

- (void)_decodeVisualInfos:(id)infos withRouteEtaType:(int64_t)type into:(id)into needsDescription:(BOOL)description
{
  descriptionCopy = description;
  v91 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  intoCopy = into;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = infosCopy;
  v65 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v65)
  {
    v63 = *v77;
    v59 = descriptionCopy;
    typeCopy = type;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v77 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v76 + 1) + 8 * i);
        string = [MEMORY[0x1E696AD60] string];
        v71 = v12;
        titleString = [v12 titleString];
        stringWithDefaultOptions = [titleString stringWithDefaultOptions];

        if (stringWithDefaultOptions)
        {
          [string appendFormat:@"%@", stringWithDefaultOptions];
        }

        detail = [v71 detail];
        stringWithDefaultValues = [detail stringWithDefaultValues];

        if (stringWithDefaultValues)
        {
          [string appendFormat:@"\n%@", stringWithDefaultValues];
        }

        if (!descriptionCopy || [string length])
        {
          v16 = [VKRouteEtaDescription alloc];
          icon = [v71 icon];
          if (icon)
          {
            icon2 = [v71 icon];
            iconDataSource = [icon2 iconDataSource];
            styleAttributes = [iconDataSource styleAttributes];
            v18 = styleAttributes;
          }

          else
          {
            v18 = 0;
          }

          shieldText = [v71 shieldText];
          v67 = -[VKRouteEtaDescription initWithEtaText:etaAdvisoryStyleAttributes:routeEtaType:shieldText:shieldType:](v16, "initWithEtaText:etaAdvisoryStyleAttributes:routeEtaType:shieldText:shieldType:", string, v18, type, shieldText, [v71 shieldType]);

          if (icon)
          {
          }

          if (type == 5 || type == 2)
          {
            styleAttributes2 = [v71 styleAttributes];
            v20 = styleAttributes2 != 0;
          }

          else
          {
            v20 = 0;
          }

          if (type == 5 || type == 2)
          {
          }

          if (v20)
          {
            styleAttributes3 = [v71 styleAttributes];
            attributesCount = [styleAttributes3 attributesCount];

            v86 = 0;
            v87 = 0;
            v88 = 0;
            v24 = iconDataSource;
            if (attributesCount)
            {
              v84 = &v89;
              v25 = mdm::zone_mallocator::instance(v23);
              v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v25, attributesCount);
              v27 = &v26[8 * attributesCount];
              v28 = &v26[-(v87 - v86)];
              memcpy(v28, v86, v87 - v86);
              v29 = v86;
              v30 = v88;
              v86 = v28;
              v87 = v26;
              v88 = v27;
              iconDataSource = v24;
              v82 = v29;
              v83 = v30;
              v80 = v29;
              v81 = v29;
              std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v80);
            }

            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            styleAttributes4 = [v71 styleAttributes];
            attributes = [styleAttributes4 attributes];

            v33 = [attributes countByEnumeratingWithState:&v72 objects:v85 count:16];
            v61 = icon2;
            if (v33)
            {
              v34 = *v73;
              do
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v73 != v34)
                  {
                    objc_enumerationMutation(attributes);
                  }

                  v36 = stringWithDefaultOptions;
                  v37 = *(*(&v72 + 1) + 8 * j);
                  v38 = [v37 key];
                  value = [v37 value];
                  v40 = value;
                  v41 = v87;
                  if (v87 >= v88)
                  {
                    v43 = (v87 - v86) >> 3;
                    if ((v43 + 1) >> 61)
                    {
                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }

                    v44 = (v88 - v86) >> 2;
                    if (v44 <= v43 + 1)
                    {
                      v44 = v43 + 1;
                    }

                    if (v88 - v86 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v45 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v45 = v44;
                    }

                    v84 = &v89;
                    if (v45)
                    {
                      v46 = mdm::zone_mallocator::instance(value);
                      v47 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v46, v45);
                    }

                    else
                    {
                      v47 = 0;
                    }

                    v48 = &v47[8 * v43];
                    v49 = &v47[8 * v45];
                    *v48 = v38 | (v40 << 32);
                    v42 = v48 + 8;
                    v50 = &v48[-(v87 - v86)];
                    memcpy(v50, v86, v87 - v86);
                    v51 = v86;
                    v52 = v88;
                    v86 = v50;
                    v87 = v42;
                    v88 = v49;
                    v82 = v51;
                    v83 = v52;
                    v80 = v51;
                    v81 = v51;
                    std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v80);
                  }

                  else
                  {
                    *v87 = v38 | (value << 32);
                    v42 = v41 + 8;
                  }

                  v87 = v42;
                  stringWithDefaultOptions = v36;
                }

                iconDataSource = v24;
                v33 = [attributes countByEnumeratingWithState:&v72 objects:v85 count:16];
              }

              while (v33);
            }

            descriptionCopy = v59;
            type = typeCopy;
            icon2 = v61;
            styleAttributes5 = [(VKRouteEtaDescription *)v67 styleAttributes];
            [styleAttributes5 replaceAttributes:? count:?];

            std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v86);
          }

          v54 = [VKRouteRangeAnnotationInfo alloc];
          routeCoordinateRange = [v71 routeCoordinateRange];
          [v71 routeCoordinateRange];
          v57 = [(VKRouteRangeAnnotationInfo *)v54 initWithEtaDescription:v67 start:routeCoordinateRange end:v56];
          [intoCopy addObject:v57];
        }
      }

      v65 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v65);
  }
}

@end