@interface _UIFocusMap
- (BOOL)verifyFocusabilityForItem:(id)a3;
- (CGRect)minimumSearchArea;
- (UICoordinateSpace)coordinateSpace;
- (UIFocusSystem)focusSystem;
- (_UIFocusMap)init;
- (_UIFocusMap)initWithFocusSystem:(id)a3 rootContainer:(id)a4 coordinateSpace:(id)a5 searchInfo:(id)a6 ignoresRootContainerClippingRect:(BOOL)a7;
- (_UIFocusMap)initWithFocusSystem:(id)a3 rootEnvironment:(id)a4;
- (_UIFocusMap)initWithFocusSystem:(id)a3 rootEnvironment:(id)a4 coordinateSpace:(id)a5 searchInfo:(id)a6 ignoresRootContainerClippingRect:(BOOL)a7;
- (_UIFocusRegionContainer)rootContainer;
- (id)_allRegionsInContainer:(id)a3 intersectingRegion:(id)a4;
- (id)_closestFocusableItemToPoint:(CGPoint)a3 inRect:(CGRect)a4 itemFilter:(id)a5 distanceMeasuringUnitPoint:(CGPoint)a6;
- (id)_defaultMapSnapshotter;
- (id)_inferredDefaultFocusItemInEnvironment:(id)a3;
- (id)_linearlySortedFocusItemsForItems:(id)a3 groupFilter:(int64_t)a4 itemStandInMap:(id)a5;
- (id)_nextFocusedItemForFocusMovementRequest:(id)a3;
- (id)_nextFocusedItemForFocusMovementRequest:(id)a3 inRegions:(id)a4 withSnapshot:(id)a5;
- (id)_nextFocusedItemForFocusMovementRequest:(id)a3 startingFromRegion:(id)a4;
- (id)_nextFocusedItemForFocusMovementRequest:(id)a3 startingFromRegion:(id)a4 inRegions:(id)a5 withSnapshot:(id)a6;
- (id)_nextFocusedItemForLinearFocusMovementRequest:(id)a3 startingFromRegion:(id)a4 inRegions:(id)a5 withSnapshot:(id)a6;
- (id)_nextFocusedItemForNonLinearFocusMovementRequest:(id)a3 startingFromRegion:(id)a4 inRegions:(id)a5 withSnapshot:(id)a6;
- (id)_stopTrackingSearches;
- (void)_beginTrackingDefaultItemSearchInfoIfNecessary;
- (void)_beginTrackingFocusMovementSearchInfoIfNecessary;
- (void)_beginTrackingSearches;
- (void)_trackExternalSnapshot:(id)a3;
- (void)diagnoseFocusabilityForItem:(id)a3 report:(id)a4;
- (void)setMinimumSearchArea:(CGRect)a3;
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
  v7 = [(_UIFocusMap *)self searchInfo];
  v8 = [(_UIFocusMapSnapshotter *)v3 initWithFocusSystem:WeakRetained rootContainer:v5 coordinateSpace:v6 searchInfo:v7 ignoresRootContainerClippingRect:self->_ignoresRootContainerClippingRect];

  return v8;
}

- (_UIFocusMap)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:85 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusMap)initWithFocusSystem:(id)a3 rootEnvironment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"rootEnvironment"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(_UIFocusMap *)self initWithFocusSystem:v7 rootEnvironment:v9 coordinateSpace:0 searchInfo:0 ignoresRootContainerClippingRect:0];

  return v10;
}

- (_UIFocusMap)initWithFocusSystem:(id)a3 rootEnvironment:(id)a4 coordinateSpace:(id)a5 searchInfo:(id)a6 ignoresRootContainerClippingRect:(BOOL)a7
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 focusItemContainer];
  if (!v14)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:99 description:@"The environment does not provide an item container."];
  }

  v15 = _UIFocusRegionContainerFromEnvironmentAndContainer(v12, v14);
  v16 = [(_UIFocusMap *)self initWithFocusSystem:v13 rootContainer:v15 coordinateSpace:v11 searchInfo:0 ignoresRootContainerClippingRect:0];

  if (v15 != v12 && v16)
  {
    objc_storeStrong(&v16->_rootContainerProxy, v15);
  }

  return v16;
}

