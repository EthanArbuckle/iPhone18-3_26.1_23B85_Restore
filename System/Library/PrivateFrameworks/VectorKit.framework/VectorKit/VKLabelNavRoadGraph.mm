@interface VKLabelNavRoadGraph
- (BOOL)_checkIfDualCarriageWayConnectorRoad:(id)road fromJunction:(id)junction toJunction:(id)toJunction checkShields:(BOOL)shields;
- (BOOL)collideRouteWithLabel:(id)label routeCrossProduct:(float *)product context:(NavContext *)context;
- (BOOL)isPriorRouteCollinearWithRoad:(id)road distance:(float)distance;
- (BOOL)prepareOppositeCarriagewayJunctions;
- (Matrix<float,)unitHeading;
- (VKLabelNavRoadGraph)initWithJunctions:(id)junctions;
- (id).cxx_construct;
- (id)_findInterTileJunctionForJunction:(id)junction;
- (id)_junctionForRoadEdge:(const GeoCodecsRoadEdge *)edge atA:(BOOL)a routeOffset:(PolylineCoordinate)offset tile:(const void *)tile;
- (id)_nextIntersectionForRoad:(id)road;
- (id)junctionForRoad:(id)road nearJunction:(BOOL)junction crossTileEdge:(BOOL)edge;
- (id)junctionListForDepth:(unint64_t)depth;
- (id)nextRoadSegmentForRoad:(id)road;
- (id)offRouteGraphJunctionsWithNavContext:(NavContext *)context maxJunctions:(unint64_t)junctions isOnRoute:(BOOL)route;
- (id)overpassJunctionForJunction:(id)junction;
- (unint64_t)countReadyJunctionLists;
- (unsigned)computeRoutePositionForPOIAtPixel:(const void *)pixel currentPosition:(unsigned __int8)position context:(NavContext *)context;
- (void)_findOffRouteJunctions;
- (void)_transformRouteToScreenWithContext:(NavContext *)context;
- (void)_updateIntersectionsForDepth:(unint64_t)depth;
- (void)_updateSimplifiedRoute;
- (void)addRouteRoadEdge:(const VKLabelNavRouteRoadEdge *)edge atA:(BOOL)a isRouteRefineJunction:(BOOL)junction tile:(const void *)tile junctionList:(id)list;
- (void)debugDraw:(id)draw overlayConsole:(void *)console navContext:(NavContext *)context;
- (void)evaluateDualCarriagewayForJunction:(id)junction outputJunctionList:(id)list;
- (void)reset;
- (void)routeJunctionsHaveChanged;
- (void)setTiles:(const void *)tiles;
- (void)startingLabelLayoutWithContext:(NavContext *)context routeUserOffset:(PolylineCoordinate)offset;
@end

@implementation VKLabelNavRoadGraph

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 6) = 0;
  *(self + 25) = 0;
  *(self + 4) = 0;
  *(self + 14) = 1065353216;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 13) = 0;
  *(self + 81) = 0;
  *(self + 11) = 0;
  *(self + 28) = 1065353216;
  *(self + 27) = 0xBF80000000000000;
  *(self + 29) = 0;
  *(self + 30) = 0;
  *(self + 34) = 0;
  *(self + 249) = 0;
  *(self + 32) = 0;
  *(self + 70) = 1065353216;
  *(self + 38) = 0;
  *(self + 39) = 0;
  *(self + 37) = 0;
  *(self + 43) = 0;
  *(self + 44) = 0;
  *(self + 45) = 0;
  return self;
}

- (void)reset
{
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::clear(&self->_tiles);
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::clear(&self->_duplicateTiles);
  [(NSMutableDictionary *)self->_tileDatasByIndex removeAllObjects];
  [(NSMutableArray *)self->_intersections removeAllObjects];
  self->_offRouteJunctionsValid = 0;
  [(NSMutableArray *)self->_offRouteJunctions removeAllObjects];

  [(VKLabelNavRoadGraph *)self routeJunctionsHaveChanged];
}

