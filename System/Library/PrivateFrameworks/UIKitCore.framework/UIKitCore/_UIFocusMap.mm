@interface _UIFocusMap
- (BOOL)verifyFocusabilityForItem:(id)item;
- (CGRect)minimumSearchArea;
- (UICoordinateSpace)coordinateSpace;
- (UIFocusSystem)focusSystem;
- (_UIFocusMap)init;
- (_UIFocusMap)initWithFocusSystem:(id)system rootContainer:(id)container coordinateSpace:(id)space searchInfo:(id)info ignoresRootContainerClippingRect:(BOOL)rect;
- (_UIFocusMap)initWithFocusSystem:(id)system rootEnvironment:(id)environment;
- (_UIFocusMap)initWithFocusSystem:(id)system rootEnvironment:(id)environment coordinateSpace:(id)space searchInfo:(id)info ignoresRootContainerClippingRect:(BOOL)rect;
- (_UIFocusRegionContainer)rootContainer;
- (id)_allRegionsInContainer:(id)container intersectingRegion:(id)region;
- (id)_closestFocusableItemToPoint:(CGPoint)point inRect:(CGRect)rect itemFilter:(id)filter distanceMeasuringUnitPoint:(CGPoint)unitPoint;
- (id)_defaultMapSnapshotter;
- (id)_inferredDefaultFocusItemInEnvironment:(id)environment;
- (id)_linearlySortedFocusItemsForItems:(id)items groupFilter:(int64_t)filter itemStandInMap:(id)map;
- (id)_nextFocusedItemForFocusMovementRequest:(id)request;
- (id)_nextFocusedItemForFocusMovementRequest:(id)request inRegions:(id)regions withSnapshot:(id)snapshot;
- (id)_nextFocusedItemForFocusMovementRequest:(id)request startingFromRegion:(id)region;
- (id)_nextFocusedItemForFocusMovementRequest:(id)request startingFromRegion:(id)region inRegions:(id)regions withSnapshot:(id)snapshot;
- (id)_nextFocusedItemForLinearFocusMovementRequest:(id)request startingFromRegion:(id)region inRegions:(id)regions withSnapshot:(id)snapshot;
- (id)_nextFocusedItemForNonLinearFocusMovementRequest:(id)request startingFromRegion:(id)region inRegions:(id)regions withSnapshot:(id)snapshot;
- (id)_stopTrackingSearches;
- (void)_beginTrackingDefaultItemSearchInfoIfNecessary;
- (void)_beginTrackingFocusMovementSearchInfoIfNecessary;
- (void)_beginTrackingSearches;
- (void)_trackExternalSnapshot:(id)snapshot;
- (void)diagnoseFocusabilityForItem:(id)item report:(id)report;
- (void)setMinimumSearchArea:(CGRect)area;
@end

@implementation _UIFocusMap

- (void)_beginTrackingDefaultItemSearchInfoIfNecessary
{
  if (self->_trackingSearchInfo && self->_needsSearchInfo)
  {
    v3 = objc_alloc_init(_UIFocusMapSearchInfo);
    defaultItemSearchInfo = self->_defaultItemSearchInfo;
    self->_defaultItemSearchInfo = v3;

    self->_needsSearchInfo = 0;
  }
}

- (id)_defaultMapSnapshotter
{
  v3 = [_UIFocusMapSnapshotter alloc];
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  v5 = objc_loadWeakRetained(&self->_rootContainer);
  v6 = objc_loadWeakRetained(&self->_coordinateSpace);
  searchInfo = [(_UIFocusMap *)self searchInfo];
  v8 = [(_UIFocusMapSnapshotter *)v3 initWithFocusSystem:WeakRetained rootContainer:v5 coordinateSpace:v6 searchInfo:searchInfo ignoresRootContainerClippingRect:self->_ignoresRootContainerClippingRect];

  return v8;
}

- (_UIFocusMap)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:85 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusMap)initWithFocusSystem:(id)system rootEnvironment:(id)environment
{
  systemCopy = system;
  environmentCopy = environment;
  v9 = environmentCopy;
  if (!systemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"rootEnvironment"}];

    goto LABEL_3;
  }

  if (!environmentCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(_UIFocusMap *)self initWithFocusSystem:systemCopy rootEnvironment:v9 coordinateSpace:0 searchInfo:0 ignoresRootContainerClippingRect:0];

  return v10;
}

- (_UIFocusMap)initWithFocusSystem:(id)system rootEnvironment:(id)environment coordinateSpace:(id)space searchInfo:(id)info ignoresRootContainerClippingRect:(BOOL)rect
{
  spaceCopy = space;
  environmentCopy = environment;
  systemCopy = system;
  focusItemContainer = [environmentCopy focusItemContainer];
  if (!focusItemContainer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:99 description:@"The environment does not provide an item container."];
  }

  v15 = _UIFocusRegionContainerFromEnvironmentAndContainer(environmentCopy, focusItemContainer);
  v16 = [(_UIFocusMap *)self initWithFocusSystem:systemCopy rootContainer:v15 coordinateSpace:spaceCopy searchInfo:0 ignoresRootContainerClippingRect:0];

  if (v15 != environmentCopy && v16)
  {
    objc_storeStrong(&v16->_rootContainerProxy, v15);
  }

  return v16;
}