- (_UIFocusMap)initWithFocusSystem:(id)a3 rootContainer:(id)a4 coordinateSpace:(id)a5 searchInfo:(id)a6 ignoresRootContainerClippingRect:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"rootContainer"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = _UIFocusMap;
  v17 = [(_UIFocusMap *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_focusSystem, v13);
    objc_storeWeak(&v18->_rootContainer, v14);
    if (!v15)
    {
      v15 = [v14 _preferredFocusRegionCoordinateSpace];
      if (!v15)
      {
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        [v25 handleFailureInMethod:a2 object:v18 file:@"_UIFocusMap.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

        v15 = 0;
      }
    }

    objc_storeWeak(&v18->_coordinateSpace, v15);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v18->_minimumSearchArea.origin = *MEMORY[0x1E695F058];
    v18->_minimumSearchArea.size = v19;
    v18->_minimumSearchAreaIsEmpty = 1;
    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = +[_UIFocusSearchInfo defaultInfo];
    }

    searchInfo = v18->_searchInfo;
    v18->_searchInfo = v20;

    v18->_ignoresRootContainerClippingRect = a7;
  }

  return v18;
}

- (void)setMinimumSearchArea:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_minimumSearchArea, a3))
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

- (id)_inferredDefaultFocusItemInEnvironment:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_UIFocusMap *)self _beginTrackingDefaultItemSearchInfoIfNecessary];
  v66 = v4;
  if (v4)
  {
    v67 = self;
    v61 = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [v61 setFocusedRegion:0];
    v5 = [v61 captureSnapshot];
    v6 = [(_UIFocusMap *)self _defaultItemSearchContext];
    [v6 addSnapshot:v5];

    v65 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    v63 = objc_opt_new();
    v64 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v62 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v7 = [v5 regions];
    v8 = [v7 countByEnumeratingWithState:&v80 objects:v85 count:16];
    if (v8)
    {
      v9 = *v81;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v81 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v80 + 1) + 8 * v10);
        v12 = [v11 _defaultFocusItem];
        if (v12)
        {
          v13 = [(_UIFocusMap *)v67 searchInfo];
          v14 = [v13 shouldIncludeFocusItem:v12];

          if (v14)
          {
            if (v12 == v66)
            {
              v34 = v11;

              if (v34)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

            if (([v65 containsObject:v12] & 1) == 0)
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
              _UIFocusEnvironmentEnumerateAncestorEnvironments(v12, v72);
              if (*(v77 + 24) == 1)
              {
                [v65 addObject:v12];
                [v63 addObject:v11];
                [v64 setObject:v11 forKey:v12];
                [v62 unionSet:v16];
              }

              _Block_object_dispose(&v76, 8);
            }
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v80 objects:v85 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if ([v65 count] != 1 || (objc_msgSend(v65, "anyObject"), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([v65 count] < 2)
      {
        v12 = 0;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&v67->_focusSystem);
        v18 = [WeakRetained _shouldReverseLayoutDirectionForEnvironment:v66];

        v19 = [v5 mapArea];
        [v19 frame];
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
              v45 = [v44 _defaultFocusItem];
              if (v45)
              {
                v46 = _UIFocusMapDistanceToRegionBoundary(v44, [v44 _effectiveFocusableBoundariesForHeading:{-[_UIFocusMovementInfo heading](v36, "heading")}], v36, objc_msgSend(v44, "_preferredDistanceComparisonType"), 1, v5, MaxX, v40, 1.0, 1.0);
                v47 = v46;
                if (v46 <= v42)
                {
                  if (v46 < v42)
                  {
                    [v37 removeAllObjects];
                  }

                  [v37 addObject:v45];
                  v42 = v47;
                }
              }
            }

            v39 = [v38 countByEnumeratingWithState:&v68 objects:v84 count:16];
          }

          while (v39);
        }

        v12 = [v37 firstObject];
        v48 = objc_loadWeakRetained(&v67->_focusSystem);
        v49 = [v48 behavior];
        v50 = [v49 focusGroupMovementBehavior];

        if (((v12 != 0) & (v50 >> 4)) != 0)
        {
          v51 = [_UIFocusGroupMap alloc];
          v52 = [(_UIFocusMap *)v67 coordinateSpace];
          v53 = [(_UIFocusGroupMap *)v51 initWithItems:v65 coordinateSpace:v52];
          focusGroupMap = v67->_focusGroupMap;
          v67->_focusGroupMap = v53;

          v55 = [(_UIFocusGroupMap *)v67->_focusGroupMap focusGroupForItem:v12];
          v56 = [v55 primaryItem];
          v57 = v56;
          if (v56)
          {
            v58 = v56;

            v12 = v58;
          }
        }
      }
    }

LABEL_43:
    v34 = [v64 objectForKey:v12];
