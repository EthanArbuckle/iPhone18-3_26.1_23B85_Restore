@interface VKRouteContext
- ($F24F406B2B787EFB06265DBA3D28CBD5)puckLocation;
- (VKRouteContext)initWithAnchorPoint:(id)point useType:(unsigned __int8)type;
- (VKRouteContext)initWithComposedRoute:(id)route useType:(unsigned __int8)type;
- (VKRouteContext)initWithRouteInfo:(id)info useType:(unsigned __int8)type;
- (id).cxx_construct;
- (id)_hashTableForObserverType:(unsigned __int8)type;
- (unint64_t)totalRouteCount;
- (void)_setHasContextChangedForObserverType:(unsigned __int8)type withValue:(BOOL)value;
- (void)addObserver:(id)observer withType:(unsigned __int8)type;
- (void)forEachRouteInfo:(id)info;
- (void)forEachSectionWithShareCount:(unsigned int)count dothis:(id)dothis;
- (void)removeObserver:(id)observer withType:(unsigned __int8)type;
- (void)setAlternateRoutes:(id)routes;
- (void)setCurrentStepIndex:(int64_t)index;
- (void)setCurrentWaypoint:(id)waypoint withProximity:(unsigned __int8)proximity;
- (void)setInspectedSegmentIndex:(int64_t)index;
- (void)setInspectedStepIndex:(int64_t)index;
- (void)setPuckRadius:(float)radius;
- (void)setPuckSnappedStopID:(unint64_t)d;
@end

@implementation VKRouteContext

- (id).cxx_construct
{
  *(self + 5) = 0xBF80000000000000;
  *(self + 27) = 0;
  *(self + 26) = 0;
  *(self + 25) = self + 208;
  return self;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)puckLocation
{
  latitude = self->_puckLocation.latitude;
  longitude = self->_puckLocation.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)forEachRouteInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  routeInfo = [(VKRouteContext *)self routeInfo];
  infoCopy[2](infoCopy, routeInfo, 0);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  alternateRoutes = [(VKRouteContext *)self alternateRoutes];
  v7 = [alternateRoutes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(alternateRoutes);
        }

        infoCopy[2](infoCopy, *(*(&v10 + 1) + 8 * v9++), 1);
      }

      while (v7 != v9);
      v7 = [alternateRoutes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)forEachSectionWithShareCount:(unsigned int)count dothis:(id)dothis
{
  dothisCopy = dothis;
  left = self->_shareSections.__tree_.__end_node_.__left_;
  p_end_node = &self->_shareSections.__tree_.__end_node_;
  v6 = left;
  if (!left)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v9 = v6[4].__left_;
    if (v9 <= count)
    {
      break;
    }

    p_end_node = v6;
LABEL_6:
    v6 = v6->__left_;
    if (!v6)
    {
      goto LABEL_25;
    }
  }

  if (v9 < count)
  {
    ++v6;
    goto LABEL_6;
  }

  v10.__left_ = v6->__left_;
  v11 = v6;
  if (v6->__left_)
  {
    v11 = v6;
    do
    {
      v12 = *(v10.__left_ + 8);
      v13 = v12 >= count;
      v14 = v12 < count;
      if (v13)
      {
        v11 = v10.__left_;
      }

      v10.__left_ = *(v10.__left_ + v14);
    }

    while (v10.__left_);
  }

  for (i = v6[1].__left_; i; i = *(i + v18))
  {
    v16 = *(i + 8);
    v17 = v16 > count;
    v18 = v16 <= count;
    if (v17)
    {
      p_end_node = i;
    }
  }

  if (v11 != p_end_node)
  {
    do
    {
      (dothisCopy)[2](dothisCopy, v11[5].__left_);
      v19 = v11[1].__left_;
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = v19->__left_;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v11[2].__left_;
          v21 = v20->__left_ == v11;
          v11 = v20;
        }

        while (!v21);
      }

      v11 = v20;
    }

    while (v20 != p_end_node);
  }

LABEL_25:
}

- (void)setAlternateRoutes:(id)routes
{
  routesCopy = routes;
  if (self->_alternateRoutes != routesCopy)
  {
    v8 = routesCopy;
    v6 = [MEMORY[0x1E695DFD8] setWithArray:?];
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    if (([v6 isEqualToSet:v7] & 1) == 0)
    {
      objc_storeStrong(&self->_alternateRoutes, routes);
      if (!self->_hasContextChangedForAlternateRouteLines)
      {
        [(VKRouteContext *)self _setHasContextChangedForObserverType:2 withValue:1];
      }
    }

    routesCopy = v8;
  }
}