- (_UIFocusMap)initWithFocusSystem:(id)system rootContainer:(id)container coordinateSpace:(id)space searchInfo:(id)info ignoresRootContainerClippingRect:(BOOL)rect
{
  systemCopy = system;
  containerCopy = container;
  spaceCopy = space;
  infoCopy = info;
  if (systemCopy)
  {
    if (containerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    if (containerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"rootContainer"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = _UIFocusMap;
  v17 = [(_UIFocusMap *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_focusSystem, systemCopy);
    objc_storeWeak(&v18->_rootContainer, containerCopy);
    if (!spaceCopy)
    {
      spaceCopy = [containerCopy _preferredFocusRegionCoordinateSpace];
      if (!spaceCopy)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:v18 file:@"_UIFocusMap.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

        spaceCopy = 0;
      }
    }

    objc_storeWeak(&v18->_coordinateSpace, spaceCopy);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v18->_minimumSearchArea.origin = *MEMORY[0x1E695F058];
    v18->_minimumSearchArea.size = v19;
    v18->_minimumSearchAreaIsEmpty = 1;
    if (infoCopy)
    {
      v20 = infoCopy;
    }

    else
    {
      v20 = +[_UIFocusSearchInfo defaultInfo];
    }

    searchInfo = v18->_searchInfo;
    v18->_searchInfo = v20;

    v18->_ignoresRootContainerClippingRect = rect;
  }

  return v18;
}

- (void)setMinimumSearchArea:(CGRect)area
{
  height = area.size.height;
  width = area.size.width;
  y = area.origin.y;
  x = area.origin.x;
  if (!CGRectEqualToRect(self->_minimumSearchArea, area))
  {
    self->_minimumSearchArea.origin.x = x;
    self->_minimumSearchArea.origin.y = y;
    self->_minimumSearchArea.size.width = width;
    self->_minimumSearchArea.size.height = height;
    v8.origin.x = x;
    v8.origin.y = y;
    v8.size.width = width;
    v8.size.height = height;
    self->_minimumSearchAreaIsEmpty = CGRectIsEmpty(v8);
  }
}

- (id)_inferredDefaultFocusItemInEnvironment:(id)environment
{
  v86 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  [(_UIFocusMap *)self _beginTrackingDefaultItemSearchInfoIfNecessary];
  v66 = environmentCopy;
  if (environmentCopy)
  {
    selfCopy = self;
    _defaultMapSnapshotter = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [_defaultMapSnapshotter setFocusedRegion:0];
    captureSnapshot = [_defaultMapSnapshotter captureSnapshot];
    _defaultItemSearchContext = [(_UIFocusMap *)self _defaultItemSearchContext];
    [_defaultItemSearchContext addSnapshot:captureSnapshot];

    v65 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    v63 = objc_opt_new();
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v62 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    regions = [captureSnapshot regions];
    v8 = [regions countByEnumeratingWithState:&v80 objects:v85 count:16];
    if (v8)
    {
      v9 = *v81;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v81 != v9)
        {
          objc_enumerationMutation(regions);
        }

        v11 = *(*(&v80 + 1) + 8 * v10);
        _defaultFocusItem = [v11 _defaultFocusItem];
        if (_defaultFocusItem)
        {
          searchInfo = [(_UIFocusMap *)selfCopy searchInfo];
          v14 = [searchInfo shouldIncludeFocusItem:_defaultFocusItem];

          if (v14)
          {
            if (_defaultFocusItem == v66)
            {
              v34 = v11;

              if (v34)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

            if (([v65 containsObject:_defaultFocusItem] & 1) == 0)
            {
              v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v76 = 0;
              v77 = &v76;
              v78 = 0x2020000000;
              v79 = 0;
              v72[0] = MEMORY[0x1E69E9820];
              v72[1] = 3221225472;
              v72[2] = __54___UIFocusMap__inferredDefaultFocusItemInEnvironment___block_invoke;
              v72[3] = &unk_1E71089B8;
              v16 = v15;
              v73 = v16;
              v74 = v66;
              v75 = &v76;
              _UIFocusEnvironmentEnumerateAncestorEnvironments(_defaultFocusItem, v72);
              if (*(v77 + 24) == 1)
              {
                [v65 addObject:_defaultFocusItem];
                [v63 addObject:v11];
                [weakToWeakObjectsMapTable setObject:v11 forKey:_defaultFocusItem];
                [v62 unionSet:v16];
              }

              _Block_object_dispose(&v76, 8);
            }
          }
        }

        if (v8 == ++v10)
        {
          v8 = [regions countByEnumeratingWithState:&v80 objects:v85 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if ([v65 count] != 1 || (objc_msgSend(v65, "anyObject"), (_defaultFocusItem = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([v65 count] < 2)
      {
        _defaultFocusItem = 0;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&selfCopy->_focusSystem);
        v18 = [WeakRetained _shouldReverseLayoutDirectionForEnvironment:v66];

        mapArea = [captureSnapshot mapArea];
        [mapArea frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28 = v21;
        v29 = v23;
        v30 = v25;
        v31 = v27;
        if (v18)
        {
          MaxX = CGRectGetMaxX(*&v28);
          v33 = 6;
        }

        else
        {
          MaxX = CGRectGetMinX(*&v28) + -1.0;
          v33 = 10;
        }

        v88.origin.x = v21;
        v88.origin.y = v23;
        v88.size.width = v25;
        v88.size.height = v27;
        MinY = CGRectGetMinY(v88);
        v36 = [[_UIFocusMovementInfo alloc] initWithHeading:v33 linearHeading:0 isInitial:1 shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:5];
        v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v38 = v63;
        v39 = [v38 countByEnumeratingWithState:&v68 objects:v84 count:16];
        if (v39)
        {
          v40 = MinY + -1.0;
          v41 = *v69;
          v42 = 1.79769313e308;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v69 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v44 = *(*(&v68 + 1) + 8 * i);
              _defaultFocusItem2 = [v44 _defaultFocusItem];
              if (_defaultFocusItem2)
              {
                v46 = _UIFocusMapDistanceToRegionBoundary(v44, [v44 _effectiveFocusableBoundariesForHeading:{-[_UIFocusMovementInfo heading](v36, "heading")}], v36, objc_msgSend(v44, "_preferredDistanceComparisonType"), 1, captureSnapshot, MaxX, v40, 1.0, 1.0);
                v47 = v46;
                if (v46 <= v42)
                {
                  if (v46 < v42)
                  {
                    [v37 removeAllObjects];
                  }

                  [v37 addObject:_defaultFocusItem2];
                  v42 = v47;
                }
              }
            }

            v39 = [v38 countByEnumeratingWithState:&v68 objects:v84 count:16];
          }

          while (v39);
        }

        _defaultFocusItem = [v37 firstObject];
        v48 = objc_loadWeakRetained(&selfCopy->_focusSystem);
        behavior = [v48 behavior];
        focusGroupMovementBehavior = [behavior focusGroupMovementBehavior];

        if (((_defaultFocusItem != 0) & (focusGroupMovementBehavior >> 4)) != 0)
        {
          v51 = [_UIFocusGroupMap alloc];
          coordinateSpace = [(_UIFocusMap *)selfCopy coordinateSpace];
          v53 = [(_UIFocusGroupMap *)v51 initWithItems:v65 coordinateSpace:coordinateSpace];
          focusGroupMap = selfCopy->_focusGroupMap;
          selfCopy->_focusGroupMap = v53;

          v55 = [(_UIFocusGroupMap *)selfCopy->_focusGroupMap focusGroupForItem:_defaultFocusItem];
          primaryItem = [v55 primaryItem];
          v57 = primaryItem;
          if (primaryItem)
          {
            v58 = primaryItem;

            _defaultFocusItem = v58;
          }
        }
      }
    }

LABEL_43:
    v34 = [weakToWeakObjectsMapTable objectForKey:_defaultFocusItem];
LABEL_44:
    _defaultItemSearchContext2 = [(_UIFocusMap *)selfCopy _defaultItemSearchContext];
    [_defaultItemSearchContext2 addDestinationRegion:v34];
  }

  else
  {
    _defaultFocusItem = 0;
  }

  return _defaultFocusItem;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  focusSystem = [requestCopy focusSystem];
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  if (focusSystem != WeakRetained)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:293 description:@"Submitted a focus movement request to a focus map with a mismatched focus system."];
  }

  [(_UIFocusMap *)self _beginTrackingFocusMovementSearchInfoIfNecessary];
  movementInfo = [requestCopy movementInfo];
  heading = [movementInfo heading];

  if (!heading)
  {
    v13 = 0;
    goto LABEL_18;
  }

  focusedItemInfo = [requestCopy focusedItemInfo];
  item = [focusedItemInfo item];

  if (item)
  {
    focusedRegion = [focusedItemInfo focusedRegion];
    v13 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:requestCopy startingFromRegion:focusedRegion];
  }

  else
  {
    movementInfo2 = [requestCopy movementInfo];
    [movementInfo2 _fallbackMovementOriginatingFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v55.origin.x = v16;
    v55.origin.y = v18;
    v55.size.width = v20;
    v55.size.height = v22;
    if (!CGRectIsNull(v55))
    {
      v56.origin.x = v16;
      v56.origin.y = v18;
      v56.size.width = v20;
      v56.size.height = v22;
      if (!CGRectIsEmpty(v56))
      {
        v23 = [_UIFocusRegion alloc];
        coordinateSpace = [(_UIFocusMap *)self coordinateSpace];
        v25 = [(_UIFocusRegion *)v23 initWithFrame:coordinateSpace coordinateSpace:v16, v18, v20, v22];

        v13 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:requestCopy startingFromRegion:v25];

        if (v13)
        {
          goto LABEL_17;
        }
      }
    }

    if (self->_minimumSearchAreaIsEmpty)
    {
      coordinateSpace2 = [(_UIFocusMap *)self coordinateSpace];
      [coordinateSpace2 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
    }

    else
    {
      [(_UIFocusMap *)self minimumSearchArea];
      v28 = v35;
      v30 = v36;
      v32 = v37;
      v34 = v38;
    }

    focusedRegion = [(_UIFocusMap *)self _defaultMapSnapshotter];
    focusedRegion2 = [focusedItemInfo focusedRegion];
    [focusedRegion setFocusedRegion:focusedRegion2];

    [focusedRegion setSnapshotFrame:{v28, v30, v32, v34}];
    movementInfo3 = [requestCopy movementInfo];
    [focusedRegion setClipToSnapshotRect:{objc_msgSend(movementInfo3, "_isLinearMovement") ^ 1}];

    movementInfo4 = [requestCopy movementInfo];
    [focusedRegion setMovementInfo:movementInfo4];

    captureSnapshot = [focusedRegion captureSnapshot];
    _focusMovementSearchContext = [(_UIFocusMap *)self _focusMovementSearchContext];
    [_focusMovementSearchContext addSnapshot:captureSnapshot];

    v44 = _UIRectDeparturePointAlongFocusHeading((heading >> 1) & 0x14 | (2 * heading) & 0x28 | (__rbit32(heading) >> 30), v28, v30, v32, v34);
    v46 = v45;
    v47 = [_UIFocusRegion alloc];
    coordinateSpace3 = [(_UIFocusMap *)self coordinateSpace];
    v49 = [(_UIFocusRegion *)v47 initWithFrame:coordinateSpace3 coordinateSpace:v44, v46, 1.0, 1.0];

    regions = [captureSnapshot regions];
    v13 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:requestCopy startingFromRegion:v49 inRegions:regions withSnapshot:captureSnapshot];
  }

LABEL_17:
LABEL_18:

  return v13;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)request startingFromRegion:(id)region
{
  requestCopy = request;
  regionCopy = region;
  [(_UIFocusMap *)self _beginTrackingFocusMovementSearchInfoIfNecessary];
  movementInfo = [requestCopy movementInfo];
  heading = [movementInfo heading];

  coordinateSpace = [(_UIFocusMap *)self coordinateSpace];
  [_UIFocusRegionEvaluator frameForRegion:regionCopy inCoordinateSpace:coordinateSpace];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (!heading)
  {
    goto LABEL_46;
  }

  v87.origin.x = v12;
  v87.origin.y = v14;
  v87.size.width = v16;
  v87.size.height = v18;
  if (CGRectIsEmpty(v87))
  {
    goto LABEL_46;
  }

  if (self->_minimumSearchAreaIsEmpty)
  {
    coordinateSpace2 = [(_UIFocusMap *)self coordinateSpace];
    [coordinateSpace2 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
  }

  else
  {
    [(_UIFocusMap *)self minimumSearchArea];
    v21 = v28;
    v23 = v29;
    v25 = v30;
    v27 = v31;
  }

  v88.origin.x = v21;
  v88.origin.y = v23;
  v88.size.width = v25;
  v79 = v27;
  v88.size.height = v27;
  v32 = v25;
  v78 = v25;
  v33 = CGRectGetMinY(v88) + -1.0;
  v89.origin.x = v12;
  v89.origin.y = v14;
  v89.size.width = v16;
  v89.size.height = v18;
  rect = v21;
  rect_16a = CGRectGetMinY(v89);
  v90.origin.x = v12;
  v90.origin.y = v14;
  v90.size.width = v16;
  v90.size.height = v18;
  v34 = rect_16a - CGRectGetHeight(v90);
  if (v33 < v34)
  {
    v34 = v33;
  }

  rect_16 = v34;
  v91.origin.x = v21;
  v91.origin.y = v23;
  v35 = v23;
  v80 = v23;
  v91.size.width = v32;
  v91.size.height = v79;
  v36 = CGRectGetMinX(v91) + -1.0;
  v92.origin.x = v12;
  v92.origin.y = v14;
  v92.size.width = v16;
  v92.size.height = v18;
  MinX = CGRectGetMinX(v92);
  v93.origin.x = v12;
  v93.origin.y = v14;
  v93.size.width = v16;
  v93.size.height = v18;
  v38 = MinX - CGRectGetWidth(v93);
  if (v36 < v38)
  {
    v38 = v36;
  }

  rect_8 = v38;
  v94.origin.x = rect;
  v94.origin.y = v35;
  v94.size.width = v78;
  v94.size.height = v79;
  v39 = CGRectGetMaxY(v94) + 1.0;
  v95.origin.x = v12;
  v95.origin.y = v14;
  v95.size.width = v16;
  v95.size.height = v18;
  MaxY = CGRectGetMaxY(v95);
  v96.origin.x = v12;
  v96.origin.y = v14;
  v96.size.width = v16;
  v96.size.height = v18;
  v41 = MaxY + CGRectGetHeight(v96);
  v42 = v79;
  if (v39 >= v41)
  {
    v43 = v39;
  }

  else
  {
    v43 = v41;
  }

  v45 = v80;
  v44 = rect;
  v46 = v78;
  v47 = CGRectGetMaxX(*(&v42 - 3)) + 1.0;
  v97.origin.x = v12;
  v97.origin.y = v14;
  v97.size.width = v16;
  v97.size.height = v18;
  MaxX = CGRectGetMaxX(v97);
  v98.origin.x = v12;
  v98.origin.y = v14;
  v98.size.width = v16;
  v98.size.height = v18;
  v49 = MaxX + CGRectGetWidth(v98);
  if (v47 >= v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = v49;
  }

  if ((heading & 4) != 0)
  {
    v51 = rect_8;
  }

  else
  {
    v51 = v50;
  }

  recta = v43;
  if (heading)
  {
    v52 = rect_16;
  }

  else
  {
    v52 = v43;
  }

  if ((heading & 0xC) == 0)
  {
    v99.origin.x = v12;
    v99.origin.y = v14;
    v99.size.width = v16;
    v99.size.height = v18;
    v51 = CGRectGetMaxX(v99);
  }

  if ((heading & 3) == 0)
  {
    v100.origin.x = v12;
    v100.origin.y = v14;
    v100.size.width = v16;
    v100.size.height = v18;
    v52 = CGRectGetMaxY(v100);
  }

  v53 = v51;
  if ((heading & 0xC) == 0 || (heading & 4) != 0)
  {
    v102.origin.x = v12;
    v102.origin.y = v14;
    v102.size.width = v16;
    v102.size.height = v18;
    v54 = CGRectGetMinX(v102);
  }

  else
  {
    v101.origin.x = v12;
    v101.origin.y = v14;
    v101.size.width = v16;
    v101.size.height = v18;
    v54 = CGRectGetMaxX(v101);
  }

  v55 = v54;
  if (heading & 3) == 0 || (heading)
  {
    v104.origin.x = v12;
    v104.origin.y = v14;
    v104.size.width = v16;
    v104.size.height = v18;
    MinY = CGRectGetMinY(v104);
  }

  else
  {
    v103.origin.x = v12;
    v103.origin.y = v14;
    v103.size.width = v16;
    v103.size.height = v18;
    MinY = CGRectGetMaxY(v103);
  }

  v57 = MinY;
  movementInfo2 = [requestCopy movementInfo];
  _isLinearMovement = [movementInfo2 _isLinearMovement];

  if (_isLinearMovement)
  {
    v60 = v50;
  }

  else
  {
    v60 = v53;
  }

  v61 = rect_8;
  if (_isLinearMovement)
  {
    v62 = recta;
  }

  else
  {
    v62 = v52;
  }

  if (!_isLinearMovement)
  {
    v61 = v55;
  }

  v63 = rect_16;
  if (!_isLinearMovement)
  {
    v63 = v57;
  }

  v64 = v60 - v61;
  v65 = v62 - v63;
  v105 = CGRectStandardize(*&v61);
  x = v105.origin.x;
  y = v105.origin.y;
  width = v105.size.width;
  height = v105.size.height;
  if (fabs(CGRectGetWidth(v105)) >= 0.0001 && (v106.origin.x = x, v106.origin.y = y, v106.size.width = width, v106.size.height = height, fabs(CGRectGetWidth(v106)) >= 0.0001))
  {
    _defaultMapSnapshotter = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [_defaultMapSnapshotter setFocusedRegion:regionCopy];
    [_defaultMapSnapshotter setSnapshotFrame:{x, y, width, height}];
    movementInfo3 = [requestCopy movementInfo];
    [_defaultMapSnapshotter setClipToSnapshotRect:{objc_msgSend(movementInfo3, "_isLinearMovement") ^ 1}];

    movementInfo4 = [requestCopy movementInfo];
    [_defaultMapSnapshotter setMovementInfo:movementInfo4];

    captureSnapshot = [_defaultMapSnapshotter captureSnapshot];
    _focusMovementSearchContext = [(_UIFocusMap *)self _focusMovementSearchContext];
    [_focusMovementSearchContext addSnapshot:captureSnapshot];

    regions = [captureSnapshot regions];
    v70 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:requestCopy startingFromRegion:regionCopy inRegions:regions withSnapshot:captureSnapshot];
  }

  else
  {
LABEL_46:
    v70 = 0;
  }

  return v70;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)request inRegions:(id)regions withSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  regionsCopy = regions;
  requestCopy = request;
  focusedItemInfo = [requestCopy focusedItemInfo];
  focusedRegion = [focusedItemInfo focusedRegion];

  v13 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:requestCopy startingFromRegion:focusedRegion inRegions:regionsCopy withSnapshot:snapshotCopy];

  return v13;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)request startingFromRegion:(id)region inRegions:(id)regions withSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  regionsCopy = regions;
  regionCopy = region;
  requestCopy = request;
  movementInfo = [requestCopy movementInfo];
  _isLinearMovement = [movementInfo _isLinearMovement];

  if (_isLinearMovement)
  {
    [(_UIFocusMap *)self _nextFocusedItemForLinearFocusMovementRequest:requestCopy startingFromRegion:regionCopy inRegions:regionsCopy withSnapshot:snapshotCopy];
  }

  else
  {
    [(_UIFocusMap *)self _nextFocusedItemForNonLinearFocusMovementRequest:requestCopy startingFromRegion:regionCopy inRegions:regionsCopy withSnapshot:snapshotCopy];
  }
  v16 = ;

  return v16;
}