LABEL_44:
    v59 = [(_UIFocusMap *)v67 _defaultItemSearchContext];
    [v59 addDestinationRegion:v34];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  v6 = [v5 focusSystem];
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  if (v6 != WeakRetained)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [v53 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:293 description:@"Submitted a focus movement request to a focus map with a mismatched focus system."];
  }

  [(_UIFocusMap *)self _beginTrackingFocusMovementSearchInfoIfNecessary];
  v8 = [v5 movementInfo];
  v9 = [v8 heading];

  if (!v9)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v10 = [v5 focusedItemInfo];
  v11 = [v10 item];

  if (v11)
  {
    v12 = [v10 focusedRegion];
    v13 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:v5 startingFromRegion:v12];
  }

  else
  {
    v14 = [v5 movementInfo];
    [v14 _fallbackMovementOriginatingFrame];
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
        v24 = [(_UIFocusMap *)self coordinateSpace];
        v25 = [(_UIFocusRegion *)v23 initWithFrame:v24 coordinateSpace:v16, v18, v20, v22];

        v13 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:v5 startingFromRegion:v25];

        if (v13)
        {
          goto LABEL_17;
        }
      }
    }

    if (self->_minimumSearchAreaIsEmpty)
    {
      v26 = [(_UIFocusMap *)self coordinateSpace];
      [v26 bounds];
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

    v12 = [(_UIFocusMap *)self _defaultMapSnapshotter];
    v39 = [v10 focusedRegion];
    [v12 setFocusedRegion:v39];

    [v12 setSnapshotFrame:{v28, v30, v32, v34}];
    v40 = [v5 movementInfo];
    [v12 setClipToSnapshotRect:{objc_msgSend(v40, "_isLinearMovement") ^ 1}];

    v41 = [v5 movementInfo];
    [v12 setMovementInfo:v41];

    v42 = [v12 captureSnapshot];
    v43 = [(_UIFocusMap *)self _focusMovementSearchContext];
    [v43 addSnapshot:v42];

    v44 = _UIRectDeparturePointAlongFocusHeading((v9 >> 1) & 0x14 | (2 * v9) & 0x28 | (__rbit32(v9) >> 30), v28, v30, v32, v34);
    v46 = v45;
    v47 = [_UIFocusRegion alloc];
    v48 = [(_UIFocusMap *)self coordinateSpace];
    v49 = [(_UIFocusRegion *)v47 initWithFrame:v48 coordinateSpace:v44, v46, 1.0, 1.0];

    v50 = [v42 regions];
    v13 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:v5 startingFromRegion:v49 inRegions:v50 withSnapshot:v42];
  }

LABEL_17:
LABEL_18:

  return v13;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)a3 startingFromRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_UIFocusMap *)self _beginTrackingFocusMovementSearchInfoIfNecessary];
  v8 = [v6 movementInfo];
  v9 = [v8 heading];

  v10 = [(_UIFocusMap *)self coordinateSpace];
  [_UIFocusRegionEvaluator frameForRegion:v7 inCoordinateSpace:v10];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (!v9)
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
    v19 = [(_UIFocusMap *)self coordinateSpace];
    [v19 bounds];
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

  if ((v9 & 4) != 0)
  {
    v51 = rect_8;
  }

  else
  {
    v51 = v50;
  }

  recta = v43;
  if (v9)
  {
    v52 = rect_16;
  }

  else
  {
    v52 = v43;
  }

  if ((v9 & 0xC) == 0)
  {
    v99.origin.x = v12;
    v99.origin.y = v14;
    v99.size.width = v16;
    v99.size.height = v18;
    v51 = CGRectGetMaxX(v99);
  }

  if ((v9 & 3) == 0)
  {
    v100.origin.x = v12;
    v100.origin.y = v14;
    v100.size.width = v16;
    v100.size.height = v18;
    v52 = CGRectGetMaxY(v100);
  }

  v53 = v51;
  if ((v9 & 0xC) == 0 || (v9 & 4) != 0)
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
  if (v9 & 3) == 0 || (v9)
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
  v58 = [v6 movementInfo];
  v59 = [v58 _isLinearMovement];

  if (v59)
  {
    v60 = v50;
  }

  else
  {
    v60 = v53;
  }

  v61 = rect_8;
  if (v59)
  {
    v62 = recta;
  }

  else
  {
    v62 = v52;
  }

  if (!v59)
  {
    v61 = v55;
  }

  v63 = rect_16;
  if (!v59)
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
    v72 = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [v72 setFocusedRegion:v7];
    [v72 setSnapshotFrame:{x, y, width, height}];
    v73 = [v6 movementInfo];
    [v72 setClipToSnapshotRect:{objc_msgSend(v73, "_isLinearMovement") ^ 1}];

    v74 = [v6 movementInfo];
    [v72 setMovementInfo:v74];

    v75 = [v72 captureSnapshot];
    v76 = [(_UIFocusMap *)self _focusMovementSearchContext];
    [v76 addSnapshot:v75];

    v77 = [v75 regions];
    v70 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:v6 startingFromRegion:v7 inRegions:v77 withSnapshot:v75];
  }

  else
  {
LABEL_46:
    v70 = 0;
  }

  return v70;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)a3 inRegions:(id)a4 withSnapshot:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 focusedItemInfo];
  v12 = [v11 focusedRegion];

  v13 = [(_UIFocusMap *)self _nextFocusedItemForFocusMovementRequest:v10 startingFromRegion:v12 inRegions:v9 withSnapshot:v8];

  return v13;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)a3 startingFromRegion:(id)a4 inRegions:(id)a5 withSnapshot:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 movementInfo];
  v15 = [v14 _isLinearMovement];

  if (v15)
  {
    [(_UIFocusMap *)self _nextFocusedItemForLinearFocusMovementRequest:v13 startingFromRegion:v12 inRegions:v11 withSnapshot:v10];
  }

  else
  {
    [(_UIFocusMap *)self _nextFocusedItemForNonLinearFocusMovementRequest:v13 startingFromRegion:v12 inRegions:v11 withSnapshot:v10];
  }
  v16 = ;

  return v16;
}

