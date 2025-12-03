@interface SBPIPDefaultPositionHyperregionComposer
- (CGPoint)defaultCornerPositionForLayoutSettingsPosition:(unint64_t)position proposedCenter:(CGPoint)center geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction;
- (SBPIPDefaultPositionHyperregionComposer)init;
- (SBPIPPositionHyperregionComposerDelegate)delegate;
- (SBWindowScene)representedWindowScene;
- (id)_unprunedCornersForGeometry:(SBPIPPositionGeometryContext *)geometry;
- (id)positionRegionsForRegions:(id)regions geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction;
- (unint64_t)canonicalPositionForPoint:(CGPoint)point proposedPosition:(unint64_t)position geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction;
- (void)_addRegionWithType:(int64_t)type geometry:(SBPIPPositionGeometryContext *)geometry toMap:(id)map;
- (void)_pruneRegionsMap:(id)map geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction;
- (void)invalidate;
@end

@implementation SBPIPDefaultPositionHyperregionComposer

- (SBPIPDefaultPositionHyperregionComposer)init
{
  v7.receiver = self;
  v7.super_class = SBPIPDefaultPositionHyperregionComposer;
  v2 = [(SBPIPDefaultPositionHyperregionComposer *)&v7 init];
  if (v2)
  {
    if (__sb__runningInSpringBoard())
    {
      v2->_isPad = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v2->_isPad = [currentDevice userInterfaceIdiom] == 1;
    }

    v4 = objc_alloc_init(SBPIPPositionHyperregionLibrary);
    regionsLibrary = v2->_regionsLibrary;
    v2->_regionsLibrary = v4;
  }

  return v2;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained positionRegionComposerDidInvalidate:self];
}

