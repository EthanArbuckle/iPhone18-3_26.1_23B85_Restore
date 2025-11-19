@interface _UIFocusMapSnapshot
- (BOOL)hasOnlyStaticContent;
- (CGRect)snapshotFrameForRegion:(id)a3;
- (NSArray)originalRegions;
- (NSArray)regions;
- (UICoordinateSpace)coordinateSpace;
- (UIFocusSystem)focusSystem;
- (_UIFocusMapSnapshot)init;
- (_UIFocusRegionContainer)regionsContainer;
- (_UIFocusRegionContainer)rootContainer;
- (id)_cachedNextFocusedItemForRegion:(id)a3 withFocusMovementRequest:(id)a4 inMap:(id)a5;
- (id)_initWithSnapshotter:(id)a3 mapArea:(id)a4 searchArea:(id)a5;
- (id)occludingRegionsForRegion:(id)a3;
- (id)originalRegionForRegion:(id)a3;
- (id)regionsForOriginalRegion:(id)a3;
- (void)_capture;
- (void)_trackOccludingRegion:(id)a3 forRegion:(id)a4;
- (void)_trackSubregion:(id)a3 forRegion:(id)a4;
- (void)addRegion:(id)a3;
- (void)addRegions:(id)a3;
- (void)addRegionsInContainer:(id)a3;
- (void)addRegionsInContainers:(id)a3;
- (void)consumeRegionInformationForRegions:(id)a3 fromSnapshot:(id)a4;
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
  v2 = [(_UIFocusMapSnapshot *)self _searchArea];
  v3 = [v2 coordinateSpace];

  return v3;
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
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"_subregionToRegionMap == NULL && _regionToOccludingRegionsMap == NULL && _regionToFocusItemCache == NULL && _regionFrameCache == NULL"}];
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
      v9 = self;
      v10 = [_UIFocusRegionEvaluator regionsByEvaluatingOcclusionsForRegions:mutableUnoccludedRegions inSnapshot:v9];
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
              v19 = [(_UIFocusMapSnapshot *)v9 originalRegionForRegion:v18, v22];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:147 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (id)_initWithSnapshotter:(id)a3 mapArea:(id)a4 searchArea:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_16:
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"mapArea"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"snapshotter"}];

  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_17:
  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"searchArea"}];

LABEL_4:
  v12 = [v10 coordinateSpace];
  v13 = [v11 coordinateSpace];

  if (v12 != v13)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:156 description:@"The focus map snapshot's map area and search area must be expressed in the same coordinate space."];
  }

  v33.receiver = self;
  v33.super_class = _UIFocusMapSnapshot;
  v14 = [(_UIFocusMapSnapshot *)&v33 init];
  if (v14)
  {
    v15 = [v9 focusSystem];
    objc_storeWeak(&v14->_focusSystem, v15);

    v16 = [v9 rootContainer];
    objc_storeWeak(&v14->_rootContainer, v16);

    v17 = [v9 focusedRegion];
    focusedRegion = v14->_focusedRegion;
    v14->_focusedRegion = v17;

    v19 = [v9 regionsContainer];
    objc_storeWeak(&v14->_regionsContainer, v19);

    if ([v9 clipToSnapshotRect])
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    *&v14->_flags = *&v14->_flags & 0xFB | v20;
    if ([v9 ignoresRootContainerClippingRect])
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    *&v14->_flags = *&v14->_flags & 0xF7 | v21;
    v22 = [v9 searchInfo];
    searchInfo = v14->_searchInfo;
    v14->_searchInfo = v22;

    v24 = [v9 movementInfo];
    movementInfo = v14->_movementInfo;
    v14->_movementInfo = v24;

    objc_storeStrong(&v14->_mapArea, a4);
    objc_storeStrong(&v14->_searchArea, a5);
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
    v4 = [(_UIFocusMapSnapshot *)self regionsContainer];

    if (v4)
    {
      v2 = [(NSHashTable *)self->_filteredOriginalRegions allObjects];
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

      v2 = [v5 allObjects];
    }
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (id)regionsForOriginalRegion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"originalRegion"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(_UIFocusMapSnapshot *)self regions];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:v12];

        if (v13 == v5)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];

  return v14;
}

- (void)_trackSubregion:(id)a3 forRegion:(id)a4
{
  key = a3;
  v7 = a4;
  v8 = key;
  v9 = v7;
  if (key)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"subregion"}];

    v8 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"originalRegion"}];

  v8 = key;
