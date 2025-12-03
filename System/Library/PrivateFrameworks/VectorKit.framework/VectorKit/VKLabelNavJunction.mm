@interface VKLabelNavJunction
- (BOOL)isIntersection;
- (BOOL)isIntraRamp;
- (BOOL)isMultiRoadIntersection;
- (BOOL)isOnRoute;
- (BOOL)isRoadTerminus;
- (BOOL)isTileEdgeJunction;
- (BOOL)matchesLocationForJunction:(id)junction;
- (Matrix<float,)sharedRouteDirection;
- (Matrix<float,)tileCoordinate;
- (Mercator3<double>)_anchorCoordinateForSignOrientation:(unsigned __int8)orientation;
- (NSArray)roads;
- (VKLabelNavJunction)initWithGEOJunction:(GeoCodecsConnectivityJunction *)geoJunction routeOffset:(PolylineCoordinate)offset tile:(const void *)tile;
- (VKLabelNavJunction)initWithRoadEdge:(const GeoCodecsRoadEdge *)edge atA:(BOOL)a routeOffset:(PolylineCoordinate)offset tile:(const void *)tile;
- (VKLabelNavJunction)overpassJunction;
- (VKLabelNavRoad)incomingRoad;
- (VKLabelNavRoad)outgoingRoad;
- (double)worldUnitsPerMeter;
- (id).cxx_construct;
- (id)description;
- (int)requiredLabelPlacement;
- (uint64_t)findRoads;
- (unsigned)_signOrientationWithDrivingSide:(BOOL)side;
- (unsigned)largestRoadClass;
- (void)_updateWithNavContext:(NavContext *)context threshold:(double)threshold;
- (void)addRouteEdge:(const VKLabelNavRouteRoadEdge *)edge atA:(BOOL)a;
- (void)createLabelWithNavContext:(NavContext *)context isDrivingSideRight:(BOOL)right artworkCache:(void *)cache;
- (void)dealloc;
- (void)evaluateCrossStreetsUsingRouteJunction:(id)junction;
- (void)findRoads;
- (void)layoutWithNavContext:(NavContext *)context;
- (void)prepareStyleVarsWithContext:(NavContext *)context;
- (void)setPreferredLabelPlacement:(int)placement;
- (void)setRouteOffset:(PolylineCoordinate)offset;
@end

@implementation VKLabelNavJunction

- (BOOL)isOnRoute
{
  WeakRetained = objc_loadWeakRetained(&self->_incomingRoad);
  if (WeakRetained)
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_outgoingRoad);
    v4 = v5 != 0;
  }

  return v4;
}

- (NSArray)roads
{
  if (!self->_foundRoads)
  {
    [(VKLabelNavJunction *)self findRoads];
  }

  roads = self->_roads;

  return roads;
}

- (BOOL)isMultiRoadIntersection
{
  if (self->_isOverpass)
  {
    return 1;
  }

  if (![(VKLabelNavJunction *)self isIntersection])
  {
    return 0;
  }

  v4 = [(NSMutableArray *)self->_roads objectAtIndexedSubscript:0];
  name = [v4 name];

  for (i = 1; ; ++i)
  {
    v7 = [(NSMutableArray *)self->_roads count];
    v2 = i < v7;
    if (i >= v7)
    {
      break;
    }

    v8 = [(NSMutableArray *)self->_roads objectAtIndexedSubscript:i];
    name2 = [v8 name];

    if (name != name2 && ([name isEqualToString:name2] & 1) == 0)
    {

      break;
    }
  }

  return v2;
}

- (BOOL)isIntersection
{
  if (!self->_foundRoads)
  {
    [(VKLabelNavJunction *)self findRoads];
  }

  return self->_isOverpass || [(NSMutableArray *)self->_roads count]> 2;
}

- (BOOL)isTileEdgeJunction
{
  if (self->_isRouteRefineJunction || self->_geoJunction)
  {
    return 0;
  }

  v3.i64[0] = self->_tileCoordinate;
  v3.i64[1] = v3.i64[0];
  v4.i32[0] = vmovn_s32(vcgtq_f32(v3, xmmword_1B33B2170)).u32[0];
  v4.i32[1] = vmovn_s32(vcgtq_f32(xmmword_1B33B2170, v3)).i32[1];
  return vmaxv_u16(vcltz_s16(vshl_n_s16(v4, 0xFuLL))) & 1;
}