- (id)positionRegionsForRegions:(id)regions geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction
{
  v8 = *&self->_lastInteractionStateContext.projectedPosition.y;
  v9 = *&self->_lastInteractionStateContext.currentPosition.y;
  pipStashedSize = *&self->_lastInteractionStateContext.initialPosition.y;
  v101 = v9;
  origin.x = self->_lastInteractionStateContext.projectedPositionStashProgress;
  pipCurrentSize = *&self->_lastInteractionStateContext.isStashed;
  v99 = v8;
  v10 = *&interaction->currentPosition.y;
  v87 = *&interaction->initialPosition.y;
  v88 = v10;
  v89.x = interaction->projectedPositionStashProgress;
  v11 = *&interaction->projectedPosition.y;
  v85 = *&interaction->isStashed;
  v86 = v11;
  if ((SBPIPPositionInteractionStateContextIsEqualToContext(&pipCurrentSize, &v85) & 1) == 0)
  {
    *&self->_lastInteractionStateContext.isStashed = *&interaction->isStashed;
    v12 = *&interaction->projectedPosition.y;
    v13 = *&interaction->initialPosition.y;
    v14 = *&interaction->currentPosition.y;
    self->_lastInteractionStateContext.projectedPositionStashProgress = interaction->projectedPositionStashProgress;
    *&self->_lastInteractionStateContext.currentPosition.y = v14;
    *&self->_lastInteractionStateContext.initialPosition.y = v13;
    *&self->_lastInteractionStateContext.projectedPosition.y = v12;
    lastResolvedRegionsMap = self->_lastResolvedRegionsMap;
    self->_lastResolvedRegionsMap = 0;
  }

  v16 = *&self->_lastGeometryContext.stashedMinimumPadding.bottom;
  v108 = *&self->_lastGeometryContext.stashedMinimumPadding.top;
  v109 = v16;
  v110 = *&self->_lastGeometryContext.offscreenCorners;
  v17 = *&self->_lastGeometryContext.edgeInsets.bottom;
  v104 = *&self->_lastGeometryContext.edgeInsets.top;
  v105 = v17;
  v18 = *&self->_lastGeometryContext.minimumPadding.bottom;
  v106 = *&self->_lastGeometryContext.minimumPadding.top;
  v107 = v18;
  pipAnchorPointOffset = self->_lastGeometryContext.pipAnchorPointOffset;
  pipStashedSize = self->_lastGeometryContext.pipStashedSize;
  v101 = pipAnchorPointOffset;
  size = self->_lastGeometryContext.containerBounds.size;
  origin = self->_lastGeometryContext.containerBounds.origin;
  v103 = size;
  pipLastSteadySize = self->_lastGeometryContext.pipLastSteadySize;
  pipCurrentSize = self->_lastGeometryContext.pipCurrentSize;
  v99 = pipLastSteadySize;
  v22 = *&geometry->stashedMinimumPadding.bottom;
  v95 = *&geometry->stashedMinimumPadding.top;
  v96 = v22;
  v97 = *&geometry->offscreenCorners;
  v23 = *&geometry->edgeInsets.bottom;
  v91 = *&geometry->edgeInsets.top;
  v92 = v23;
  v24 = *&geometry->minimumPadding.bottom;
  v93 = *&geometry->minimumPadding.top;
  v94 = v24;
  v25 = geometry->pipAnchorPointOffset;
  v87 = geometry->pipStashedSize;
  v88 = v25;
  v26 = geometry->containerBounds.size;
  v89 = geometry->containerBounds.origin;
  v90 = v26;
  v27 = geometry->pipLastSteadySize;
  v85 = geometry->pipCurrentSize;
  v86 = v27;
  if ((SBPIPPositionGeometryContextIsEqualToContext(&pipCurrentSize, &v85) & 1) == 0)
  {
    self->_lastGeometryContext.pipCurrentSize = geometry->pipCurrentSize;
    v28 = geometry->pipLastSteadySize;
    v29 = geometry->pipStashedSize;
    v30 = geometry->containerBounds.origin;
    self->_lastGeometryContext.pipAnchorPointOffset = geometry->pipAnchorPointOffset;
    self->_lastGeometryContext.containerBounds.origin = v30;
    self->_lastGeometryContext.pipLastSteadySize = v28;
    self->_lastGeometryContext.pipStashedSize = v29;
    v31 = geometry->containerBounds.size;
    v32 = *&geometry->edgeInsets.top;
    v33 = *&geometry->minimumPadding.top;
    *&self->_lastGeometryContext.edgeInsets.bottom = *&geometry->edgeInsets.bottom;
    *&self->_lastGeometryContext.minimumPadding.top = v33;
    self->_lastGeometryContext.containerBounds.size = v31;
    *&self->_lastGeometryContext.edgeInsets.top = v32;
    v34 = *&geometry->minimumPadding.bottom;
    v35 = *&geometry->stashedMinimumPadding.top;
    v36 = *&geometry->offscreenCorners;
    *&self->_lastGeometryContext.stashedMinimumPadding.bottom = *&geometry->stashedMinimumPadding.bottom;
    *&self->_lastGeometryContext.offscreenCorners = v36;
    *&self->_lastGeometryContext.minimumPadding.bottom = v34;
    *&self->_lastGeometryContext.stashedMinimumPadding.top = v35;
    v37 = self->_lastResolvedRegionsMap;
    self->_lastResolvedRegionsMap = 0;

    lastRegionsMap = self->_lastRegionsMap;
    self->_lastRegionsMap = 0;
  }

  v39 = self->_lastResolvedRegionsMap;
  if (!v39)
  {
    if (!self->_lastRegionsMap)
    {
      v40 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
      v41 = *&geometry->stashedMinimumPadding.bottom;
      v108 = *&geometry->stashedMinimumPadding.top;
      v109 = v41;
      v110 = *&geometry->offscreenCorners;
      v42 = *&geometry->edgeInsets.bottom;
      v104 = *&geometry->edgeInsets.top;
      v105 = v42;
      v43 = *&geometry->minimumPadding.bottom;
      v106 = *&geometry->minimumPadding.top;
      v107 = v43;
      v44 = geometry->pipAnchorPointOffset;
      pipStashedSize = geometry->pipStashedSize;
      v101 = v44;
      v45 = geometry->containerBounds.size;
      origin = geometry->containerBounds.origin;
      v103 = v45;
      v46 = geometry->pipLastSteadySize;
      pipCurrentSize = geometry->pipCurrentSize;
      v99 = v46;
      [(SBPIPDefaultPositionHyperregionComposer *)self _addRegionWithType:1 geometry:&pipCurrentSize toMap:v40];
      v47 = *&geometry->stashedMinimumPadding.bottom;
      v108 = *&geometry->stashedMinimumPadding.top;
      v109 = v47;
      v110 = *&geometry->offscreenCorners;
      v48 = *&geometry->edgeInsets.bottom;
      v104 = *&geometry->edgeInsets.top;
      v105 = v48;
      v49 = *&geometry->minimumPadding.bottom;
      v106 = *&geometry->minimumPadding.top;
      v107 = v49;
      v50 = geometry->pipAnchorPointOffset;
      pipStashedSize = geometry->pipStashedSize;
      v101 = v50;
      v51 = geometry->containerBounds.size;
      origin = geometry->containerBounds.origin;
      v103 = v51;
      v52 = geometry->pipLastSteadySize;
      pipCurrentSize = geometry->pipCurrentSize;
      v99 = v52;
      [(SBPIPDefaultPositionHyperregionComposer *)self _addRegionWithType:2 geometry:&pipCurrentSize toMap:v40];
      v53 = *&geometry->stashedMinimumPadding.bottom;
      v108 = *&geometry->stashedMinimumPadding.top;
      v109 = v53;
      v110 = *&geometry->offscreenCorners;
      v54 = *&geometry->edgeInsets.bottom;
      v104 = *&geometry->edgeInsets.top;
      v105 = v54;
      v55 = *&geometry->minimumPadding.bottom;
      v106 = *&geometry->minimumPadding.top;
      v107 = v55;
      v56 = geometry->pipAnchorPointOffset;
      pipStashedSize = geometry->pipStashedSize;
      v101 = v56;
      v57 = geometry->containerBounds.size;
      origin = geometry->containerBounds.origin;
      v103 = v57;
      v58 = geometry->pipLastSteadySize;
      pipCurrentSize = geometry->pipCurrentSize;
      v99 = v58;
      [(SBPIPDefaultPositionHyperregionComposer *)self _addRegionWithType:3 geometry:&pipCurrentSize toMap:v40];
      v59 = self->_lastRegionsMap;
      self->_lastRegionsMap = v40;
    }

    v60 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_lastRegionsMap];
    if (interaction->hasActiveGesture)
    {
      v61 = *&geometry->stashedMinimumPadding.bottom;
      v108 = *&geometry->stashedMinimumPadding.top;
      v109 = v61;
      v110 = *&geometry->offscreenCorners;
      v62 = *&geometry->edgeInsets.bottom;
      v104 = *&geometry->edgeInsets.top;
      v105 = v62;
      v63 = *&geometry->minimumPadding.bottom;
      v106 = *&geometry->minimumPadding.top;
      v107 = v63;
      v64 = geometry->pipAnchorPointOffset;
      pipStashedSize = geometry->pipStashedSize;
      v101 = v64;
      v65 = geometry->containerBounds.size;
      origin = geometry->containerBounds.origin;
      v103 = v65;
      v66 = geometry->pipLastSteadySize;
      pipCurrentSize = geometry->pipCurrentSize;
      v99 = v66;
      selfCopy2 = self;
      v68 = 6;
    }

    else
    {
      if (!interaction->isFreelyPositionable)
      {
LABEL_13:
        v75 = *&geometry->stashedMinimumPadding.bottom;
        v108 = *&geometry->stashedMinimumPadding.top;
        v109 = v75;
        v110 = *&geometry->offscreenCorners;
        v76 = *&geometry->edgeInsets.bottom;
        v104 = *&geometry->edgeInsets.top;
        v105 = v76;
        v77 = *&geometry->minimumPadding.bottom;
        v106 = *&geometry->minimumPadding.top;
        v107 = v77;
        v78 = geometry->pipAnchorPointOffset;
        pipStashedSize = geometry->pipStashedSize;
        v101 = v78;
        v79 = geometry->containerBounds.size;
        origin = geometry->containerBounds.origin;
        v103 = v79;
        v80 = geometry->pipLastSteadySize;
        pipCurrentSize = geometry->pipCurrentSize;
        v99 = v80;
        v81 = *&interaction->currentPosition.y;
        v87 = *&interaction->initialPosition.y;
        v88 = v81;
        v89.x = interaction->projectedPositionStashProgress;
        v82 = *&interaction->projectedPosition.y;
        v85 = *&interaction->isStashed;
        v86 = v82;
        [(SBPIPDefaultPositionHyperregionComposer *)self _pruneRegionsMap:v60 geometry:&pipCurrentSize interaction:&v85];
        v83 = self->_lastResolvedRegionsMap;
        self->_lastResolvedRegionsMap = v60;

        v39 = self->_lastResolvedRegionsMap;
        goto LABEL_14;
      }

      v69 = *&geometry->stashedMinimumPadding.bottom;
      v108 = *&geometry->stashedMinimumPadding.top;
      v109 = v69;
      v110 = *&geometry->offscreenCorners;
      v70 = *&geometry->edgeInsets.bottom;
      v104 = *&geometry->edgeInsets.top;
      v105 = v70;
      v71 = *&geometry->minimumPadding.bottom;
      v106 = *&geometry->minimumPadding.top;
      v107 = v71;
      v72 = geometry->pipAnchorPointOffset;
      pipStashedSize = geometry->pipStashedSize;
      v101 = v72;
      v73 = geometry->containerBounds.size;
      origin = geometry->containerBounds.origin;
      v103 = v73;
      v74 = geometry->pipLastSteadySize;
      pipCurrentSize = geometry->pipCurrentSize;
      v99 = v74;
      selfCopy2 = self;
      v68 = 5;
    }

    [(SBPIPDefaultPositionHyperregionComposer *)selfCopy2 _addRegionWithType:v68 geometry:&pipCurrentSize toMap:v60];
    goto LABEL_13;
  }

