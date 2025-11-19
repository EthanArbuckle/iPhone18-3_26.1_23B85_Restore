@interface VKRouteInfo
- (BOOL)_isReRoute;
- (BOOL)hasRouteEta;
- (BOOL)hasRouteLegEtas;
- (VKRouteInfo)initWithAnchorPoint:(id)a3;
- (VKRouteInfo)initWithComposedRoute:(id)a3 etaDescription:(id)a4;
- (VKRouteInfo)initWithComposedRoute:(id)a3 etaText:(id)a4;
- (id)waypointForWaypoint:(id)a3;
- (id)waypointInfoForWaypoint:(id)a3;
- (void)_assignIndexPositions;
- (void)_decodeVisualInfos:(id)a3 withRouteEtaType:(int64_t)a4 into:(id)a5 needsDescription:(BOOL)a6;
- (void)_processAnchorpoints:(id)a3;
- (void)_processWaypoints:(id)a3;
- (void)setEtaDescription:(id)a3;
- (void)visitAnnotations:(id)a3;
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

- (void)_processAnchorpoints:(id)a3
{
  v22 = a3;
  for (i = 0; ; ++i)
  {
    v5 = [(GEOComposedRoute *)self->_route anchorPoints];
    v6 = [v5 count];

    if (i >= v6)
    {
      break;
    }

    v7 = [(GEOComposedRoute *)self->_route anchorPoints];
    v8 = [v7 objectAtIndexedSubscript:i];

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
      [v22 addObject:v21];
    }
  }
}

- (void)_processWaypoints:(id)a3
{
  v47 = a3;
  v4 = [(GEOComposedRoute *)self->_route legs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(GEOComposedRoute *)self->_route legs];
    v7 = [v6 objectAtIndexedSubscript:0];

    v8 = [v7 origin];
    v9 = v8;
    if (v8 && (![v8 isCurrentLocation] || -[VKRouteInfo _isHikingRoute](self, "_isHikingRoute") && !-[VKRouteInfo _isReRoute](self, "_isReRoute")))
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
      [v47 addObject:v23];
    }
  }

  for (i = 0; ; ++i)
  {
    v25 = [(GEOComposedRoute *)self->_route legs];
    v26 = [v25 count];

    if (i >= v26)
    {
      break;
    }

    v27 = [(GEOComposedRoute *)self->_route legs];
    v28 = [v27 objectAtIndexedSubscript:i];

    v29 = [v28 destination];
    v30 = v29;
    if (v29 && (![v29 isCurrentLocation] || -[VKRouteInfo _isHikingRoute](self, "_isHikingRoute")))
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
      v45 = [(GEOComposedRoute *)self->_route legs];
      v46 = [v45 count] - 1;

      if (i == v46)
      {
        [v44 setIsAtEnd:1];
      }

      [v47 addObject:v44];
    }
  }
}

- (id)waypointInfoForWaypoint:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
          v10 = [v9 waypoint];
          v11 = [v10 isEqual:v4];

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

- (id)waypointForWaypoint:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 waypoint];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v18 = [v9 waypoint];
LABEL_20:
          v12 = v18;
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
        v16 = [v15 waypoint];
        v17 = [v16 isEqual:v4];

        if (v17)
        {
          v18 = [v15 waypoint];
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

- (void)visitAnnotations:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__VKRouteInfo_visitAnnotations___block_invoke;
  v7[3] = &unk_1E7B382F0;
  v5 = v4;
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

  v4 = [(VKRouteEtaDescription *)etaDescription etaText];
  if (v4)
  {
    v5 = [(VKRouteEtaDescription *)self->_etaDescription etaText];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEtaDescription:(id)a3
{
  v5 = a3;
  if (self->_etaDescription != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_etaDescription, a3);
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

    v5 = v8;
  }
}

- (VKRouteInfo)initWithAnchorPoint:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VKRouteInfo;
  v5 = [(VKRouteInfo *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v4 locationCoordinate];
    v10 = +[VKRouteWaypointInfo newRouteWaypointForAnchorpoint:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:](VKRouteWaypointInfo, "newRouteWaypointForAnchorpoint:legIndex:routeCoordinate:adjacentRouteCoordinate:polylineCoordinate:", v4, 0, [v4 routeCoordinate], v7, v8, v9, -180.0, -180.0, 1.79769313e308);
    [v10 setIsAtStart:1];
    [(NSArray *)v6 addObject:v10];
    waypoints = v5->_waypoints;
    v5->_waypoints = v6;

    v12 = v5;
  }

  return v5;
}