- (id)_nextFocusedItemForNonLinearFocusMovementRequest:(id)a3 startingFromRegion:(id)a4 inRegions:(id)a5 withSnapshot:(id)a6
{
  v215 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v149 = a5;
  v12 = a6;
  [(_UIFocusMap *)self _beginTrackingFocusMovementSearchInfoIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  v13 = [v10 movementInfo];
  v161 = v10;
  v150 = [v10 focusedItemInfo];
  v192 = [v13 heading];
  v14 = [v13 _groupFilter];
  v15 = MEMORY[0x1E695F050];
  v148 = v11;
  if (v11)
  {
    [v12 snapshotFrameForRegion:v11];
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

  v28 = [v150 item];
  v151 = v28;
  v188 = v25;
  v190 = v24;
  v182 = v27;
  v184 = v26;
  if (v28 && (v29 = v28, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v30 = [v12 coordinateSpace];
    [v29 _focusCastingFrameForHeading:v192 inCoordinateSpace:v30];
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
  }

  else
  {
    v35 = [WeakRetained _focusCasting];

    if (!v35)
    {
      goto LABEL_10;
    }

    v30 = [WeakRetained _focusCasting];
    v36 = [v12 coordinateSpace];
    [v30 castingFrameForFocusedItem:v151 heading:v192 inCoordinateSpace:v36];
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
  }

LABEL_10:
  if (v151 && v14 == 1)
  {
    v41 = [_UIDynamicFocusGroupMap alloc];
    v42 = [(_UIFocusMap *)self coordinateSpace];
    v43 = [(_UIDynamicFocusGroupMap *)v41 initWithCoordinateSpace:v42];

    v152 = v43;
    v44 = [(_UIDynamicFocusGroupMap *)v43 focusGroupIdentifierForItem:v151];
  }

  else
  {
    if (v14 == 2)
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

  if (!v192 || ![v149 count] || (v218.origin.x = v17, v218.origin.y = v19, v218.size.width = v21, v218.size.height = v23, CGRectIsEmpty(v218)))
  {
    v45 = 0;
    goto LABEL_22;
  }

  v154 = v44;
  v47 = [v10 focusedItemInfo];
  v48 = [v47 inheritedFocusMovementStyle];

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v189 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  obj = v149;
  v191 = v12;
  v157 = self;
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
  v163 = v13;
  v170 = v49;
  v171 = v48;
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
      v183 = [v53 _effectiveFocusableBoundariesForHeading:v192];
      v181 = [v53 _effectiveBoundariesBlockingFocusMovementRequest:v161];
      v177 = [v53 _preferredDistanceComparisonType];
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
        v58 = [v57 unsignedIntegerValue];
        v59 = v58 & v183;
        v60 = v58 & v181;
        if (!(v58 & v183 | v58 & v181))
        {
          goto LABEL_93;
        }

        v61 = v58;
        v62 = _UIFocusMapDistanceToRegionBoundary(v179, v58, v13, 1, v48, v12, v17, v19, v21, v23);
        v178 = v62;
        if (!v177)
        {
          v62 = _UIFocusMapDistanceToRegionBoundary(v179, v61, v13, 0, v48, v12, v17, v19, v21, v23);
        }

        v63 = [v179 _ignoresSpeedBumpEdges];
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
          v64 = v63;
        }

        if (v64 != 1)
        {
          goto LABEL_124;
        }

        [v12 snapshotFrameForRegion:v179];
        v175 = _UIRectIntersectsRectAlongFocusHeading(v192, v65, v66, v67, v68, v17, v19, v21, v23);
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

              v73 = [v189 objectForKey:*(*(&v195 + 1) + 8 * i)];
              [v12 snapshotFrameForRegion:v73];
              v78 = _UIRectIntersectsRectAlongFocusHeading(v192, v74, v75, v76, v77, v17, v19, v21, v23);

              if (v78)
              {
                LODWORD(v70) = 1;
                v12 = v191;
                goto LABEL_53;
              }

              v12 = v191;
            }

            v70 = [v69 countByEnumeratingWithState:&v195 objects:v211 count:16];
            if (v70)
            {
              continue;
            }

            break;
          }

LABEL_53:
          v13 = v163;
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

        v48 = v171;
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
        v96 = [v191 _cachedNextFocusedItemForRegion:v179 withFocusMovementRequest:v161 inMap:v157];
        if (v96 && ([(_UIFocusMap *)v157 searchInfo], v97 = objc_claimAutoreleasedReturnValue(), IsFocusableInFocusSystemWithSearchInfo = _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(v96, WeakRetained, v97), v97, IsFocusableInFocusSystemWithSearchInfo))
        {
          if (v154)
          {
            v99 = [(_UIDynamicFocusGroupMap *)v152 focusGroupIdentifierForItem:v96];
            v100 = [v154 isEqual:v99];

            if (!v100)
            {

              v12 = v191;
              v49 = v170;
              v48 = v171;
              goto LABEL_124;
            }
          }

          if (v92 == 2)
          {
            [v69 removeAllObjects];
            [v189 removeAllObjects];
          }

          [v69 addObject:v96];
          [v189 setObject:v179 forKey:v96];
          v176 = 1;
          v50 = v55;
          v173 = v91;
          v48 = v171;
          v51 = v178;
        }

        else
        {
          v176 = 0;
          v94 = v162;
        }

        v162 = v94;
LABEL_115:
        v12 = v191;
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
        [v189 removeAllObjects];
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
    v45 = [v49 lastObject];
  }

  else
  {
    v103 = [v150 focusedRegion];
    v104 = v103;
    if (v151 && v103 == v148 && fabs(v173) < 0.0001 && [v49 containsObject:v151])
    {
      v45 = v151;
      goto LABEL_181;
    }

    v45 = [WeakRetained _previousFocusedItem];
    if (([v49 containsObject:v45] & 1) == 0)
    {

      goto LABEL_142;
    }

    if (!v45)
    {
LABEL_142:
      v105 = [v161 movementInfo];
      v106 = [v105 heading];

      v107 = objc_loadWeakRetained(&v157->_coordinateSpace);
      v108 = WeakRetained;
      v109 = v49;
      v110 = v107;
      v111 = [v108 _shouldReverseLayoutDirectionForEnvironment:v108];
      if ((v106 & 3) != 0)
      {
        v164 = v13;
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

                v12 = v191;
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

            v12 = v191;
          }

          v136 = [v112 countByEnumeratingWithState:&v207 objects:v214 count:16];
        }

        while (v136);
LABEL_176:

        v45 = v116;
        v13 = v164;
        v104 = v193;
        v109 = v186;
      }

      else if ((v106 & 0xC) != 0)
      {
        v194 = v104;
        v165 = v13;
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
          v45 = 0;
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

                v45 = v134;
                v129 = v133;
              }

              v12 = v191;
            }

            v127 = [v124 countByEnumeratingWithState:&v207 objects:v214 count:16];
          }

          while (v127);
        }

        else
        {
          v45 = 0;
        }

        v13 = v165;
        v104 = v194;
        v109 = v187;
      }

      else
      {
        v45 = [v109 lastObject];
      }
    }