LABEL_14:

  return v39;
}

- (id)_unprunedCornersForGeometry:(SBPIPPositionGeometryContext *)geometry
{
  regionsLibrary = self->_regionsLibrary;
  v4 = *&geometry->stashedMinimumPadding.bottom;
  v12[10] = *&geometry->stashedMinimumPadding.top;
  v12[11] = v4;
  v12[12] = *&geometry->offscreenCorners;
  v5 = *&geometry->edgeInsets.bottom;
  v12[6] = *&geometry->edgeInsets.top;
  v12[7] = v5;
  v6 = *&geometry->minimumPadding.bottom;
  v12[8] = *&geometry->minimumPadding.top;
  v12[9] = v6;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  v12[2] = geometry->pipStashedSize;
  v12[3] = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  v12[4] = geometry->containerBounds.origin;
  v12[5] = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  v12[0] = geometry->pipCurrentSize;
  v12[1] = pipLastSteadySize;
  v10 = [(SBPIPPositionHyperregionLibrary *)regionsLibrary regionWithType:1 geometry:v12];

  return v10;
}

- (unint64_t)canonicalPositionForPoint:(CGPoint)point proposedPosition:(unint64_t)position geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction
{
  pointCopy = point;
  v7 = *&geometry->stashedMinimumPadding.bottom;
  v17[10] = *&geometry->stashedMinimumPadding.top;
  v17[11] = v7;
  v17[12] = *&geometry->offscreenCorners;
  v8 = *&geometry->edgeInsets.bottom;
  v17[6] = *&geometry->edgeInsets.top;
  v17[7] = v8;
  v9 = *&geometry->minimumPadding.bottom;
  v17[8] = *&geometry->minimumPadding.top;
  v17[9] = v9;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  v17[2] = geometry->pipStashedSize;
  v17[3] = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  v17[4] = geometry->containerBounds.origin;
  v17[5] = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  v17[0] = geometry->pipCurrentSize;
  v17[1] = pipLastSteadySize;
  v13 = [(SBPIPDefaultPositionHyperregionComposer *)self _unprunedCornersForGeometry:v17];
  positionCopy = [v13 _regionIndexForClosestPoint:0 toPoint:&pointCopy];
  if (positionCopy == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = SBLogPIP();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBPIPDefaultPositionHyperregionComposer canonicalPositionForPoint:proposedPosition:geometry:interaction:];
    }

    positionCopy = position;
  }

  return positionCopy;
}

