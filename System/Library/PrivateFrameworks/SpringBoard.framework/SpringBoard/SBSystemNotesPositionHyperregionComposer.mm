@interface SBSystemNotesPositionHyperregionComposer
- (NSString)description;
- (SBPIPPositionHyperregionComposerDelegate)delegate;
- (SBSystemNotesPositionHyperregionComposer)init;
- (id)positionRegionsForRegions:(id)regions geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction;
- (void)_addOffscreenCornersToRegions:(id)regions geometry:(SBPIPPositionGeometryContext *)geometry;
- (void)_setupStateCapture;
- (void)dealloc;
- (void)invalidate;
- (void)performActionsWithTransientStateChange:(id)change;
- (void)setupForEdgeProtectCornerSwipe;
- (void)setupForInteractiveCornerGesture;
- (void)setupForInteractiveCornerGestureEnd;
- (void)setupForInteractiveDismissalToSize:(CGSize)size;
- (void)setupForStandardBehavior;
- (void)setupForSwipesFromCorners:(unint64_t)corners animated:(BOOL)animated;
@end

@implementation SBSystemNotesPositionHyperregionComposer

- (SBSystemNotesPositionHyperregionComposer)init
{
  v7.receiver = self;
  v7.super_class = SBSystemNotesPositionHyperregionComposer;
  v2 = [(SBSystemNotesPositionHyperregionComposer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v4 = objc_alloc_init(SBPIPPositionHyperregionLibrary);
    regionsLibrary = v3->_regionsLibrary;
    v3->_regionsLibrary = v4;

    v3->_animationState = 2;
    [(SBSystemNotesPositionHyperregionComposer *)v3 _setupStateCapture];
  }

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  v3.receiver = self;
  v3.super_class = SBSystemNotesPositionHyperregionComposer;
  [(SBSystemNotesPositionHyperregionComposer *)&v3 dealloc];
}

- (void)_setupStateCapture
{
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"PictureInPicture - SBSystemNotesPositionHyperregionComposer - %p", self];
  v4 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v7, &location);
  v5 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
  self->_stateCaptureInvalidatable = v5;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __62__SBSystemNotesPositionHyperregionComposer__setupStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = SBSystemNotesPositionHyperregionComposer;
  v4 = [(SBSystemNotesPositionHyperregionComposer *)&v14 description];
  v15[0] = @"State";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_state];
  v16[0] = v5;
  v15[1] = @"Animation State";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_animationState];
  v16[1] = v6;
  v15[2] = @"Offscreen Corners";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_offscreenCorners];
  v8 = v7;
  v15[3] = @"Regions Library";
  regionsLibrary = self->_regionsLibrary;
  if (!regionsLibrary)
  {
    regionsLibrary = &stru_283094718;
  }

  v16[2] = v7;
  v16[3] = regionsLibrary;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v11 = [v10 description];
  v12 = [v3 stringWithFormat:@"%@\n%@", v4, v11];

  return v12;
}

- (void)performActionsWithTransientStateChange:(id)change
{
  state = self->_state;
  (*(change + 2))(change, a2);
  if (self->_state != state)
  {
    self->_state = state;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained positionRegionComposerNeedsUpdate:self behavior:self->_animationState];
  }
}

- (void)setupForSwipesFromCorners:(unint64_t)corners animated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x277D85DE8];
  if (animated)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (self->_state != 1 || self->_offscreenCorners != corners || self->_animationState != v6)
  {
    self->_state = 1;
    self->_offscreenCorners = corners;
    self->_animationState = v6;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained positionRegionComposerNeedsUpdate:self behavior:self->_animationState];

    v8 = SBLogPIP();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = _SBFLoggingMethodProem();
      v10 = SBStringFromUIRectCorner();
      v11 = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      v15 = 1024;
      v16 = animatedCopy;
      _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@][Hyper] corners: %{public}@ animated: %{BOOL}u", &v11, 0x1Cu);
    }
  }
}

- (void)setupForInteractiveCornerGesture
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_25();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}@][Hyper]", v3, v4, v5, v6, v7);
}