- (void)setCurrentWaypoint:(id)waypoint withProximity:(unsigned __int8)proximity
{
  waypointCopy = waypoint;
  v6 = [(VKRouteInfo *)self->_routeInfo waypointForWaypoint:?];
  currentWaypoint = self->_currentWaypoint;
  self->_currentWaypoint = v6;

  self->_currentWaypointProximity = proximity;
}

- (void)setPuckSnappedStopID:(unint64_t)d
{
  if (self->_puckSnappedStopID != d)
  {
    self->_puckSnappedStopID = d;
    if (!self->_hasContextChangedForLabels)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:0 withValue:1];
    }
  }
}

- (void)setPuckRadius:(float)radius
{
  if (vabds_f32(self->_puckRadius, radius) >= 0.000001)
  {
    self->_puckRadius = radius;
    if (!self->_hasContextChangedForLabels)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:0 withValue:1];
    }
  }
}

- (void)setCurrentStepIndex:(int64_t)index
{
  if (self->_currentStepIndex != index)
  {
    self->_currentStepIndex = index;
    if (!self->_hasContextChangedForRouteLine)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:1 withValue:1];
    }
  }
}

- (void)setInspectedStepIndex:(int64_t)index
{
  if (self->_inspectedStepIndex != index)
  {
    self->_inspectedStepIndex = index;
    if (!self->_hasContextChangedForLabels)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:0 withValue:1];
    }
  }
}

- (void)setInspectedSegmentIndex:(int64_t)index
{
  if (self->_inspectedSegmentIndex != index)
  {
    self->_inspectedSegmentIndex = index;
    if (!self->_hasContextChangedForLabels)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:0 withValue:1];
    }
  }
}

- (void)removeObserver:(id)observer withType:(unsigned __int8)type
{
  typeCopy = type;
  observerCopy = observer;
  v6 = [(VKRouteContext *)self _hashTableForObserverType:typeCopy];
  [v6 removeObject:observerCopy];
}

- (void)addObserver:(id)observer withType:(unsigned __int8)type
{
  typeCopy = type;
  observerCopy = observer;
  v6 = [(VKRouteContext *)self _hashTableForObserverType:typeCopy];
  [v6 addObject:observerCopy];
}

- (void)_setHasContextChangedForObserverType:(unsigned __int8)type withValue:(BOOL)value
{
  v14 = *MEMORY[0x1E69E9840];
  if (type <= 2u)
  {
    *(&self->_hasContextChangedForLabels + 16 * (type & 0xF)) = value;
  }

  if (value)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [(VKRouteContext *)self _hashTableForObserverType:0];
    v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v9 + 1) + 8 * v8++) routeContextStateDidChange:self];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)_hashTableForObserverType:(unsigned __int8)type
{
  if (type > 2u)
  {
    v4 = 0;
  }

  else
  {
    v4 = (&self->_labelObservers)[2 * (type & 0xF)];
  }

  return v4;
}

- (VKRouteContext)initWithAnchorPoint:(id)point useType:(unsigned __int8)type
{
  typeCopy = type;
  pointCopy = point;
  v7 = [[VKRouteInfo alloc] initWithAnchorPoint:pointCopy];
  v8 = [(VKRouteContext *)self initWithRouteInfo:v7 useType:typeCopy];

  return v8;
}

- (VKRouteContext)initWithRouteInfo:(id)info useType:(unsigned __int8)type
{
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = VKRouteContext;
  v8 = [(VKRouteContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_useType = type;
    objc_storeStrong(&v8->_routeInfo, info);
    v9->_currentSegmentIndex = -1;
    v9->_currentStepIndex = -1;
    v9->_snappingToTransitLines = 0;
    v9->_routeOffset = 0xBF80000000000000;
    v9->_inspectedSegmentIndex = -1;
    v9->_inspectedStepIndex = -1;
    v9->_hasContextChangedForLabels = 1;
    v10 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    labelObservers = v9->_labelObservers;
    v9->_labelObservers = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    routeLineObservers = v9->_routeLineObservers;
    v9->_routeLineObservers = v12;

    v9->_hasContextChangedForAlternateRouteLines = 0;
    v14 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    alternateRouteLineObservers = v9->_alternateRouteLineObservers;
    v9->_alternateRouteLineObservers = v14;

    v16 = v9;
  }

  return v9;
}

- (VKRouteContext)initWithComposedRoute:(id)route useType:(unsigned __int8)type
{
  typeCopy = type;
  routeCopy = route;
  v7 = [[VKRouteInfo alloc] initWithComposedRoute:routeCopy etaDescription:0];
  v8 = [(VKRouteContext *)self initWithRouteInfo:v7 useType:typeCopy];

  return v8;
}

- (unint64_t)totalRouteCount
{
  result = [(NSArray *)self->_alternateRoutes count];
  if (self->_routeInfo)
  {
    ++result;
  }

  return result;
}

@end