- (void)routeJunctionsHaveChanged
{
  v12 = *MEMORY[0x1E69E9840];
  self->_simplifiedRouteValid = 0;
  self->_simplifiedRoutePoints.__end_ = self->_simplifiedRoutePoints.__begin_;
  self->_routeFeatureMapValid = 0;
  std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,mdm::zone_mallocator>>::clear(&self->_routeFeatureMap);
  self->_oppositeCarriagewayJunctionsValid = 0;
  [(NSMutableArray *)self->_oppositeCarriagewayJunctions removeAllObjects];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_tileDatasByIndex objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v7 + 1) + 8 * v6++) setOppositeCarriagewayJunctionsValid:0];
      }

      while (v4 != v6);
      v4 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_nextIntersectionForRoad:(id)road
{
  v20 = *MEMORY[0x1E69E9840];
  roadCopy = road;
  v5 = 0;
  while (1)
  {
    v6 = [(VKLabelNavRoadGraph *)self junctionForRoad:roadCopy nearJunction:0 crossTileEdge:1];
    v7 = v6;
    if (!v6 || ([v6 isIntersection] & 1) != 0)
    {
      break;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    roads = [v7 roads];
    v9 = [roads countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v9)
    {
LABEL_16:

LABEL_17:
      v7 = 0;
      break;
    }

    v10 = *v16;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(roads);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if (([v12 matchesRoad:roadCopy] & 1) == 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [roads countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_16;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_17;
    }

    ++v5;
    roadCopy = v13;
    if (v5 == 10)
    {
      v7 = 0;
      roadCopy = v13;
      break;
    }
  }

  return v7;
}

- (id)nextRoadSegmentForRoad:(id)road
{
  v33 = *MEMORY[0x1E69E9840];
  roadCopy = road;
  v5 = [(VKLabelNavRoadGraph *)self junctionForRoad:roadCopy nearJunction:0 crossTileEdge:1];
  v27 = v5;
  if (v5)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    roads = [v5 roads];
    v7 = 0;
    v8 = [roads countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(roads);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          if (([v11 matchesRoad:roadCopy] & 1) == 0)
          {
            name = [v11 name];
            name2 = [roadCopy name];
            v14 = [name isEqualToString:name2];

            if (v14)
            {
              if (v7)
              {
                [roadCopy direction2D];
                v16 = v15;
                v18 = v17;
                [v11 direction2D];
                v20 = v19;
                v22 = v21;
                [v7 direction2D];
                if (((v20 * v16) + (v22 * v18)) > ((v23 * v16) + (v24 * v18)))
                {
                  v25 = v11;

                  v7 = v25;
                }
              }

              else
              {
                v7 = v11;
              }
            }
          }
        }

        v8 = [roads countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_findInterTileJunctionForJunction:(id)junction
{
  junctionCopy = junction;
  [junctionCopy tileCoordinate];
  v7 = v5;
  v8 = v6;
  if (v5 >= 0.0005)
  {
    v9 = 2;
    if (v5 <= 0.9995)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= 0.0005)
  {
    if (v6 > 0.9995)
    {
      v10 = v9 | 4;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = v9 | 8;
  }

  v11 = 0;
  for (i = &unk_1B3416ED0; ; i += 4)
  {
    v13 = *(i - 2);
    if ((v13 & ~v10) == 0)
    {
      break;
    }

    if (v11 > 6)
    {
      v22 = 0;
      goto LABEL_25;
    }

LABEL_22:
    ++v11;
  }

  tileDatasByIndex = self->_tileDatasByIndex;
  tile = [junctionCopy tile];
  v16 = *(i - 1);
  v17 = *i;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", v16 + *(*tile + 296), *i + *(*tile + 292)];
  v19 = [(NSMutableDictionary *)tileDatasByIndex objectForKey:v18];

  if (!v19)
  {
    goto LABEL_18;
  }

  *&v20 = v7;
  if (v16)
  {
    LODWORD(v20) = *(i + 2);
  }

  *&v21 = v8;
  if (v17)
  {
    LODWORD(v21) = *(i + 3);
  }

  v22 = [v19 findTileEdgeJunctionAtCoordinate:{v20, v21}];
  if (!v22)
  {
LABEL_18:

    v22 = 0;
    if (v10 == v13 || v11 >= 7)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_25:

  return v22;
}

- (id)_junctionForRoadEdge:(const GeoCodecsRoadEdge *)edge atA:(BOOL)a routeOffset:(PolylineCoordinate)offset tile:(const void *)tile
{
  aCopy = a;
  tileDatasByIndex = self->_tileDatasByIndex;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", *(*tile + 296), *(*tile + 292)];
  v12 = [(NSMutableDictionary *)tileDatasByIndex objectForKey:v11];

  v13 = 48;
  if (aCopy)
  {
    v13 = 40;
  }

  if (v12)
  {
    v14 = *(&edge->var0 + v13);
    if (v14)
    {
      v15 = [v12 junctionForGeoJunction:*(&edge->var0 + v13)];
      if (!v15)
      {
        v15 = [[VKLabelNavJunction alloc] initWithGEOJunction:v14 routeOffset:offset tile:tile];
        [v12 addJunction:v15];
      }
    }

    else
    {
      v16 = geo::codec::multiSectionFeaturePoints(edge->var0, 0, &v22);
      v19 = 16;
      if (aCopy)
      {
        v19 = 8;
      }

      v20 = &v16->__vftable + *(&edge->var0 + v19);
      LODWORD(v17) = *v20;
      LODWORD(v18) = *(v20 + 1);
      v15 = [v12 junctionAtCoordinate:{v17, v18}];
      if (!v15)
      {
        v15 = [[VKLabelNavJunction alloc] initWithRoadEdge:edge atA:aCopy routeOffset:offset tile:tile];
        [v12 addJunction:v15];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (Matrix<float,)unitHeading
{
  v2 = self->_unitHeading._e[0];
  v3 = self->_unitHeading._e[1];
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (id)junctionForRoad:(id)road nearJunction:(BOOL)junction crossTileEdge:(BOOL)edge
{
  edgeCopy = edge;
  junctionCopy = junction;
  roadCopy = road;
  [roadCopy getRoadEdge:v13];
  v9 = -[VKLabelNavRoadGraph _junctionForRoadEdge:atA:routeOffset:tile:](self, "_junctionForRoadEdge:atA:routeOffset:tile:", v13, junctionCopy, [roadCopy routeOffset], objc_msgSend(roadCopy, "tile"));
  v10 = v9;
  if (edgeCopy && v9 && [v9 isTileEdgeJunction])
  {
    v11 = [(VKLabelNavRoadGraph *)self _findInterTileJunctionForJunction:v10];

    v10 = v11;
  }

  return v10;
}

- (void)setTiles:(const void *)tiles
{
  next = self->_tiles.__table_.__first_node_.__next_;
  for (i = 0; next; next = *next)
  {
    v7 = next[2];
    if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(tiles, v7))
    {
      if (std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(&self->_duplicateTiles.__table_.__bucket_list_.__ptr_, v7))
      {
        std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__erase_unique<std::shared_ptr<md::LabelTile>>(&self->_duplicateTiles.__table_.__bucket_list_.__ptr_, v7);
      }

      else
      {
        tileDatasByIndex = self->_tileDatasByIndex;
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", *(v7 + 296), *(v7 + 292)];
        [(NSMutableDictionary *)tileDatasByIndex removeObjectForKey:v9];

        i = 1;
      }
    }
  }

  for (j = *(tiles + 3); j; j = *j)
  {
    v12 = j + 2;
    v11 = j[2];
    if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(&self->_tiles.__table_.__bucket_list_.__ptr_, v11))
    {
      v13 = self->_tileDatasByIndex;
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", *(v11 + 296), *(v11 + 292)];
      v15 = [(NSMutableDictionary *)v13 objectForKey:v14];

      if (v15)
      {
        std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelTile>,std::shared_ptr<md::LabelTile> const&>(&self->_duplicateTiles, *v12, j + 2);
      }

      else
      {
        v16 = [[VKLabelNavTileData alloc] initWithTile:j + 2];
        v17 = self->_tileDatasByIndex;
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", *(*v12 + 296), *(*v12 + 292)];
        [(NSMutableDictionary *)v17 setObject:v16 forKey:v18];

        i = 1;
      }
    }
  }

  if (&self->_tiles != tiles)
  {
    *self->_anon_38 = *(tiles + 12);
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *>>(&self->_tiles, *(tiles + 3));
  }

  if (i)
  {
    [(NSMutableArray *)self->_intersections removeAllObjects];
    self->_offRouteJunctionsValid = 0;
    [(NSMutableArray *)self->_offRouteJunctions removeAllObjects];
    self->_oppositeCarriagewayJunctionsValid = 0;
    oppositeCarriagewayJunctions = self->_oppositeCarriagewayJunctions;

    [(NSMutableArray *)oppositeCarriagewayJunctions removeAllObjects];
  }
}

- (void)startingLabelLayoutWithContext:(NavContext *)context routeUserOffset:(PolylineCoordinate)offset
{
  self->_screenRouteValid = 0;
  v6 = __sincosf_stret(*(context->var3 + 105));
  self->_unitHeading._e[0] = v6.__cosval;
  self->_unitHeading._e[1] = v6.__sinval;
  self->_routeUserOffset = offset;
}

- (VKLabelNavRoadGraph)initWithJunctions:(id)junctions
{
  junctionsCopy = junctions;
  v18.receiver = self;
  v18.super_class = VKLabelNavRoadGraph;
  v6 = [(VKLabelNavRoadGraph *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_junctions, junctions);
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__rehash<true>(&v7->_tiles, vcvtps_u32_f32(32.0 / *v7->_anon_38));
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tileDatasByIndex = v7->_tileDatasByIndex;
    v7->_tileDatasByIndex = v8;

    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__rehash<true>(&v7->_duplicateTiles, vcvtps_u32_f32(32.0 / *v7->_anon_70));
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    intersections = v7->_intersections;
    v7->_intersections = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    offRouteJunctions = v7->_offRouteJunctions;
    v7->_offRouteJunctions = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    oppositeCarriagewayJunctions = v7->_oppositeCarriagewayJunctions;
    v7->_oppositeCarriagewayJunctions = v14;

    v16 = v7;
  }

  return v7;
}

- (void)debugDraw:(id)draw overlayConsole:(void *)console navContext:(NavContext *)context
{
  drawCopy = draw;
  if (!self->_screenRouteValid)
  {
    [(VKLabelNavRoadGraph *)self _transformRouteToScreenWithContext:context];
  }

  *(console + 26) = fabsf(*(context->var1 + 44) * 3.0) * 0.5;
  *(console + 24) = 32512;
  begin = self->_screenRouteSegments.__begin_;
  end = self->_screenRouteSegments.__end_;
  while (begin != end)
  {
    *(console + 2) = *begin;
    v10 = *(begin + 1);
    *(console + 3) = v10;
    ggl::DebugConsole::drawLine(console, begin + 2, v10);
    begin = (begin + 20);
  }

  *(console + 26) = fabsf(*(context->var1 + 44)) * 0.5;
}

- (BOOL)prepareOppositeCarriagewayJunctions
{
  v78 = *MEMORY[0x1E69E9840];
  if (self->_oppositeCarriagewayJunctionsValid)
  {
    return 1;
  }

  if ([(NSMutableArray *)self->_junctions count])
  {
    if (!self->_routeFeatureMapValid)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,mdm::zone_mallocator>>::clear(&self->_routeFeatureMap);
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v4 = self->_junctions;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v63 objects:v77 count:16];
      if (v5)
      {
        v6 = 0;
        v7 = *v64;
        for (i = *v64; ; i = *v64)
        {
          if (i != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v63 + 1) + 8 * v6);
          if ([v9 isOnRoute])
          {
            outgoingRoad = [v9 outgoingRoad];
            v11 = outgoingRoad == 0;

            if (!v11)
            {
              outgoingRoad2 = [v9 outgoingRoad];
              cstrName = [outgoingRoad2 cstrName];

              outgoingRoad3 = [v9 outgoingRoad];
              shieldGroup = [outgoingRoad3 shieldGroup];
              v16 = shieldGroup;
              uTF8String = [shieldGroup UTF8String];

              if (cstrName | uTF8String)
              {
                v71 = 0;
                v72 = 0;
                v73 = 0;
                v74 = 0;
                v75 = 0;
                outgoingRoad4 = [v9 outgoingRoad];
                [outgoingRoad4 appendSimplifiedWorldRoadPoints:&v71 pointElevations:0];

                if ((v72 - v71) >= 0x11)
                {
                  objc_storeStrong(&v74, v9);
                  outgoingRoad5 = [v9 outgoingRoad];
                  v20 = [(VKLabelNavRoadGraph *)self junctionForRoad:outgoingRoad5 nearJunction:0 crossTileEdge:0];
                  v21 = v75;
                  v75 = v20;

                  if (v75)
                  {
                    largestRoadClass = [v74 largestRoadClass];
                    largestRoadClass2 = [v75 largestRoadClass];
                    v24 = &v74;
                    if (largestRoadClass <= largestRoadClass2)
                    {
                      v24 = &v75;
                    }

                    largestRoadClass3 = [*v24 largestRoadClass];
                    LODWORD(v25) = [v74 routeOffset] >> 32;
                    if (*&v25 >= 0.0 || COERCE_FLOAT([v75 routeOffset] >> 32) >= 0.0)
                    {
                      if (cstrName && *cstrName)
                      {
                        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v69, cstrName);
                        v26 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(&self->_routeFeatureMap.__table_.__bucket_list_.__ptr_, v69);
                        v27 = v26;
                        if (v70 < 0)
                        {
                          v28 = v69[0];
                          v29 = mdm::zone_mallocator::instance(v26);
                          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v29, v28);
                        }

                        if (!v27)
                        {
                          operator new();
                        }

                        std::vector<NavRoadSegment,geo::allocator_adapter<NavRoadSegment,mdm::zone_mallocator>>::push_back[abi:nn200100]((*(v27 + 6) + 64), &v71);
                      }

                      if (uTF8String && *uTF8String)
                      {
                        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v69, uTF8String);
                        v30 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(&self->_routeFeatureMap.__table_.__bucket_list_.__ptr_, v69);
                        v31 = v30;
                        if (v70 < 0)
                        {
                          v32 = v69[0];
                          v33 = mdm::zone_mallocator::instance(v30);
                          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v33, v32);
                        }

                        if (!v31)
                        {
                          operator new();
                        }

                        std::vector<NavRoadSegment,geo::allocator_adapter<NavRoadSegment,mdm::zone_mallocator>>::push_back[abi:nn200100]((*(v31 + 6) + 64), &v71);
                      }
                    }
                  }
                }

                std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v71);
              }
            }
          }

          if (++v6 >= v5)
          {
            v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v63 objects:v77 count:16];
            if (!v5)
            {
              break;
            }

            v6 = 0;
          }
        }
      }

      self->_routeFeatureMapValid = 1;
    }

    v34 = [(NSMutableArray *)self->_junctions objectAtIndexedSubscript:0];
    [v34 worldUnitsPerMeter];
    v36 = v35;

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_tileDatasByIndex objectEnumerator];
    v38 = [objectEnumerator countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v38)
    {
      v39 = 0;
      v40 = 0;
      v41 = v36 * 50.0 * (v36 * 50.0);
      v42 = *v60;
      while (2)
      {
        v43 = 0;
        v44 = v40 <= 0xB;
        v45 = 11 - v40;
        v40 += v38;
        if (v44)
        {
          v46 = v45;
        }

        else
        {
          v46 = 0;
        }

        do
        {
          if (*v60 != v42)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v47 = *(*(&v59 + 1) + 8 * v43);
          if (([v47 oppositeCarriagewayJunctionsValid] & 1) == 0)
          {
            [v47 findOppositeCarriagewayJunctionsWithRouteFeatures:&self->_routeFeatureMap distanceThreshold:v41];
            if (v39)
            {

              return 0;
            }

            v39 = 1;
          }

          if (v46 == v43)
          {
            goto LABEL_51;
          }

          ++v43;
        }

        while (v38 != v43);
        v38 = [objectEnumerator countByEnumeratingWithState:&v59 objects:v68 count:16];
        if (v38)
        {
          continue;
        }

        break;
      }
    }

LABEL_51:

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    objectEnumerator2 = [(NSMutableDictionary *)self->_tileDatasByIndex objectEnumerator];
    v49 = [objectEnumerator2 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v49)
    {
      v50 = *v56;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v56 != v50)
          {
            objc_enumerationMutation(objectEnumerator2);
          }

          v52 = *(*(&v55 + 1) + 8 * j);
          if ([v52 oppositeCarriagewayJunctionsValid])
          {
            oppositeCarriagewayJunctions = self->_oppositeCarriagewayJunctions;
            oppositeCarriagewayJunctions = [v52 oppositeCarriagewayJunctions];
            [(NSMutableArray *)oppositeCarriagewayJunctions addObjectsFromArray:oppositeCarriagewayJunctions];
          }
        }

        v49 = [objectEnumerator2 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v49);
    }

    [(NSMutableArray *)self->_oppositeCarriagewayJunctions removeObjectsInArray:self->_junctions];
    [(NSMutableArray *)self->_oppositeCarriagewayJunctions sortUsingComparator:&__block_literal_global_108];
  }

  result = 1;
  self->_oppositeCarriagewayJunctionsValid = 1;
  return result;
}