LABEL_181:
  }

  v144 = v49;
  v145 = [(_UIFocusMap *)v157 _focusMovementSearchContext];
  v146 = [v189 objectForKey:v45];
  [v145 addDestinationRegion:v146];

  v147 = [(_UIFocusMap *)v157 _focusMovementSearchContext];
  [v147 setDidFindFocusBlockingBoundary:(v45 == 0) & v153];

  v44 = v154;
LABEL_22:

  return v45;
}

- (id)_nextFocusedItemForLinearFocusMovementRequest:(id)a3 startingFromRegion:(id)a4 inRegions:(id)a5 withSnapshot:(id)a6
{
  v99 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(_UIFocusMap *)self _beginTrackingFocusMovementSearchInfoIfNecessary];
  if (!v11)
  {
    v15 = 0;
    goto LABEL_52;
  }

  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  v14 = [v10 movementInfo];
  v15 = [v14 heading];
  [v13 snapshotFrameForRegion:v11];
  if (v15)
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    if (![v12 count] || (v101.origin.x = v20, v101.origin.y = v21, v101.size.width = v22, v101.size.height = v23, CGRectIsEmpty(v101)))
    {
      v15 = 0;
      goto LABEL_51;
    }

    v75 = v12;
    v76 = v14;
    v72 = v11;
    v78 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v79 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    v24 = [v14 _linearHeading];
    v25 = [v10 focusedItemInfo];
    v83 = [v25 item];

    v74 = v24;
    if (v24)
    {
      v15 = v24;
    }

    v26 = [v10 movementInfo];
    if (([v26 _linearHeading] & 0x110) != 0)
    {
      v27 = 256;
    }

    else
    {
      v27 = 512;
    }

    v28 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:WeakRetained];
    v29 = [v10 movementInfo];
    v30 = +[_UIFocusRegionMovementInfo _movementWithHeading:linearHeading:originatingHeading:isInitial:inputType:](_UIFocusRegionMovementInfo, "_movementWithHeading:linearHeading:originatingHeading:isInitial:inputType:", v27, v27, v15, 1, [v29 _inputType]);
    [(_UIFocusMovementRequest *)v28 setMovementInfo:v30];

    v31 = [v10 focusedItemInfo];
    v84 = v28;
    [(_UIFocusMovementRequest *)v28 setFocusedItemInfo:v31];

    v77 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v73 = v10;
    if (([v14 _linearHeading] & 0x100) != 0)
    {
      v32 = [v75 reverseObjectEnumerator];
    }

    else
    {
      v32 = v75;
    }

    v33 = v32;
    v34 = [v32 countByEnumeratingWithState:&v92 objects:v98 count:16];
    v82 = self;
    if (!v34)
    {
LABEL_46:

      v50 = [v79 allObjects];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __103___UIFocusMap__nextFocusedItemForLinearFocusMovementRequest_startingFromRegion_inRegions_withSnapshot___block_invoke;
      v89[3] = &unk_1E71089E0;
      v90 = WeakRetained;
      v91 = self;
      v51 = [v50 bs_filter:v89];

      v10 = v73;
      v52 = [v73 movementInfo];
      v53 = [v52 _groupFilter];

      v54 = [(_UIFocusMap *)self _linearlySortedFocusItemsForItems:v51 groupFilter:v53 itemStandInMap:v77];
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

        self = v82;
      }

      v14 = v76;
      v15 = _UIFocusGetNextItemFromList(v83, v54, v74, [v76 _isLooping]);
      v55 = [v78 objectForKey:v15];
      v56 = [(_UIFocusMap *)self _focusMovementSearchContext];
      [v56 addDestinationRegion:v55];

      if (v15 && ([v55 _shouldUseNextFocusedItemForLinearSorting] & 1) == 0)
      {
        v57 = [v78 objectForKey:v15];
        v58 = [v13 _cachedNextFocusedItemForRegion:v57 withFocusMovementRequest:v84 inMap:self];

        v15 = v58;
      }

      v59 = [(_UIFocusMap *)self _defaultItemSearchContext];
      [v59 setLinearSortedFocusItems:v54];

      v60 = [(_UIFocusMap *)self _focusMovementSearchContext];
      [v60 setLinearSortedFocusItems:v54];

      focusGroupMap = self->_focusGroupMap;
      v62 = [(_UIFocusMap *)self _defaultItemSearchContext];
      [v62 setFocusGroupMap:focusGroupMap];

      v63 = self->_focusGroupMap;
      v64 = [(_UIFocusMap *)self _focusMovementSearchContext];
      [v64 setFocusGroupMap:v63];

      v11 = v72;
      v12 = v75;
      goto LABEL_51;
    }

    v35 = v34;
    v36 = *v93;
    v38 = (v74 & 0x300) == 0 && v83 != 0;
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
      v41 = [v13 _cachedNextFocusedItemForRegion:v40 withFocusMovementRequest:v84 inMap:self];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = [v40 item];
        if (!v41)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v42 = 0;
        if (!v41)
        {
LABEL_30:
          IsFocusableInFocusSystemWithSearchInfo = 0;
          goto LABEL_31;
        }
      }

      [(_UIFocusMap *)self searchInfo];
      v44 = v43 = v13;
      IsFocusableInFocusSystemWithSearchInfo = _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(v41, WeakRetained, v44);

      v13 = v43;
