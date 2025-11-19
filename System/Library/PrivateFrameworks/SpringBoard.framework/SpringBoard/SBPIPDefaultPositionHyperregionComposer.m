@interface SBPIPDefaultPositionHyperregionComposer
- (CGPoint)defaultCornerPositionForLayoutSettingsPosition:(unint64_t)a3 proposedCenter:(CGPoint)a4 geometry:(SBPIPPositionGeometryContext *)a5 interaction:(SBPIPPositionInteractionStateContext *)a6;
- (SBPIPDefaultPositionHyperregionComposer)init;
- (SBPIPPositionHyperregionComposerDelegate)delegate;
- (SBWindowScene)representedWindowScene;
- (id)_unprunedCornersForGeometry:(SBPIPPositionGeometryContext *)a3;
- (id)positionRegionsForRegions:(id)a3 geometry:(SBPIPPositionGeometryContext *)a4 interaction:(SBPIPPositionInteractionStateContext *)a5;
- (unint64_t)canonicalPositionForPoint:(CGPoint)a3 proposedPosition:(unint64_t)a4 geometry:(SBPIPPositionGeometryContext *)a5 interaction:(SBPIPPositionInteractionStateContext *)a6;
- (void)_addRegionWithType:(int64_t)a3 geometry:(SBPIPPositionGeometryContext *)a4 toMap:(id)a5;
- (void)_pruneRegionsMap:(id)a3 geometry:(SBPIPPositionGeometryContext *)a4 interaction:(SBPIPPositionInteractionStateContext *)a5;
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
      v3 = [MEMORY[0x277D75418] currentDevice];
      v2->_isPad = [v3 userInterfaceIdiom] == 1;
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

