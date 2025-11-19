@interface VKRouteContext
- ($F24F406B2B787EFB06265DBA3D28CBD5)puckLocation;
- (VKRouteContext)initWithAnchorPoint:(id)a3 useType:(unsigned __int8)a4;
- (VKRouteContext)initWithComposedRoute:(id)a3 useType:(unsigned __int8)a4;
- (VKRouteContext)initWithRouteInfo:(id)a3 useType:(unsigned __int8)a4;
- (id).cxx_construct;
- (id)_hashTableForObserverType:(unsigned __int8)a3;
- (unint64_t)totalRouteCount;
- (void)_setHasContextChangedForObserverType:(unsigned __int8)a3 withValue:(BOOL)a4;
- (void)addObserver:(id)a3 withType:(unsigned __int8)a4;
- (void)forEachRouteInfo:(id)a3;
- (void)forEachSectionWithShareCount:(unsigned int)a3 dothis:(id)a4;
- (void)removeObserver:(id)a3 withType:(unsigned __int8)a4;
- (void)setAlternateRoutes:(id)a3;
- (void)setCurrentStepIndex:(int64_t)a3;
- (void)setCurrentWaypoint:(id)a3 withProximity:(unsigned __int8)a4;
- (void)setInspectedSegmentIndex:(int64_t)a3;
- (void)setInspectedStepIndex:(int64_t)a3;
- (void)setPuckRadius:(float)a3;
- (void)setPuckSnappedStopID:(unint64_t)a3;
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

- (void)forEachRouteInfo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VKRouteContext *)self routeInfo];
  v4[2](v4, v5, 0);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [(VKRouteContext *)self alternateRoutes];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++), 1);
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)forEachSectionWithShareCount:(unsigned int)a3 dothis:(id)a4
{
  v22 = a4;
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
    if (v9 <= a3)
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

  if (v9 < a3)
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
      v13 = v12 >= a3;
      v14 = v12 < a3;
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
    v17 = v16 > a3;
    v18 = v16 <= a3;
    if (v17)
    {
      p_end_node = i;
    }
  }

  if (v11 != p_end_node)
  {
    do
    {
      (v22)[2](v22, v11[5].__left_);
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

- (void)setAlternateRoutes:(id)a3
{
  v5 = a3;
  if (self->_alternateRoutes != v5)
  {
    v8 = v5;
    v6 = [MEMORY[0x1E695DFD8] setWithArray:?];
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    if (([v6 isEqualToSet:v7] & 1) == 0)
    {
      objc_storeStrong(&self->_alternateRoutes, a3);
      if (!self->_hasContextChangedForAlternateRouteLines)
      {
        [(VKRouteContext *)self _setHasContextChangedForObserverType:2 withValue:1];
      }
    }

    v5 = v8;
  }
}

- (void)setCurrentWaypoint:(id)a3 withProximity:(unsigned __int8)a4
{
  v8 = a3;
  v6 = [(VKRouteInfo *)self->_routeInfo waypointForWaypoint:?];
  currentWaypoint = self->_currentWaypoint;
  self->_currentWaypoint = v6;

  self->_currentWaypointProximity = a4;
}

- (void)setPuckSnappedStopID:(unint64_t)a3
{
  if (self->_puckSnappedStopID != a3)
  {
    self->_puckSnappedStopID = a3;
    if (!self->_hasContextChangedForLabels)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:0 withValue:1];
    }
  }
}

- (void)setPuckRadius:(float)a3
{
  if (vabds_f32(self->_puckRadius, a3) >= 0.000001)
  {
    self->_puckRadius = a3;
    if (!self->_hasContextChangedForLabels)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:0 withValue:1];
    }
  }
}

- (void)setCurrentStepIndex:(int64_t)a3
{
  if (self->_currentStepIndex != a3)
  {
    self->_currentStepIndex = a3;
    if (!self->_hasContextChangedForRouteLine)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:1 withValue:1];
    }
  }
}

- (void)setInspectedStepIndex:(int64_t)a3
{
  if (self->_inspectedStepIndex != a3)
  {
    self->_inspectedStepIndex = a3;
    if (!self->_hasContextChangedForLabels)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:0 withValue:1];
    }
  }
}

- (void)setInspectedSegmentIndex:(int64_t)a3
{
  if (self->_inspectedSegmentIndex != a3)
  {
    self->_inspectedSegmentIndex = a3;
    if (!self->_hasContextChangedForLabels)
    {
      [(VKRouteContext *)self _setHasContextChangedForObserverType:0 withValue:1];
    }
  }
}

- (void)removeObserver:(id)a3 withType:(unsigned __int8)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(VKRouteContext *)self _hashTableForObserverType:v4];
  [v6 removeObject:v7];
}

- (void)addObserver:(id)a3 withType:(unsigned __int8)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(VKRouteContext *)self _hashTableForObserverType:v4];
  [v6 addObject:v7];
}

- (void)_setHasContextChangedForObserverType:(unsigned __int8)a3 withValue:(BOOL)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 <= 2u)
  {
    *(&self->_hasContextChangedForLabels + 16 * (a3 & 0xF)) = a4;
  }

  if (a4)
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

- (id)_hashTableForObserverType:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    v4 = 0;
  }

  else
  {
    v4 = (&self->_labelObservers)[2 * (a3 & 0xF)];
  }

  return v4;
}

- (VKRouteContext)initWithAnchorPoint:(id)a3 useType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[VKRouteInfo alloc] initWithAnchorPoint:v6];
  v8 = [(VKRouteContext *)self initWithRouteInfo:v7 useType:v4];

  return v8;
}

- (VKRouteContext)initWithRouteInfo:(id)a3 useType:(unsigned __int8)a4
{
  v7 = a3;
  v18.receiver = self;
  v18.super_class = VKRouteContext;
  v8 = [(VKRouteContext *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_useType = a4;
    objc_storeStrong(&v8->_routeInfo, a3);
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

- (VKRouteContext)initWithComposedRoute:(id)a3 useType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[VKRouteInfo alloc] initWithComposedRoute:v6 etaDescription:0];
  v8 = [(VKRouteContext *)self initWithRouteInfo:v7 useType:v4];

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