uint64_t __72__VKLabelNavRoadGraph_junctionlist__prepareOppositeCarriagewayJunctions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 200);
  v4 = *(a3 + 200);
  if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return v3 > v4;
  }
}

- (unsigned)computeRoutePositionForPOIAtPixel:(const void *)pixel currentPosition:(unsigned __int8)position context:(NavContext *)context
{
  positionCopy = position;
  if (!self->_screenRouteValid)
  {
    [(VKLabelNavRoadGraph *)self _transformRouteToScreenWithContext:context];
  }

  firstPOIAligningRouteSegment = self->_firstPOIAligningRouteSegment;
  begin = self->_screenRouteSegments.__begin_;
  v11 = 0xCCCCCCCCCCCCCCCDLL * ((self->_screenRouteSegments.__end_ - begin) >> 2);
  v29 = v11 > firstPOIAligningRouteSegment;
  v12 = v11 - firstPOIAligningRouteSegment;
  if (!v29)
  {
    v32 = 0;
LABEL_22:
    v33 = 9;
    goto LABEL_23;
  }

  v13 = *(context->var1 + 44);
  v14 = (v13 * 140.0) * (v13 * 140.0);
  v15 = (v13 * 130.0) * (v13 * 130.0);
  v16 = *pixel;
  v17 = *(pixel + 1);
  v18 = (begin + 20 * firstPOIAligningRouteSegment);
  LOBYTE(v32) = 1;
  v19 = 17;
  while (1)
  {
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[1];
    v23 = v20 - *v18;
    v24 = v21 - v22;
    v25 = v16 - *v18;
    v26 = v17 - v22;
    v27 = (v23 * v23) + (v24 * v24);
    v28 = (v25 * v23) + ((v17 - v22) * (v21 - v22));
    if (v27 > 1.0e-15)
    {
      v29 = v28 >= 0.0 && v28 <= v27;
      if (v29)
      {
        v30 = fminf(fmaxf(v28 / v27, 0.0), 1.0);
        v31 = ((v16 - (*v18 + (v30 * v23))) * (v16 - (*v18 + (v30 * v23)))) + ((v17 - (v22 + (v30 * v24))) * (v17 - (v22 + (v30 * v24))));
        if (v31 < v14)
        {
          goto LABEL_37;
        }

        goto LABEL_21;
      }
    }

    if (v32)
    {
      goto LABEL_21;
    }

    if (*(v18 + 16) != 1)
    {
      break;
    }

    if (v28 > v27)
    {
      v31 = ((v16 - v20) * (v16 - v20)) + ((v17 - v21) * (v17 - v21));
      goto LABEL_20;
    }

LABEL_21:
    v32 = 0;
    v18 += 5;
    if (!--v12)
    {
      goto LABEL_22;
    }
  }

  if (v28 >= 0.0)
  {
    goto LABEL_21;
  }

  v31 = (v25 * v25) + (v26 * v26);
LABEL_20:
  if (v31 >= v14)
  {
    goto LABEL_21;
  }

  v36 = *(v18 - 5);
  v37 = *(v18 - 3);
  if (*(v18 - 4))
  {
    v38 = *(v18 - 5);
  }

  else
  {
    v38 = *(v18 - 3);
  }

  if (*(v18 + 16))
  {
    v39 = v18 + 2;
  }

  else
  {
    v39 = v18;
  }

  if (v38 == *v39)
  {
    v23 = *&v37 - *&v36;
    v24 = *(&v37 + 1) - *(&v36 + 1);
    v25 = v16 - *&v36;
    v26 = v17 - *(&v36 + 1);
    v19 = -3;
LABEL_37:
    v40 = *(v18 + v19);
    goto LABEL_38;
  }

  v40 = *(v18 + 17);
LABEL_38:
  v32 = v31 > v15;
  v41 = -((v25 * v24) - (v26 * v23));
  v42 = -((v26 * v23) - (v25 * v24));
  if (v40)
  {
    v41 = v42;
  }

  v33 = 4 * (v41 > 0.0);
LABEL_23:
  if ((((positionCopy != 9) ^ (v33 != 9)) & v32) != 0)
  {
    v34 = positionCopy;
  }

  else
  {
    v34 = v33;
  }

  if (v33 == positionCopy)
  {
    return positionCopy;
  }

  else
  {
    return v34;
  }
}