LABEL_3:
  if (v8 == v9)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"subregion != originalRegion"}];

    v8 = key;
  }

  CFDictionarySetValue(self->_subregionToRegionMap, v8, v9);
}

- (id)originalRegionForRegion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v6 = v5;
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

- (void)_trackOccludingRegion:(id)a3 forRegion:(id)a4
{
  v9 = a3;
  v6 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:a4];
  v7 = CFDictionaryGetValue(self->_regionToOccludingRegionsMap, v6);
  if (v7)
  {
    v8 = v7;
    [v7 addObject:v9];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
    CFDictionarySetValue(self->_regionToOccludingRegionsMap, v6, v8);
  }
}

- (id)occludingRegionsForRegion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v6 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:v5];
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

- (void)consumeRegionInformationForRegions:(id)a3 fromSnapshot:(id)a4
{
  v16 = a3;
  v7 = a4;
  v8 = [(CFDictionaryRef *)v7 coordinateSpace];
  v9 = [(_UIFocusMapSnapshot *)self coordinateSpace];

  if (v8 != v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:316 description:@"Unable to consume regions from a snapshot with a different coordinate system."];
  }

  v10 = [v16 mutableCopy];
  if ([v10 count])
  {
    v11 = 0;
    do
    {
      v12 = [v10 objectAtIndexedSubscript:v11];
      v13 = CFDictionaryGetValue(v7[3], v12);
      if (v13)
      {
        CFDictionarySetValue(self->_subregionToRegionMap, v12, v13);
        [v10 addObject:v13];
      }

      v14 = CFDictionaryGetValue(v7[4], v12);
      if (v14)
      {
        CFDictionarySetValue(self->_regionToOccludingRegionsMap, v12, v14);
      }

      ++v11;
    }

    while (v11 < [v10 count]);
  }
}

- (id)_cachedNextFocusedItemForRegion:(id)a3 withFocusMovementRequest:(id)a4 inMap:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p_%p_%p", v8, v9, v10];
  v12 = CFDictionaryGetValue(self->_regionToFocusItemCache, v11);
  if (!v12)
  {
    v13 = [v8 _nextFocusedItemForFocusMovementRequest:v9 inMap:v10 withSnapshot:self];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
    }

    v12 = v15;

    CFDictionarySetValue(self->_regionToFocusItemCache, v11, v12);
  }

  v16 = [MEMORY[0x1E695DFB0] null];
  if (v12 == v16)
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

- (CGRect)snapshotFrameForRegion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  Value = CFDictionaryGetValue(self->_regionFrameCache, v5);
  if (Value)
  {
    v7 = *Value;
    v8 = Value[1];
    v9 = Value[2];
    v10 = Value[3];
  }

  else
  {
    v11 = [(_UIFocusMapSnapshot *)self coordinateSpace];
    [_UIFocusRegionEvaluator frameForRegion:v5 inCoordinateSpace:v11];
    v7 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;

    v16 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    *v16 = v7;
    v16[1] = v8;
    v16[2] = v9;
    v16[3] = v10;
    CFDictionarySetValue(self->_regionFrameCache, v5, v16);
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
  v4 = [(NSMutableArray *)self->_stateStack lastObject];
  v3 = [v4 regionContainer];
  [(NSHashTable *)uncachableEnvironments addObject:v3];
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

- (void)addRegion:(id)a3
{
  v38 = a3;
  if (!v38)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v5 = [(NSMutableArray *)self->_stateStack lastObject];
  v6 = [v5 regionContainerFocusSystem];

  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  if (v6 == WeakRetained)
  {
    v8 = [(_UIFocusMapSnapshot *)self mapArea];
    [(_UIFocusMapSnapshot *)self snapshotFrameForRegion:v38];
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

    v13 = v38;
    if ((*&self->_flags & 4) != 0)
    {
      if (![v8 intersectsRegion:v38 inSnapshot:self])
      {
LABEL_31:

        goto LABEL_32;
      }

      if ((*&self->_flags & 4) != 0 && [v38 _shouldCropRegionToSearchArea])
      {
        regions = [v8 intersectionWithRegion:v38 inSnapshot:self];
        v15 = v38;
        if (regions != v38)
        {
          if (regions)
          {
            [(_UIFocusMapSnapshot *)self snapshotFrameForRegion:regions];
            v15 = v38;
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
        regions = v38;
      }
    }

    else
    {
      regions = v38;
    }

    if (regions)
    {
      if (([regions _isUnclippable] & 1) != 0 || (objc_msgSend(v6, "behavior"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "supportsClipToBounds"), v20, !v21) || (-[NSMutableArray lastObject](self->_stateStack, "lastObject"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "clippingRect"), v24 = v23, v26 = v25, v28 = v27, v30 = v29, v22, v43.origin.x = v24, v43.origin.y = v26, v43.size.width = v28, v43.size.height = v30, CGRectIsNull(v43)) || (v44.origin.x = x, v44.origin.y = y, v44.size.width = width, v44.size.height = height, v47.origin.x = v24, v47.origin.y = v26, v47.size.width = v28, v47.size.height = v30, v45 = CGRectIntersection(v44, v47), v31 = v45.origin.x, v32 = v45.origin.y, v33 = v45.size.width, v34 = v45.size.height, v48.origin.x = x, v48.origin.y = y, v48.size.width = width, v48.size.height = height, CGRectEqualToRect(v45, v48)))
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
        v38 = 0;
LABEL_26:

        goto LABEL_31;
      }

      v39 = [_UIFocusRegionEvaluator subregionFromRegion:regions withSnapshotFrame:self inSnapshot:v31, v32, v33, v34];

      v35 = v39;
      if (v39)
      {
LABEL_23:
        v38 = v35;
        [(NSMutableArray *)self->_mutableUnoccludedRegions addObject:?];
        if ((*&self->_flags & 2) != 0)
        {
          v36 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:v38];
          [(NSHashTable *)self->_filteredOriginalRegions addObject:v36];
        }

        regions = self->_regions;
        self->_regions = 0;
        goto LABEL_26;
      }
    }

    v38 = 0;
    goto LABEL_31;
  }

LABEL_32:
}

- (void)addRegions:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"regions"}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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