- (id)positionRegionsForRegions:(id)a3 geometry:(SBPIPPositionGeometryContext *)a4 interaction:(SBPIPPositionInteractionStateContext *)a5
{
  v8 = *&self->_lastInteractionStateContext.projectedPosition.y;
  v9 = *&self->_lastInteractionStateContext.currentPosition.y;
  pipStashedSize = *&self->_lastInteractionStateContext.initialPosition.y;
  v101 = v9;
  origin.x = self->_lastInteractionStateContext.projectedPositionStashProgress;
  pipCurrentSize = *&self->_lastInteractionStateContext.isStashed;
  v99 = v8;
  v10 = *&a5->currentPosition.y;
  v87 = *&a5->initialPosition.y;
  v88 = v10;
  v89.x = a5->projectedPositionStashProgress;
  v11 = *&a5->projectedPosition.y;
  v85 = *&a5->isStashed;
  v86 = v11;
  if ((SBPIPPositionInteractionStateContextIsEqualToContext(&pipCurrentSize, &v85) & 1) == 0)
  {
    *&self->_lastInteractionStateContext.isStashed = *&a5->isStashed;
    v12 = *&a5->projectedPosition.y;
    v13 = *&a5->initialPosition.y;
    v14 = *&a5->currentPosition.y;
    self->_lastInteractionStateContext.projectedPositionStashProgress = a5->projectedPositionStashProgress;
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
  v22 = *&a4->stashedMinimumPadding.bottom;
  v95 = *&a4->stashedMinimumPadding.top;
  v96 = v22;
  v97 = *&a4->offscreenCorners;
  v23 = *&a4->edgeInsets.bottom;
  v91 = *&a4->edgeInsets.top;
  v92 = v23;
  v24 = *&a4->minimumPadding.bottom;
  v93 = *&a4->minimumPadding.top;
  v94 = v24;
  v25 = a4->pipAnchorPointOffset;
  v87 = a4->pipStashedSize;
  v88 = v25;
  v26 = a4->containerBounds.size;
  v89 = a4->containerBounds.origin;
  v90 = v26;
  v27 = a4->pipLastSteadySize;
  v85 = a4->pipCurrentSize;
  v86 = v27;
  if ((SBPIPPositionGeometryContextIsEqualToContext(&pipCurrentSize, &v85) & 1) == 0)
  {
    self->_lastGeometryContext.pipCurrentSize = a4->pipCurrentSize;
    v28 = a4->pipLastSteadySize;
    v29 = a4->pipStashedSize;
    v30 = a4->containerBounds.origin;
    self->_lastGeometryContext.pipAnchorPointOffset = a4->pipAnchorPointOffset;
    self->_lastGeometryContext.containerBounds.origin = v30;
    self->_lastGeometryContext.pipLastSteadySize = v28;
    self->_lastGeometryContext.pipStashedSize = v29;
    v31 = a4->containerBounds.size;
    v32 = *&a4->edgeInsets.top;
    v33 = *&a4->minimumPadding.top;
    *&self->_lastGeometryContext.edgeInsets.bottom = *&a4->edgeInsets.bottom;
    *&self->_lastGeometryContext.minimumPadding.top = v33;
    self->_lastGeometryContext.containerBounds.size = v31;
    *&self->_lastGeometryContext.edgeInsets.top = v32;
    v34 = *&a4->minimumPadding.bottom;
    v35 = *&a4->stashedMinimumPadding.top;
    v36 = *&a4->offscreenCorners;
    *&self->_lastGeometryContext.stashedMinimumPadding.bottom = *&a4->stashedMinimumPadding.bottom;
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
      v41 = *&a4->stashedMinimumPadding.bottom;
      v108 = *&a4->stashedMinimumPadding.top;
      v109 = v41;
      v110 = *&a4->offscreenCorners;
      v42 = *&a4->edgeInsets.bottom;
      v104 = *&a4->edgeInsets.top;
      v105 = v42;
      v43 = *&a4->minimumPadding.bottom;
      v106 = *&a4->minimumPadding.top;
      v107 = v43;
      v44 = a4->pipAnchorPointOffset;
      pipStashedSize = a4->pipStashedSize;
      v101 = v44;
      v45 = a4->containerBounds.size;
      origin = a4->containerBounds.origin;
      v103 = v45;
      v46 = a4->pipLastSteadySize;
      pipCurrentSize = a4->pipCurrentSize;
      v99 = v46;
      [(SBPIPDefaultPositionHyperregionComposer *)self _addRegionWithType:1 geometry:&pipCurrentSize toMap:v40];
      v47 = *&a4->stashedMinimumPadding.bottom;
      v108 = *&a4->stashedMinimumPadding.top;
      v109 = v47;
      v110 = *&a4->offscreenCorners;
      v48 = *&a4->edgeInsets.bottom;
      v104 = *&a4->edgeInsets.top;
      v105 = v48;
      v49 = *&a4->minimumPadding.bottom;
      v106 = *&a4->minimumPadding.top;
      v107 = v49;
      v50 = a4->pipAnchorPointOffset;
      pipStashedSize = a4->pipStashedSize;
      v101 = v50;
      v51 = a4->containerBounds.size;
      origin = a4->containerBounds.origin;
      v103 = v51;
      v52 = a4->pipLastSteadySize;
      pipCurrentSize = a4->pipCurrentSize;
      v99 = v52;
      [(SBPIPDefaultPositionHyperregionComposer *)self _addRegionWithType:2 geometry:&pipCurrentSize toMap:v40];
      v53 = *&a4->stashedMinimumPadding.bottom;
      v108 = *&a4->stashedMinimumPadding.top;
      v109 = v53;
      v110 = *&a4->offscreenCorners;
      v54 = *&a4->edgeInsets.bottom;
      v104 = *&a4->edgeInsets.top;
      v105 = v54;
      v55 = *&a4->minimumPadding.bottom;
      v106 = *&a4->minimumPadding.top;
      v107 = v55;
      v56 = a4->pipAnchorPointOffset;
      pipStashedSize = a4->pipStashedSize;
      v101 = v56;
      v57 = a4->containerBounds.size;
      origin = a4->containerBounds.origin;
      v103 = v57;
      v58 = a4->pipLastSteadySize;
      pipCurrentSize = a4->pipCurrentSize;
      v99 = v58;
      [(SBPIPDefaultPositionHyperregionComposer *)self _addRegionWithType:3 geometry:&pipCurrentSize toMap:v40];
      v59 = self->_lastRegionsMap;
      self->_lastRegionsMap = v40;
    }

    v60 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_lastRegionsMap];
    if (a5->hasActiveGesture)
    {
      v61 = *&a4->stashedMinimumPadding.bottom;
      v108 = *&a4->stashedMinimumPadding.top;
      v109 = v61;
      v110 = *&a4->offscreenCorners;
      v62 = *&a4->edgeInsets.bottom;
      v104 = *&a4->edgeInsets.top;
      v105 = v62;
      v63 = *&a4->minimumPadding.bottom;
      v106 = *&a4->minimumPadding.top;
      v107 = v63;
      v64 = a4->pipAnchorPointOffset;
      pipStashedSize = a4->pipStashedSize;
      v101 = v64;
      v65 = a4->containerBounds.size;
      origin = a4->containerBounds.origin;
      v103 = v65;
      v66 = a4->pipLastSteadySize;
      pipCurrentSize = a4->pipCurrentSize;
      v99 = v66;
      v67 = self;
      v68 = 6;
    }

    else
    {
      if (!a5->isFreelyPositionable)
      {
LABEL_13:
        v75 = *&a4->stashedMinimumPadding.bottom;
        v108 = *&a4->stashedMinimumPadding.top;
        v109 = v75;
        v110 = *&a4->offscreenCorners;
        v76 = *&a4->edgeInsets.bottom;
        v104 = *&a4->edgeInsets.top;
        v105 = v76;
        v77 = *&a4->minimumPadding.bottom;
        v106 = *&a4->minimumPadding.top;
        v107 = v77;
        v78 = a4->pipAnchorPointOffset;
        pipStashedSize = a4->pipStashedSize;
        v101 = v78;
        v79 = a4->containerBounds.size;
        origin = a4->containerBounds.origin;
        v103 = v79;
        v80 = a4->pipLastSteadySize;
        pipCurrentSize = a4->pipCurrentSize;
        v99 = v80;
        v81 = *&a5->currentPosition.y;
        v87 = *&a5->initialPosition.y;
        v88 = v81;
        v89.x = a5->projectedPositionStashProgress;
        v82 = *&a5->projectedPosition.y;
        v85 = *&a5->isStashed;
        v86 = v82;
        [(SBPIPDefaultPositionHyperregionComposer *)self _pruneRegionsMap:v60 geometry:&pipCurrentSize interaction:&v85];
        v83 = self->_lastResolvedRegionsMap;
        self->_lastResolvedRegionsMap = v60;

        v39 = self->_lastResolvedRegionsMap;
        goto LABEL_14;
      }

      v69 = *&a4->stashedMinimumPadding.bottom;
      v108 = *&a4->stashedMinimumPadding.top;
      v109 = v69;
      v110 = *&a4->offscreenCorners;
      v70 = *&a4->edgeInsets.bottom;
      v104 = *&a4->edgeInsets.top;
      v105 = v70;
      v71 = *&a4->minimumPadding.bottom;
      v106 = *&a4->minimumPadding.top;
      v107 = v71;
      v72 = a4->pipAnchorPointOffset;
      pipStashedSize = a4->pipStashedSize;
      v101 = v72;
      v73 = a4->containerBounds.size;
      origin = a4->containerBounds.origin;
      v103 = v73;
      v74 = a4->pipLastSteadySize;
      pipCurrentSize = a4->pipCurrentSize;
      v99 = v74;
      v67 = self;
      v68 = 5;
    }

    [(SBPIPDefaultPositionHyperregionComposer *)v67 _addRegionWithType:v68 geometry:&pipCurrentSize toMap:v60];
    goto LABEL_13;
  }

