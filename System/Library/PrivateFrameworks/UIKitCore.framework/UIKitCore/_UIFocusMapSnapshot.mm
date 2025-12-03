@interface _UIFocusMapSnapshot
- (BOOL)hasOnlyStaticContent;
- (CGRect)snapshotFrameForRegion:(id)region;
- (NSArray)originalRegions;
- (NSArray)regions;
- (UICoordinateSpace)coordinateSpace;
- (UIFocusSystem)focusSystem;
- (_UIFocusMapSnapshot)init;
- (_UIFocusRegionContainer)regionsContainer;
- (_UIFocusRegionContainer)rootContainer;
- (id)_cachedNextFocusedItemForRegion:(id)region withFocusMovementRequest:(id)request inMap:(id)map;
- (id)_initWithSnapshotter:(id)snapshotter mapArea:(id)area searchArea:(id)searchArea;
- (id)occludingRegionsForRegion:(id)region;
- (id)originalRegionForRegion:(id)region;
- (id)regionsForOriginalRegion:(id)region;
- (void)_capture;
- (void)_trackOccludingRegion:(id)region forRegion:(id)forRegion;
- (void)_trackSubregion:(id)subregion forRegion:(id)region;
- (void)addRegion:(id)region;
- (void)addRegions:(id)regions;
- (void)addRegionsInContainer:(id)container;
- (void)addRegionsInContainers:(id)containers;
- (void)consumeRegionInformationForRegions:(id)regions fromSnapshot:(id)snapshot;
- (void)dealloc;
- (void)markContainerAsProvidingDynamicContent;
@end

@implementation _UIFocusMapSnapshot

- (_UIFocusRegionContainer)regionsContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_regionsContainer);

  return WeakRetained;
}

- (UICoordinateSpace)coordinateSpace
{
  _searchArea = [(_UIFocusMapSnapshot *)self _searchArea];
  coordinateSpace = [_searchArea coordinateSpace];

  return coordinateSpace;
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  return WeakRetained;
}

- (void)_capture
{
  *&self->_flags &= ~1u;
  regions = self->_regions;
  self->_regions = 0;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mutableUnoccludedRegions = self->_mutableUnoccludedRegions;
  self->_mutableUnoccludedRegions = v5;

  v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  filteredOriginalRegions = self->_filteredOriginalRegions;
  self->_filteredOriginalRegions = v7;

  if (*&self->_subregionToRegionMap != 0 || self->_regionToFocusItemCache || self->_regionFrameCache)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"_subregionToRegionMap == NULL && _regionToOccludingRegionsMap == NULL && _regionToFocusItemCache == NULL && _regionFrameCache == NULL"}];
  }

  v9 = *MEMORY[0x1E695E480];
  self->_subregionToRegionMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &pointerKeyCallbacks, &pointerValueCallbacks);
  self->_regionToOccludingRegionsMap = CFDictionaryCreateMutable(v9, 0, &pointerKeyCallbacks, &equalValueCallbacks);
  self->_regionToFocusItemCache = CFDictionaryCreateMutable(v9, 0, &equalKeyCallbacks, &pointerValueCallbacks);
  self->_regionFrameCache = CFDictionaryCreateMutable(v9, 0, &pointerKeyCallbacks, &rectValueCallbacks);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  stateStack = self->_stateStack;
  self->_stateStack = v10;

  v12 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  eligibleEnvironments = self->_eligibleEnvironments;
  self->_eligibleEnvironments = v12;

  v14 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  ineligibleEnvironments = self->_ineligibleEnvironments;
  self->_ineligibleEnvironments = v14;

  v16 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  uncachableEnvironments = self->_uncachableEnvironments;
  self->_uncachableEnvironments = v16;

  *&self->_flags &= ~2u;
  WeakRetained = objc_loadWeakRetained(&self->_rootContainer);
  [(_UIFocusMapSnapshot *)self addRegionsInContainer:WeakRetained];

  *&self->_flags |= 1u;
}