- (double)worldUnitsPerMeter
{
  result = self->_worldUnitsPerMeter;
  if (result == 0.0)
  {
    v4 = exp(self->_mercatorCoordinate._e[1] * 6.28318531 + -3.14159265);
    v5 = atan(v4);
    result = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v5 * 114.591559 + -90.0);
    self->_worldUnitsPerMeter = result;
  }

  return result;
}

- (void)dealloc
{
  [(VKLabelNavRoadLabel *)self->_junctionSign setNavFeature:0];
  v3.receiver = self;
  v3.super_class = VKLabelNavJunction;
  [(VKLabelNavJunction *)&v3 dealloc];
}

- (VKLabelNavRoad)outgoingRoad
{
  WeakRetained = objc_loadWeakRetained(&self->_outgoingRoad);

  return WeakRetained;
}

- (VKLabelNavRoad)incomingRoad
{
  WeakRetained = objc_loadWeakRetained(&self->_incomingRoad);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 5) = 0xBF80000000000000;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 22) = 0;
  return self;
}

- (VKLabelNavJunction)overpassJunction
{
  WeakRetained = objc_loadWeakRetained(&self->_overpassJunction);

  return WeakRetained;
}

- (Matrix<float,)sharedRouteDirection
{
  v2 = self->_sharedRouteDirection._e[0];
  v3 = self->_sharedRouteDirection._e[1];
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (Matrix<float,)tileCoordinate
{
  v2 = self->_tileCoordinate._e[0];
  v3 = self->_tileCoordinate._e[1];
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (void)createLabelWithNavContext:(NavContext *)context isDrivingSideRight:(BOOL)right artworkCache:(void *)cache
{
  v11 = *MEMORY[0x1E69E9840];
  labelFeature = self->_labelFeature;
  if (labelFeature && !self->_areLabelsDisabled && !self->_junctionSign && labelFeature[73])
  {
    v7 = *(*(context->var1 + 21) + 32);
    v8 = (*(*v7 + 96))(v7, &self->_routeOffset);
    if ([(VKLabelNavJunction *)self isOnRoute])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (self->_depthFromRoute == 0);
    }

    GetLabelNavStyleAttributes(&v10, 1, v9, 0, v8);
  }
}

- (void)prepareStyleVarsWithContext:(NavContext *)context
{
  v5 = *(*(context->var1 + 21) + 32);
  v6 = (*(*v5 + 96))(v5, &self->_routeOffset);
  v7 = (***(*(context->var1 + 21) + 32))();
  v8 = v6;
  if ((v6 & 0x100) == 0)
  {
    v8 = 3;
  }

  v9 = v8 + 4 * v7;
  if (v9 >= 7)
  {
    v10 = 7;
  }

  else
  {
    v10 = v9;
  }

  if (!self->_cachedSignVisibility[v10])
  {
    if ([(VKLabelNavJunction *)self isOnRoute])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * (self->_depthFromRoute == 0);
    }

    GetLabelNavStyleAttributes(&v12, 1, v11, 0, v6);
  }

  self->_isVisible = 1;
}

- (void)layoutWithNavContext:(NavContext *)context
{
  [(VKLabelNavJunction *)self _updateWithNavContext:20.0 threshold:?];
  junctionSign = self->_junctionSign;
  if (junctionSign && *[(VKLabelNavRoadLabel *)junctionSign label])
  {
    v6 = self->_junctionSign;

    [(VKLabelNavRoadLabel *)v6 layoutWithNavContext:context];
  }
}

- (void)_updateWithNavContext:(NavContext *)context threshold:(double)threshold
{
  self->_isVisible &= DetermineJunctionVisibility(self, context, threshold);
  junctionSign = self->_junctionSign;
  if (junctionSign && *[(VKLabelNavRoadLabel *)junctionSign label])
  {
    v6 = *[(VKLabelNavRoadLabel *)self->_junctionSign label];
    isVisible = [(VKLabelNavJunction *)self isVisible];
    v6[313] = isVisible;
    if (v6[312] == 1)
    {
      v6[314] = isVisible;
    }
  }
}