- (BOOL)collideRouteWithLabel:(id)label routeCrossProduct:(float *)product context:(NavContext *)context
{
  labelCopy = label;
  if (!self->_screenRouteValid)
  {
    [(VKLabelNavRoadGraph *)self _transformRouteToScreenWithContext:context];
  }

  label = [labelCopy label];
  begin = self->_screenRouteSegments.__begin_;
  end = self->_screenRouteSegments.__end_;
  if (begin == end)
  {
LABEL_7:
    v13 = 0;
  }

  else
  {
    v12 = *label;
    v16 = *(*label + 424);
    while (1)
    {
      v17 = v16;
      if (lineSegmentIntersectsRectangle(&v17, *begin, *(begin + 1), *(begin + 2), *(begin + 3)))
      {
        break;
      }

      begin = (begin + 20);
      if (begin == end)
      {
        goto LABEL_7;
      }
    }

    v14 = vmul_f32(vrev64_s32(vsub_f32(v12[52], *begin)), vsub_f32(*(begin + 8), *begin));
    *product = vsub_f32(v14, vdup_lane_s32(v14, 1)).u32[0];
    v13 = 1;
  }

  return v13;
}

- (void)_transformRouteToScreenWithContext:(NavContext *)context
{
  v89 = *MEMORY[0x1E69E9840];
  if (!self->_screenRouteValid)
  {
    selfCopy = self;
    if (!self->_simplifiedRouteValid)
    {
      [(VKLabelNavRoadGraph *)self _updateSimplifiedRoute];
    }

    selfCopy->_screenRouteValid = 1;
    selfCopy->_screenRouteSegments.__end_ = selfCopy->_screenRouteSegments.__begin_;
    selfCopy->_firstPOIAligningRouteSegment = 0;
    var3 = context->var3;
    v5 = *(var3 + 34);
    v6 = *(var3 + 35);
    v7 = *(var3 + 19);
    v77 = *(var3 + 136);
    v78 = v7;
    v8 = *(var3 + 22);
    v75 = *(var3 + 10);
    v76 = v8;
    v9 = *(var3 + 133);
    v74[0] = 0;
    v74[1] = v9;
    begin = selfCopy->_simplifiedRoutePoints.__begin_;
    if (0xAAAAAAAAAAAAAAABLL * ((selfCopy->_simplifiedRoutePoints.__end_ - begin) >> 4) >= 2)
    {
      v11 = 1;
      v65 = selfCopy;
      do
      {
        v67 = v11;
        if (selfCopy->_currentRoadStartSimplifiedPointIndex == v11 - 1)
        {
          selfCopy->_firstPOIAligningRouteSegment = 0xCCCCCCCCCCCCCCCDLL * ((selfCopy->_screenRouteSegments.__end_ - selfCopy->_screenRouteSegments.__begin_) >> 2);
        }

        md::NavContext::worldPoint(*(context->var3 + 8), (begin + 48 * v11 - 48), *(*(context->var1 + 29) + 64), *(context->var3 + 13));
        v13 = v12;
        v15 = v14;
        v17 = v16;
        md::NavContext::worldPoint(*(context->var3 + 8), (selfCopy->_simplifiedRoutePoints.__begin_ + 48 * v11), *(*(context->var1 + 29) + 64), *(context->var3 + 13));
        v18 = 0;
        *&v85 = v13;
        *(&v85 + 1) = v15;
        v86 = v17;
        *&v83 = v19;
        *(&v83 + 1) = v20;
        v84 = v21;
        do
        {
          *(&v87 + v18) = *(&v85 + v18) - *(&v77 + v18);
          v18 += 8;
        }

        while (v18 != 24);
        v22 = 0;
        v81 = v87;
        v82 = v88;
        v23 = 0.0;
        do
        {
          v23 = v23 + *(&v81 + v22) * *(&v75 + v22);
          v22 += 8;
        }

        while (v22 != 24);
        for (i = 0; i != 24; i += 8)
        {
          *(&v87 + i) = *(&v83 + i) - *(&v77 + i);
        }

        v25 = 0;
        v79 = v87;
        v80 = v88;
        v26 = 0.0;
        do
        {
          v26 = v26 + *(&v79 + v25) * *(&v75 + v25);
          v25 += 8;
        }

        while (v25 != 24);
        v27 = v23;
        v28 = v26;
        if (v23 > v26)
        {
          v29 = v86;
          v30 = v85;
          v85 = v83;
          v86 = v84;
          v83 = v30;
          v84 = v29;
          v27 = v26;
          v28 = v23;
        }

        if (v28 >= v5 && v27 <= v6)
        {
          v32 = v28 - v27;
          if (v27 >= v5 || v32 <= 2.22044605e-16)
          {
            v70 = v85;
            v71 = v86;
          }

          else
          {
            v33 = 0;
            v87 = v85;
            v88 = v86;
            do
            {
              *(&v87 + v33) = *(&v87 + v33) + (v5 - v27) * (*(&v83 + v33) - *(&v87 + v33)) * (1.0 / v32);
              v33 += 8;
            }

            while (v33 != 24);
            v70 = v87;
            v71 = v88;
          }

          if (v28 <= v6 || v32 <= 2.22044605e-16)
          {
            v68 = v83;
            v69 = v84;
          }

          else
          {
            v35 = 0;
            v36 = v6 - v27;
            v87 = v85;
            v88 = v86;
            v37 = 1.0 / v32;
            do
            {
              *(&v87 + v35) = *(&v87 + v35) + v36 * (*(&v83 + v35) - *(&v87 + v35)) * v37;
              v35 += 8;
            }

            while (v35 != 24);
            v68 = v87;
            v69 = v88;
          }

          if (v23 > v26)
          {
            v38 = v71;
            v39 = v70;
            v70 = v68;
            v71 = v69;
            v68 = v39;
            v69 = v38;
          }

          v40 = context->var3;
          md::LabelLayoutContext::projectPointToPixel(v40, &v70, &v72);
          md::LabelLayoutContext::projectPointToPixel(v40, &v68, &v72 + 1);
          v41 = v72;
          v42 = lineSegmentIntersectsRectangle(v74, *&v72, *(&v72 + 1), *(&v72 + 2), *(&v72 + 3));
          selfCopy = v65;
          if (v42)
          {
            LOWORD(v73) = (*(&v41 + 3) - *(&v41 + 1)) < 0.0;
            if ((*(&v41 + 3) - *(&v41 + 1)) < 0.0)
            {
              *&v72 = *(&v41 + 1);
              *(&v72 + 1) = v41;
              v43 = vabds_f32(*(&v41 + 2), *&v41);
              if (v43 > 1.0e-15)
              {
                BYTE1(v73) = ((*(&v41 + 3) - *(&v41 + 1)) / v43) > -0.08749;
              }
            }

            end = v65->_screenRouteSegments.__end_;
            cap = v65->_screenRouteSegments.__cap_;
            if (end >= cap)
            {
              v47 = v65->_screenRouteSegments.__begin_;
              v48 = 0xCCCCCCCCCCCCCCCDLL * ((end - v47) >> 2);
              v49 = v48 + 1;
              if (v48 + 1 > 0xCCCCCCCCCCCCCCCLL)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v50 = 0xCCCCCCCCCCCCCCCDLL * ((cap - v47) >> 2);
              if (2 * v50 > v49)
              {
                v49 = 2 * v50;
              }

              if (v50 >= 0x666666666666666)
              {
                v51 = 0xCCCCCCCCCCCCCCCLL;
              }

              else
              {
                v51 = v49;
              }

              v64 = v51;
              if (v51)
              {
                v63 = v48;
                v52 = mdm::zone_mallocator::instance(v42);
                v53 = pthread_rwlock_rdlock((v52 + 32));
                if (v53)
                {
                  geo::read_write_lock::logFailure(v53, "read lock", v54);
                }

                v51 = malloc_type_zone_malloc(*v52, 20 * v51, 0x1000040EF768F96uLL);
                atomic_fetch_add((v52 + 24), 1u);
                geo::read_write_lock::unlock((v52 + 32));
                v48 = v63;
              }

              v55 = v51 + 20 * v48;
              *v55 = v72;
              *(v55 + 16) = v73;
              v57 = v65->_screenRouteSegments.__begin_;
              v56 = v65->_screenRouteSegments.__end_;
              v58 = (v55 + v57 - v56);
              if (v57 != v56)
              {
                v59 = (v55 + v57 - v56);
                do
                {
                  v60 = *v57;
                  *(v59 + 4) = *(v57 + 4);
                  *v59 = v60;
                  v59 += 20;
                  v57 += 20;
                }

                while (v57 != v56);
                v57 = v65->_screenRouteSegments.__begin_;
              }

              v46 = (v55 + 20);
              v65->_screenRouteSegments.__begin_ = v58;
              v65->_screenRouteSegments.__end_ = (v55 + 20);
              v65->_screenRouteSegments.__cap_ = (v51 + 20 * v64);
              if (v57)
              {
                v61 = mdm::zone_mallocator::instance(v42);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<RouteSegment>(v61, v57);
              }

              v11 = v67;
            }

            else
            {
              *end = v72;
              *(end + 4) = v73;
              v46 = (end + 20);
            }

            v65->_screenRouteSegments.__end_ = v46;
            v62 = v46 - v65->_screenRouteSegments.__begin_;
            selfCopy = v65;
            if (0xCCCCCCCCCCCCCCCDLL * (v62 >> 2) > 0x13)
            {
              break;
            }
          }
        }

        ++v11;
        begin = selfCopy->_simplifiedRoutePoints.__begin_;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((selfCopy->_simplifiedRoutePoints.__end_ - begin) >> 4) > v11);
    }
  }
}