- (NSArray)regions
{
  v29 = *MEMORY[0x1E69E9840];
  if (*&self->_flags)
  {
    regions = self->_regions;
    if (!regions)
    {
      mutableUnoccludedRegions = self->_mutableUnoccludedRegions;
      filteredOriginalRegions = self->_filteredOriginalRegions;
      WeakRetained = objc_loadWeakRetained(&self->_regionsContainer);
      v8 = filteredOriginalRegions;
      selfCopy = self;
      v10 = [_UIFocusRegionEvaluator regionsByEvaluatingOcclusionsForRegions:mutableUnoccludedRegions inSnapshot:selfCopy];
      v11 = v10;
      if (WeakRetained)
      {
        v23 = WeakRetained;
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v22 = v11;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v24 + 1) + 8 * i);
              v19 = [(_UIFocusMapSnapshot *)selfCopy originalRegionForRegion:v18, v22];
              if ([(NSHashTable *)v8 containsObject:v19])
              {
                [(NSArray *)v12 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v15);
        }

        v11 = v22;
        WeakRetained = v23;
      }

      else
      {
        v12 = v10;
      }

      v20 = self->_regions;
      self->_regions = v12;

      regions = self->_regions;
    }

    v2 = regions;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (void)dealloc
{
  subregionToRegionMap = self->_subregionToRegionMap;
  if (subregionToRegionMap)
  {
    CFRelease(subregionToRegionMap);
    self->_subregionToRegionMap = 0;
  }

  regionToOccludingRegionsMap = self->_regionToOccludingRegionsMap;
  if (regionToOccludingRegionsMap)
  {
    CFRelease(regionToOccludingRegionsMap);
    self->_regionToOccludingRegionsMap = 0;
  }

  regionToFocusItemCache = self->_regionToFocusItemCache;
  if (regionToFocusItemCache)
  {
    CFRelease(regionToFocusItemCache);
    self->_regionToFocusItemCache = 0;
  }

  regionFrameCache = self->_regionFrameCache;
  if (regionFrameCache)
  {
    CFRelease(regionFrameCache);
    self->_regionFrameCache = 0;
  }

  v7.receiver = self;
  v7.super_class = _UIFocusMapSnapshot;
  [(_UIFocusMapSnapshot *)&v7 dealloc];
}

- (_UIFocusMapSnapshot)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:147 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (id)_initWithSnapshotter:(id)snapshotter mapArea:(id)area searchArea:(id)searchArea
{
  snapshotterCopy = snapshotter;
  areaCopy = area;
  searchAreaCopy = searchArea;
  if (snapshotterCopy)
  {
    if (areaCopy)
    {
      goto LABEL_3;
    }

LABEL_16:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"mapArea"}];

    if (searchAreaCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"snapshotter"}];

  if (!areaCopy)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (searchAreaCopy)
  {
    goto LABEL_4;
  }

LABEL_17:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"searchArea"}];

LABEL_4:
  coordinateSpace = [areaCopy coordinateSpace];
  coordinateSpace2 = [searchAreaCopy coordinateSpace];

  if (coordinateSpace != coordinateSpace2)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:156 description:@"The focus map snapshot's map area and search area must be expressed in the same coordinate space."];
  }

  v33.receiver = self;
  v33.super_class = _UIFocusMapSnapshot;
  v14 = [(_UIFocusMapSnapshot *)&v33 init];
  if (v14)
  {
    focusSystem = [snapshotterCopy focusSystem];
    objc_storeWeak(&v14->_focusSystem, focusSystem);

    rootContainer = [snapshotterCopy rootContainer];
    objc_storeWeak(&v14->_rootContainer, rootContainer);

    focusedRegion = [snapshotterCopy focusedRegion];
    focusedRegion = v14->_focusedRegion;
    v14->_focusedRegion = focusedRegion;

    regionsContainer = [snapshotterCopy regionsContainer];
    objc_storeWeak(&v14->_regionsContainer, regionsContainer);

    if ([snapshotterCopy clipToSnapshotRect])
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    *&v14->_flags = *&v14->_flags & 0xFB | v20;
    if ([snapshotterCopy ignoresRootContainerClippingRect])
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    *&v14->_flags = *&v14->_flags & 0xF7 | v21;
    searchInfo = [snapshotterCopy searchInfo];
    searchInfo = v14->_searchInfo;
    v14->_searchInfo = searchInfo;

    movementInfo = [snapshotterCopy movementInfo];
    movementInfo = v14->_movementInfo;
    v14->_movementInfo = movementInfo;

    objc_storeStrong(&v14->_mapArea, area);
    objc_storeStrong(&v14->_searchArea, searchArea);
    v26 = [MEMORY[0x1E696AC70] hashTableWithOptions:514];
    visitedRegionContainers = v14->_visitedRegionContainers;
    v14->_visitedRegionContainers = v26;

    [(_UIFocusMapSnapshot *)v14 _capture];
  }

  return v14;
}