- (id)_nextFocusedItemForNonLinearFocusMovementRequest:(id)request startingFromRegion:(id)region inRegions:(id)regions withSnapshot:(id)snapshot
{
  v215 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  regionCopy = region;
  regionsCopy = regions;
  snapshotCopy = snapshot;
  [(_UIFocusMap *)self _beginTrackingFocusMovementSearchInfoIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  movementInfo = [requestCopy movementInfo];
  v161 = requestCopy;
  focusedItemInfo = [requestCopy focusedItemInfo];
  heading = [movementInfo heading];
  _groupFilter = [movementInfo _groupFilter];
  v15 = MEMORY[0x1E695F050];
  v148 = regionCopy;
  if (regionCopy)
  {
    [snapshotCopy snapshotFrameForRegion:regionCopy];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = *v15;
    v25 = v15[1];
    v26 = v15[2];
    v27 = v15[3];
  }

  else
  {
    v24 = *MEMORY[0x1E695F050];
    v25 = *(MEMORY[0x1E695F050] + 8);
    v26 = *(MEMORY[0x1E695F050] + 16);
    v27 = *(MEMORY[0x1E695F050] + 24);
    v23 = v27;
    v21 = v26;
    v19 = v25;
    v17 = *MEMORY[0x1E695F050];
  }

  item = [focusedItemInfo item];
  v151 = item;
  v188 = v25;
  v190 = v24;
  v182 = v27;
  v184 = v26;
  if (item && (v29 = item, (objc_opt_respondsToSelector() & 1) != 0))
  {
    coordinateSpace = [snapshotCopy coordinateSpace];
    [v29 _focusCastingFrameForHeading:heading inCoordinateSpace:coordinateSpace];
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
  }

  else
  {
    _focusCasting = [WeakRetained _focusCasting];

    if (!_focusCasting)
    {
      goto LABEL_10;
    }

    coordinateSpace = [WeakRetained _focusCasting];
    coordinateSpace2 = [snapshotCopy coordinateSpace];
    [coordinateSpace castingFrameForFocusedItem:v151 heading:heading inCoordinateSpace:coordinateSpace2];
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
  }

LABEL_10:
  if (v151 && _groupFilter == 1)
  {
    v41 = [_UIDynamicFocusGroupMap alloc];
    coordinateSpace3 = [(_UIFocusMap *)self coordinateSpace];
    v43 = [(_UIDynamicFocusGroupMap *)v41 initWithCoordinateSpace:coordinateSpace3];

    v152 = v43;
    v44 = [(_UIDynamicFocusGroupMap *)v43 focusGroupIdentifierForItem:v151];
  }

  else
  {
    if (_groupFilter == 2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Primary item focus group filtering is not available for non linear focus movement."];
    }

    v44 = 0;
    v152 = 0;
  }

  v217.origin.x = v24;
  v217.origin.y = v25;
  v217.size.width = v26;
  v217.size.height = v27;
  v222.origin.y = v188;
  v222.origin.x = v190;
  v222.size.height = v182;
  v222.size.width = v184;
  if (!CGRectEqualToRect(v217, v222))
  {
    v23 = v27;
    v21 = v26;
    v19 = v25;
    v17 = v24;
  }

  if (!heading || ![regionsCopy count] || (v218.origin.x = v17, v218.origin.y = v19, v218.size.width = v21, v218.size.height = v23, CGRectIsEmpty(v218)))
  {
    lastObject = 0;
    goto LABEL_22;
  }

  v154 = v44;
  focusedItemInfo2 = [requestCopy focusedItemInfo];
  inheritedFocusMovementStyle = [focusedItemInfo2 inheritedFocusMovementStyle];

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  obj = regionsCopy;
  v191 = snapshotCopy;
  selfCopy = self;
  v159 = [obj countByEnumeratingWithState:&v203 objects:v213 count:16];
  if (!v159)
  {
    v153 = 0;
    v173 = 1.79769313e308;
    goto LABEL_131;
  }

  v153 = 0;
  v158 = *v204;
  v162 = -1;
  v50 = 1.1755e-38;
  v172 = 1.79769313e308;
  v51 = 1.79769313e308;
  v173 = 1.79769313e308;
  v168 = v21;
  v169 = v23;
  v166 = v17;
  v167 = v19;
  v163 = movementInfo;
  v170 = v49;
  v171 = inheritedFocusMovementStyle;
  do
  {
    v52 = 0;
    do
    {
      if (*v204 != v158)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v203 + 1) + 8 * v52);
      v183 = [v53 _effectiveFocusableBoundariesForHeading:heading];
      v181 = [v53 _effectiveBoundariesBlockingFocusMovementRequest:v161];
      _preferredDistanceComparisonType = [v53 _preferredDistanceComparisonType];
      [v53 _focusPriority];
      v55 = v54;
      v199 = 0u;
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      v185 = [&unk_1EFE2BE60 countByEnumeratingWithState:&v199 objects:v212 count:16];
      if (!v185)
      {
        goto LABEL_125;
      }

      v160 = v52;
      v176 = 0;
      v179 = v53;
      v180 = *v200;
      v174 = v55;
LABEL_32:
      v56 = 0;
      while (1)
      {
        if (*v200 != v180)
        {
          objc_enumerationMutation(&unk_1EFE2BE60);
        }

        v57 = *(*(&v199 + 1) + 8 * v56);
        unsignedIntegerValue = [v57 unsignedIntegerValue];
        v59 = unsignedIntegerValue & v183;
        v60 = unsignedIntegerValue & v181;
        if (!(unsignedIntegerValue & v183 | unsignedIntegerValue & v181))
        {
          goto LABEL_93;
        }

        v61 = unsignedIntegerValue;
        v62 = _UIFocusMapDistanceToRegionBoundary(v179, unsignedIntegerValue, movementInfo, 1, inheritedFocusMovementStyle, snapshotCopy, v17, v19, v21, v23);
        v178 = v62;
        if (!_preferredDistanceComparisonType)
        {
          v62 = _UIFocusMapDistanceToRegionBoundary(v179, v61, movementInfo, 0, inheritedFocusMovementStyle, snapshotCopy, v17, v19, v21, v23);
        }

        _ignoresSpeedBumpEdges = [v179 _ignoresSpeedBumpEdges];
        if (v62 < 0.0)
        {
          goto LABEL_93;
        }

        if (v62 < v172)
        {
          v64 = 1;
        }

        else
        {
          v64 = _ignoresSpeedBumpEdges;
        }

        if (v64 != 1)
        {
          goto LABEL_124;
        }

        [snapshotCopy snapshotFrameForRegion:v179];
        v175 = _UIRectIntersectsRectAlongFocusHeading(heading, v65, v66, v67, v68, v17, v19, v21, v23);
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        v198 = 0u;
        v69 = v49;
        v70 = [v69 countByEnumeratingWithState:&v195 objects:v211 count:16];
        if (v70)
        {
          v71 = *v196;
          while (2)
          {
            for (i = 0; i != v70; ++i)
            {
              if (*v196 != v71)
              {
                objc_enumerationMutation(v69);
              }

              v73 = [weakToWeakObjectsMapTable objectForKey:*(*(&v195 + 1) + 8 * i)];
              [snapshotCopy snapshotFrameForRegion:v73];
              v78 = _UIRectIntersectsRectAlongFocusHeading(heading, v74, v75, v76, v77, v17, v19, v21, v23);

              if (v78)
              {
                LODWORD(v70) = 1;
                snapshotCopy = v191;
                goto LABEL_53;
              }

              snapshotCopy = v191;
            }

            v70 = [v69 countByEnumeratingWithState:&v195 objects:v211 count:16];
            if (v70)
            {
              continue;
            }

            break;
          }

LABEL_53:
          movementInfo = v163;
        }

        v79 = v62;
        v80 = vabdd_f64(v173, v62);
        v81 = vabdd_f64(v51, v178);
        v82 = vabds_f32(v50, v55);
        v83 = v79;
        v84 = v79 < v173;

        v85 = v80 >= 0.0001 || v84;
        v86 = v80 < 0.0001 || v84;
        if ((v85 | v175))
        {
          v87 = v51;
          v88 = v50;
        }

        else
        {
          v87 = v51;
          v86 = v178 < v51;
          if (v81 < 0.0001)
          {
            v86 = 1;
          }

          v88 = v50;
          if (v55 > v50)
          {
            v86 = 1;
          }

          if (v82 < 0.0001)
          {
            v86 = 1;
          }
        }

        inheritedFocusMovementStyle = v171;
        if (v176)
        {
          v176 = 1;
          goto LABEL_91;
        }

        if (!v59 || !v86)
        {
          v176 = 0;
LABEL_91:
          v50 = v88;
          v51 = v87;
          v21 = v168;
          v23 = v169;
          v55 = v174;
          v91 = v83;
          v17 = v166;
          v19 = v167;
          if (v60)
          {
            break;
          }

          goto LABEL_92;
        }

        v89 = v81 < 0.0001;
        v51 = v87;
        if (v178 < v87)
        {
          v89 = 2;
        }

        if (v174 > v88)
        {
          v85 = 1;
        }

        if (v80 >= 0.0001)
        {
          v90 = 1;
        }

        else
        {
          v90 = 2;
        }

        v91 = v83;
        if (v83 < v173)
        {
          v90 = 2;
        }

        if (v85)
        {
          v92 = v90;
        }

        else
        {
          v92 = 0;
        }

        if (v85)
        {
          v50 = v88;
          v21 = v168;
          v23 = v169;
          v55 = v174;
          v17 = v166;
          v19 = v167;
          goto LABEL_99;
        }

        v93 = v82 < 0.0001;
        v50 = v88;
        v21 = v168;
        v23 = v169;
        v55 = v174;
        v17 = v166;
        v19 = v167;
        if (v93)
        {
          v92 = v89;
          if (v70)
          {
            if (v175)
            {
              goto LABEL_99;
            }

            v92 = 0;
          }

          else
          {
            if (!v175)
            {
              goto LABEL_99;
            }

            v92 = 2;
          }

          v94 = [&unk_1EFE2BE60 indexOfObject:v57];
LABEL_102:
          if (!v92)
          {
            goto LABEL_114;
          }

          goto LABEL_103;
        }

LABEL_99:
        v95 = [&unk_1EFE2BE60 indexOfObject:v57];
        v94 = v95;
        if (v92 != 1)
        {
          goto LABEL_102;
        }

        if (v95 <= v162)
        {
          if (v95 != v162)
          {
LABEL_114:
            v176 = 0;
            goto LABEL_115;
          }

          v94 = v162;
          v92 = 1;
        }

        else
        {
          v92 = 2;
        }

LABEL_103:
        v96 = [v191 _cachedNextFocusedItemForRegion:v179 withFocusMovementRequest:v161 inMap:selfCopy];
        if (v96 && ([(_UIFocusMap *)selfCopy searchInfo], v97 = objc_claimAutoreleasedReturnValue(), IsFocusableInFocusSystemWithSearchInfo = _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(v96, WeakRetained, v97), v97, IsFocusableInFocusSystemWithSearchInfo))
        {
          if (v154)
          {
            v99 = [(_UIDynamicFocusGroupMap *)v152 focusGroupIdentifierForItem:v96];
            v100 = [v154 isEqual:v99];

            if (!v100)
            {

              snapshotCopy = v191;
              v49 = v170;
              inheritedFocusMovementStyle = v171;
              goto LABEL_124;
            }
          }

          if (v92 == 2)
          {
            [v69 removeAllObjects];
            [weakToWeakObjectsMapTable removeAllObjects];
          }

          [v69 addObject:v96];
          [weakToWeakObjectsMapTable setObject:v179 forKey:v96];
          v176 = 1;
          v50 = v55;
          v173 = v91;
          inheritedFocusMovementStyle = v171;
          v51 = v178;
        }

        else
        {
          v176 = 0;
          v94 = v162;
        }

        v162 = v94;
LABEL_115:
        snapshotCopy = v191;
        if (v60)
        {
          break;
        }

LABEL_92:
        v49 = v170;
LABEL_93:
        if (++v56 == v185)
        {
          v101 = [&unk_1EFE2BE60 countByEnumeratingWithState:&v199 objects:v212 count:16];
          v185 = v101;
          if (!v101)
          {
            goto LABEL_124;
          }

          goto LABEL_32;
        }
      }

      if (![v69 count])
      {
        v153 = 1;
        v172 = v91;
        v49 = v170;
LABEL_124:
        v52 = v160;
        goto LABEL_125;
      }

      v52 = v160;
      if (v173 >= v91)
      {
        [v69 removeAllObjects];
        [weakToWeakObjectsMapTable removeAllObjects];
      }

      v153 = 1;
      v172 = v91;
      v49 = v170;
LABEL_125:
      ++v52;
    }

    while (v52 != v159);
    v102 = [obj countByEnumeratingWithState:&v203 objects:v213 count:16];
    v159 = v102;
  }

  while (v102);