- (void)_updateSimplifiedRoute
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_simplifiedRouteValid)
  {
    self->_simplifiedRouteValid = 1;
    self->_simplifiedRoutePoints.__end_ = self->_simplifiedRoutePoints.__begin_;
    self->_currentRoadStartSimplifiedPointIndex = 0;
    if ([(NSMutableArray *)self->_junctions count])
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      memset(v33, 0, 24);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v3 = self->_junctions;
      v4 = 0;
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v5)
      {
        v6 = *v29;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v29 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v28 + 1) + 8 * i);
            if ([v8 isOnRoute])
            {
              outgoingRoad = [v8 outgoingRoad];
              v10 = outgoingRoad == 0;

              if (!v10)
              {
                routeOffset = [v8 routeOffset];
                index = self->_routeUserOffset.index;
                if (index > routeOffset || index == routeOffset && self->_routeUserOffset.offset >= *(&routeOffset + 1))
                {
                  v4 = (v35 - v34) >> 4;
                }

                outgoingRoad2 = [v8 outgoingRoad];
                [outgoingRoad2 appendSimplifiedWorldRoadPoints:&v34 pointElevations:v33];
              }
            }
          }

          v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v5);
      }

      v15 = (v35 - v34) >> 1;
      if (v15 > 0x2000)
      {
        v16 = malloc_type_malloc((v35 - v34) >> 1, 0x100004000313F17uLL);
        if (!v16)
        {
LABEL_27:
          std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v33);
          std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v34);
          return;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v14);
        v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v16, v15);
      }

      v17 = [(NSMutableArray *)self->_junctions objectAtIndexedSubscript:0];
      [v17 worldUnitsPerMeter];
      v19 = v18;

      v27 = 0;
      geo::DouglasPeuckerSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned long>(v34, (v35 - v34) >> 4, v16, &v27, v19 * 8.0);
      v20 = v27;
      if (v27)
      {
        std::vector<md::LabelPoint,geo::allocator_adapter<md::LabelPoint,mdm::zone_mallocator>>::resize(&self->_simplifiedRoutePoints, v27);
        v21 = 0;
        v22 = v34;
        v23 = v33[0];
        v24 = self->_simplifiedRoutePoints.__begin_ + 46;
        do
        {
          v25 = *&v16[8 * v21];
          if (v25 <= v4)
          {
            self->_currentRoadStartSimplifiedPointIndex = v21;
          }

          *(v24 - 22) = *(v22 + 16 * v25);
          *(v24 - 1) = 257;
          *(v24 - 6) = *(v23 + 4 * v25);
          ++v21;
          v24 += 48;
        }

        while (v20 != v21);
      }

      if (v15 > 0x2000)
      {
        free(v16);
      }

      goto LABEL_27;
    }
  }
}

- (BOOL)isPriorRouteCollinearWithRoad:(id)road distance:(float)distance
{
  roadCopy = road;
  [roadCopy routeCrossProduct];
  if (fabsf(v8) > 0.2 || (junctions = self->_junctions, [roadCopy navJunctionA], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSMutableArray indexOfObject:](junctions, "indexOfObject:", v10), v10, v11 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = 0;
  }

  else
  {
    [roadCopy direction2D];
    if (v11 - 1 < 0)
    {
LABEL_11:
      v28 = 0;
    }

    else
    {
      v15 = v13;
      v16 = v14;
      distanceCopy = distance;
      v18 = 0.0;
      while (1)
      {
        v19 = [(NSMutableArray *)self->_junctions objectAtIndex:--v11];
        if ([v19 isOnRoute])
        {
          outgoingRoad = [v19 outgoingRoad];

          if (outgoingRoad)
          {
            outgoingRoad2 = [v19 outgoingRoad];
            [outgoingRoad2 direction2D];
            v24 = -((v22 * v15) - (v23 * v16));

            v25 = fabsf(v24);
            v4 = v25 <= 0.2;
            if (v25 > 0.2)
            {
              break;
            }

            outgoingRoad3 = [v19 outgoingRoad];
            [outgoingRoad3 length];
            v18 = v27 + v18;

            if (v18 >= distanceCopy)
            {
              break;
            }
          }
        }

        if (v11 <= 0)
        {
          goto LABEL_11;
        }
      }

      v28 = 1;
    }

    v12 = v28 & v4;
  }

  return v12;
}