- (NSArray)originalRegions
{
  v18 = *MEMORY[0x1E69E9840];
  if (*&self->_flags)
  {
    regionsContainer = [(_UIFocusMapSnapshot *)self regionsContainer];

    if (regionsContainer)
    {
      allObjects = [(NSHashTable *)self->_filteredOriginalRegions allObjects];
    }

    else
    {
      v5 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = self->_mutableUnoccludedRegions;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:*(*(&v13 + 1) + 8 * i), v13];
            [v5 addObject:v11];
          }

          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }

      allObjects = [v5 allObjects];
    }
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

- (id)regionsForOriginalRegion:(id)region
{
  v22 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  if (!regionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"originalRegion"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  regions = [(_UIFocusMapSnapshot *)self regions];
  v8 = [regions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(regions);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:v12];

        if (v13 == regionCopy)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [regions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];

  return v14;
}

- (void)_trackSubregion:(id)subregion forRegion:(id)region
{
  key = subregion;
  regionCopy = region;
  v8 = key;
  v9 = regionCopy;
  if (key)
  {
    if (regionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"subregion"}];

    v8 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"originalRegion"}];

  v8 = key;
LABEL_3:
  if (v8 == v9)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"subregion != originalRegion"}];

    v8 = key;
  }

  CFDictionarySetValue(self->_subregionToRegionMap, v8, v9);
}

- (id)originalRegionForRegion:(id)region
{
  regionCopy = region;
  if (!regionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v6 = regionCopy;
  v7 = CFDictionaryGetValue(self->_subregionToRegionMap, v6);
  v8 = v6;
  if (v7)
  {
    v9 = v6;
    do
    {
      v8 = v7;

      v7 = CFDictionaryGetValue(self->_subregionToRegionMap, v8);

      v9 = v8;
    }

    while (v7);
  }

  return v8;
}

- (void)_trackOccludingRegion:(id)region forRegion:(id)forRegion
{
  regionCopy = region;
  v6 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:forRegion];
  v7 = CFDictionaryGetValue(self->_regionToOccludingRegionsMap, v6);
  if (v7)
  {
    v8 = v7;
    [v7 addObject:regionCopy];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{regionCopy, 0}];
    CFDictionarySetValue(self->_regionToOccludingRegionsMap, v6, v8);
  }
}

- (id)occludingRegionsForRegion:(id)region
{
  regionCopy = region;
  if (!regionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v6 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:regionCopy];
  v7 = CFDictionaryGetValue(self->_regionToOccludingRegionsMap, v6);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (void)consumeRegionInformationForRegions:(id)regions fromSnapshot:(id)snapshot
{
  regionsCopy = regions;
  snapshotCopy = snapshot;
  coordinateSpace = [(CFDictionaryRef *)snapshotCopy coordinateSpace];
  coordinateSpace2 = [(_UIFocusMapSnapshot *)self coordinateSpace];

  if (coordinateSpace != coordinateSpace2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:316 description:@"Unable to consume regions from a snapshot with a different coordinate system."];
  }

  v10 = [regionsCopy mutableCopy];
  if ([v10 count])
  {
    v11 = 0;
    do
    {
      v12 = [v10 objectAtIndexedSubscript:v11];
      v13 = CFDictionaryGetValue(snapshotCopy[3], v12);
      if (v13)
      {
        CFDictionarySetValue(self->_subregionToRegionMap, v12, v13);
        [v10 addObject:v13];
      }

      v14 = CFDictionaryGetValue(snapshotCopy[4], v12);
      if (v14)
      {
        CFDictionarySetValue(self->_regionToOccludingRegionsMap, v12, v14);
      }

      ++v11;
    }

    while (v11 < [v10 count]);
  }
}