LABEL_14:

  return v39;
}

- (id)_unprunedCornersForGeometry:(SBPIPPositionGeometryContext *)a3
{
  regionsLibrary = self->_regionsLibrary;
  v4 = *&a3->stashedMinimumPadding.bottom;
  v12[10] = *&a3->stashedMinimumPadding.top;
  v12[11] = v4;
  v12[12] = *&a3->offscreenCorners;
  v5 = *&a3->edgeInsets.bottom;
  v12[6] = *&a3->edgeInsets.top;
  v12[7] = v5;
  v6 = *&a3->minimumPadding.bottom;
  v12[8] = *&a3->minimumPadding.top;
  v12[9] = v6;
  pipAnchorPointOffset = a3->pipAnchorPointOffset;
  v12[2] = a3->pipStashedSize;
  v12[3] = pipAnchorPointOffset;
  size = a3->containerBounds.size;
  v12[4] = a3->containerBounds.origin;
  v12[5] = size;
  pipLastSteadySize = a3->pipLastSteadySize;
  v12[0] = a3->pipCurrentSize;
  v12[1] = pipLastSteadySize;
  v10 = [(SBPIPPositionHyperregionLibrary *)regionsLibrary regionWithType:1 geometry:v12];

  return v10;
}

- (unint64_t)canonicalPositionForPoint:(CGPoint)a3 proposedPosition:(unint64_t)a4 geometry:(SBPIPPositionGeometryContext *)a5 interaction:(SBPIPPositionInteractionStateContext *)a6
{
  v18 = a3;
  v7 = *&a5->stashedMinimumPadding.bottom;
  v17[10] = *&a5->stashedMinimumPadding.top;
  v17[11] = v7;
  v17[12] = *&a5->offscreenCorners;
  v8 = *&a5->edgeInsets.bottom;
  v17[6] = *&a5->edgeInsets.top;
  v17[7] = v8;
  v9 = *&a5->minimumPadding.bottom;
  v17[8] = *&a5->minimumPadding.top;
  v17[9] = v9;
  pipAnchorPointOffset = a5->pipAnchorPointOffset;
  v17[2] = a5->pipStashedSize;
  v17[3] = pipAnchorPointOffset;
  size = a5->containerBounds.size;
  v17[4] = a5->containerBounds.origin;
  v17[5] = size;
  pipLastSteadySize = a5->pipLastSteadySize;
  v17[0] = a5->pipCurrentSize;
  v17[1] = pipLastSteadySize;
  v13 = [(SBPIPDefaultPositionHyperregionComposer *)self _unprunedCornersForGeometry:v17];
  v14 = [v13 _regionIndexForClosestPoint:0 toPoint:&v18];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = SBLogPIP();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBPIPDefaultPositionHyperregionComposer canonicalPositionForPoint:proposedPosition:geometry:interaction:];
    }

    v14 = a4;
  }

  return v14;
}