LABEL_131:

  if ([v49 count] < 2)
  {
    lastObject = [v49 lastObject];
  }

  else
  {
    focusedRegion = [focusedItemInfo focusedRegion];
    v104 = focusedRegion;
    if (v151 && focusedRegion == v148 && fabs(v173) < 0.0001 && [v49 containsObject:v151])
    {
      lastObject = v151;
      goto LABEL_181;
    }

    lastObject = [WeakRetained _previousFocusedItem];
    if (([v49 containsObject:lastObject] & 1) == 0)
    {

      goto LABEL_142;
    }

    if (!lastObject)
    {
LABEL_142:
      movementInfo2 = [v161 movementInfo];
      heading2 = [movementInfo2 heading];

      v107 = objc_loadWeakRetained(&selfCopy->_coordinateSpace);
      v108 = WeakRetained;
      v109 = v49;
      v110 = v107;
      v111 = [v108 _shouldReverseLayoutDirectionForEnvironment:v108];
      if ((heading2 & 3) != 0)
      {
        v164 = movementInfo;
        v193 = v104;
        v186 = v109;
        if (v111)
        {
          v112 = v109;
          v113 = v110;
          v207 = 0u;
          v208 = 0u;
          v209 = 0u;
          v210 = 0u;
          v114 = [v112 countByEnumeratingWithState:&v207 objects:v214 count:16];
          if (v114)
          {
            v115 = v114;
            v116 = 0;
            v117 = *v208;
            v118 = 2.22507386e-308;
            do
            {
              for (j = 0; j != v115; ++j)
              {
                if (*v208 != v117)
                {
                  objc_enumerationMutation(v112);
                }

                v120 = *(*(&v207 + 1) + 8 * j);
                v219.origin.x = _UIFocusItemFrameInCoordinateSpace(v120, v113);
                MaxX = CGRectGetMaxX(v219);
                if (MaxX >= v118)
                {
                  v122 = MaxX;
                  v123 = v120;

                  v116 = v123;
                  v118 = v122;
                }

                snapshotCopy = v191;
              }

              v115 = [v112 countByEnumeratingWithState:&v207 objects:v214 count:16];
            }

            while (v115);
            goto LABEL_176;
          }

LABEL_175:
          v116 = 0;
          goto LABEL_176;
        }

        v112 = v109;
        v113 = v110;
        v207 = 0u;
        v208 = 0u;
        v209 = 0u;
        v210 = 0u;
        v135 = [v112 countByEnumeratingWithState:&v207 objects:v214 count:16];
        if (!v135)
        {
          goto LABEL_175;
        }

        v136 = v135;
        v116 = 0;
        v137 = *v208;
        v138 = 1.79769313e308;
        do
        {
          for (k = 0; k != v136; ++k)
          {
            if (*v208 != v137)
            {
              objc_enumerationMutation(v112);
            }

            v140 = *(*(&v207 + 1) + 8 * k);
            v221.origin.x = _UIFocusItemFrameInCoordinateSpace(v140, v113);
            MinX = CGRectGetMinX(v221);
            if (MinX <= v138)
            {
              v142 = MinX;
              v143 = v140;

              v116 = v143;
              v138 = v142;
            }

            snapshotCopy = v191;
          }

          v136 = [v112 countByEnumeratingWithState:&v207 objects:v214 count:16];
        }

        while (v136);
LABEL_176:

        lastObject = v116;
        movementInfo = v164;
        v104 = v193;
        v109 = v186;
      }

      else if ((heading2 & 0xC) != 0)
      {
        v194 = v104;
        v165 = movementInfo;
        v187 = v109;
        v124 = v109;
        v125 = v110;
        v207 = 0u;
        v208 = 0u;
        v209 = 0u;
        v210 = 0u;
        v126 = [v124 countByEnumeratingWithState:&v207 objects:v214 count:16];
        if (v126)
        {
          v127 = v126;
          lastObject = 0;
          v128 = *v208;
          v129 = 1.79769313e308;
          do
          {
            for (m = 0; m != v127; ++m)
            {
              if (*v208 != v128)
              {
                objc_enumerationMutation(v124);
              }

              v131 = *(*(&v207 + 1) + 8 * m);
              v220.origin.x = _UIFocusItemFrameInCoordinateSpace(v131, v125);
              MinY = CGRectGetMinY(v220);
              if (MinY <= v129)
              {
                v133 = MinY;
                v134 = v131;

                lastObject = v134;
                v129 = v133;
              }

              snapshotCopy = v191;
            }

            v127 = [v124 countByEnumeratingWithState:&v207 objects:v214 count:16];
          }

          while (v127);
        }

        else
        {
          lastObject = 0;
        }

        movementInfo = v165;
        v104 = v194;
        v109 = v187;
      }

      else
      {
        lastObject = [v109 lastObject];
      }
    }

LABEL_181:
  }

  v144 = v49;
  _focusMovementSearchContext = [(_UIFocusMap *)selfCopy _focusMovementSearchContext];
  v146 = [weakToWeakObjectsMapTable objectForKey:lastObject];
  [_focusMovementSearchContext addDestinationRegion:v146];

  _focusMovementSearchContext2 = [(_UIFocusMap *)selfCopy _focusMovementSearchContext];
  [_focusMovementSearchContext2 setDidFindFocusBlockingBoundary:(lastObject == 0) & v153];

  v44 = v154;