- (VKRouteInfo)initWithComposedRoute:(id)a3 etaDescription:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v33 = a4;
  v39.receiver = self;
  v39.super_class = VKRouteInfo;
  v7 = [(VKRouteInfo *)&v39 init];
  v8 = v7;
  if (v7)
  {
    [(VKRouteInfo *)v7 setEtaDescription:v33];
    objc_storeStrong(&v8->_route, a3);
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
    v13 = [v34 visualInfos];
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v18 = [v17 type];
          v19 = v11;
          if (v18 != 131073)
          {
            v20 = [v17 type];
            v19 = v12;
            if (v20 != 191)
            {
              continue;
            }
          }

          [v19 addObject:v17];
        }

        v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
    v24 = [v34 mutableData];
    if (v24)
    {
      v25 = [v34 mutableData];
      v26 = [v25 trafficDelayInfos];
    }

    else
    {
      v26 = 0;
    }

    [(VKRouteInfo *)v8 _decodeVisualInfos:v26 withRouteEtaType:2 into:v23 needsDescription:1];
    objc_storeStrong(&v8->_trafficAnnotations, v23);
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = [v34 visualInfosForRouteNameLabels];
    [(VKRouteInfo *)v8 _decodeVisualInfos:v28 withRouteEtaType:4 into:v27 needsDescription:1];
    objc_storeStrong(&v8->_routeNameAnnotations, v27);
    objc_storeStrong(&v8->_waypoints, obj);
    objc_storeStrong(&v8->_anchorpoints, v32);
    [(VKRouteInfo *)v8 _assignIndexPositions];
    v29 = v8;
  }

  return v8;
}

- (VKRouteInfo)initWithComposedRoute:(id)a3 etaText:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [[VKRouteEtaDescription alloc] initWithEtaText:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(VKRouteInfo *)self initWithComposedRoute:v6 etaDescription:v8];

  return v9;
}

- (BOOL)_isReRoute
{
  v2 = [(GEOComposedRoute *)self->_route anchorPoints];
  v3 = [v2 firstObject];
  v4 = [v3 routeCoordinate];
  v5 = (*MEMORY[0x1E69A1928] != v4) | (vabds_f32(*(&v4 + 1), *(MEMORY[0x1E69A1928] + 4)) >= 0.00000011921);

  return v5 & 1;
}

- (void)_decodeVisualInfos:(id)a3 withRouteEtaType:(int64_t)a4 into:(id)a5 needsDescription:(BOOL)a6
{
  v8 = a6;
  v91 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v62 = a5;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v11;
  v65 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v65)
  {
    v63 = *v77;
    v59 = v8;
    v58 = a4;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v77 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v76 + 1) + 8 * i);
        v70 = [MEMORY[0x1E696AD60] string];
        v71 = v12;
        v13 = [v12 titleString];
        v14 = [v13 stringWithDefaultOptions];

        if (v14)
        {
          [v70 appendFormat:@"%@", v14];
        }

        v15 = [v71 detail];
        v69 = [v15 stringWithDefaultValues];

        if (v69)
        {
          [v70 appendFormat:@"\n%@", v69];
        }

        if (!v8 || [v70 length])
        {
          v16 = [VKRouteEtaDescription alloc];
          v17 = [v71 icon];
          if (v17)
          {
            v7 = [v71 icon];
            v6 = [v7 iconDataSource];
            v64 = [v6 styleAttributes];
            v18 = v64;
          }

          else
          {
            v18 = 0;
          }

          v19 = [v71 shieldText];
          v67 = -[VKRouteEtaDescription initWithEtaText:etaAdvisoryStyleAttributes:routeEtaType:shieldText:shieldType:](v16, "initWithEtaText:etaAdvisoryStyleAttributes:routeEtaType:shieldText:shieldType:", v70, v18, a4, v19, [v71 shieldType]);

          if (v17)
          {
          }

          if (a4 == 5 || a4 == 2)
          {
            v66 = [v71 styleAttributes];
            v20 = v66 != 0;
          }

          else
          {
            v20 = 0;
          }

          if (a4 == 5 || a4 == 2)
          {
          }

          if (v20)
          {
            v21 = [v71 styleAttributes];
            v22 = [v21 attributesCount];

            v86 = 0;
            v87 = 0;
            v88 = 0;
            v24 = v6;
            if (v22)
            {
              v84 = &v89;
              v25 = mdm::zone_mallocator::instance(v23);
              v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v25, v22);
              v27 = &v26[8 * v22];
              v28 = &v26[-(v87 - v86)];
              memcpy(v28, v86, v87 - v86);
              v29 = v86;
              v30 = v88;
              v86 = v28;
              v87 = v26;
              v88 = v27;
              v6 = v24;
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
            v31 = [v71 styleAttributes];
            v32 = [v31 attributes];

            v33 = [v32 countByEnumeratingWithState:&v72 objects:v85 count:16];
            v61 = v7;
            if (v33)
            {
              v34 = *v73;
              do
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v73 != v34)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v36 = v14;
                  v37 = *(*(&v72 + 1) + 8 * j);
                  v38 = [v37 key];
                  v39 = [v37 value];
                  v40 = v39;
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
                      v46 = mdm::zone_mallocator::instance(v39);
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
                    *v87 = v38 | (v39 << 32);
                    v42 = v41 + 8;
                  }

                  v87 = v42;
                  v14 = v36;
                }

                v6 = v24;
                v33 = [v32 countByEnumeratingWithState:&v72 objects:v85 count:16];
              }

              while (v33);
            }

            v8 = v59;
            a4 = v58;
            v7 = v61;
            v53 = [(VKRouteEtaDescription *)v67 styleAttributes];
            [v53 replaceAttributes:? count:?];

            std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v86);
          }

          v54 = [VKRouteRangeAnnotationInfo alloc];
          v55 = [v71 routeCoordinateRange];
          [v71 routeCoordinateRange];
          v57 = [(VKRouteRangeAnnotationInfo *)v54 initWithEtaDescription:v67 start:v55 end:v56];
          [v62 addObject:v57];
        }
      }

      v65 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v65);
  }
}

@end