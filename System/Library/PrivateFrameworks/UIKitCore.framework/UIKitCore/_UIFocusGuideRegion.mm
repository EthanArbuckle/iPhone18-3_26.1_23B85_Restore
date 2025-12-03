@interface _UIFocusGuideRegion
- (BOOL)_isEnabledForFocusedRegion:(id)region inSnapshot:(id)snapshot;
- (BOOL)isEqual:(id)equal;
- (UIFocusEnvironment)owningEnvironment;
- (_UIFocusGuideRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space;
- (_UIFocusGuideRegionDelegate)delegate;
- (id)_debugAssociatedObject;
- (id)_delegatePreferredFocusEnvironmentsForMovementRequest:(id)request;
- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space;
- (id)_focusedItemForLinearSorting:(id)sorting inMap:(id)map withSnapshot:(id)snapshot;
- (id)_nextFocusedItemForFocusMovementRequest:(id)request inMap:(id)map withSnapshot:(id)snapshot;
- (int64_t)_preferredDistanceComparisonType;
- (unint64_t)_focusableBoundaries;
- (void)_willParticipateAsDestinationRegionInFocusUpdate:(id)update;
@end

@implementation _UIFocusGuideRegion

- (_UIFocusGuideRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space
{
  v5.receiver = self;
  v5.super_class = _UIFocusGuideRegion;
  result = [(_UIFocusRegion *)&v5 initWithFrame:space coordinateSpace:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->__focusPriority = 500.0;
  }

  return result;
}

- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space
{
  v9.receiver = self;
  v9.super_class = _UIFocusGuideRegion;
  v5 = [(_UIFocusRegion *)&v9 _focusRegionWithAdjustedFrame:space coordinateSpace:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  delegate = [(_UIFocusGuideRegion *)self delegate];
  [v5 setDelegate:delegate];

  owningEnvironment = [(_UIFocusGuideRegion *)self owningEnvironment];
  [v5 setOwningEnvironment:owningEnvironment];

  [v5 _setIsUnoccludable:{-[_UIFocusGuideRegion _isUnoccludable](self, "_isUnoccludable")}];
  [(_UIFocusGuideRegion *)self _focusPriority];
  [v5 _setFocusPriority:?];
  [v5 _setIgnoresSpeedBumpEdges:{-[_UIFocusGuideRegion _ignoresSpeedBumpEdges](self, "_ignoresSpeedBumpEdges")}];
  [v5 _setIsUnclippable:{-[_UIFocusGuideRegion _isUnclippable](self, "_isUnclippable")}];

  return v5;
}

- (BOOL)_isEnabledForFocusedRegion:(id)region inSnapshot:(id)snapshot
{
  if (!region)
  {
    return 1;
  }

  snapshotCopy = snapshot;
  regionCopy = region;
  v8 = [snapshotCopy originalRegionForRegion:self];
  [snapshotCopy snapshotFrameForRegion:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [snapshotCopy snapshotFrameForRegion:regionCopy];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v43.origin.x = v10;
  v43.origin.y = v12;
  v43.size.width = v14;
  v43.size.height = v16;
  if (CGRectIsNull(v43) || (v44.origin.x = v18, v44.origin.y = v20, v44.size.width = v22, v44.size.height = v24, CGRectIsNull(v44)))
  {
    v25 = 1;
  }

  else
  {
    v45.origin.x = v10;
    v45.origin.y = v12;
    v45.size.width = v14;
    v45.size.height = v16;
    v46 = CGRectStandardize(v45);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    v46.origin.x = v18;
    v46.origin.y = v20;
    v46.size.width = v22;
    v46.size.height = v24;
    v47 = CGRectStandardize(v46);
    v30 = v47.origin.x;
    v31 = v47.origin.y;
    v32 = v47.size.width;
    v33 = v47.size.height;
    v41 = y;
    v42 = x;
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v34 = CGRectGetMinX(v47) + 0.0001;
    v48.origin.x = v30;
    v48.origin.y = v31;
    v48.size.width = v32;
    v48.size.height = v33;
    if (v34 <= CGRectGetMaxX(v48))
    {
      v49.origin.y = v41;
      v49.origin.x = x;
      v49.size.width = width;
      v49.size.height = height;
      v36 = CGRectGetMaxX(v49) + -0.0001;
      v50.origin.x = v30;
      v50.origin.y = v31;
      v50.size.width = v32;
      v50.size.height = v33;
      v35 = v36 >= CGRectGetMinX(v50);
    }

    else
    {
      v35 = 0;
    }

    v51.origin.x = x;
    v51.origin.y = v41;
    v51.size.width = width;
    v51.size.height = height;
    v37 = CGRectGetMinY(v51) + 0.0001;
    v52.origin.x = v30;
    v52.origin.y = v31;
    v52.size.width = v32;
    v52.size.height = v33;
    if (v37 <= CGRectGetMaxY(v52))
    {
      v53.origin.x = v42;
      v53.origin.y = v41;
      v53.size.width = width;
      v53.size.height = height;
      v39 = CGRectGetMaxY(v53) + -0.0001;
      v54.origin.x = v30;
      v54.origin.y = v31;
      v54.size.width = v32;
      v54.size.height = v33;
      v38 = v39 >= CGRectGetMinY(v54);
    }

    else
    {
      v38 = 0;
    }

    v25 = !v35 || !v38;
  }

  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _UIFocusGuideRegion;
  if ([(_UIFocusRegion *)&v12 isEqual:equalCopy])
  {
    v5 = equalCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_loadWeakRetained(v5 + 7);
    if (WeakRetained == v7)
    {
      v9 = objc_loadWeakRetained(&self->_owningEnvironment);
      v10 = objc_loadWeakRetained(v5 + 8);
      v8 = v9 == v10 && self->__isUnoccludable == *(v5 + 48) && self->__focusPriority == *(v5 + 13) && self->__ignoresSpeedBumpEdges == *(v5 + 49) && self->__isUnclippable == *(v5 + 50);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)request inMap:(id)map withSnapshot:(id)snapshot
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  mapCopy = map;
  snapshotCopy = snapshot;
  focusedItemInfo = [requestCopy focusedItemInfo];
  focusedRegion = [focusedItemInfo focusedRegion];
  v13 = [(_UIFocusGuideRegion *)self _isEnabledForFocusedRegion:focusedRegion inSnapshot:snapshotCopy];

  if (v13)
  {
    v14 = [(_UIFocusGuideRegion *)self _delegatePreferredFocusEnvironmentsForMovementRequest:requestCopy];
    if (![v14 count])
    {
      owningEnvironment = [(_UIFocusGuideRegion *)self owningEnvironment];
      v16 = _UIFocusEnvironmentPreferredFocusEnvironments(owningEnvironment);

      v14 = v16;
    }

    v17 = objc_alloc_init(_UIDeepestPreferredEnvironmentSearch);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(_UIDeepestPreferredEnvironmentSearch *)v17 deepestPreferredFocusableItemForEnvironment:*(*(&v26 + 1) + 8 * i) withRequest:requestCopy, v26];
          if (v23)
          {
            v24 = v23;

            goto LABEL_15;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v24 = [(_UIFocusGuideRegion *)self _fallbackFocusItemForMovementRequest:requestCopy inFocusMap:mapCopy withSnapshot:snapshotCopy];
LABEL_15:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_focusedItemForLinearSorting:(id)sorting inMap:(id)map withSnapshot:(id)snapshot
{
  sortingCopy = sorting;
  mapCopy = map;
  snapshotCopy = snapshot;
  delegate = [(_UIFocusGuideRegion *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    focusItemForSorting = [delegate focusItemForSorting];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _UIFocusGuideRegion;
    focusItemForSorting = [(_UIFocusRegion *)&v15 _focusedItemForLinearSorting:sortingCopy inMap:mapCopy withSnapshot:snapshotCopy];
  }

  v13 = focusItemForSorting;

  return v13;
}

- (unint64_t)_focusableBoundaries
{
  if (dyld_program_sdk_at_least())
  {
    return 32;
  }

  else
  {
    return 16;
  }
}

- (int64_t)_preferredDistanceComparisonType
{
  if (!dyld_program_sdk_at_least())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _UIFocusGuideRegion;
  return [(_UIFocusRegion *)&v4 _preferredDistanceComparisonType];
}

- (void)_willParticipateAsDestinationRegionInFocusUpdate:(id)update
{
  updateCopy = update;
  delegate = [(_UIFocusGuideRegion *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate focusGuideRegion:self willParticipateAsDestinationRegionInFocusUpdate:updateCopy];
  }

  else
  {
    _focusedGuide = [updateCopy _focusedGuide];

    if (!_focusedGuide)
    {
      [updateCopy _setFocusRedirectedByGuide:1];
    }
  }
}

- (id)_delegatePreferredFocusEnvironmentsForMovementRequest:(id)request
{
  requestCopy = request;
  delegate = [(_UIFocusGuideRegion *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate focusGuideRegion:self preferredFocusEnvironmentsForMovementRequest:requestCopy];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

- (id)_debugAssociatedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIFocusGuideRegionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIFocusEnvironment)owningEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_owningEnvironment);

  return WeakRetained;
}

@end