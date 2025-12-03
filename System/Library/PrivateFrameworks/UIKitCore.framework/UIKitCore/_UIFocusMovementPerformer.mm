@interface _UIFocusMovementPerformer
- (BOOL)_isMovementValidForFocusSequences:(id)sequences;
- (BOOL)performFocusMovement:(id)movement;
- (CGRect)_minimumSearchAreaForContainer:(id)container inCoordinateSpace:(id)space;
- (CGRect)_minimumSearchAreaForContainer:(id)container inCoordinateSpace:(id)space shouldLoadScrollableContainer:(BOOL)scrollableContainer;
- (_UIFocusMovementPerformerDelegate)delegate;
- (id)__findFocusCandidateInEnvironment:(id)environment container:(id)container forRequest:(id)request minimumSearchArea:(CGRect)area isLoadingScrollableContainer:(BOOL)scrollableContainer;
- (id)_bestCandidateForLinearFocusMovement:(id)movement;
- (id)_bestCandidateForNonLinearFocusMovement:(id)movement;
- (id)_dummyFocusItemForFocusMovement:(id)movement searchArea:(CGRect)area parent:(id)parent;
- (id)_environmentContainersToCheckForRequest:(id)request;
- (id)_findFocusCandidateByExhaustivelySearchingEnvironment:(id)environment scrollableContainer:(id)container forRequest:(id)request;
- (id)_findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest:(id)request;
- (id)_nextLinearCandidateLoadingScrollableContentForRequest:(id)request;
- (id)contextForFocusMovement:(id)movement;
@end

@implementation _UIFocusMovementPerformer

- (BOOL)performFocusMovement:(id)movement
{
  v28[1] = *MEMORY[0x1E69E9840];
  movementCopy = movement;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &_MergedGlobals_1098);
  v7 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), movementCopy) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    _os_signpost_emit_unreliably_with_name_impl();
  }

  if (!movementCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMovementPerformer.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    LOBYTE(self) = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_31;
  }

  v8 = movementCopy;
  v9 = 0;
  v10 = 0;
  v11 = v8;
  do
  {
    focusSystem = [v11 focusSystem];
    if ([v8 overridesDeferredFocusUpdate] & 1) == 0 && (-[NSObject _performDeferredFocusUpdateIfAvailable](focusSystem, "_performDeferredFocusUpdateIfAvailable"))
    {
      LOBYTE(self) = 1;
      goto LABEL_34;
    }

    movementInfo = [v11 movementInfo];
    if (movementInfo)
    {
      v14 = [(_UIFocusMovementPerformer *)self contextForFocusMovement:v11];
      if ([v14 _isValidInFocusSystem:focusSystem])
      {
        v15 = [focusSystem _updateFocusImmediatelyWithContext:v14];
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v15 = 0;
        if (!v10)
        {
LABEL_13:
          v10 = v14;
        }
      }

      if (v15)
      {

        goto LABEL_22;
      }

      v9 = 1;
    }

    fallbackRequest = [v11 fallbackRequest];

    v11 = fallbackRequest;
  }

  while (fallbackRequest);
  if ((v9 & 1) == 0)
  {
    goto LABEL_29;
  }

  delegate = [(_UIFocusMovementPerformer *)self delegate];
  v18 = delegate;
  if (delegate)
  {
    v19 = [delegate _handleFailedFocusMovementRequest:v8 withPerformer:self];

    if (v19)
    {
      v11 = 0;
LABEL_22:
      LOBYTE(self) = 1;
      goto LABEL_31;
    }
  }

  else
  {
  }

  focusSystem2 = [v8 focusSystem];
  LODWORD(self) = [focusSystem2 _postsFocusUpdateNotifications];

  if (self)
  {
    if (!v10)
    {
      v10 = [[UIFocusUpdateContext alloc] _initWithFocusMovementRequest:v8 nextFocusedItem:0];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    focusSystem3 = [v8 focusSystem];
    v27 = @"UIFocusUpdateContextKey";
    v28[0] = v10;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [defaultCenter postNotificationName:@"UIFocusMovementDidFailNotification" object:focusSystem3 userInfo:v23];

LABEL_29:
    LOBYTE(self) = 0;
  }

  v11 = 0;
LABEL_31:
  v24 = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DED0);
  focusSystem = *(v24 + 8);
  if (os_signpost_id_make_with_pointer(*(v24 + 8), movementCopy) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(focusSystem))
  {
    _os_signpost_emit_unreliably_with_name_impl();
  }