- (CGPoint)defaultCornerPositionForLayoutSettingsPosition:(unint64_t)a3 proposedCenter:(CGPoint)a4 geometry:(SBPIPPositionGeometryContext *)a5 interaction:(SBPIPPositionInteractionStateContext *)a6
{
  v7 = *&a5->stashedMinimumPadding.bottom;
  v21[10] = *&a5->stashedMinimumPadding.top;
  v21[11] = v7;
  v21[12] = *&a5->offscreenCorners;
  v8 = *&a5->edgeInsets.bottom;
  v21[6] = *&a5->edgeInsets.top;
  v21[7] = v8;
  v9 = *&a5->minimumPadding.bottom;
  v21[8] = *&a5->minimumPadding.top;
  v21[9] = v9;
  pipAnchorPointOffset = a5->pipAnchorPointOffset;
  v21[2] = a5->pipStashedSize;
  v21[3] = pipAnchorPointOffset;
  size = a5->containerBounds.size;
  v21[4] = a5->containerBounds.origin;
  v21[5] = size;
  pipLastSteadySize = a5->pipLastSteadySize;
  v21[0] = a5->pipCurrentSize;
  v21[1] = pipLastSteadySize;
  v13 = [(SBPIPDefaultPositionHyperregionComposer *)self _unprunedCornersForGeometry:v21];
  v14 = [v13 _regions];

  v15 = [v14 objectAtIndex:a3];
  v16 = [v15 _value];

  v17 = *v16;
  v18 = v16[1];

  v19 = v17;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)_addRegionWithType:(int64_t)a3 geometry:(SBPIPPositionGeometryContext *)a4 toMap:(id)a5
{
  regionsLibrary = self->_regionsLibrary;
  v7 = *&a4->stashedMinimumPadding.bottom;
  v26 = *&a4->stashedMinimumPadding.top;
  v27 = v7;
  v28 = *&a4->offscreenCorners;
  v8 = *&a4->edgeInsets.bottom;
  v22 = *&a4->edgeInsets.top;
  v23 = v8;
  v9 = *&a4->minimumPadding.bottom;
  v24 = *&a4->minimumPadding.top;
  v25 = v9;
  pipAnchorPointOffset = a4->pipAnchorPointOffset;
  pipStashedSize = a4->pipStashedSize;
  v19 = pipAnchorPointOffset;
  size = a4->containerBounds.size;
  origin = a4->containerBounds.origin;
  v21 = size;
  pipLastSteadySize = a4->pipLastSteadySize;
  pipCurrentSize = a4->pipCurrentSize;
  v17 = pipLastSteadySize;
  v13 = a5;
  v14 = [(SBPIPPositionHyperregionLibrary *)regionsLibrary regionWithType:a3 geometry:&pipCurrentSize];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{a3, pipCurrentSize, v17, pipStashedSize, v19, origin, v21, v22, v23, v24, v25, v26, v27, v28}];
  [v13 setObject:v14 forKey:v15];
}