- (Mercator3<double>)_anchorCoordinateForSignOrientation:(unsigned __int8)orientation
{
  orientationCopy = orientation;
  v5 = self->_mercatorCoordinate._e[0];
  v6 = self->_mercatorCoordinate._e[1];
  v7 = self->_mercatorCoordinate._e[2];
  WeakRetained = objc_loadWeakRetained(&self->_incomingRoad);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_incomingRoad);
    [v9 direction2D];
    v11 = v10;
    v13 = v12;

    v14 = -v11;
    v15 = -v13;
  }

  else
  {
    v16 = objc_loadWeakRetained(&self->_outgoingRoad);

    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = objc_loadWeakRetained(&self->_outgoingRoad);
    [v17 direction2D];
    v14 = v18;
    v15 = v19;
  }

  if (orientationCopy == 6)
  {
    v14 = -v14;
  }

  else
  {
    v15 = -v15;
  }

  v20 = exp(self->_mercatorCoordinate._e[1] * 6.28318531 + -3.14159265);
  v21 = atan(v20);
  v22 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v21 * 114.591559 + -90.0) * 3.5;
  v5 = v5 + v22 * v15;
  v6 = v6 + v22 * v14;
LABEL_9:
  v23 = v5;
  v24 = v6;
  v25 = v7;
  result._e[2] = v25;
  result._e[1] = v24;
  result._e[0] = v23;
  return result;
}

- (unsigned)_signOrientationWithDrivingSide:(BOOL)side
{
  v47 = *MEMORY[0x1E69E9840];
  if (side)
  {
    v4 = 7;
  }

  else
  {
    v4 = 6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_incomingRoad);
  if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_outgoingRoad), v7, v6, !v7) || ((v8 = objc_loadWeakRetained(&self->_incomingRoad), [v8 direction2D], v10 = v9, v12 = v11, v8, v13 = objc_loadWeakRetained(&self->_outgoingRoad), objc_msgSend(v13, "direction2D"), v15 = v14, v17 = v16, v13, v18 = -((v17 * v10) - (v15 * v12)), v19 = fabsf(v18), v18 >= 0.0) ? (v20 = 6) : (v20 = 7), v19 <= 0.2))
  {
    v21 = objc_loadWeakRetained(&self->_incomingRoad);

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_incomingRoad);
      [v22 direction2D];
      v24 = v23;
      v26 = v25;

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v27 = self->_roads;
      v28 = 0;
      v29 = 0;
      v30 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v30)
      {
        v31 = *v43;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v43 != v31)
            {
              objc_enumerationMutation(v27);
            }

            v33 = *(*(&v42 + 1) + 8 * i);
            v34 = objc_loadWeakRetained(&self->_incomingRoad);
            v35 = v33 == v34;

            if (!v35)
            {
              [v33 direction2D];
              v38 = -((v36 * v24) - (v37 * v26));
              if (fabsf(v38) > 0.2)
              {
                if (v38 >= 0.0)
                {
                  ++v28;
                }

                else
                {
                  ++v29;
                }
              }
            }
          }

          v30 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v30);
      }

      if (v28)
      {
        v39 = 1;
      }

      else
      {
        v39 = v29 == 0;
      }

      if (v39)
      {
        v20 = v4;
      }

      else
      {
        v20 = 7;
      }

      if (v29)
      {
        v40 = 1;
      }

      else
      {
        v40 = v28 == 0;
      }

      if (!v40)
      {
        return 6;
      }
    }

    else
    {
      return v4;
    }
  }

  return v20;
}

- (void)setPreferredLabelPlacement:(int)placement
{
  v27 = *MEMORY[0x1E69E9840];
  self->_preferredLabelPlacement = placement;
  if ((placement - 1) <= 1)
  {
    if (placement == 1)
    {
      v23 = 0uLL;
      v24 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v4 = self->_roads;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (!v5)
      {
        goto LABEL_32;
      }

      v6 = *v22;
      while (1)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          if (([v8 isOnRoute] & 1) == 0)
          {
            [v8 routeCrossProduct];
            if (v9 >= 0.0)
            {
              [v8 setIntraRoadPriorityForRoadLabel:{objc_msgSend(v8, "intraRoadPriorityForRoadLabel") & 0xFFFFFFFFFFFFFFFDLL}];
              if (![v8 hasShield])
              {
                continue;
              }

              v10 = [v8 intraRoadPriorityForShieldLabel] & 0xFFFFFFFFFFFFFFFDLL;
            }

            else
            {
              [v8 setIntraRoadPriorityForRoadLabel:{objc_msgSend(v8, "intraRoadPriorityForRoadLabel") | 2}];
              if (![v8 hasShield])
              {
                continue;
              }

              v10 = [v8 intraRoadPriorityForShieldLabel] | 2;
            }

            [v8 setIntraRoadPriorityForShieldLabel:v10];
          }
        }

        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (!v5)
        {
LABEL_32:

          [(NSMutableArray *)self->_roads sortUsingComparator:&__block_literal_global_12_32719];
          return;
        }
      }
    }

    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v4 = self->_roads;
    v11 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = *v18;