LABEL_22:

  return lastObject;
}

- (id)_nextFocusedItemForLinearFocusMovementRequest:(id)request startingFromRegion:(id)region inRegions:(id)regions withSnapshot:(id)snapshot
{
  v99 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  regionCopy = region;
  regionsCopy = regions;
  snapshotCopy = snapshot;
  [(_UIFocusMap *)self _beginTrackingFocusMovementSearchInfoIfNecessary];
  if (!regionCopy)
  {
    heading = 0;
    goto LABEL_52;
  }

  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  movementInfo = [requestCopy movementInfo];
  heading = [movementInfo heading];
  [snapshotCopy snapshotFrameForRegion:regionCopy];
  if (heading)
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    if (![regionsCopy count] || (v101.origin.x = v20, v101.origin.y = v21, v101.size.width = v22, v101.size.height = v23, CGRectIsEmpty(v101)))
    {
      heading = 0;
      goto LABEL_51;
    }

    v75 = regionsCopy;
    v76 = movementInfo;
    v72 = regionCopy;
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v79 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    _linearHeading = [movementInfo _linearHeading];
    focusedItemInfo = [requestCopy focusedItemInfo];
    item = [focusedItemInfo item];

    v74 = _linearHeading;
    if (_linearHeading)
    {
      heading = _linearHeading;
    }

    movementInfo2 = [requestCopy movementInfo];
    if (([movementInfo2 _linearHeading] & 0x110) != 0)
    {
      v27 = 256;
    }

    else
    {
      v27 = 512;
    }

    v28 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:WeakRetained];
    movementInfo3 = [requestCopy movementInfo];
    v30 = +[_UIFocusRegionMovementInfo _movementWithHeading:linearHeading:originatingHeading:isInitial:inputType:](_UIFocusRegionMovementInfo, "_movementWithHeading:linearHeading:originatingHeading:isInitial:inputType:", v27, v27, heading, 1, [movementInfo3 _inputType]);
    [(_UIFocusMovementRequest *)v28 setMovementInfo:v30];

    focusedItemInfo2 = [requestCopy focusedItemInfo];
    v84 = v28;
    [(_UIFocusMovementRequest *)v28 setFocusedItemInfo:focusedItemInfo2];

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v73 = requestCopy;
    if (([movementInfo _linearHeading] & 0x100) != 0)
    {
      reverseObjectEnumerator = [v75 reverseObjectEnumerator];
    }

    else
    {
      reverseObjectEnumerator = v75;
    }

    v33 = reverseObjectEnumerator;
    v34 = [reverseObjectEnumerator countByEnumeratingWithState:&v92 objects:v98 count:16];
    selfCopy = self;
    if (!v34)
    {
LABEL_46:

      allObjects = [v79 allObjects];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __103___UIFocusMap__nextFocusedItemForLinearFocusMovementRequest_startingFromRegion_inRegions_withSnapshot___block_invoke;
      v89[3] = &unk_1E71089E0;
      v90 = WeakRetained;
      selfCopy2 = self;
      v51 = [allObjects bs_filter:v89];

      requestCopy = v73;
      movementInfo4 = [v73 movementInfo];
      _groupFilter = [movementInfo4 _groupFilter];

      v54 = [(_UIFocusMap *)self _linearlySortedFocusItemsForItems:v51 groupFilter:_groupFilter itemStandInMap:strongToStrongObjectsMapTable];
      if (*__UILogGetCategoryCachedImpl("UIFocus", &_MergedGlobals_1093))
      {
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __103___UIFocusMap__nextFocusedItemForLinearFocusMovementRequest_startingFromRegion_inRegions_withSnapshot___block_invoke_2;
        v88[3] = &unk_1E7108A08;
        v88[4] = self;
        v66 = [v54 bs_map:v88];
        v67 = objc_opt_new();
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __103___UIFocusMap__nextFocusedItemForLinearFocusMovementRequest_startingFromRegion_inRegions_withSnapshot___block_invoke_3;
        v85[3] = &unk_1E7108A30;
        v68 = v67;
        v86 = v68;
        v69 = v66;
        v87 = v69;
        [v54 enumerateObjectsUsingBlock:v85];
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DD48);
        if (*CategoryCachedImpl)
        {
          v71 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v97 = v68;
            _os_log_impl(&dword_188A29000, v71, OS_LOG_TYPE_ERROR, "Linearly sorted items for rects:%@", buf, 0xCu);
          }
        }

        self = selfCopy;
      }

      movementInfo = v76;
      heading = _UIFocusGetNextItemFromList(item, v54, v74, [v76 _isLooping]);
      v55 = [weakToWeakObjectsMapTable objectForKey:heading];
      _focusMovementSearchContext = [(_UIFocusMap *)self _focusMovementSearchContext];
      [_focusMovementSearchContext addDestinationRegion:v55];

      if (heading && ([v55 _shouldUseNextFocusedItemForLinearSorting] & 1) == 0)
      {
        v57 = [weakToWeakObjectsMapTable objectForKey:heading];
        v58 = [snapshotCopy _cachedNextFocusedItemForRegion:v57 withFocusMovementRequest:v84 inMap:self];

        heading = v58;
      }

      _defaultItemSearchContext = [(_UIFocusMap *)self _defaultItemSearchContext];
      [_defaultItemSearchContext setLinearSortedFocusItems:v54];

      _focusMovementSearchContext2 = [(_UIFocusMap *)self _focusMovementSearchContext];
      [_focusMovementSearchContext2 setLinearSortedFocusItems:v54];

      focusGroupMap = self->_focusGroupMap;
      _defaultItemSearchContext2 = [(_UIFocusMap *)self _defaultItemSearchContext];
      [_defaultItemSearchContext2 setFocusGroupMap:focusGroupMap];

      v63 = self->_focusGroupMap;
      _focusMovementSearchContext3 = [(_UIFocusMap *)self _focusMovementSearchContext];
      [_focusMovementSearchContext3 setFocusGroupMap:v63];

      regionCopy = v72;
      regionsCopy = v75;
      goto LABEL_51;
    }

    v35 = v34;
    v36 = *v93;
    v38 = (v74 & 0x300) == 0 && item != 0;
    obj = v33;