LABEL_34:

  return self;
}

- (id)__findFocusCandidateInEnvironment:(id)environment container:(id)container forRequest:(id)request minimumSearchArea:(CGRect)area isLoadingScrollableContainer:(BOOL)scrollableContainer
{
  scrollableContainerCopy = scrollableContainer;
  height = area.size.height;
  width = area.size.width;
  y = area.origin.y;
  x = area.origin.x;
  requestCopy = request;
  containerCopy = container;
  environmentCopy = environment;
  focusSystem = [requestCopy focusSystem];
  focusItemContainer = [focusSystem focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  v20 = _UIFocusRegionContainerFromEnvironmentAndContainer(environmentCopy, containerCopy);

  v21 = [_UIFocusMap alloc];
  focusSystem2 = [requestCopy focusSystem];
  searchInfo = [requestCopy searchInfo];
  v24 = [(_UIFocusMap *)v21 initWithFocusSystem:focusSystem2 rootContainer:v20 coordinateSpace:coordinateSpace searchInfo:searchInfo ignoresRootContainerClippingRect:scrollableContainerCopy];

  [(_UIFocusMap *)v24 setMinimumSearchArea:x, y, width, height];
  [(_UIFocusMap *)v24 _beginTrackingSearches];
  v25 = [(_UIFocusMap *)v24 _nextFocusedItemForFocusMovementRequest:requestCopy];
  _stopTrackingSearches = [(_UIFocusMap *)v24 _stopTrackingSearches];
  v27 = [[UIFocusUpdateContext alloc] _initWithFocusMovementRequest:requestCopy nextFocusedItem:v25];

  [v27 _setFocusMapSearchInfo:_stopTrackingSearches];
  focusGroupMap = [(_UIFocusMap *)v24 focusGroupMap];
  [v27 _updateWithFocusGroupMap:focusGroupMap];

  return v27;
}

- (id)_findFocusCandidateByExhaustivelySearchingEnvironment:(id)environment scrollableContainer:(id)container forRequest:(id)request
{
  environmentCopy = environment;
  containerCopy = container;
  requestCopy = request;
  focusSystem = [requestCopy focusSystem];
  focusedItemInfo = [requestCopy focusedItemInfo];
  movementInfo = [requestCopy movementInfo];
  focusItemContainer = [focusSystem focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];
  [coordinateSpace bounds];
  v64 = v17;
  v65 = v16;
  v62 = v19;
  v63 = v18;

  focusItemContainer2 = [focusSystem focusItemContainer];
  coordinateSpace2 = [focusItemContainer2 coordinateSpace];

  v61 = focusedItemInfo;
  [focusedItemInfo focusedRectInCoordinateSpace:coordinateSpace2];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v60 = coordinateSpace2;
  [(_UIFocusMovementPerformer *)self _minimumSearchAreaForContainer:containerCopy inCoordinateSpace:coordinateSpace2];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = _UIFocusShiftAndExpandRectAlongFocusMovement(movementInfo, v23, v25, v27, v29);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = 0;
  v46 = -5;
  while ((_UIRectSmartIntersectsRect(v38, v40, v42, v44, v31, v33, v35, v37) & 1) != 0 || !v45)
  {
    _linearHeading = [movementInfo _linearHeading];
    v48 = v38;
    v49 = v40;
    v50 = v42;
    v51 = v44;
    if ((_linearHeading & 0x300) == 0)
    {
      v67.origin.y = v64;
      v67.origin.x = v65;
      v67.size.height = v62;
      v67.size.width = v63;
      v68.origin.x = v38;
      v68.origin.y = v40;
      v68.size.width = v42;
      v68.size.height = v44;
      *&v48 = CGRectUnion(v67, v68);
    }

    v52 = [(_UIFocusMovementPerformer *)self __findFocusCandidateInEnvironment:environmentCopy container:containerCopy forRequest:requestCopy minimumSearchArea:1 isLoadingScrollableContainer:v48, v49, v50, v51];

    if (([v52 _isValidInFocusSystem:focusSystem] & 1) == 0)
    {
      _focusMapSearchInfo = [v52 _focusMapSearchInfo];
      didFindFocusBlockingBoundary = [_focusMapSearchInfo didFindFocusBlockingBoundary];

      if ((didFindFocusBlockingBoundary & 1) == 0)
      {
        v38 = _UIFocusShiftAndExpandRectAlongFocusMovement(movementInfo, v38, v40, v42, v44);
        v40 = v55;
        v42 = v56;
        v44 = v57;
        v45 = v52;
        if (!__CFADD__(v46++, 1))
        {
          continue;
        }
      }
    }

    goto LABEL_12;
  }

  v52 = v45;
LABEL_12:

  return v52;
}

- (id)_findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest:(id)request
{
  requestCopy = request;
  focusSystem = [requestCopy focusSystem];
  focusedItemInfo = [requestCopy focusedItemInfo];
  item = [focusedItemInfo item];

  movementInfo = [requestCopy movementInfo];
  heading = [movementInfo heading];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__89;
  v26 = __Block_byref_object_dispose__89;
  v27 = 0;
  focusedItemInfo2 = [requestCopy focusedItemInfo];
  item2 = [focusedItemInfo2 item];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98___UIFocusMovementPerformer__findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest___block_invoke;
  v16[3] = &unk_1E7108CC0;
  v21 = heading;
  v11 = item;
  v17 = v11;
  v12 = focusSystem;
  v18 = v12;
  v13 = requestCopy;
  v19 = v13;
  v20 = &v22;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(item2, v16);

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (id)_bestCandidateForNonLinearFocusMovement:(id)movement
{
  v40 = *MEMORY[0x1E69E9840];
  movementCopy = movement;
  focusSystem = [movementCopy focusSystem];
  focusedItemInfo = [movementCopy focusedItemInfo];
  v33 = focusSystem;
  focusItemContainer = [focusSystem focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  [(_UIFocusMovementPerformer *)self _environmentContainersToCheckForRequest:movementCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v36;
    v30 = focusedItemInfo;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        owningEnvironment = [v13 owningEnvironment];
        itemContainer = [v13 itemContainer];
        if ([v13 isScrollableContainer] && (objc_msgSend(movementCopy, "movementInfo"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "_shouldLoadScrollableContainer"), v16, v17))
        {
          v18 = [(_UIFocusMovementPerformer *)self _findFocusCandidateByExhaustivelySearchingEnvironment:owningEnvironment scrollableContainer:itemContainer forRequest:movementCopy];

          if (v18)
          {
            if ([v18 _isValidInFocusSystem:v33])
            {
              goto LABEL_19;
            }

            _focusMapSearchInfo = [v18 _focusMapSearchInfo];
            didFindFocusBlockingBoundary = [_focusMapSearchInfo didFindFocusBlockingBoundary];

            v10 = v18;
            if (didFindFocusBlockingBoundary)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          [(_UIFocusMovementPerformer *)self _minimumSearchAreaForContainer:itemContainer inCoordinateSpace:coordinateSpace];
          v18 = [(_UIFocusMovementPerformer *)self _findFocusCandidateWithoutLoadingScrollableContentInEnvironment:owningEnvironment container:itemContainer forRequest:movementCopy minimumSearchArea:?];

          if (([v18 _isValidInFocusSystem:v33] & 1) != 0 || (objc_msgSend(v18, "_focusMapSearchInfo"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "didFindFocusBlockingBoundary"), v21, v10 = v18, v22))
          {
LABEL_19:

            v10 = v18;
            focusedItemInfo = v30;
            goto LABEL_21;
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v23 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      v9 = v23;
      focusedItemInfo = v30;
    }

    while (v23);
  }

  else
  {
    v10 = 0;
  }

LABEL_21:

  if (os_variant_has_internal_diagnostics())
  {
    if (!v10)
    {
      v28 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v28, OS_LOG_TYPE_FAULT, "Non-linear focus movement should always produce a context, even if the focus movement failed.", buf, 2u);
      }
    }
  }

  else if (!v10)
  {
    v29 = *(__UILogGetCategoryCachedImpl("Assert", &_bestCandidateForNonLinearFocusMovement____s_category) + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Non-linear focus movement should always produce a context, even if the focus movement failed.", buf, 2u);
    }
  }

  _destinationItemInfo = [v10 _destinationItemInfo];
  v25 = _UIFocusEngineCommonEnvironmentScrollableContainerForItems(focusedItemInfo, _destinationItemInfo);
  v26 = v25;
  if (_destinationItemInfo && !v25)
  {
    v26 = _UIFocusEngineFirstScrollableContainerTupleThatScrollsForItem(_destinationItemInfo);
  }

  [v10 _setCommonEnvironmentScrollableContainer:v26];

  return v10;
}

- (id)_bestCandidateForLinearFocusMovement:(id)movement
{
  movementCopy = movement;
  focusSystem = [movementCopy focusSystem];
  focusedItemInfo = [movementCopy focusedItemInfo];
  v7 = [(_UIFocusMovementPerformer *)self _findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest:movementCopy];
  if (!v7)
  {
    v7 = [(_UIFocusMovementPerformer *)self _nextLinearCandidateLoadingScrollableContentForRequest:movementCopy];
  }

  _destinationItemInfo = [v7 _destinationItemInfo];
  v9 = _UIFocusEngineCommonEnvironmentScrollableContainerForItems(focusedItemInfo, _destinationItemInfo);
  v10 = v9;
  if (_destinationItemInfo && !v9)
  {
    v10 = _UIFocusEngineFirstScrollableContainerTupleThatScrollsForItem(_destinationItemInfo);
  }

  [v7 _setCommonEnvironmentScrollableContainer:v10];

  return v7;
}

- (id)contextForFocusMovement:(id)movement
{
  movementCopy = movement;
  movementInfo = [movementCopy movementInfo];
  heading = [movementInfo heading];

  if ((heading & 0x330) != 0)
  {
    [(_UIFocusMovementPerformer *)self _bestCandidateForLinearFocusMovement:movementCopy];
  }

  else
  {
    [(_UIFocusMovementPerformer *)self _bestCandidateForNonLinearFocusMovement:movementCopy];
  }
  v7 = ;

  return v7;
}

- (id)_environmentContainersToCheckForRequest:(id)request
{
  requestCopy = request;
  movementInfo = [requestCopy movementInfo];
  focusedItemInfo = [requestCopy focusedItemInfo];
  focusSystem = [requestCopy focusSystem];
  if (([movementInfo heading] & 0x300) != 0)
  {
    behavior = [focusSystem behavior];
    treatFirstAndLastHeadingsAsGlobal = [behavior treatFirstAndLastHeadingsAsGlobal];
  }

  else
  {
    treatFirstAndLastHeadingsAsGlobal = 0;
  }

  heading = [movementInfo heading];
  v10 = objc_opt_new();
  item = [focusedItemInfo item];
  searchInfo = [requestCopy searchInfo];
  forceFocusToLeaveContainer = [searchInfo forceFocusToLeaveContainer];

  if (item)
  {
    v14 = forceFocusToLeaveContainer | treatFirstAndLastHeadingsAsGlobal;
    while (1)
    {
      focusItemContainer = [item focusItemContainer];
      if (focusItemContainer)
      {
        break;
      }

LABEL_17:
      parentFocusEnvironment = [item parentFocusEnvironment];

      item = parentFocusEnvironment;
      if (!parentFocusEnvironment)
      {
        goto LABEL_18;
      }
    }

    v16 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:item itemContainer:focusItemContainer];
    if (v14 & 1) != 0 || (_UIFocusEnvironmentAllowsFocusToLeaveViaHeading(item, heading))
    {
      item2 = [focusedItemInfo item];
      if (item == item2 || !_UIFocusEnvironmentPrefersFocusContainment(item))
      {

        goto LABEL_16;
      }

      if ((v14 & 1) == 0)
      {
        [v10 addObject:v16];
        v14 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      [v10 addObject:v16];
    }

    v14 = 1;
    goto LABEL_16;
  }

LABEL_18:
  lastObject = [v10 lastObject];
  owningEnvironment = [lastObject owningEnvironment];

  if (owningEnvironment != v25)
  {
    focusItemContainer2 = [v25 focusItemContainer];
    if (focusItemContainer2)
    {
      v22 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:v25 itemContainer:focusItemContainer2];
      [v10 addObject:v22];
    }

    else
    {
      if (!os_variant_has_internal_diagnostics())
      {
        v23 = *(__UILogGetCategoryCachedImpl("Assert", &_environmentContainersToCheckForRequest____s_category) + 8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "FocusSystem does not have a focusItemContainer.", buf, 2u);
        }

        goto LABEL_25;
      }

      v22 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *v27 = 0;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "FocusSystem does not have a focusItemContainer.", v27, 2u);
      }
    }

LABEL_25:
  }

  return v10;
}