- (id)_cachedNextFocusedItemForRegion:(id)region withFocusMovementRequest:(id)request inMap:(id)map
{
  regionCopy = region;
  requestCopy = request;
  mapCopy = map;
  mapCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p_%p_%p", regionCopy, requestCopy, mapCopy];
  v12 = CFDictionaryGetValue(self->_regionToFocusItemCache, mapCopy);
  if (!v12)
  {
    v13 = [regionCopy _nextFocusedItemForFocusMovementRequest:requestCopy inMap:mapCopy withSnapshot:self];
    v14 = v13;
    if (v13)
    {
      null = v13;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v12 = null;

    CFDictionarySetValue(self->_regionToFocusItemCache, mapCopy, v12);
  }

  null2 = [MEMORY[0x1E695DFB0] null];
  if (v12 == null2)
  {
    v17 = 0;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  return v17;
}

- (CGRect)snapshotFrameForRegion:(id)region
{
  regionCopy = region;
  if (!regionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  Value = CFDictionaryGetValue(self->_regionFrameCache, regionCopy);
  if (Value)
  {
    v7 = *Value;
    v8 = Value[1];
    v9 = Value[2];
    v10 = Value[3];
  }

  else
  {
    coordinateSpace = [(_UIFocusMapSnapshot *)self coordinateSpace];
    [_UIFocusRegionEvaluator frameForRegion:regionCopy inCoordinateSpace:coordinateSpace];
    v7 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;

    v16 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    *v16 = v7;
    v16[1] = v8;
    v16[2] = v9;
    v16[3] = v10;
    CFDictionarySetValue(self->_regionFrameCache, regionCopy, v16);
  }

  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)markContainerAsProvidingDynamicContent
{
  uncachableEnvironments = self->_uncachableEnvironments;
  lastObject = [(NSMutableArray *)self->_stateStack lastObject];
  regionContainer = [lastObject regionContainer];
  [(NSHashTable *)uncachableEnvironments addObject:regionContainer];
}

- (BOOL)hasOnlyStaticContent
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(NSHashTable *)self->_uncachableEnvironments count];
  if (*__UILogGetCategoryCachedImpl("UIFocus", &_MergedGlobals_1094))
  {
    if (v3)
    {
      if (!_AXSFullKeyboardAccessEnabled())
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DD58);
        if (*CategoryCachedImpl)
        {
          v6 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            uncachableEnvironments = self->_uncachableEnvironments;
            v8 = 138412290;
            v9 = uncachableEnvironments;
            _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Found uncachable environments during linear focus lookup: %@", &v8, 0xCu);
          }
        }
      }
    }
  }

  return v3 == 0;
}

- (void)addRegion:(id)region
{
  regionCopy = region;
  if (!regionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  lastObject = [(NSMutableArray *)self->_stateStack lastObject];
  regionContainerFocusSystem = [lastObject regionContainerFocusSystem];

  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  if (regionContainerFocusSystem == WeakRetained)
  {
    mapArea = [(_UIFocusMapSnapshot *)self mapArea];
    [(_UIFocusMapSnapshot *)self snapshotFrameForRegion:regionCopy];
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    if (fabs(CGRectGetWidth(v41)) < 0.0001)
    {
      goto LABEL_31;
    }

    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    if (fabs(CGRectGetHeight(v42)) < 0.0001)
    {
      goto LABEL_31;
    }

    v13 = regionCopy;
    if ((*&self->_flags & 4) != 0)
    {
      if (![mapArea intersectsRegion:regionCopy inSnapshot:self])
      {
LABEL_31:

        goto LABEL_32;
      }

      if ((*&self->_flags & 4) != 0 && [regionCopy _shouldCropRegionToSearchArea])
      {
        regions = [mapArea intersectionWithRegion:regionCopy inSnapshot:self];
        v15 = regionCopy;
        if (regions != regionCopy)
        {
          if (regions)
          {
            [(_UIFocusMapSnapshot *)self snapshotFrameForRegion:regions];
            v15 = regionCopy;
            x = v16;
            y = v17;
            width = v18;
            height = v19;
          }

          else
          {
            x = *MEMORY[0x1E695F050];
            y = *(MEMORY[0x1E695F050] + 8);
            width = *(MEMORY[0x1E695F050] + 16);
            height = *(MEMORY[0x1E695F050] + 24);
          }
        }
      }

      else
      {
        regions = regionCopy;
      }
    }

    else
    {
      regions = regionCopy;
    }

    if (regions)
    {
      if (([regions _isUnclippable] & 1) != 0 || (objc_msgSend(regionContainerFocusSystem, "behavior"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "supportsClipToBounds"), v20, !v21) || (-[NSMutableArray lastObject](self->_stateStack, "lastObject"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "clippingRect"), v24 = v23, v26 = v25, v28 = v27, v30 = v29, v22, v43.origin.x = v24, v43.origin.y = v26, v43.size.width = v28, v43.size.height = v30, CGRectIsNull(v43)) || (v44.origin.x = x, v44.origin.y = y, v44.size.width = width, v44.size.height = height, v47.origin.x = v24, v47.origin.y = v26, v47.size.width = v28, v47.size.height = v30, v45 = CGRectIntersection(v44, v47), v31 = v45.origin.x, v32 = v45.origin.y, v33 = v45.size.width, v34 = v45.size.height, v48.origin.x = x, v48.origin.y = y, v48.size.width = width, v48.size.height = height, CGRectEqualToRect(v45, v48)))
      {
        v35 = regions;
        goto LABEL_23;
      }

      v46.origin.x = v31;
      v46.origin.y = v32;
      v46.size.width = v33;
      v46.size.height = v34;
      if (CGRectIsEmpty(v46))
      {
        regionCopy = 0;
LABEL_26:

        goto LABEL_31;
      }

      v39 = [_UIFocusRegionEvaluator subregionFromRegion:regions withSnapshotFrame:self inSnapshot:v31, v32, v33, v34];

      v35 = v39;
      if (v39)
      {
LABEL_23:
        regionCopy = v35;
        [(NSMutableArray *)self->_mutableUnoccludedRegions addObject:?];
        if ((*&self->_flags & 2) != 0)
        {
          v36 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:regionCopy];
          [(NSHashTable *)self->_filteredOriginalRegions addObject:v36];
        }

        regions = self->_regions;
        self->_regions = 0;
        goto LABEL_26;
      }
    }

    regionCopy = 0;
    goto LABEL_31;
  }

LABEL_32:
}