LABEL_23:
    v39 = 0;
    while (1)
    {
      if (*v93 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v92 + 1) + 8 * v39);
      v41 = [snapshotCopy _cachedNextFocusedItemForRegion:v40 withFocusMovementRequest:v84 inMap:self];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        item2 = [v40 item];
        if (!v41)
        {
          goto LABEL_30;
        }
      }

      else
      {
        item2 = 0;
        if (!v41)
        {
LABEL_30:
          IsFocusableInFocusSystemWithSearchInfo = 0;
          goto LABEL_31;
        }
      }

      [(_UIFocusMap *)self searchInfo];
      v44 = v43 = snapshotCopy;
      IsFocusableInFocusSystemWithSearchInfo = _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(v41, WeakRetained, v44);

      snapshotCopy = v43;
LABEL_31:
      v46 = item2 == item && v38;
      if ((IsFocusableInFocusSystemWithSearchInfo & 1) != 0 || v46)
      {
        if (v46)
        {
          v48 = item2;
        }

        else
        {
          v48 = v41;
        }

        v47 = v48;

        self = selfCopy;
        if (([v40 _shouldUseNextFocusedItemForLinearSorting] & 1) == 0)
        {
          v49 = [v40 _focusedItemForLinearSorting:v84 inMap:selfCopy withSnapshot:snapshotCopy];
          [strongToStrongObjectsMapTable setObject:v47 forKey:v49];

          v47 = v49;
        }

        if (([v79 containsObject:v47] & 1) == 0)
        {
          [weakToWeakObjectsMapTable setObject:v40 forKey:v47];
          [v79 addObject:v47];
        }
      }

      else
      {
        v47 = v41;
        self = selfCopy;
      }

      if (v35 == ++v39)
      {
        v33 = obj;
        v35 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
        if (!v35)
        {
          goto LABEL_46;
        }

        goto LABEL_23;
      }
    }
  }