LABEL_20:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v4);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      if ([v14 isOnRoute])
      {
        goto LABEL_30;
      }

      [v14 routeCrossProduct];
      if (v15 <= 0.0)
      {
        [v14 setIntraRoadPriorityForRoadLabel:{objc_msgSend(v14, "intraRoadPriorityForRoadLabel") & 0xFFFFFFFFFFFFFFFDLL}];
        if ([v14 hasShield])
        {
          v16 = [v14 intraRoadPriorityForShieldLabel] & 0xFFFFFFFFFFFFFFFDLL;
          goto LABEL_29;
        }
      }

      else
      {
        [v14 setIntraRoadPriorityForRoadLabel:{objc_msgSend(v14, "intraRoadPriorityForRoadLabel") | 2}];
        if ([v14 hasShield])
        {
          v16 = [v14 intraRoadPriorityForShieldLabel] | 2;
LABEL_29:
          [v14 setIntraRoadPriorityForShieldLabel:v16];
        }
      }

LABEL_30:
      if (v11 == ++v13)
      {
        v11 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (!v11)
        {
          goto LABEL_32;
        }

        goto LABEL_20;
      }
    }
  }
}

uint64_t __49__VKLabelNavJunction_setPreferredLabelPlacement___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 intraRoadPriorityForRoadLabel];
  v7 = [v4 intraRoadPriorityForRoadLabel];
  if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 > v7;
  }

  return v8;
}

- (int)requiredLabelPlacement
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isOnDualCarriageway)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_roads;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([v10 isOnRoute] & 1) == 0)
        {
          [v10 routeCrossProduct];
          if (v11 >= -0.1)
          {
            [v10 routeCrossProduct];
            if (v13 <= 0.1)
            {
              continue;
            }

            name = [v10 name];
            [v4 addObject:name];
          }

          else
          {
            name = [v10 name];
            [v5 addObject:name];
          }
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count] || objc_msgSend(v5, "count"))
  {
    if ([v4 count] && !objc_msgSend(v5, "count"))
    {
      v2 = 2;
    }

    else if ([v4 count] || !objc_msgSend(v5, "count"))
    {
      if ([v4 count] == 1 && objc_msgSend(v4, "isEqualToSet:", v5))
      {
        if (self->_isOverpass)
        {
          v2 = 5;
        }

        else
        {
          v2 = 3;
        }
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)evaluateCrossStreetsUsingRouteJunction:(id)junction
{
  v38 = *MEMORY[0x1E69E9840];
  junctionCopy = junction;
  [(VKLabelNavJunction *)self findRoads];
  incomingRoad = [junctionCopy incomingRoad];
  outgoingRoad = [junctionCopy outgoingRoad];
  v9 = outgoingRoad;
  if (incomingRoad)
  {
    [incomingRoad direction2D];
    v4 = v10;
    v3 = v11;
    [incomingRoad direction2D];
    v13 = -v12;
    v15 = -v14;
  }

  else
  {
    if (!outgoingRoad)
    {
      goto LABEL_29;
    }

    [outgoingRoad direction2D];
    v13 = v16;
    v15 = v17;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = self->_roads;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v20 = *v34;
    if (incomingRoad)
    {
      v21 = v9 == 0;
    }

    else
    {
      v21 = 1;
    }

    v23 = v21 || v9 == incomingRoad;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v33 + 1) + 8 * i);
        [v25 direction2D];
        v27 = v26;
        v29 = v28;
        if ([v25 isOnRoute])
        {
          *&v30 = -((v27 * v15) - (v29 * v13));
        }

        else
        {
          if (v23)
          {
            v31 = -((v27 * v15) - (v29 * v13));
          }

          else
          {
            [v9 direction2D];
            v31 = ((v3 - v32) * (v27 - v4)) + ((*&v30 - v4) * (v29 - v3));
          }

          LODWORD(v30) = -1.0;
          if (v31 >= 0.0)
          {
            *&v30 = v31;
            if (v31 > 0.0)
            {
              LODWORD(v30) = 1.0;
            }
          }
        }

        [v25 setRouteCrossProduct:v30];
      }

      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

LABEL_29:
}