- (void)addRegionsInContainer:(id)a3
{
  v166 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v115 = [MEMORY[0x1E696AAA8] currentHandler];
    [v115 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"container"}];
  }

  v6 = [(NSHashTable *)self->_visitedRegionContainers count];
  v7 = v5;
  v8 = v7;
  if ([v7 _ui_isUIFocusRegionContainerProxy])
  {
    v8 = [v7 owningEnvironment];
  }

  [(NSHashTable *)self->_visitedRegionContainers addObject:v8];
  if (v6 != [(NSHashTable *)self->_visitedRegionContainers count])
  {
    eligibleEnvironments = self->_eligibleEnvironments;
    ineligibleEnvironments = self->_ineligibleEnvironments;
    stateStack = self->_stateStack;
    v136 = v7;
    v16 = eligibleEnvironments;
    v17 = ineligibleEnvironments;
    v18 = stateStack;
    if (v5)
    {
      if (v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v116 = [MEMORY[0x1E696AAA8] currentHandler];
      v117 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFocusSystem *__UIFocusMapRecurseSearchForFocusSystemInEligibleContainer(__strong id<_UIFocusRegionContainer>, NSHashTable<id<UIFocusEnvironment>> *__strong, NSHashTable<id<UIFocusEnvironment>> *__strong, NSArray<_UIFocusRegionSearchContextState *> *__strong)"}];
      [v116 handleFailureInFunction:v117 file:@"_UIFocusMapSnapshot.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"container"}];

      if (v16)
      {
LABEL_13:
        if (v17)
        {
          goto LABEL_14;
        }

LABEL_86:
        v120 = [MEMORY[0x1E696AAA8] currentHandler];
        v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFocusSystem *__UIFocusMapRecurseSearchForFocusSystemInEligibleContainer(__strong id<_UIFocusRegionContainer>, NSHashTable<id<UIFocusEnvironment>> *__strong, NSHashTable<id<UIFocusEnvironment>> *__strong, NSArray<_UIFocusRegionSearchContextState *> *__strong)"}];
        [v120 handleFailureInFunction:v121 file:@"_UIFocusMapSnapshot.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"ineligibleEnvironments"}];

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
          v20 = [(NSMutableArray *)v18 lastObject];
          v21 = [v20 regionContainer];

          v131 = v7;
          v134 = v18;
          if ([v21 _ui_isUIFocusRegionContainerProxy])
          {
            v22 = [v21 owningEnvironment];

            v23 = a2;
            v24 = v8;
            v21 = v22;
          }

          else
          {
            v23 = a2;
            v24 = v8;
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
          v26 = v21;
          v159 = v26;
          v163 = &v141;
          v164 = v139;
          v160 = v16;
          v161 = v17;
          v165 = &v151;
          _UIFocusEnvironmentEnumerateAncestorEnvironments(v25, &buf);
          v8 = v24;
          a2 = v23;
          v7 = v131;
          v18 = v134;
          if (*(v152 + 24) == 1)
          {
            if (*(v142 + 24) == 1)
            {
              v27 = [(NSMutableArray *)v134 lastObject];
              v11 = [v27 regionContainerFocusSystem];
            }

            else
            {
              v11 = [UIFocusSystem focusSystemForEnvironment:v146[5]];
            }
          }

          else
          {
            v11 = 0;
          }

          _Block_object_dispose(v139, 8);
          _Block_object_dispose(&v141, 8);
          _Block_object_dispose(&v145, 8);
        }

        else
        {
          v11 = 0;
        }

        _Block_object_dispose(&v151, 8);

        if (!v11)
        {
          goto LABEL_83;
        }

        v135 = [(_UIFocusMapSnapshot *)self regionsContainer];
        v133 = [v136 isEqual:v135];
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
                v111 = [(NSMutableArray *)self->_stateStack lastObject];
                [v111 clippingRect];
                IsNull = CGRectIsNull(v188);

                if (!IsNull)
                {
                  v113 = [MEMORY[0x1E696AAA8] currentHandler];
                  [v113 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:526 description:{@"Encountered a NULL clipping rect, which is invalid when previous containers are clipping."}];
                }
              }
            }

            v114 = [_UIFocusRegionSearchContextState stateWithRegionContainer:v136 focusSystem:v11 clippingRect:v30, v31, v32, v33];
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
        v36 = [(_UIFocusMapSnapshot *)self coordinateSpace];
        v132 = v34;
        v37 = v35;
        v38 = v136;
        v39 = v36;
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
          v49 = [v38 focusItemContainer];
          IsScrollableContainer = _UIFocusItemContainerIsScrollableContainer(v49);
          buf = *MEMORY[0x1E695EFF8];
          if (IsScrollableContainer && [v132 _isScrollingScrollableContainer:v49 targetContentOffset:&buf])
          {
            v126 = v49;
            [v126 contentOffset];
            v52 = v51;
            v54 = v53;
            [v126 visibleSize];
            v56 = v55;
            v58 = v57;
            v59 = [v126 coordinateSpace];
            [v59 convertRect:v39 toCoordinateSpace:{v52, v54, v56, v58}];
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
              v64 = [(NSMutableArray *)v37 lastObject];
              [v64 clippingRect];
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
            v88 = [v126 coordinateSpace];
            [v88 convertRect:v39 toCoordinateSpace:{v82, v83, v85, v87}];
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
              v97 = [(NSMutableArray *)v37 lastObject];
              [v97 clippingRect];
              v30 = v98;
              v31 = v99;
              v32 = v100;
              v33 = v101;
            }

            else
            {
              if ([(NSMutableArray *)v37 count])
              {
                v102 = [(NSMutableArray *)v37 lastObject];
                [v102 clippingRect];
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

    v118 = [MEMORY[0x1E696AAA8] currentHandler];
    v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFocusSystem *__UIFocusMapRecurseSearchForFocusSystemInEligibleContainer(__strong id<_UIFocusRegionContainer>, NSHashTable<id<UIFocusEnvironment>> *__strong, NSHashTable<id<UIFocusEnvironment>> *__strong, NSArray<_UIFocusRegionSearchContextState *> *__strong)"}];
    [v118 handleFailureInFunction:v119 file:@"_UIFocusMapSnapshot.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"eligibleEnvironments"}];

    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_86;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [v7 debugDescription];
  v11 = [v9 stringWithFormat:@"Ignoring attempt to add focus items in already-visited container. This can potentially cause infinite recursion.\nContainer: %@", v10];

  if (dyld_program_sdk_at_least())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v122 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_fault_impl(&dword_188A29000, v122, OS_LOG_TYPE_FAULT, "%@", &buf, 0xCu);
      }
    }

    else
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DD60) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
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
      *(&buf + 4) = v11;
      goto LABEL_10;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45___UIFocusMapSnapshot_addRegionsInContainer___block_invoke;
    block[3] = &unk_1E70F3590;
    v11 = v11;
    v138 = v11;
    if (qword_1ED49DD78 != -1)
    {
      dispatch_once(&qword_1ED49DD78, block);
    }
  }

LABEL_83:
}

- (void)addRegionsInContainers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:543 description:{@"Invalid parameter not satisfying: %@", @"containers"}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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