LABEL_51:

LABEL_52:

  return heading;
}

- (id)_allRegionsInContainer:(id)container intersectingRegion:(id)region
{
  containerCopy = container;
  regionCopy = region;
  coordinateSpace = [(_UIFocusMap *)self coordinateSpace];
  [_UIFocusRegionEvaluator frameForRegion:regionCopy inCoordinateSpace:coordinateSpace];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (containerCopy && (v24.origin.x = v10, v24.origin.y = v12, v24.size.width = v14, v24.size.height = v16, !CGRectIsEmpty(v24)))
  {
    _defaultMapSnapshotter = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [_defaultMapSnapshotter setRegionsContainer:containerCopy];
    [_defaultMapSnapshotter setSnapshotFrame:{v10, v12, v14, v16}];
    captureSnapshot = [_defaultMapSnapshotter captureSnapshot];
    _defaultItemSearchContext = [(_UIFocusMap *)self _defaultItemSearchContext];
    [_defaultItemSearchContext addSnapshot:captureSnapshot];

    _focusMovementSearchContext = [(_UIFocusMap *)self _focusMovementSearchContext];
    [_focusMovementSearchContext addSnapshot:captureSnapshot];

    regions = [captureSnapshot regions];
  }

  else
  {
    regions = MEMORY[0x1E695E0F0];
  }

  return regions;
}

- (id)_closestFocusableItemToPoint:(CGPoint)point inRect:(CGRect)rect itemFilter:(id)filter distanceMeasuringUnitPoint:(CGPoint)unitPoint
{
  y = unitPoint.y;
  x = unitPoint.x;
  height = rect.size.height;
  width = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  v71 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v73.origin.x = v11;
  v73.origin.y = v10;
  v73.size.width = width;
  v73.size.height = height;
  if (CGRectIsEmpty(v73))
  {
    v14 = 0;
  }

  else
  {
    _defaultMapSnapshotter = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [_defaultMapSnapshotter setSnapshotFrame:{v11, v10, width, height}];
    v55 = _defaultMapSnapshotter;
    captureSnapshot = [_defaultMapSnapshotter captureSnapshot];
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    regions = [captureSnapshot regions];
    v19 = [regions countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v66;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v66 != v21)
          {
            objc_enumerationMutation(regions);
          }

          v23 = *(*(&v65 + 1) + 8 * i);
          _defaultFocusItem = [v23 _defaultFocusItem];
          v25 = _defaultFocusItem;
          if (_defaultFocusItem && _UIFocusItemIsFocusableInFocusSystem(_defaultFocusItem, WeakRetained) && (!filterCopy || filterCopy[2](filterCopy, v25)))
          {
            [v17 addObject:v23];
          }
        }

        v20 = [regions countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v20);
    }

    v56 = filterCopy;

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v17;
    v26 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = 0;
      v30 = fmax(fmin(x, 1.0), 0.0);
      v31 = fmax(fmin(y, 1.0), 0.0);
      v32 = *v62;
      v33 = 1.79769313e308;
      v34 = 1.79769313e308;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v62 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v61 + 1) + 8 * j);
          _defaultFocusItem2 = [v36 _defaultFocusItem];
          if (_defaultFocusItem2)
          {
            v38 = [captureSnapshot originalRegionForRegion:v36];
            [captureSnapshot snapshotFrameForRegion:v38];
            v40 = v39;
            v42 = v41;
            v44 = v43;
            v46 = v45;
            v47 = objc_loadWeakRetained(&selfCopy->_coordinateSpace);
            [v47 bounds];
            v75.origin.x = v40;
            v75.origin.y = v42;
            v75.size.width = v44;
            v75.size.height = v46;
            v48 = CGRectContainsRect(v74, v75);

            v49 = (point.x - (v40 + v30 * v44)) * (point.x - (v40 + v30 * v44)) + (point.y - (v42 + v31 * v46)) * (point.y - (v42 + v31 * v46));
            if (v49 <= v34)
            {
              v50 = _defaultFocusItem2;

              v34 = v49;
              v29 = v50;
            }

            if (v49 <= v33 && v48)
            {
              v52 = _defaultFocusItem2;

              v28 = v52;
              v33 = v49;
            }
          }
        }

        v27 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v27);
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    if (v28)
    {
      v53 = v28;
    }

    else
    {
      v53 = v29;
    }

    v14 = v53;

    filterCopy = v56;
  }

  return v14;
}

- (id)_linearlySortedFocusItemsForItems:(id)items groupFilter:(int64_t)filter itemStandInMap:(id)map
{
  itemsCopy = items;
  mapCopy = map;
  if (filter == 1)
  {
    focusSystem = [(_UIFocusMap *)self focusSystem];
    focusedItem = [focusSystem focusedItem];

    if (focusedItem)
    {
      v17 = [itemsCopy arrayByAddingObject:focusedItem];
      v18 = [_UIFocusGroupMap alloc];
      coordinateSpace = [(_UIFocusMap *)self coordinateSpace];
      v20 = [(_UIFocusGroupMap *)v18 initWithItems:v17 standInItemsMap:mapCopy coordinateSpace:coordinateSpace];
      focusGroupMap = self->_focusGroupMap;
      self->_focusGroupMap = v20;

      v22 = [(_UIFocusGroupMap *)self->_focusGroupMap focusGroupForItem:focusedItem];
      v23 = MEMORY[0x1E696AE18];
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __76___UIFocusMap__linearlySortedFocusItemsForItems_groupFilter_itemStandInMap___block_invoke;
      v33 = &unk_1E7108A58;
      selfCopy = self;
      v35 = v22;
      v24 = v22;
      v25 = [v23 predicateWithBlock:&v30];
      v26 = [itemsCopy filteredArrayUsingPredicate:{v25, v30, v31, v32, v33, selfCopy}];

      itemsCopy = v26;
    }
  }

  else if (filter == 2)
  {
    v10 = [_UIFocusGroupMap alloc];
    coordinateSpace2 = [(_UIFocusMap *)self coordinateSpace];
    v12 = [(_UIFocusGroupMap *)v10 initWithItems:itemsCopy standInItemsMap:mapCopy coordinateSpace:coordinateSpace2];
    v13 = self->_focusGroupMap;
    self->_focusGroupMap = v12;

    focusItems = [(_UIFocusGroupMap *)self->_focusGroupMap focusItems];
    goto LABEL_8;
  }

  v27 = [itemsCopy sortedArrayUsingComparator:&__block_literal_global_227];

  focusItems = v27;
  itemsCopy = focusItems;
LABEL_8:
  v28 = focusItems;

  return v28;
}