- (void)setupForInteractiveCornerGestureEnd
{
  if (self->_state != 3)
  {
    self->_state = 3;
    self->_animationState = 2;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained positionRegionComposerNeedsUpdate:self behavior:self->_animationState];

    v4 = SBLogPIP();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemNotesPositionHyperregionComposer setupForInteractiveCornerGesture];
    }
  }
}

- (void)setupForStandardBehavior
{
  if (self->_state)
  {
    self->_state = 0;
    self->_animationState = 2;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained positionRegionComposerNeedsUpdate:self behavior:self->_animationState];

    v4 = SBLogPIP();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemNotesPositionHyperregionComposer setupForInteractiveCornerGesture];
    }
  }
}

- (void)setupForInteractiveDismissalToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v15 = *MEMORY[0x277D85DE8];
  if (self->_state != 4 || (self->_dismissToSize.width == size.width ? (v6 = self->_dismissToSize.height == size.height) : (v6 = 0), !v6))
  {
    self->_state = 4;
    self->_dismissToSize = size;
    self->_animationState = 2;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained positionRegionComposerNeedsUpdate:self behavior:self->_animationState];

    v8 = SBLogPIP();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = _SBFLoggingMethodProem();
      v16.width = width;
      v16.height = height;
      v10 = NSStringFromCGSize(v16);
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@][Hyper] toSize: %{public}@", &v11, 0x16u);
    }
  }
}

- (void)setupForEdgeProtectCornerSwipe
{
  if (self->_state != 5)
  {
    self->_state = 5;
    self->_animationState = 2;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained positionRegionComposerNeedsUpdate:self behavior:self->_animationState];

    v4 = SBLogPIP();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemNotesPositionHyperregionComposer setupForInteractiveCornerGesture];
    }
  }
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained positionRegionComposerDidInvalidate:self];
}