- (void)addRegions:(id)regions
{
  v17 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  if (!regionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"regions"}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = regionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_UIFocusMapSnapshot *)self addRegion:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)addRegionsInContainer:(id)container
{
  v166 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"container"}];
  }

  v6 = [(NSHashTable *)self->_visitedRegionContainers count];
  v7 = containerCopy;
  owningEnvironment = v7;
  if ([v7 _ui_isUIFocusRegionContainerProxy])
  {
    owningEnvironment = [v7 owningEnvironment];
  }

  [(NSHashTable *)self->_visitedRegionContainers addObject:owningEnvironment];
  if (v6 != [(NSHashTable *)self->_visitedRegionContainers count])
  {
    eligibleEnvironments = self->_eligibleEnvironments;
    ineligibleEnvironments = self->_ineligibleEnvironments;
    stateStack = self->_stateStack;
    v136 = v7;
    v16 = eligibleEnvironments;
    v17 = ineligibleEnvironments;
    v18 = stateStack;
    if (containerCopy)
    {
      if (v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v117 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFocusSystem *__UIFocusMapRecurseSearchForFocusSystemInEligibleContainer(__strong id<_UIFocusRegionContainer>, NSHashTable<id<UIFocusEnvironment>> *__strong, NSHashTable<id<UIFocusEnvironment>> *__strong, NSArray<_UIFocusRegionSearchContextState *> *__strong)"}];
      [currentHandler2 handleFailureInFunction:v117 file:@"_UIFocusMapSnapshot.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"container"}];

      if (v16)
      {
LABEL_13:
        if (v17)
        {
          goto LABEL_14;
        }

LABEL_86:
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFocusSystem *__UIFocusMapRecurseSearchForFocusSystemInEligibleContainer(__strong id<_UIFocusRegionContainer>, NSHashTable<id<UIFocusEnvironment>> *__strong, NSHashTable<id<UIFocusEnvironment>> *__strong, NSArray<_UIFocusRegionSearchContextState *> *__strong)"}];
        [currentHandler3 handleFailureInFunction:v121 file:@"_UIFocusMapSnapshot.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"ineligibleEnvironments"}];

LABEL_14:
        v151 = 0;
        v152 = &v151;
        v153 = 0x2020000000;
        IsEligibleForFocusOcclusion = _UIFocusEnvironmentIsEligibleForFocusOcclusion(v136, 0);
        if (*(v152 + 24))
        {
          v19 = v16;
        }

        else
        {
          v19 = v17;
        }

        [(NSHashTable *)v19 addObject:v136];
        if (*(v152 + 24) == 1)
        {
          lastObject = [(NSMutableArray *)v18 lastObject];
          regionContainer = [lastObject regionContainer];

          v131 = v7;
          v134 = v18;
          if ([regionContainer _ui_isUIFocusRegionContainerProxy])
          {
            owningEnvironment2 = [regionContainer owningEnvironment];

            v23 = a2;
            v24 = owningEnvironment;
            regionContainer = owningEnvironment2;
          }

          else
          {
            v23 = a2;
            v24 = owningEnvironment;
          }

          v145 = 0;
          v146 = &v145;
          v147 = 0x3032000000;
          v148 = __Block_byref_object_copy__88;
          v149 = __Block_byref_object_dispose__88;
          v150 = 0;
          v141 = 0;
          v142 = &v141;
          v143 = 0x2020000000;
          v144 = 0;
          v139[0] = 0;
          v139[1] = v139;
          v139[2] = 0x2020000000;
          v140 = 1;
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v156 = ____UIFocusMapRecurseSearchForFocusSystemInEligibleContainer_block_invoke;
          v157 = &unk_1E7108B18;
          v162 = &v145;
          v25 = v136;
          v158 = v25;
          v26 = regionContainer;
          v159 = v26;
          v163 = &v141;
          v164 = v139;
          v160 = v16;
          v161 = v17;
          v165 = &v151;
          _UIFocusEnvironmentEnumerateAncestorEnvironments(v25, &buf);
          owningEnvironment = v24;
          a2 = v23;
          v7 = v131;
          v18 = v134;
          if (*(v152 + 24) == 1)
          {
            if (*(v142 + 24) == 1)
            {
              lastObject2 = [(NSMutableArray *)v134 lastObject];
              regionContainerFocusSystem = [lastObject2 regionContainerFocusSystem];
            }

            else
            {
              regionContainerFocusSystem = [UIFocusSystem focusSystemForEnvironment:v146[5]];
            }
          }

          else
          {
            regionContainerFocusSystem = 0;
          }

          _Block_object_dispose(v139, 8);
          _Block_object_dispose(&v141, 8);
          _Block_object_dispose(&v145, 8);
        }

        else
        {
          regionContainerFocusSystem = 0;
        }

        _Block_object_dispose(&v151, 8);

        if (!regionContainerFocusSystem)
        {
          goto LABEL_83;
        }

        regionsContainer = [(_UIFocusMapSnapshot *)self regionsContainer];
        v133 = [v136 isEqual:regionsContainer];
        if (v133 && (*&self->_flags & 2) == 0)
        {
          *&self->_flags |= 2u;
        }

        WeakRetained = objc_loadWeakRetained(&self->_rootContainer);
        if ([v136 isEqual:WeakRetained])
        {
          v29 = (*&self->_flags & 8) == 0;

          if (!v29)
          {
            v30 = *MEMORY[0x1E695F050];
            v31 = *(MEMORY[0x1E695F050] + 8);
            v32 = *(MEMORY[0x1E695F050] + 16);
            v33 = *(MEMORY[0x1E695F050] + 24);
LABEL_75:
            v187.origin.x = v30;
            v187.origin.y = v31;
            v187.size.width = v32;
            v187.size.height = v33;
            if (CGRectIsNull(v187))
            {
              if ([(NSMutableArray *)self->_stateStack count])
              {
                lastObject3 = [(NSMutableArray *)self->_stateStack lastObject];
                [lastObject3 clippingRect];
                IsNull = CGRectIsNull(v188);

                if (!IsNull)
                {
                  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
                  [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:526 description:{@"Encountered a NULL clipping rect, which is invalid when previous containers are clipping."}];
                }
              }
            }

            v114 = [_UIFocusRegionSearchContextState stateWithRegionContainer:v136 focusSystem:regionContainerFocusSystem clippingRect:v30, v31, v32, v33];
            [(NSMutableArray *)self->_stateStack addObject:v114];
            [v136 _searchForFocusRegionsInContext:self];
            [(NSMutableArray *)self->_stateStack removeLastObject];
            if (v133 && (*&self->_flags & 2) != 0)
            {
              *&self->_flags &= ~2u;
            }

            goto LABEL_83;
          }
        }

        else
        {
        }

        v34 = objc_loadWeakRetained(&self->_focusSystem);
        v35 = self->_stateStack;
        coordinateSpace = [(_UIFocusMapSnapshot *)self coordinateSpace];
        v132 = v34;
        v37 = v35;
        v38 = v136;
        v39 = coordinateSpace;
        v40 = objc_opt_respondsToSelector();
        v30 = *MEMORY[0x1E695F050];
        v31 = *(MEMORY[0x1E695F050] + 8);
        v32 = *(MEMORY[0x1E695F050] + 16);
        v33 = *(MEMORY[0x1E695F050] + 24);
        height = v33;
        width = v32;
        y = v31;
        x = *MEMORY[0x1E695F050];
        if (v40)
        {
          [v38 _clippingRectInCoordinateSpace:v39];
          x = v45;
          y = v46;
          width = v47;
          height = v48;
        }

        v167.origin.x = x;
        v167.origin.y = y;
        v167.size.width = width;
        v167.size.height = height;
        if (!CGRectIsNull(v167) || [(NSMutableArray *)v37 count])
        {
          focusItemContainer = [v38 focusItemContainer];
          IsScrollableContainer = _UIFocusItemContainerIsScrollableContainer(focusItemContainer);
          buf = *MEMORY[0x1E695EFF8];
          if (IsScrollableContainer && [v132 _isScrollingScrollableContainer:focusItemContainer targetContentOffset:&buf])
          {
            v126 = focusItemContainer;
            [v126 contentOffset];
            v52 = v51;
            v54 = v53;
            [v126 visibleSize];
            v56 = v55;
            v58 = v57;
            coordinateSpace2 = [v126 coordinateSpace];
            [coordinateSpace2 convertRect:v39 toCoordinateSpace:{v52, v54, v56, v58}];
            v129 = v61;
            v130 = v60;
            v127 = v63;
            v128 = v62;

            v168.origin.x = x;
            v168.origin.y = y;
            v168.size.width = width;
            v168.size.height = height;
            if (CGRectIsNull(v168))
            {
              x = v130;
              y = v129;
              width = v128;
              height = v127;
            }

            if ([(NSMutableArray *)v37 count])
            {
              lastObject4 = [(NSMutableArray *)v37 lastObject];
              [lastObject4 clippingRect];
              v66 = v65;
              v68 = v67;
              v70 = v69;
              v72 = v71;

              v169.origin.x = v66;
              v169.origin.y = v68;
              v169.size.width = v70;
              v169.size.height = v72;
              if (!CGRectIsNull(v169))
              {
                v170.origin.x = x;
                v170.origin.y = y;
                v170.size.width = width;
                v170.size.height = height;
                v189.origin.x = v66;
                v189.origin.y = v68;
                v189.size.width = v70;
                v189.size.height = v72;
                v171 = CGRectIntersection(v170, v189);
                x = v171.origin.x;
                y = v171.origin.y;
                width = v171.size.width;
                height = v171.size.height;
              }
            }

            v172.origin.x = x;
            v172.origin.y = y;
            v172.size.width = width;
            v172.size.height = height;
            MinY = CGRectGetMinY(v172);
            v173.origin.y = v129;
            v173.origin.x = v130;
            v173.size.height = v127;
            v173.size.width = v128;
            v124 = CGRectGetMinY(v173);
            v174.origin.x = x;
            v174.origin.y = y;
            v174.size.width = width;
            v174.size.height = height;
            MinX = CGRectGetMinX(v174);
            v175.origin.y = v129;
            v175.origin.x = v130;
            v175.size.height = v127;
            v175.size.width = v128;
            v73 = CGRectGetMinX(v175);
            v176.origin.y = v129;
            v176.origin.x = v130;
            v176.size.height = v127;
            v176.size.width = v128;
            MaxY = CGRectGetMaxY(v176);
            v177.origin.x = x;
            v177.origin.y = y;
            v177.size.width = width;
            v177.size.height = height;
            v75 = CGRectGetMaxY(v177);
            v178.origin.y = v129;
            v178.origin.x = v130;
            v178.size.height = v127;
            v178.size.width = v128;
            MaxX = CGRectGetMaxX(v178);
            v179.origin.x = x;
            v179.origin.y = y;
            v179.size.width = width;
            v179.size.height = height;
            v77 = MaxX - CGRectGetMaxX(v179);
            if (MinY - v124 >= 0.0)
            {
              v78 = MinY - v124;
            }

            else
            {
              v78 = 0.0;
            }

            if (MinX - v73 >= 0.0)
            {
              v79 = MinX - v73;
            }

            else
            {
              v79 = 0.0;
            }

            if (MaxY - v75 >= 0.0)
            {
              v80 = MaxY - v75;
            }

            else
            {
              v80 = 0.0;
            }

            if (v77 >= 0.0)
            {
              v81 = v77;
            }

            else
            {
              v81 = 0.0;
            }

            v83 = *(&buf + 1);
            v82 = *&buf;
            [v126 visibleSize];
            v85 = v84;
            v87 = v86;
            coordinateSpace3 = [v126 coordinateSpace];
            [coordinateSpace3 convertRect:v39 toCoordinateSpace:{v82, v83, v85, v87}];
            v90 = v89;
            v92 = v91;
            v94 = v93;
            v96 = v95;

            v180.origin.y = v129;
            v180.origin.x = v130;
            v180.size.height = v127;
            v180.size.width = v128;
            v190.origin.x = v90;
            v190.origin.y = v92;
            v190.size.width = v94;
            v190.size.height = v96;
            v181 = CGRectUnion(v180, v190);
            v30 = v79 + v181.origin.x;
            v31 = v78 + v181.origin.y;
            v32 = v181.size.width - (v79 + v81);
            v33 = v181.size.height - (v78 + v80);
            v181.origin.x = v79 + v181.origin.x;
            v181.origin.y = v78 + v181.origin.y;
            v181.size.width = v32;
            v181.size.height = v33;
            if (CGRectIsNull(v181))
            {
              v30 = *MEMORY[0x1E695F058];
              v31 = *(MEMORY[0x1E695F058] + 8);
              v32 = *(MEMORY[0x1E695F058] + 16);
              v33 = *(MEMORY[0x1E695F058] + 24);
            }
          }

          else
          {
            v182.origin.x = x;
            v182.origin.y = y;
            v182.size.width = width;
            v182.size.height = height;
            if (CGRectIsNull(v182))
            {
              lastObject5 = [(NSMutableArray *)v37 lastObject];
              [lastObject5 clippingRect];
              v30 = v98;
              v31 = v99;
              v32 = v100;
              v33 = v101;
            }

            else
            {
              if ([(NSMutableArray *)v37 count])
              {
                lastObject6 = [(NSMutableArray *)v37 lastObject];
                [lastObject6 clippingRect];
                v104 = v103;
                v106 = v105;
                v108 = v107;
                v110 = v109;

                v183.origin.x = v104;
                v183.origin.y = v106;
                v183.size.width = v108;
                v183.size.height = v110;
                if (!CGRectIsNull(v183))
                {
                  v184.origin.x = x;
                  v184.origin.y = y;
                  v184.size.width = width;
                  v184.size.height = height;
                  v191.origin.x = v104;
                  v191.origin.y = v106;
                  v191.size.width = v108;
                  v191.size.height = v110;
                  v185 = CGRectIntersection(v184, v191);
                  x = v185.origin.x;
                  y = v185.origin.y;
                  width = v185.size.width;
                  height = v185.size.height;
                }
              }

              v30 = x;
              v31 = y;
              v32 = width;
              v33 = height;
              v186.origin.x = x;
              v186.origin.y = y;
              v186.size.width = width;
              v186.size.height = height;
              if (CGRectIsNull(v186))
              {
                v30 = *MEMORY[0x1E695F058];
                v31 = *(MEMORY[0x1E695F058] + 8);
                v32 = *(MEMORY[0x1E695F058] + 16);
                v33 = *(MEMORY[0x1E695F058] + 24);
              }
            }
          }
        }

        goto LABEL_75;
      }
    }

    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFocusSystem *__UIFocusMapRecurseSearchForFocusSystemInEligibleContainer(__strong id<_UIFocusRegionContainer>, NSHashTable<id<UIFocusEnvironment>> *__strong, NSHashTable<id<UIFocusEnvironment>> *__strong, NSArray<_UIFocusRegionSearchContextState *> *__strong)"}];
    [currentHandler5 handleFailureInFunction:v119 file:@"_UIFocusMapSnapshot.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"eligibleEnvironments"}];

    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_86;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [v7 debugDescription];
  regionContainerFocusSystem = [v9 stringWithFormat:@"Ignoring attempt to add focus items in already-visited container. This can potentially cause infinite recursion.\nContainer: %@", v10];

  if (dyld_program_sdk_at_least())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v122 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = regionContainerFocusSystem;
        _os_log_fault_impl(&dword_188A29000, v122, OS_LOG_TYPE_FAULT, "%@", &buf, 0xCu);
      }
    }

    else
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DD60) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = regionContainerFocusSystem;
LABEL_10:
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }
    }
  }

  else
  {
    if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DD68))
    {
      v12 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DD70) + 8);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = regionContainerFocusSystem;
      goto LABEL_10;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45___UIFocusMapSnapshot_addRegionsInContainer___block_invoke;
    block[3] = &unk_1E70F3590;
    regionContainerFocusSystem = regionContainerFocusSystem;
    v138 = regionContainerFocusSystem;
    if (qword_1ED49DD78 != -1)
    {
      dispatch_once(&qword_1ED49DD78, block);
    }
  }

LABEL_83:
}

- (void)addRegionsInContainers:(id)containers
{
  v17 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  if (!containersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:543 description:{@"Invalid parameter not satisfying: %@", @"containers"}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = containersCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_UIFocusMapSnapshot *)self addRegionsInContainer:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (_UIFocusRegionContainer)rootContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_rootContainer);

  return WeakRetained;
}

@end