LABEL_31:
      v46 = v42 == v83 && v38;
      if ((IsFocusableInFocusSystemWithSearchInfo & 1) != 0 || v46)
      {
        if (v46)
        {
          v48 = v42;
        }

        else
        {
          v48 = v41;
        }

        v47 = v48;

        self = v82;
        if (([v40 _shouldUseNextFocusedItemForLinearSorting] & 1) == 0)
        {
          v49 = [v40 _focusedItemForLinearSorting:v84 inMap:v82 withSnapshot:v13];
          [v77 setObject:v47 forKey:v49];

          v47 = v49;
        }

        if (([v79 containsObject:v47] & 1) == 0)
        {
          [v78 setObject:v40 forKey:v47];
          [v79 addObject:v47];
        }
      }

      else
      {
        v47 = v41;
        self = v82;
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

  return v15;
}

- (id)_allRegionsInContainer:(id)a3 intersectingRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIFocusMap *)self coordinateSpace];
  [_UIFocusRegionEvaluator frameForRegion:v7 inCoordinateSpace:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (v6 && (v24.origin.x = v10, v24.origin.y = v12, v24.size.width = v14, v24.size.height = v16, !CGRectIsEmpty(v24)))
  {
    v18 = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [v18 setRegionsContainer:v6];
    [v18 setSnapshotFrame:{v10, v12, v14, v16}];
    v19 = [v18 captureSnapshot];
    v20 = [(_UIFocusMap *)self _defaultItemSearchContext];
    [v20 addSnapshot:v19];

    v21 = [(_UIFocusMap *)self _focusMovementSearchContext];
    [v21 addSnapshot:v19];

    v17 = [v19 regions];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (id)_closestFocusableItemToPoint:(CGPoint)a3 inRect:(CGRect)a4 itemFilter:(id)a5 distanceMeasuringUnitPoint:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  height = a4.size.height;
  width = a4.size.width;
  v10 = a4.origin.y;
  v11 = a4.origin.x;
  v71 = *MEMORY[0x1E69E9840];
  v13 = a5;
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
    v15 = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [v15 setSnapshotFrame:{v11, v10, width, height}];
    v55 = v15;
    v16 = [v15 captureSnapshot];
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v58 = self;
    WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v18 = [v16 regions];
    v19 = [v18 countByEnumeratingWithState:&v65 objects:v70 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v65 + 1) + 8 * i);
          v24 = [v23 _defaultFocusItem];
          v25 = v24;
          if (v24 && _UIFocusItemIsFocusableInFocusSystem(v24, WeakRetained) && (!v13 || v13[2](v13, v25)))
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v20);
    }

    v56 = v13;

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
          v37 = [v36 _defaultFocusItem];
          if (v37)
          {
            v38 = [v16 originalRegionForRegion:v36];
            [v16 snapshotFrameForRegion:v38];
            v40 = v39;
            v42 = v41;
            v44 = v43;
            v46 = v45;
            v47 = objc_loadWeakRetained(&v58->_coordinateSpace);
            [v47 bounds];
            v75.origin.x = v40;
            v75.origin.y = v42;
            v75.size.width = v44;
            v75.size.height = v46;
            v48 = CGRectContainsRect(v74, v75);

            v49 = (a3.x - (v40 + v30 * v44)) * (a3.x - (v40 + v30 * v44)) + (a3.y - (v42 + v31 * v46)) * (a3.y - (v42 + v31 * v46));
            if (v49 <= v34)
            {
              v50 = v37;

              v34 = v49;
              v29 = v50;
            }

            if (v49 <= v33 && v48)
            {
              v52 = v37;

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

    v13 = v56;
  }

  return v14;
}