- (id)_dummyFocusItemForFocusMovement:(id)movement searchArea:(CGRect)area parent:(id)parent
{
  height = area.size.height;
  width = area.size.width;
  y = area.origin.y;
  x = area.origin.x;
  movementCopy = movement;
  parentCopy = parent;
  if (!parentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMovementPerformer.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"parent != nil"}];
  }

  if (([movementCopy heading] & 0x300) != 0)
  {
    focusItemContainer = [parentCopy focusItemContainer];
    coordinateSpace = [focusItemContainer coordinateSpace];
    [coordinateSpace bounds];
    MaxX = v16;
    MaxY = v18;
    v21 = v20;
    v23 = v22;

    if (([movementCopy _shouldLoadScrollableContainer] & 1) == 0)
    {
      MaxX = *MEMORY[0x1E695F058];
      MaxY = *(MEMORY[0x1E695F058] + 8);
      v21 = *(MEMORY[0x1E695F058] + 16);
      v23 = *(MEMORY[0x1E695F058] + 24);
    }

    if (([movementCopy heading] & 0x100) != 0)
    {
      MaxX = x - v21;
      MaxY = y - v23;
    }

    else if (([movementCopy heading] & 0x200) != 0)
    {
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      MaxX = CGRectGetMaxX(v28);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      MaxY = CGRectGetMaxY(v29);
    }

    v24 = objc_opt_new();
    [v24 setFrame:{MaxX, MaxY, v21, v23}];
    [v24 setParentFocusEnvironment:parentCopy];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_nextLinearCandidateLoadingScrollableContentForRequest:(id)request
{
  requestCopy = request;
  focusSystem = [requestCopy focusSystem];
  focusedItemInfo = [requestCopy focusedItemInfo];
  movementInfo = [requestCopy movementInfo];
  v7 = [(_UIFocusMovementPerformer *)self _environmentContainersToCheckForRequest:requestCopy];
  if ([v7 count])
  {
    v8 = 0;
    LOBYTE(v100) = 1;
    v94 = focusSystem;
    v95 = requestCopy;
    v96 = v7;
    selfCopy = self;
    do
    {
      v9 = [v7 objectAtIndexedSubscript:v8];
      owningEnvironment = [v9 owningEnvironment];
      itemContainer = [v9 itemContainer];
      focusItemContainer = [focusSystem focusItemContainer];
      coordinateSpace = [focusItemContainer coordinateSpace];
      v102 = itemContainer;
      -[_UIFocusMovementPerformer _minimumSearchAreaForContainer:inCoordinateSpace:shouldLoadScrollableContainer:](self, "_minimumSearchAreaForContainer:inCoordinateSpace:shouldLoadScrollableContainer:", itemContainer, coordinateSpace, [movementInfo _shouldLoadScrollableContainer]);
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = [(_UIFocusMovementPerformer *)self _dummyFocusItemForFocusMovement:movementInfo searchArea:focusSystem parent:v14, v16, v18, v20];
      v22 = [_UIFocusMovementRequest alloc];
      focusSystem2 = [requestCopy focusSystem];
      v24 = [(_UIFocusMovementRequest *)v22 initWithFocusSystem:focusSystem2];

      if (v21)
      {
        v25 = [_UIFocusItemInfo infoWithItem:v21];
        [(_UIFocusMovementRequest *)v24 setFocusedItemInfo:v25];
      }

      else
      {
        [(_UIFocusMovementRequest *)v24 setFocusedItemInfo:focusedItemInfo];
      }

      searchInfo = [requestCopy searchInfo];
      [(_UIFocusMovementRequest *)v24 setSearchInfo:searchInfo];

      v98 = v9;
      v99 = v21;
      if ([v9 isScrollableContainer] && _UIFocusEngineScrollableContainerCanScroll(v102))
      {
        rect = v102;
        focusedItemInfo2 = [(_UIFocusMovementRequest *)v24 focusedItemInfo];
        item = [focusedItemInfo2 item];

        parentFocusEnvironment = [item parentFocusEnvironment];
        focusItemContainer2 = [parentFocusEnvironment focusItemContainer];

        v92 = focusItemContainer2;
        v90 = v16;
        v91 = v14;
        v88 = v20;
        v89 = v18;
        v85 = item;
        if (!focusItemContainer2 || v21 == item)
        {
          v31 = v9;
          [item frame];
          v44 = v62;
          v46 = v63;
          v48 = v64;
          v50 = v65;
          v41 = rect;
        }

        else
        {
          v31 = v9;
          coordinateSpace2 = [focusItemContainer2 coordinateSpace];
          [item frame];
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v41 = rect;
          coordinateSpace3 = [rect coordinateSpace];
          [coordinateSpace2 convertRect:coordinateSpace3 toCoordinateSpace:{v34, v36, v38, v40}];
          v44 = v43;
          v46 = v45;
          v48 = v47;
          v50 = v49;
        }

        v66 = _UIFocusItemScrollableContainerContentBounds(v41);
        v68 = v67;
        v81 = v69;
        v82 = v67;
        v71 = v70;
        v83 = v70;
        v103.origin.x = v44;
        v103.origin.y = v46;
        v103.size.width = v48;
        v103.size.height = v50;
        v84 = v44;
        MinX = CGRectGetMinX(v103);
        v104.origin.x = v66;
        v104.origin.y = v68;
        v104.size.width = v81;
        v104.size.height = v71;
        if (MinX <= CGRectGetMinX(v104))
        {
          v73 = 11;
        }

        else
        {
          v73 = 15;
        }

        v105.origin.x = v44;
        v105.origin.y = v46;
        v105.size.width = v48;
        v105.size.height = v50;
        recta = v50;
        MaxX = CGRectGetMaxX(v105);
        v106.origin.x = v66;
        v106.origin.y = v82;
        v106.size.width = v81;
        v106.size.height = v83;
        if (MaxX >= CGRectGetMaxX(v106))
        {
          v73 &= 7u;
        }

        v107.origin.x = v84;
        v107.origin.y = v46;
        v107.size.width = v48;
        v107.size.height = v50;
        MinY = CGRectGetMinY(v107);
        v108.origin.x = v66;
        v108.origin.y = v82;
        v108.size.width = v81;
        v108.size.height = v83;
        if (MinY <= CGRectGetMinY(v108))
        {
          v73 &= 0xEu;
        }

        v109.origin.x = v84;
        v109.origin.y = v46;
        v109.size.width = v48;
        v109.size.height = recta;
        MaxY = CGRectGetMaxY(v109);
        v110.origin.x = v66;
        v110.origin.y = v82;
        v110.size.width = v81;
        v110.size.height = v83;
        if (MaxY >= CGRectGetMaxY(v110))
        {
          v52 = v73 & 0xFFFFFFFFFFFFFFFDLL;
        }

        else
        {
          v52 = v73;
        }

        v7 = v96;
        if (v100)
        {
          focusSystem3 = [requestCopy focusSystem];
          v100 = [focusSystem3 _isScrollingScrollableContainer:v41 targetContentOffset:0] ^ 1;
        }

        else
        {
          LOBYTE(v100) = 0;
        }

        v16 = v90;
        v14 = v91;
        v20 = v88;
        v18 = v89;

        if (!v52)
        {
          self = selfCopy;
          goto LABEL_46;
        }

        v51 = 1;
      }

      else
      {
        v51 = 0;
        v52 = 15;
      }

      v53 = -[_UIFocusMovementInfo initWithHeading:linearHeading:isInitial:shouldLoadScrollableContainer:looping:groupFilter:inputType:]([_UIFocusMovementInfo alloc], "initWithHeading:linearHeading:isInitial:shouldLoadScrollableContainer:looping:groupFilter:inputType:", v52, [movementInfo heading], objc_msgSend(movementInfo, "_isInitialMovement"), 1, objc_msgSend(movementInfo, "_isLooping"), objc_msgSend(movementInfo, "_groupFilter"), objc_msgSend(movementInfo, "_inputType"));
      [(_UIFocusMovementRequest *)v24 setMovementInfo:v53];

      if (v51 && [movementInfo _shouldLoadScrollableContainer])
      {
        self = selfCopy;
        v54 = [(_UIFocusMovementPerformer *)selfCopy _findFocusCandidateByExhaustivelySearchingEnvironment:owningEnvironment scrollableContainer:v102 forRequest:v24];
      }

      else
      {
        self = selfCopy;
        v54 = [(_UIFocusMovementPerformer *)selfCopy _findFocusCandidateWithoutLoadingScrollableContentInEnvironment:owningEnvironment container:v102 forRequest:v24 minimumSearchArea:v14, v16, v18, v20];
      }

      v55 = v54;
      requestCopy = v95;
      v7 = v96;
      movementInfo2 = [v95 movementInfo];
      [v55 _restoreRestrictedFocusMovementWithMovement:movementInfo2];

      focusSystem = v94;
      if ([v55 _isValidInFocusSystem:v94] && -[_UIFocusMovementPerformer _isMovementValidForFocusSequences:](self, "_isMovementValidForFocusSequences:", v55) || (objc_msgSend(0, "_focusMapSearchInfo"), v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "didFindFocusBlockingBoundary"), v57, (v58 & 1) != 0))
      {

        goto LABEL_49;
      }

      if (v100)
      {
        if (v8 == [v96 count] - 1)
        {
          previouslyFocusedItem = [v55 previouslyFocusedItem];
          if (previouslyFocusedItem && (v60 = previouslyFocusedItem, [v55 nextFocusedItem], v61 = objc_claimAutoreleasedReturnValue(), v61, v60, !v61))
          {
            v78 = [_UIFocusItemInfo infoWithItem:0];

            LOBYTE(v100) = 0;
            --v8;
            focusedItemInfo = v78;
          }

          else
          {
            LOBYTE(v100) = 0;
          }

          self = selfCopy;
        }

        else
        {
          LOBYTE(v100) = 1;
        }
      }

      else
      {
        LOBYTE(v100) = 0;
      }

      v31 = v98;
LABEL_46:

      ++v8;
    }

    while (v8 < [v7 count]);
  }

  v55 = 0;
LABEL_49:
  v79 = v55;

  return v55;
}