- (void)_findOffRouteJunctions
{
  [(NSMutableArray *)self->_offRouteJunctions removeAllObjects];
  v3 = vmovn_s64(vcvtq_n_s64_f64(self->_offRouteJunctionSelectRect._maximum, 0xFuLL));
  v4 = vmovn_s64(vcvtq_n_s64_f64(self->_offRouteJunctionSelectRect._minimum, 0xFuLL));
  v5 = vadd_s32(vsub_s32(v3, v4), 0x100000001);
  v6 = vmul_lane_s32(v5, v5, 1).u32[0];
  if (v6 < 0)
  {
    v6 = -v6;
  }

  if (v6 <= 0x19)
  {
    if (v4.i32[0] <= v3.i32[0])
    {
      v18 = v4.i32[1];
      v7 = 0x7FFF - v4.i32[1];
      v17 = 0x7FFF - v3.i32[1];
      if (0x7FFF - v3.i32[1] > 0x7FFF - v4.i32[1])
      {
        v7 = 0x7FFF - v3.i32[1];
      }

      v8 = v4.i32[0];
      v16 = v3.i32[0] + 1;
      v9 = v3.i32[1];
      v10 = v3.i32[1] - 32766 + v7;
      do
      {
        v11 = v10;
        v12 = v17;
        if (v18 <= v9)
        {
          do
          {
            tileDatasByIndex = self->_tileDatasByIndex;
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", v8, v12];
            v14 = [(NSMutableDictionary *)tileDatasByIndex objectForKey:?];

            if (v14)
            {
              [v14 appendNavJunctionsInWorldRect:&self->_offRouteJunctionSelectRect junctions:self->_offRouteJunctions];
            }

            ++v12;
            --v11;
          }

          while (v11);
        }

        ++v8;
      }

      while (v16 != v8);
    }

    offRouteJunctions = self->_offRouteJunctions;
    v20 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_106];
    [(NSMutableArray *)offRouteJunctions filterUsingPredicate:?];
  }
}

uint64_t __59__VKLabelNavRoadGraph_junctionlist___findOffRouteJunctions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isOffRouteGraph])
  {
    if ([v2 isIntersection])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 isRoadTerminus];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)offRouteGraphJunctionsWithNavContext:(NavContext *)context maxJunctions:(unint64_t)junctions isOnRoute:(BOOL)route
{
  routeCopy = route;
  v100 = *MEMORY[0x1E69E9840];
  var3 = context->var3;
  v10 = exp(*(var3 + 30) * 6.28318531 + -3.14159265);
  v11 = atan(v10);
  v12 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v11 * 114.591559 + -90.0);
  contextCopy = context;
  var4 = context->var4;
  v16 = *var4;
  v17 = *(var4 + 1);
  v94 = *var4;
  v95 = v17;
  if (self->_offRouteJunctionsValid)
  {
    v18 = 0;
    v19 = &v94;
    v20 = 1;
    while (*v19 >= self->_offRouteJunctionSelectRect._minimum._e[v18] && v95.f64[v18] <= self->_offRouteJunctionSelectRect._maximum._e[v18])
    {
      v21 = v20;
      v20 = 0;
      v19 = &v94.f64[1];
      v18 = 1;
      if ((v21 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v24 = &v94;
  do
  {
    v13.f64[0] = v95.f64[v23];
    v14.f64[0] = *v24;
    v23 = 1;
    if (v22)
    {
      break;
    }

    v22 = 1;
    v24 = &v94.f64[1];
  }

  while (v13.f64[0] >= v14.f64[0]);
  v25 = vdupq_lane_s64(vcgtq_f64(v14, v13).i64[0], 0);
  v26 = vdupq_lane_s64(COERCE__INT64(v12 * -250.0), 0);
  self->_offRouteJunctionSelectRect._minimum = vbslq_s8(v25, v16, vaddq_f64(v16, v26));
  self->_offRouteJunctionSelectRect._maximum = vbslq_s8(v25, v17, vsubq_f64(v17, v26));
  [(VKLabelNavRoadGraph *)self _findOffRouteJunctions];
  self->_offRouteJunctionsValid = 1;
  var3 = context->var3;
LABEL_11:
  v27 = *(var3 + 266);
  v28 = *(var3 + 267);
  if (routeCopy)
  {
    v29 = 0.7;
  }

  else
  {
    v29 = 0.5;
  }

  v98 = 0;
  v99 = 0uLL;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = self->_offRouteJunctions;
  v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v89 objects:v97 count:16];
  junctionsCopy = junctions;
  contextCopy2 = context;
  v32 = 0;
  if (v30)
  {
    v33 = v27 * 0.5;
    v34 = v28 * v29;
    v35 = *v90;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v90 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v89 + 1) + 8 * i);
        mercatorCoordinate = [v37 mercatorCoordinate];
        v39 = contextCopy2->var3;
        v96[0] = md::NavContext::worldPoint(*(v39 + 8), mercatorCoordinate, *(v39 + 52));
        v96[1] = v40;
        v96[2] = v41;
        md::LabelLayoutContext::projectPointToPixel(v39, v96, &v93);
        v42 = 0;
        v43 = 0;
        v44 = contextCopy2->var4;
        v45 = v93.f32[0];
        v46 = v44 + 48;
        v47 = v44 + 56;
        while (1)
        {
          v48 = v45;
          if (v45 < *&v46[4 * v43])
          {
            break;
          }

          v49 = *&v47[4 * v43];
          v43 = 1;
          v50 = (v45 < v49) & ~v42;
          v42 = 1;
          v45 = v93.f32[1];
          if ((v50 & 1) == 0)
          {
            if (v48 < v49)
            {
              v51 = v30;
              v52 = v35;
              v53 = v37;

              v32 = v53;
              largestRoadClass = [v53 largestRoadClass];
              v5 = v5 & 0xFFFFFF00 | largestRoadClass;
              v55 = v93.f32[0] - v33;
              if (routeCopy)
              {
                v55 = v55 + v55;
              }

              v56 = ((v93.f32[1] - v34) * (v93.f32[1] - v34)) + (v55 * v55);
              v57 = v99;
              if (v99 >= *(&v99 + 1))
              {
                v59 = v5;
                v60 = (v99 - v98) >> 4;
                if ((v60 + 1) >> 60)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v61 = (*(&v99 + 1) - v98) >> 3;
                if (v61 <= v60 + 1)
                {
                  v61 = v60 + 1;
                }

                if (*(&v99 + 1) - v98 >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v62 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v62 = v61;
                }

                if (v62)
                {
                  v63 = mdm::zone_mallocator::instance(largestRoadClass);
                  v64 = pthread_rwlock_rdlock((v63 + 32));
                  if (v64)
                  {
                    geo::read_write_lock::logFailure(v64, "read lock", v65);
                  }

                  v66 = malloc_type_zone_malloc(*v63, 16 * v62, 0x1080040682ABD5CuLL);
                  atomic_fetch_add((v63 + 24), 1u);
                  geo::read_write_lock::unlock((v63 + 32));
                }

                else
                {
                  v66 = 0;
                }

                v67 = &v66[16 * v60];
                v85 = v32;
                v68 = v32;
                *v67 = v68;
                *(v67 + 2) = v59;
                *(v67 + 3) = v56;
                v70 = v98;
                v69 = v99;
                v71 = v98 + v67 - v99;
                if (v98 != v99)
                {
                  v72 = v98;
                  v73 = (v98 + v67 - v99);
                  do
                  {
                    v74 = *v72;
                    *v72 = 0;
                    *v73 = v74;
                    v73[1] = v72[1];
                    v72 += 2;
                    v73 += 2;
                  }

                  while (v72 != v69);
                  do
                  {

                    v70 += 2;
                  }

                  while (v70 != v69);
                  v70 = v98;
                }

                v58 = v67 + 16;
                *&v75 = v67 + 16;
                *(&v75 + 1) = &v66[16 * v62];
                v98 = v71;
                v99 = v75;
                if (v70)
                {
                  v76 = mdm::zone_mallocator::instance(v68);
                  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<OffRouteJunctionInfo>(v76, v70);
                }

                v35 = v52;
                v32 = v85;
                v5 = v59;
                v30 = v51;
              }

              else
              {
                *v57 = v53;
                *(v57 + 8) = v5;
                *(v57 + 12) = v56;
                v58 = (v57 + 16);
              }

              *&v99 = v58;
              contextCopy2 = contextCopy;
            }

            break;
          }
        }
      }

      v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v89 objects:v97 count:16];
    }

    while (v30);
  }

  v77 = 126 - 2 * __clz((v99 - v98) >> 4);
  if (v99 == v98)
  {
    v78 = 0;
  }

  else
  {
    v78 = v77;
  }

  std::__introsort<std::_ClassicAlgPolicy,[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,false>(v98, v99, v78, 1);
  v79 = [MEMORY[0x1E695DF70] arrayWithCapacity:junctionsCopy];
  v80 = v99;
  if (v98 != v99)
  {
    v81 = v98 + 2;
    do
    {
      [v79 addObject:*(v81 - 2)];
      if ([v79 count] >= junctionsCopy)
      {
        break;
      }

      v82 = v81 == v80;
      v81 += 2;
    }

    while (!v82);
  }

  v96[0] = &v98;
  std::vector<OffRouteJunctionInfo,geo::allocator_adapter<OffRouteJunctionInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v96);

  return v79;
}