- (id)_linearlySortedFocusItemsForItems:(id)a3 groupFilter:(int64_t)a4 itemStandInMap:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 1)
  {
    v15 = [(_UIFocusMap *)self focusSystem];
    v16 = [v15 focusedItem];

    if (v16)
    {
      v17 = [v8 arrayByAddingObject:v16];
      v18 = [_UIFocusGroupMap alloc];
      v19 = [(_UIFocusMap *)self coordinateSpace];
      v20 = [(_UIFocusGroupMap *)v18 initWithItems:v17 standInItemsMap:v9 coordinateSpace:v19];
      focusGroupMap = self->_focusGroupMap;
      self->_focusGroupMap = v20;

      v22 = [(_UIFocusGroupMap *)self->_focusGroupMap focusGroupForItem:v16];
      v23 = MEMORY[0x1E696AE18];
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __76___UIFocusMap__linearlySortedFocusItemsForItems_groupFilter_itemStandInMap___block_invoke;
      v33 = &unk_1E7108A58;
      v34 = self;
      v35 = v22;
      v24 = v22;
      v25 = [v23 predicateWithBlock:&v30];
      v26 = [v8 filteredArrayUsingPredicate:{v25, v30, v31, v32, v33, v34}];

      v8 = v26;
    }
  }

  else if (a4 == 2)
  {
    v10 = [_UIFocusGroupMap alloc];
    v11 = [(_UIFocusMap *)self coordinateSpace];
    v12 = [(_UIFocusGroupMap *)v10 initWithItems:v8 standInItemsMap:v9 coordinateSpace:v11];
    v13 = self->_focusGroupMap;
    self->_focusGroupMap = v12;

    v14 = [(_UIFocusGroupMap *)self->_focusGroupMap focusItems];
    goto LABEL_8;
  }

  v27 = [v8 sortedArrayUsingComparator:&__block_literal_global_227];

  v14 = v27;
  v8 = v14;