- (void)addRouteEdge:(const VKLabelNavRouteRoadEdge *)edge atA:(BOOL)a
{
  aCopy = a;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_roads;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 matchesRoadEdge:{&edge->var2, v12}])
        {
          [v11 setIsOnRoute:1];
          [v11 setLabelVertexIndexA:edge->var3];
          [v11 setLabelVertexIndexB:edge->var4];
          if (aCopy)
          {
            objc_storeWeak(&self->_outgoingRoad, v11);
          }

          else
          {
            objc_storeWeak(&self->_incomingRoad, v11);
            [v11 setAreLabelsDisabled:1];
          }
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)findRoads
{
  if (**a2)
  {
    v3 = [[VKLabelNavRoad alloc] initWithRoadEdge:*a2 navJunctionA:**(self + 8) routeOffset:*(**(self + 8) + 40) tile:**(self + 8) + 8];
    if (v3)
    {
      [*(**(self + 8) + 48) addObject:v3];
    }
  }
}

uint64_t __31__VKLabelNavJunction_findRoads__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 roadClass];
  v9 = [v7 roadClass];
  if (v8 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 > v9;
  }

  return v10;
}

- (uint64_t)findRoads
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A33158;
  a2[1] = v2;
  return result;
}

- (unsigned)largestRoadClass
{
  if (!self->_foundRoads)
  {
    [(VKLabelNavJunction *)self findRoads];
  }

  return self->_largestRoadClass;
}

- (BOOL)isIntraRamp
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  roads = [(VKLabelNavJunction *)self roads];
  v3 = [roads countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(roads);
        }

        if (([*(*(&v8 + 1) + 8 * i) isRamp] & 1) == 0)
        {
          v6 = 0;
          goto LABEL_11;
        }
      }

      v3 = [roads countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

- (BOOL)isRoadTerminus
{
  if (!self->_foundRoads)
  {
    [(VKLabelNavJunction *)self findRoads];
  }

  return self->_geoJunction && [(NSMutableArray *)self->_roads count]== 1;
}

- (void)setRouteOffset:(PolylineCoordinate)offset
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_routeOffset.index != offset.index || vabds_f32(offset.offset, self->_routeOffset.offset) >= 0.00000011921)
  {
    self->_routeOffset = offset;
    self->_sortValue = offset.offset + offset.index;
    roads = self->_roads;
    if (roads)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v5 = roads;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v6)
      {
        v7 = *v10;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v9 + 1) + 8 * i) setRouteOffset:{offset, v9}];
          }

          v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }
}