- (CGPoint)defaultCornerPositionForLayoutSettingsPosition:(unint64_t)position proposedCenter:(CGPoint)center geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction
{
  v7 = *&geometry->stashedMinimumPadding.bottom;
  v21[10] = *&geometry->stashedMinimumPadding.top;
  v21[11] = v7;
  v21[12] = *&geometry->offscreenCorners;
  v8 = *&geometry->edgeInsets.bottom;
  v21[6] = *&geometry->edgeInsets.top;
  v21[7] = v8;
  v9 = *&geometry->minimumPadding.bottom;
  v21[8] = *&geometry->minimumPadding.top;
  v21[9] = v9;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  v21[2] = geometry->pipStashedSize;
  v21[3] = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  v21[4] = geometry->containerBounds.origin;
  v21[5] = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  v21[0] = geometry->pipCurrentSize;
  v21[1] = pipLastSteadySize;
  v13 = [(SBPIPDefaultPositionHyperregionComposer *)self _unprunedCornersForGeometry:v21];
  _regions = [v13 _regions];

  v15 = [_regions objectAtIndex:position];
  _value = [v15 _value];

  v17 = *_value;
  v18 = _value[1];

  v19 = v17;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)_addRegionWithType:(int64_t)type geometry:(SBPIPPositionGeometryContext *)geometry toMap:(id)map
{
  regionsLibrary = self->_regionsLibrary;
  v7 = *&geometry->stashedMinimumPadding.bottom;
  v26 = *&geometry->stashedMinimumPadding.top;
  v27 = v7;
  v28 = *&geometry->offscreenCorners;
  v8 = *&geometry->edgeInsets.bottom;
  v22 = *&geometry->edgeInsets.top;
  v23 = v8;
  v9 = *&geometry->minimumPadding.bottom;
  v24 = *&geometry->minimumPadding.top;
  v25 = v9;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  pipStashedSize = geometry->pipStashedSize;
  v19 = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  origin = geometry->containerBounds.origin;
  v21 = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  pipCurrentSize = geometry->pipCurrentSize;
  v17 = pipLastSteadySize;
  mapCopy = map;
  v14 = [(SBPIPPositionHyperregionLibrary *)regionsLibrary regionWithType:type geometry:&pipCurrentSize];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{type, pipCurrentSize, v17, pipStashedSize, v19, origin, v21, v22, v23, v24, v25, v26, v27, v28}];
  [mapCopy setObject:v14 forKey:v15];
}