LABEL_8:
  v28 = v14;

  return v28;
}

- (BOOL)verifyFocusabilityForItem:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [_UIFocusItemInfo infoWithItem:v4];
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

        v11 = [*(*(&v27 + 1) + 8 * i) scrollableContainer];
        v12 = [(_UIFocusMap *)self focusSystem];
        v13 = [v12 _isScrollingScrollableContainer:v11 targetContentOffset:0];

        if (v13)
        {
          LOBYTE(v18) = 1;
          v14 = v6;
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

  v14 = [(_UIFocusMap *)self _defaultMapSnapshotter];
  [v14 setFocusedRegion:0];
  v15 = [v14 coordinateSpace];
  [v14 setSnapshotFrame:{_UIFocusItemFrameInCoordinateSpace(v4, v15)}];

  v16 = [v14 captureSnapshot];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [v16 regions];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = *v24;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v23 + 1) + 8 * j) _defaultFocusItem];

        if (v21 == v4)
        {
          LOBYTE(v18) = 1;
          goto LABEL_20;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:1109 description:@"Attempted to begin tracking focus map searches  without finishing previous tracking."];
  }

  *&self->_trackingSearchInfo = 257;
}

- (id)_stopTrackingSearches
{
  if (self->_trackingSearchInfo)
  {
    *&self->_trackingSearchInfo = 0;
    v3 = [(_UIFocusMap *)self _defaultItemSearchContext];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [(_UIFocusMap *)self _focusMovementSearchContext];
    }

    v6 = v5;

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

- (void)_trackExternalSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusMap *)self _defaultItemSearchContext];
  [v5 addSnapshot:v4];

  v6 = [(_UIFocusMap *)self _focusMovementSearchContext];
  [v6 addSnapshot:v4];
}

- (void)diagnoseFocusabilityForItem:(id)a3 report:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:1158 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  [v44 handleFailureInMethod:a2 object:self file:@"_UIFocusMap.m" lineNumber:1159 description:{@"Invalid parameter not satisfying: %@", @"report"}];

LABEL_3:
  if ([v7 canBecomeFocused])
  {
    v10 = [(_UIFocusMap *)self _defaultMapSnapshotter];
    [v10 setFocusedRegion:0];
    v11 = [v10 captureSnapshot];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v50 = v11;
    v13 = [v11 originalRegions];
    v14 = [v13 countByEnumeratingWithState:&v62 objects:v68 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v62 + 1) + 8 * i);
          v19 = [v18 _defaultFocusItem];
          v20 = v19;
          if (v19)
          {
            v21 = v19 == v7;
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

        v15 = [v13 countByEnumeratingWithState:&v62 objects:v68 count:16];
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
        v45 = v10;
        v27 = *v59;
        v48 = v23;
        v49 = v9;
        v46 = v7;
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

                    v37 = [*(*(&v54 + 1) + 8 * j) _debugAssociatedObject];
                    if (v37)
                    {
                      v38 = MEMORY[0x1E696AEC0];
                      v39 = objc_opt_class();
                      v40 = NSStringFromClass(v39);
                      v41 = [v38 stringWithFormat:@"<%@: %p>", v40, v37];

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
        v10 = v45;
        v7 = v46;
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