- (BOOL)verifyFocusabilityForItem:(id)item
{
  v33 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [_UIFocusItemInfo infoWithItem:itemCopy];
  [v5 ancestorEnvironmentScrollableContainers];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v30 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        scrollableContainer = [*(*(&v27 + 1) + 8 * i) scrollableContainer];
        focusSystem = [(_UIFocusMap *)self focusSystem];
        v13 = [focusSystem _isScrollingScrollableContainer:scrollableContainer targetContentOffset:0];

        if (v13)
        {
          LOBYTE(v18) = 1;
          _defaultMapSnapshotter = v6;
          goto LABEL_21;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  _defaultMapSnapshotter = [(_UIFocusMap *)self _defaultMapSnapshotter];
  [_defaultMapSnapshotter setFocusedRegion:0];
  coordinateSpace = [_defaultMapSnapshotter coordinateSpace];
  [_defaultMapSnapshotter setSnapshotFrame:{_UIFocusItemFrameInCoordinateSpace(itemCopy, coordinateSpace)}];

  captureSnapshot = [_defaultMapSnapshotter captureSnapshot];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  regions = [captureSnapshot regions];
  v18 = [regions countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = *v24;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(regions);
        }

        _defaultFocusItem = [*(*(&v23 + 1) + 8 * j) _defaultFocusItem];

        if (_defaultFocusItem == itemCopy)
        {
          LOBYTE(v18) = 1;
          goto LABEL_20;
        }
      }

      v18 = [regions countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

LABEL_21:
  return v18;
}

- (void)_beginTrackingSearches
{
  if (self->_trackingSearchInfo)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:1109 description:@"Attempted to begin tracking focus map searches  without finishing previous tracking."];
  }

  *&self->_trackingSearchInfo = 257;
}

- (id)_stopTrackingSearches
{
  if (self->_trackingSearchInfo)
  {
    *&self->_trackingSearchInfo = 0;
    _defaultItemSearchContext = [(_UIFocusMap *)self _defaultItemSearchContext];
    v4 = _defaultItemSearchContext;
    if (_defaultItemSearchContext)
    {
      _focusMovementSearchContext = _defaultItemSearchContext;
    }

    else
    {
      _focusMovementSearchContext = [(_UIFocusMap *)self _focusMovementSearchContext];
    }

    v6 = _focusMovementSearchContext;

    defaultItemSearchInfo = self->_defaultItemSearchInfo;
    self->_defaultItemSearchInfo = 0;

    focusMovementSearchInfo = self->_focusMovementSearchInfo;
    self->_focusMovementSearchInfo = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_beginTrackingFocusMovementSearchInfoIfNecessary
{
  if (self->_trackingSearchInfo && self->_needsSearchInfo)
  {
    v3 = objc_alloc_init(_UIFocusMapSearchInfo);
    focusMovementSearchInfo = self->_focusMovementSearchInfo;
    self->_focusMovementSearchInfo = v3;

    self->_needsSearchInfo = 0;
  }
}

- (void)_trackExternalSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  _defaultItemSearchContext = [(_UIFocusMap *)self _defaultItemSearchContext];
  [_defaultItemSearchContext addSnapshot:snapshotCopy];

  _focusMovementSearchContext = [(_UIFocusMap *)self _focusMovementSearchContext];
  [_focusMovementSearchContext addSnapshot:snapshotCopy];
}

- (void)diagnoseFocusabilityForItem:(id)item report:(id)report
{
  v69 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  reportCopy = report;
  v9 = reportCopy;
  if (itemCopy)
  {
    if (reportCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:1158 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:1159 description:{@"Invalid parameter not satisfying: %@", @"report"}];

LABEL_3:
  if ([itemCopy canBecomeFocused])
  {
    _defaultMapSnapshotter = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [_defaultMapSnapshotter setFocusedRegion:0];
    captureSnapshot = [_defaultMapSnapshotter captureSnapshot];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v50 = captureSnapshot;
    originalRegions = [captureSnapshot originalRegions];
    v14 = [originalRegions countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v63;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v63 != v16)
          {
            objc_enumerationMutation(originalRegions);
          }

          v18 = *(*(&v62 + 1) + 8 * i);
          _defaultFocusItem = [v18 _defaultFocusItem];
          v20 = _defaultFocusItem;
          if (_defaultFocusItem)
          {
            v21 = _defaultFocusItem == itemCopy;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            [v12 addObject:v18];

            goto LABEL_18;
          }
        }

        v15 = [originalRegions countByEnumeratingWithState:&v62 objects:v68 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    if ([v12 count])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v23 = v12;
      v24 = [v23 countByEnumeratingWithState:&v58 objects:v67 count:16];
      v25 = v50;
      if (v24)
      {
        v26 = v24;
        v45 = _defaultMapSnapshotter;
        v27 = *v59;
        v48 = v23;
        v49 = v9;
        v46 = itemCopy;
        v47 = *v59;
        do
        {
          v28 = 0;
          v51 = v26;
          do
          {
            if (*v59 != v27)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v58 + 1) + 8 * v28);
            v30 = [v25 regionsForOriginalRegion:v29];
            if (![v30 count])
            {
              v52 = v30;
              v53 = v28;
              v31 = [_UIDebugIssue issueWithDescription:@"The item is being visually occluded by the following items:"];
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v32 = [v25 occludingRegionsForRegion:v29];
              v33 = [v32 countByEnumeratingWithState:&v54 objects:v66 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v55;
                do
                {
                  for (j = 0; j != v34; ++j)
                  {
                    if (*v55 != v35)
                    {
                      objc_enumerationMutation(v32);
                    }

                    _debugAssociatedObject = [*(*(&v54 + 1) + 8 * j) _debugAssociatedObject];
                    if (_debugAssociatedObject)
                    {
                      v38 = MEMORY[0x1E696AEC0];
                      v39 = objc_opt_class();
                      v40 = NSStringFromClass(v39);
                      v41 = [v38 stringWithFormat:@"<%@: %p>", v40, _debugAssociatedObject];

                      v42 = [_UIDebugIssue issueWithDescription:v41];

                      [v42 setPrefix:&stru_1EFB14550];
                      [v31 addIssue:v42];
                    }
                  }

                  v34 = [v32 countByEnumeratingWithState:&v54 objects:v66 count:16];
                }

                while (v34);
              }

              v9 = v49;
              [v49 addIssue:v31];

              v25 = v50;
              v26 = v51;
              v27 = v47;
              v23 = v48;
              v30 = v52;
              v28 = v53;
            }

            ++v28;
          }

          while (v28 != v26);
          v26 = [v23 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v26);
        _defaultMapSnapshotter = v45;
        itemCopy = v46;
      }
    }

    else
    {
      v23 = [_UIDebugIssue issueWithDescription:@"This item is not visible onscreen."];
      [v9 addIssue:v23];
      v25 = v50;
    }
  }

  else
  {
    v22 = [_UIDebugIssue issueWithDescription:@"This item returns NO from -canBecomeFocused."];
    [v9 addIssue:v22];
  }
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  return WeakRetained;
}

- (_UIFocusRegionContainer)rootContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_rootContainer);

  return WeakRetained;
}

- (UICoordinateSpace)coordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);

  return WeakRetained;
}

- (CGRect)minimumSearchArea
{
  x = self->_minimumSearchArea.origin.x;
  y = self->_minimumSearchArea.origin.y;
  width = self->_minimumSearchArea.size.width;
  height = self->_minimumSearchArea.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end