- (void)_pruneRegionsMap:(id)map geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction
{
  mapCopy = map;
  v10 = mapCopy;
  if (!interaction->isInteractive && interaction->isStashed)
  {
    [mapCopy removeObjectForKey:&unk_2833719D8];
  }

  Width = CGRectGetWidth(geometry->containerBounds);
  v12 = CGRectGetWidth(geometry->containerBounds);
  v13 = CGRectGetWidth(geometry->containerBounds);
  if (self->_isPad)
  {
    v14 = 6.0;
  }

  else
  {
    v14 = 2.0;
  }

  x = interaction->initialPosition.x;
  v16 = interaction->currentPosition.x;
  projectedPositionStashProgress = interaction->projectedPositionStashProgress;
  currentPositionStashProgress = interaction->currentPositionStashProgress;
  v18 = __sb__runningInSpringBoard();
  if (!v18)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if (![currentDevice userInterfaceIdiom] && SBFEffectiveHomeButtonType() == 2)
    {
      p_orientation = &geometry->orientation;
      v22 = geometry->orientation - 3;

      if (v22 >= 2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_19:

    goto LABEL_30;
  }

  v19 = v18;
  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
  {
    goto LABEL_30;
  }

  if (SBFEffectiveHomeButtonType() != 2)
  {
    if (v19)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  p_orientation = &geometry->orientation;
  orientation = geometry->orientation;
  if (v19)
  {
    if ((orientation - 3) > 1)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  if ((orientation - 3) > 1)
  {
    goto LABEL_30;
  }

LABEL_21:
  orientation = *p_orientation;
LABEL_22:
  v23 = SBLogPIP();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
  if (orientation == 3)
  {
    if (v24)
    {
      [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
    }

    v25 = &unk_2833719F0;
  }

  else
  {
    if (v24)
    {
      [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
    }

    v25 = &unk_283371A08;
  }

  [v10 removeObjectForKey:v25];
LABEL_30:
  if (!interaction->isInteractive || interaction->hasActiveGesture)
  {
    goto LABEL_72;
  }

  v26 = Width * 0.5;
  if (interaction->isStashed)
  {
    v27 = v13 / v14;
    if (x >= v27 + CGRectGetMinX(geometry->containerBounds) || v16 >= v27 + CGRectGetMinX(geometry->containerBounds))
    {
      if (x <= CGRectGetMaxX(geometry->containerBounds) - v27 || v16 <= CGRectGetMaxX(geometry->containerBounds) - v27)
      {
LABEL_44:
        if (projectedPositionStashProgress < 0.15)
        {
          v40 = SBLogPIP();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
          }

          [v10 removeObjectForKey:&unk_2833719F0];
          [v10 removeObjectForKey:&unk_283371A08];
        }

        goto LABEL_48;
      }

      v28 = SBLogPIP();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
      }

      v30 = 0;
      v47 = &unk_2833719F0;
      v29 = 1;
    }

    else
    {
      v28 = SBLogPIP();
      v29 = 2;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
        v47 = &unk_283371A08;
        v29 = 2;
      }

      else
      {
        v47 = &unk_283371A08;
      }

      v30 = 3;
    }

    v31 = [v10 objectForKey:&unk_2833719D8];
    v32 = [v31 copy];
    v33 = MEMORY[0x277CBEB18];
    _regions = [v32 _regions];
    v35 = [v33 arrayWithArray:_regions];

    _regions2 = [v31 _regions];
    v37 = [_regions2 objectAtIndex:v30];
    [v35 removeObject:v37];

    _regions3 = [v31 _regions];
    v39 = [_regions3 objectAtIndex:v29];
    [v35 removeObject:v39];

    [v32 _setRegions:v35];
    [v10 setObject:v32 forKey:&unk_2833719D8];
    [v10 removeObjectForKey:v47];

    goto LABEL_44;
  }

LABEL_48:
  v41 = v12 / 6.0;
  v42 = v26 + CGRectGetMinX(geometry->containerBounds);
  v43 = v26 + CGRectGetMinX(geometry->containerBounds);
  if (x < v42)
  {
    if (v16 < v43)
    {
      v44 = SBLogPIP();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
      }

      [v10 removeObjectForKey:&unk_283371A08];
      if (!interaction->isStashed && !self->_isPad && currentPositionStashProgress < 0.25)
      {
        v45 = SBLogPIP();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
        }

LABEL_70:
        v46 = &unk_2833719F0;
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (v16 >= CGRectGetMaxX(geometry->containerBounds) - v41)
    {
      goto LABEL_72;
    }

    v45 = SBLogPIP();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
    }

LABEL_66:
    v46 = &unk_283371A08;
LABEL_71:

    [v10 removeObjectForKey:v46];
    goto LABEL_72;
  }

  if (v16 > v43)
  {
    [v10 removeObjectForKey:&unk_2833719F0];
    if (interaction->isStashed || self->_isPad || currentPositionStashProgress >= 0.25)
    {
      goto LABEL_72;
    }

    v45 = SBLogPIP();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
    }

    goto LABEL_66;
  }

  if (v16 > CGRectGetMaxX(geometry->containerBounds) - v41)
  {
    v45 = SBLogPIP();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [SBPIPDefaultPositionHyperregionComposer _pruneRegionsMap:geometry:interaction:];
    }

    goto LABEL_70;
  }

LABEL_72:
}

- (SBPIPPositionHyperregionComposerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBWindowScene)representedWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_representedWindowScene);

  return WeakRetained;
}

- (void)canonicalPositionForPoint:proposedPosition:geometry:interaction:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_ERROR, "Unexpectedly could not find index for cornersRegion: %{public}@; controller %{public}@", v2, 0x16u);
}

@end