- (BOOL)matchesLocationForJunction:(id)junction
{
  junctionCopy = junction;
  v5 = junctionCopy;
  if (self == junctionCopy)
  {
    v6 = 1;
  }

  else if (self->_tile.__ptr_ == *[(VKLabelNavJunction *)junctionCopy tile])
  {
    [(VKLabelNavJunction *)v5 tileCoordinate];
    v6 = *&self->_tileCoordinate == __PAIR64__(v8, v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"VKLabelNavJunction "];
  roads = [(VKLabelNavJunction *)self roads];
  [v3 appendFormat:@"roads:%@", roads];

  return v3;
}

- (VKLabelNavJunction)initWithRoadEdge:(const GeoCodecsRoadEdge *)edge atA:(BOOL)a routeOffset:(PolylineCoordinate)offset tile:(const void *)tile
{
  aCopy = a;
  v30.receiver = self;
  v30.super_class = VKLabelNavJunction;
  v10 = [(VKLabelNavJunction *)&v30 init];
  v11 = v10;
  if (v10)
  {
    v13 = *tile;
    v12 = *(tile + 1);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v10->_tile.__cntrl_;
    v11->_tile.__ptr_ = v13;
    v11->_tile.__cntrl_ = v12;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    v11->_routeOffset = offset;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    roads = v11->_roads;
    v11->_roads = v15;

    v11->_sortValue = offset.offset + offset.index;
    v11->_preferredLabelPlacement = 0;
    v11->_foundRoads = 1;
    v17 = *&edge->var2;
    *v29 = *&edge->var0;
    *&v29[16] = v17;
    *&v29[32] = *&edge->var4;
    *&v29[48] = edge->var6;
    if (*v29)
    {
      if (!aCopy)
      {
        *&v29[8] = vextq_s8(*&v29[8], *&v29[8], 8uLL);
        *&v29[24] = vextq_s8(*&v29[24], *&v29[24], 8uLL);
        *&v29[40] = vextq_s8(*&v29[40], *&v29[40], 8uLL);
      }

      v18 = [[VKLabelNavRoad alloc] initWithRoadEdge:v29 navJunctionA:v11 routeOffset:offset tile:tile];
      if (v18)
      {
        [(NSMutableArray *)v11->_roads addObject:v18];
      }
    }

    v27 = 0;
    v19 = geo::codec::multiSectionFeaturePointsWithElevation(edge->var0, 0, &v27, &v28);
    v20 = 16;
    if (aCopy)
    {
      v20 = 8;
    }

    v21 = *(&edge->var0 + v20);
    v22 = &v19->__vftable + v21;
    v11->_tileCoordinate._e[0] = *v22;
    v11->_tileCoordinate._e[1] = *(v22 + 1);
    v23 = vmlaq_f64(*(v11->_tile.__ptr_ + 20), vcvtq_f64_f32(v11->_tileCoordinate), vsubq_f64(*(v11->_tile.__ptr_ + 21), *(v11->_tile.__ptr_ + 20)));
    if (v27)
    {
      v24 = *(v27 + 4 * v21);
    }

    else
    {
      v24 = 0.0;
    }

    *v11->_mercatorCoordinate._e = v23;
    v11->_mercatorCoordinate._e[2] = v24;
    v25 = v11;
  }

  return v11;
}

- (VKLabelNavJunction)initWithGEOJunction:(GeoCodecsConnectivityJunction *)geoJunction routeOffset:(PolylineCoordinate)offset tile:(const void *)tile
{
  v33.receiver = self;
  v33.super_class = VKLabelNavJunction;
  v8 = [(VKLabelNavJunction *)&v33 init];
  v9 = v8;
  if (v8)
  {
    ptr = *tile;
    v11 = *(tile + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v8->_tile.__cntrl_;
    v9->_tile.__ptr_ = ptr;
    v9->_tile.__cntrl_ = v11;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
      ptr = v9->_tile.__ptr_;
    }

    v9->_geoJunction = geoJunction;
    v9->_routeOffset = offset;
    v9->_sortValue = offset.offset + offset.index;
    v9->_preferredLabelPlacement = 0;
    v9->_depthFromRoute = -1;
    v9->_largestRoadClass = 8;
    v13 = *(ptr + 3);
    v14 = *v13;
    v15 = v13[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      geoJunction = v9->_geoJunction;
    }

    v16 = v14[87];
    v17 = v14[86];
    if (v16)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v9->_isOverpass = *(v17 + ((geoJunction - v16) >> 4)) != 0;
    }

    if (geoJunction)
    {
      if (!geoJunction->var0 || ((v19 = (v14[90] + 16 * geoJunction->var1), v20 = v19[2], v21 = (v14[4] + 168 * v19[1]), v31 = 0, v22 = geo::codec::multiSectionFeaturePointsWithElevation(v21, v20, &v31, &v32), v23 = v19[3], v24 = &v22->__vftable + v23, v9->_tileCoordinate._e[0] = *v24, v9->_tileCoordinate._e[1] = *(v24 + 1), v25 = vmlaq_f64(*(v9->_tile.__ptr_ + 20), vcvtq_f64_f32(v9->_tileCoordinate), vsubq_f64(*(v9->_tile.__ptr_ + 21), *(v9->_tile.__ptr_ + 20))), !v31) ? (v26 = 0.0) : (v26 = *(v31 + 4 * v23)), *v9->_mercatorCoordinate._e = v25, v9->_mercatorCoordinate._e[2] = v26, (geoJunction = v9->_geoJunction) != 0))
      {
        var2 = geoJunction->var2;
        if (var2 && *(var2 + 73))
        {
          v9->_labelFeature = var2;
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v9->_labelFeature + 2)];
          name = v9->_name;
          v9->_name = v28;
        }
      }
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }
  }

  return v9;
}

@end