- (void)_updateIntersectionsForDepth:(unint64_t)depth
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = depth - 1;
  if (depth <= 1)
  {
    if ([(NSMutableArray *)self->_intersections count])
    {
      if (!depth)
      {
        return;
      }
    }

    else
    {
      [(NSMutableArray *)self->_intersections addObject:self->_junctions];
      if (!depth)
      {
        return;
      }
    }
  }

  if ([(NSMutableArray *)self->_intersections count]>= depth)
  {
    v17 = [(NSMutableArray *)self->_intersections objectAtIndexedSubscript:v5];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [(NSMutableArray *)self->_intersections count];
    intersections = self->_intersections;
    if (v7 <= depth)
    {
      [(NSMutableArray *)intersections addObject:v6, v17];
    }

    else
    {
      [(NSMutableArray *)intersections setObject:v6 atIndexedSubscript:depth, v17];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v18;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v20 = *v27;
      do
      {
        v21 = v9;
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          roads = [v11 roads];
          v13 = [roads countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v13)
          {
            v14 = *v23;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v23 != v14)
                {
                  objc_enumerationMutation(roads);
                }

                v16 = [(VKLabelNavRoadGraph *)self _nextIntersectionForRoad:*(*(&v22 + 1) + 8 * j)];
                if (([v6 containsObject:v16] & 1) == 0 && objc_msgSend(v16, "depthFromRoute") >= depth)
                {
                  [v16 setDepthFromRoute:depth];
                  [v16 setRouteOffset:{objc_msgSend(v11, "routeOffset")}];
                  [v6 addObject:v16];
                }
              }

              v13 = [roads countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v13);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    [v6 sortUsingComparator:&__block_literal_global_35850];
  }
}

uint64_t __66__VKLabelNavRoadGraph_junctionlist___updateIntersectionsForDepth___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = v6[25];
  v9 = v7[25];
  if (v8 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 > v9;
  }

  if (!v10)
  {
    v11 = [v6 incomingRoad];
    if (v11 && ([v7 incomingRoad], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
    {
      v10 = -1;
    }

    else
    {
      v13 = [v6 incomingRoad];
      if (v13)
      {

        v10 = 0;
      }

      else
      {
        v14 = [v7 incomingRoad];
        v10 = v14 != 0;
      }
    }
  }

  return v10;
}

- (id)junctionListForDepth:(unint64_t)depth
{
  if ([(NSMutableArray *)self->_intersections count]<= depth && ([(VKLabelNavRoadGraph *)self _updateIntersectionsForDepth:depth], [(NSMutableArray *)self->_intersections count]<= depth))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_intersections objectAtIndexedSubscript:depth];
  }

  return v5;
}

- (unint64_t)countReadyJunctionLists
{
  if (![(NSMutableArray *)self->_intersections count])
  {
    return 1;
  }

  intersections = self->_intersections;

  return [(NSMutableArray *)intersections count];
}

- (void)evaluateDualCarriagewayForJunction:(id)junction outputJunctionList:(id)list
{
  v67 = *MEMORY[0x1E69E9840];
  junctionCopy = junction;
  listCopy = list;
  v41 = junctionCopy;
  if ([junctionCopy isRouteOverpass])
  {
    overpassJunction = [junctionCopy overpassJunction];
    v6 = junctionCopy;
  }

  else
  {
    v6 = junctionCopy;
    overpassJunction = junctionCopy;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [v6 roads];
  v44 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v44)
  {
    v43 = *v62;
    do
    {
      v45 = 0;
      do
      {
        if (*v62 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v61 + 1) + 8 * v45);
        isOnRoute = [v7 isOnRoute];
        [v7 length];
        v10 = v9;
        if (v9 > 70.0)
        {
          goto LABEL_64;
        }

        v11 = v41;
        v12 = 0;
        v13 = 2;
        v49 = v7;
        v50 = v11;
        v14 = v49;
        while (1)
        {
          v48 = v14;
          v55 = [VKLabelNavRoadGraph junctionForRoad:"junctionForRoad:nearJunction:crossTileEdge:" nearJunction:? crossTileEdge:?];

          if (!v55)
          {

            goto LABEL_63;
          }

          if ([VKLabelNavRoadGraph _checkIfDualCarriageWayConnectorRoad:"_checkIfDualCarriageWayConnectorRoad:fromJunction:toJunction:checkShields:" fromJunction:v49 toJunction:overpassJunction checkShields:?])
          {
            break;
          }

          if ([v11 isRouteOverpass] && objc_msgSend(v55, "isOverpass"))
          {
            v15 = [(VKLabelNavRoadGraph *)self overpassJunctionForJunction:v55];
            if (v15 && [(VKLabelNavRoadGraph *)self _checkIfDualCarriageWayConnectorRoad:v49 fromJunction:overpassJunction toJunction:v15 checkShields:1])
            {
              isOnRoute2 = [v15 isOnRoute];

              goto LABEL_33;
            }
          }

          if (!v13)
          {
            goto LABEL_62;
          }

          roads = [v55 roads];
          if ([v55 isTileEdgeJunction] && objc_msgSend(roads, "count") == 1 && (objc_msgSend(roads, "objectAtIndexedSubscript:", 0), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "name"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "name"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToString:", v19), v19, v18, v17, v20))
          {
            v21 = [roads objectAtIndexedSubscript:0];
          }

          else
          {
            if ([roads count] != 2)
            {
              v21 = 0;
LABEL_60:

LABEL_61:
              v48 = v21;
              goto LABEL_62;
            }

            v22 = [roads objectAtIndexedSubscript:0];
            if ([v22 matchesRoad:v48])
            {
              [roads objectAtIndexedSubscript:1];
            }

            else
            {
              [roads objectAtIndexedSubscript:0];
            }
            v21 = ;
          }

          if (!v21)
          {
            goto LABEL_60;
          }

          [v21 length];
          v10 = v23 + v10;
          if (v10 > 70.0)
          {
            goto LABEL_60;
          }

          v12 = v55;

          --v13;
          v14 = v21;
          v50 = v12;
        }

        isOnRoute2 = 0;
LABEL_33:
        [v11 setIsOnDualCarriageway:1];
        if (isOnRoute)
        {
          goto LABEL_62;
        }

        [v49 setAreLabelsDisabled:1];
        if ([v55 isOnRoute] & 1) != 0 || (isOnRoute2)
        {
          goto LABEL_62;
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        roads2 = [v55 roads];
        v26 = [roads2 countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (!v26)
        {
          goto LABEL_57;
        }

        v46 = roads2;
        v47 = *v58;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v58 != v47)
            {
              objc_enumerationMutation(v46);
            }

            v28 = *(*(&v57 + 1) + 8 * i);
            incomingRoad = [overpassJunction incomingRoad];
            if (incomingRoad)
            {
              name = [v28 name];
              incomingRoad2 = [overpassJunction incomingRoad];
              name2 = [incomingRoad2 name];
              if ([name isEqualToString:?])
              {
                LOBYTE(v30) = 1;
                goto LABEL_50;
              }
            }

            outgoingRoad = [overpassJunction outgoingRoad];
            if (outgoingRoad)
            {
              name3 = [v28 name];
              outgoingRoad2 = [overpassJunction outgoingRoad];
              name4 = [outgoingRoad2 name];
              v30 = [name3 isEqualToString:name4];

              if (!incomingRoad)
              {
                if (v30)
                {
                  goto LABEL_54;
                }

                goto LABEL_52;
              }

              goto LABEL_50;
            }

            if (incomingRoad)
            {
              LOBYTE(v30) = 0;
LABEL_50:

              if (v30)
              {
                goto LABEL_54;
              }
            }

LABEL_52:
            v35 = [(VKLabelNavRoadGraph *)self junctionForRoad:v28 nearJunction:0 crossTileEdge:0];
            v36 = v50 == v35;

            if (!v36)
            {
              [v49 routeCrossProduct];
              [v28 setRouteCrossProduct:?];
              [v28 setRouteOffset:{objc_msgSend(v49, "routeOffset")}];
              continue;
            }

LABEL_54:
            [v28 setAreLabelsDisabled:1];
          }

          roads2 = v46;
          v26 = [v46 countByEnumeratingWithState:&v57 objects:v65 count:16];
        }

        while (v26);
LABEL_57:

        [v55 setRouteOffset:{objc_msgSend(v49, "routeOffset")}];
        [v55 setIsOnDualCarriageway:1];
        [listCopy addObject:v55];
        incomingRoad3 = [overpassJunction incomingRoad];
        v38 = incomingRoad3 == 0;

        if (!v38)
        {
          roads = [overpassJunction incomingRoad];
          [roads direction2D];
          [v55 setSharedRouteDirection:?];
          v21 = v48;
          goto LABEL_61;
        }

LABEL_62:

LABEL_63:
LABEL_64:
        ++v45;
      }

      while (v45 != v44);
      v39 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      v44 = v39;
    }

    while (v39);
  }
}