- (id)positionRegionsForRegions:(id)regions geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:regions];
  v9 = v8;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  pipStashedSize = geometry->pipStashedSize;
  v61 = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  origin = geometry->containerBounds.origin;
  v63 = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  pipCurrentSize = geometry->pipCurrentSize;
  v59 = pipLastSteadySize;
  v14 = *&geometry->edgeInsets.top;
  v13 = *&geometry->edgeInsets.bottom;
  v15 = *&geometry->minimumPadding.bottom;
  v56 = *&geometry->minimumPadding.top;
  v57 = v15;
  top = geometry->stashedMinimumPadding.top;
  left = geometry->stashedMinimumPadding.left;
  bottom = geometry->stashedMinimumPadding.bottom;
  right = geometry->stashedMinimumPadding.right;
  orientation = geometry->orientation;
  offscreenCorners = self->_offscreenCorners;
  state = self->_state;
  if (state <= 2)
  {
    if (state == 1)
    {
      v37 = v14;
      v38 = v13;
      [v8 removeAllObjects];
      v42 = pipStashedSize;
      v43 = v61;
      v44 = origin;
      v45 = v63;
      v40 = pipCurrentSize;
      v41 = v59;
      v46 = v37;
      v47 = v38;
      v48 = v56;
      v49 = v57;
      v50 = top;
      v51 = left;
      v52 = *&bottom;
      v53 = right;
      v54 = offscreenCorners;
      v55 = orientation;
      [(SBSystemNotesPositionHyperregionComposer *)self _addOffscreenCornersToRegions:v9 geometry:&v40];
      goto LABEL_16;
    }

    if (state != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (state == 3)
    {
      [v8 removeObjectForKey:&unk_283371840];
      [v9 removeObjectForKey:&unk_283371858];
      goto LABEL_16;
    }

    if (state != 4)
    {
      if (state == 5)
      {
        v39 = *(&v13 + 1);
        Height = CGRectGetHeight(geometry->containerBounds);
        v24 = geometry->edgeInsets.left;
        v25 = Height - geometry->pipStashedSize.height + -25.0;
        regionsLibrary = self->_regionsLibrary;
        v42 = pipStashedSize;
        v43 = v61;
        v44 = origin;
        v45 = v63;
        v40 = pipCurrentSize;
        v41 = v59;
        *&v46 = v25;
        *(&v46 + 1) = v24;
        *&v47 = 0x4039000000000000;
        *(&v47 + 1) = v39;
        v48 = v56;
        v49 = v57;
        v50 = v25;
        v51 = v24;
        v53 = v39;
        v52 = 0x4039000000000000;
        v54 = offscreenCorners;
        v55 = orientation;
        v27 = [(SBPIPPositionHyperregionLibrary *)regionsLibrary regionWithType:2 geometry:&v40];
        [v9 setObject:v27 forKey:&unk_283371840];
        v28 = self->_regionsLibrary;
        v42 = pipStashedSize;
        v43 = v61;
        v44 = origin;
        v45 = v63;
        v40 = pipCurrentSize;
        v41 = v59;
        *&v46 = v25;
        *(&v46 + 1) = v24;
        *(&v47 + 1) = v39;
        *&v47 = 0x4039000000000000;
        v48 = v56;
        v49 = v57;
        v50 = v25;
        v51 = v24;
        v53 = v39;
        v52 = 0x4039000000000000;
        v54 = offscreenCorners;
        v55 = orientation;
        v29 = [(SBPIPPositionHyperregionLibrary *)v28 regionWithType:3 geometry:&v40];
        [v9 setObject:v29 forKey:&unk_283371858];
      }

      goto LABEL_16;
    }
  }

  [v8 removeAllObjects];
  v30 = *MEMORY[0x277D768C8];
  v31 = *(MEMORY[0x277D768C8] + 8);
  v32 = *(MEMORY[0x277D768C8] + 16);
  v33 = *(MEMORY[0x277D768C8] + 24);
  if (self->_state == 4)
  {
    pipCurrentSize = self->_dismissToSize;
    v59 = pipCurrentSize;
  }

  v34 = self->_regionsLibrary;
  v42 = pipStashedSize;
  v43 = v61;
  v44 = origin;
  v45 = v63;
  v40 = pipCurrentSize;
  v41 = v59;
  *&v46 = v30;
  *(&v46 + 1) = v31;
  *&v47 = v32;
  *(&v47 + 1) = v33;
  v48 = v56;
  v49 = v57;
  v50 = top;
  v51 = left;
  v52 = *&bottom;
  v53 = right;
  v54 = offscreenCorners;
  v55 = orientation;
  v35 = [(SBPIPPositionHyperregionLibrary *)v34 regionWithType:5 geometry:&v40];
  [v9 setObject:v35 forKey:&unk_283371828];
  if (!interaction->isStashed && self->_state != 4)
  {
    v42 = pipStashedSize;
    v43 = v61;
    v44 = origin;
    v45 = v63;
    v40 = pipCurrentSize;
    v41 = v59;
    *&v46 = v30;
    *(&v46 + 1) = v31;
    *&v47 = v32;
    *(&v47 + 1) = v33;
    v48 = v56;
    v49 = v57;
    v50 = top;
    v51 = left;
    v52 = *&bottom;
    v53 = right;
    v54 = offscreenCorners;
    v55 = orientation;
    [(SBSystemNotesPositionHyperregionComposer *)self _addOffscreenCornersToRegions:v9 geometry:&v40];
  }

LABEL_16:

  return v9;
}

- (void)_addOffscreenCornersToRegions:(id)regions geometry:(SBPIPPositionGeometryContext *)geometry
{
  regionsLibrary = self->_regionsLibrary;
  v5 = *&geometry->stashedMinimumPadding.bottom;
  v23 = *&geometry->stashedMinimumPadding.top;
  v24 = v5;
  v25 = *&geometry->offscreenCorners;
  v6 = *&geometry->edgeInsets.bottom;
  v19 = *&geometry->edgeInsets.top;
  v20 = v6;
  v7 = *&geometry->minimumPadding.bottom;
  v21 = *&geometry->minimumPadding.top;
  v22 = v7;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  pipStashedSize = geometry->pipStashedSize;
  v16 = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  origin = geometry->containerBounds.origin;
  v18 = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  pipCurrentSize = geometry->pipCurrentSize;
  v14 = pipLastSteadySize;
  regionsCopy = regions;
  v12 = [(SBPIPPositionHyperregionLibrary *)regionsLibrary regionWithType:4 geometry:&pipCurrentSize];
  [regionsCopy setObject:v12 forKey:{&unk_283371870, pipCurrentSize, v14, pipStashedSize, v16, origin, v18, v19, v20, v21, v22, v23, v24, v25}];
}

- (SBPIPPositionHyperregionComposerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end