- (void)_pruneRegionsMap:(id)a3 geometry:(SBPIPPositionGeometryContext *)a4 interaction:(SBPIPPositionInteractionStateContext *)a5
{
  v9 = a3;
  v10 = v9;
  if (!a5->isInteractive && a5->isStashed)
  {
    [v9 removeObjectForKey:&unk_2833719D8];
  }

  Width = CGRectGetWidth(a4->containerBounds);
  v12 = CGRectGetWidth(a4->containerBounds);
  v13 = CGRectGetWidth(a4->containerBounds);
  if (self->_isPad)
  {
    v14 = 6.0;
  }

  else
  {
    v14 = 2.0;
  }

  x = a5->initialPosition.x;
  v16 = a5->currentPosition.x;
  projectedPositionStashProgress = a5->projectedPositionStashProgress;
  currentPositionStashProgress = a5->currentPositionStashProgress;
  v18 = __sb__runningInSpringBoard();
  if (!v18)
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    if (![v5 userInterfaceIdiom] && SBFEffectiveHomeButtonType() == 2)
    {
      p_orientation = &a4->orientation;
      v22 = a4->orientation - 3;

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

  p_orientation = &a4->orientation;
  orientation = a4->orientation;
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
  if (!a5->isInteractive || a5->hasActiveGesture)
  {
    goto LABEL_72;
  }

  v26 = Width * 0.5;
  if (a5->isStashed)
  {
    v27 = v13 / v14;
    if (x >= v27 + CGRectGetMinX(a4->containerBounds) || v16 >= v27 + CGRectGetMinX(a4->containerBounds))
    {
      if (x <= CGRectGetMaxX(a4->containerBounds) - v27 || v16 <= CGRectGetMaxX(a4->containerBounds) - v27)
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
    v34 = [v32 _regions];
    v35 = [v33 arrayWithArray:v34];

    v36 = [v31 _regions];
    v37 = [v36 objectAtIndex:v30];
    [v35 removeObject:v37];

    v38 = [v31 _regions];
    v39 = [v38 objectAtIndex:v29];
    [v35 removeObject:v39];

    [v32 _setRegions:v35];
    [v10 setObject:v32 forKey:&unk_2833719D8];
    [v10 removeObjectForKey:v47];

    goto LABEL_44;
  }

LABEL_48:
  v41 = v12 / 6.0;
  v42 = v26 + CGRectGetMinX(a4->containerBounds);
  v43 = v26 + CGRectGetMinX(a4->containerBounds);
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
      if (!a5->isStashed && !self->_isPad && currentPositionStashProgress < 0.25)
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

    if (v16 >= CGRectGetMaxX(a4->containerBounds) - v41)
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
    if (a5->isStashed || self->_isPad || currentPositionStashProgress >= 0.25)
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

  if (v16 > CGRectGetMaxX(a4->containerBounds) - v41)
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