- (BOOL)_checkIfDualCarriageWayConnectorRoad:(id)road fromJunction:(id)junction toJunction:(id)toJunction checkShields:(BOOL)shields
{
  shieldsCopy = shields;
  v59 = *MEMORY[0x1E69E9840];
  roadCopy = road;
  junctionCopy = junction;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [toJunction roads];
  v8 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v8)
  {
    v37 = 0;
    v38 = 0;
    v43 = *v53;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        name = [v10 name];
        if (name)
        {
          name2 = [v10 name];
          name3 = [roadCopy name];
          v14 = [name2 isEqualToString:name3];

          if ((v14 & 1) == 0)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            roads = [junctionCopy roads];
            v16 = [roads countByEnumeratingWithState:&v48 objects:v57 count:16];
            if (v16)
            {
              v17 = *v49;
LABEL_10:
              v18 = 0;
              while (1)
              {
                if (*v49 != v17)
                {
                  objc_enumerationMutation(roads);
                }

                v19 = *(*(&v48 + 1) + 8 * v18);
                name4 = [v10 name];
                name5 = [v19 name];
                v22 = [name4 isEqualToString:name5];

                if (v22)
                {
                  break;
                }

                if (v16 == ++v18)
                {
                  v16 = [roads countByEnumeratingWithState:&v48 objects:v57 count:16];
                  if (v16)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_16;
                }
              }

              v23 = v38;

              v38 = 1;
              if (v23)
              {
                goto LABEL_35;
              }
            }

            else
            {
LABEL_16:
            }
          }
        }

        if (shieldsCopy)
        {
          if ([v10 hasShield])
          {
            shieldGroup = [v10 shieldGroup];
            shieldGroup2 = [roadCopy shieldGroup];
            v26 = [shieldGroup isEqualToString:shieldGroup2];

            if ((v26 & 1) == 0)
            {
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              roads2 = [junctionCopy roads];
              v28 = [roads2 countByEnumeratingWithState:&v44 objects:v56 count:16];
              if (v28)
              {
                v29 = *v45;
LABEL_23:
                v30 = 0;
                while (1)
                {
                  if (*v45 != v29)
                  {
                    objc_enumerationMutation(roads2);
                  }

                  v31 = *(*(&v44 + 1) + 8 * v30);
                  shieldGroup3 = [v10 shieldGroup];
                  shieldGroup4 = [v31 shieldGroup];
                  v34 = [shieldGroup3 isEqualToString:shieldGroup4];

                  if (v34)
                  {
                    break;
                  }

                  if (v28 == ++v30)
                  {
                    v28 = [roads2 countByEnumeratingWithState:&v44 objects:v56 count:16];
                    if (v28)
                    {
                      goto LABEL_23;
                    }

                    goto LABEL_29;
                  }
                }

                v35 = v37 == 1;

                v37 = 1;
                if (!v35)
                {
                  continue;
                }

                LOBYTE(v38) = 1;
                goto LABEL_35;
              }

LABEL_29:
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v38) = 0;
LABEL_35:

  return v38;
}

- (id)overpassJunctionForJunction:(id)junction
{
  junctionCopy = junction;
  overpassJunction = [junctionCopy overpassJunction];

  if (overpassJunction)
  {
    overpassJunction2 = [junctionCopy overpassJunction];
  }

  else if ([junctionCopy geoJunction] && objc_msgSend(junctionCopy, "isOverpass"))
  {
    v7 = *(*[junctionCopy tile] + 24);
    v9 = *v7;
    v8 = v7[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    tileDatasByIndex = self->_tileDatasByIndex;
    tile = [junctionCopy tile];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", *(*tile + 296), *(*tile + 292)];
    v13 = [(NSMutableDictionary *)tileDatasByIndex objectForKey:v12];

    v14 = v9[87];
    v15 = v9[86];
    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16 || ((v17 = v9[88], v18 = [junctionCopy geoJunction], *(v15 + ((v18 - v14) >> 4))) ? (v19 = v17 == 0) : (v19 = 1), v19))
    {
LABEL_19:
      overpassJunction2 = 0;
    }

    else
    {
      v20 = 0;
      while ((v18 - v14) >> 5 == v20 || *(v15 + ((v18 - v14) >> 4)) != *(v15 + 2 * v20))
      {
        if (v17 == ++v20)
        {
          goto LABEL_19;
        }
      }

      v22 = v14 + 32 * v20;
      overpassJunction2 = [v13 junctionForGeoJunction:v22];
      if (!overpassJunction2)
      {
        overpassJunction2 = -[VKLabelNavJunction initWithGEOJunction:routeOffset:tile:]([VKLabelNavJunction alloc], "initWithGEOJunction:routeOffset:tile:", v22, 0xBF80000000000000, [junctionCopy tile]);
        [v13 addJunction:overpassJunction2];
      }

      [(VKLabelNavJunction *)overpassJunction2 setOverpassJunction:junctionCopy];
      [junctionCopy setOverpassJunction:overpassJunction2];
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  else
  {
    overpassJunction2 = 0;
  }

  return overpassJunction2;
}

- (void)addRouteRoadEdge:(const VKLabelNavRouteRoadEdge *)edge atA:(BOOL)a isRouteRefineJunction:(BOOL)junction tile:(const void *)tile junctionList:(id)list
{
  junctionCopy = junction;
  aCopy = a;
  listCopy = list;
  v12 = 8;
  if (aCopy)
  {
    v12 = 0;
  }

  v13 = *(&edge->var0 + v12);
  v14 = [(VKLabelNavRoadGraph *)self _junctionForRoadEdge:&edge->var2 atA:aCopy routeOffset:v13 tile:tile];
  v15 = v14;
  if (v14)
  {
    [v14 setRouteOffset:v13];
    [v15 setIsRouteRefineJunction:junctionCopy];
    if (([listCopy containsObject:v15] & 1) == 0)
    {
      [listCopy addObject:v15];
    }

    [v15 findRoads];
    [v15 addRouteEdge:edge atA:aCopy];
  }
}

@end