- (BOOL)_isMovementValidForFocusSequences:(id)sequences
{
  sequencesCopy = sequences;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  focusHeading = [sequencesCopy focusHeading];
  nextFocusedItem = [sequencesCopy nextFocusedItem];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___UIFocusMovementPerformer__isMovementValidForFocusSequences___block_invoke;
  v8[3] = &unk_1E7108D10;
  v6 = sequencesCopy;
  v9 = v6;
  v10 = &v12;
  v11 = focusHeading;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(nextFocusedItem, v8);

  LOBYTE(nextFocusedItem) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return nextFocusedItem;
}

- (CGRect)_minimumSearchAreaForContainer:(id)container inCoordinateSpace:(id)space
{
  [(_UIFocusMovementPerformer *)self _minimumSearchAreaForContainer:container inCoordinateSpace:space shouldLoadScrollableContainer:1];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_minimumSearchAreaForContainer:(id)container inCoordinateSpace:(id)space shouldLoadScrollableContainer:(BOOL)scrollableContainer
{
  scrollableContainerCopy = scrollableContainer;
  containerCopy = container;
  spaceCopy = space;
  coordinateSpace = [containerCopy coordinateSpace];
  coordinateSpace2 = [containerCopy coordinateSpace];
  [coordinateSpace2 bounds];
  [coordinateSpace convertRect:spaceCopy toCoordinateSpace:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  x = v12 + -1.0;
  width = v16 + 2.0;
  y = v14 + -1.0;
  height = v18 + 2.0;
  if (scrollableContainerCopy && _UIFocusItemContainerIsScrollableContainer(containerCopy))
  {
    v23 = containerCopy;
    [v23 contentSize];
    v25 = v24;
    v27 = v26;
    v28 = *MEMORY[0x1E695EFF8];
    v29 = *(MEMORY[0x1E695EFF8] + 8);
    coordinateSpace3 = [v23 coordinateSpace];

    [spaceCopy convertRect:coordinateSpace3 fromCoordinateSpace:{v28, v29, v25, v27}];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v46.origin.x = v32;
    v46.origin.y = v34;
    v46.size.width = v36;
    v46.size.height = v38;
    v44 = CGRectUnion(v43, v46);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
  }

  v39 = x;
  v40 = y;
  v41 = width;
  v42 = height;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (_UIFocusMovementPerformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end