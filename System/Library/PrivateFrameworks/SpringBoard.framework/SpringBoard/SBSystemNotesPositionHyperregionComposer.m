@interface SBSystemNotesPositionHyperregionComposer
- (NSString)description;
- (SBPIPPositionHyperregionComposerDelegate)delegate;
- (SBSystemNotesPositionHyperregionComposer)init;
- (id)positionRegionsForRegions:(id)a3 geometry:(SBPIPPositionGeometryContext *)a4 interaction:(SBPIPPositionInteractionStateContext *)a5;
- (void)_addOffscreenCornersToRegions:(id)a3 geometry:(SBPIPPositionGeometryContext *)a4;
- (void)_setupStateCapture;
- (void)dealloc;
- (void)invalidate;
- (void)performActionsWithTransientStateChange:(id)a3;
- (void)setupForEdgeProtectCornerSwipe;
- (void)setupForInteractiveCornerGesture;
- (void)setupForInteractiveCornerGestureEnd;
- (void)setupForInteractiveDismissalToSize:(CGSize)a3;
- (void)setupForStandardBehavior;
- (void)setupForSwipesFromCorners:(unint64_t)a3 animated:(BOOL)a4;
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

- (void)performActionsWithTransientStateChange:(id)a3
{
  state = self->_state;
  (*(a3 + 2))(a3, a2);
  if (self->_state != state)
  {
    self->_state = state;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained positionRegionComposerNeedsUpdate:self behavior:self->_animationState];
  }
}

- (void)setupForSwipesFromCorners:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (self->_state != 1 || self->_offscreenCorners != a3 || self->_animationState != v6)
  {
    self->_state = 1;
    self->_offscreenCorners = a3;
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
      v16 = v4;
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

- (void)setupForInteractiveDismissalToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v15 = *MEMORY[0x277D85DE8];
  if (self->_state != 4 || (self->_dismissToSize.width == a3.width ? (v6 = self->_dismissToSize.height == a3.height) : (v6 = 0), !v6))
  {
    self->_state = 4;
    self->_dismissToSize = a3;
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

- (id)positionRegionsForRegions:(id)a3 geometry:(SBPIPPositionGeometryContext *)a4 interaction:(SBPIPPositionInteractionStateContext *)a5
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
  v9 = v8;
  pipAnchorPointOffset = a4->pipAnchorPointOffset;
  pipStashedSize = a4->pipStashedSize;
  v61 = pipAnchorPointOffset;
  size = a4->containerBounds.size;
  origin = a4->containerBounds.origin;
  v63 = size;
  pipLastSteadySize = a4->pipLastSteadySize;
  pipCurrentSize = a4->pipCurrentSize;
  v59 = pipLastSteadySize;
  v14 = *&a4->edgeInsets.top;
  v13 = *&a4->edgeInsets.bottom;
  v15 = *&a4->minimumPadding.bottom;
  v56 = *&a4->minimumPadding.top;
  v57 = v15;
  top = a4->stashedMinimumPadding.top;
  left = a4->stashedMinimumPadding.left;
  bottom = a4->stashedMinimumPadding.bottom;
  right = a4->stashedMinimumPadding.right;
  orientation = a4->orientation;
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
        Height = CGRectGetHeight(a4->containerBounds);
        v24 = a4->edgeInsets.left;
        v25 = Height - a4->pipStashedSize.height + -25.0;
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
  if (!a5->isStashed && self->_state != 4)
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

- (void)_addOffscreenCornersToRegions:(id)a3 geometry:(SBPIPPositionGeometryContext *)a4
{
  regionsLibrary = self->_regionsLibrary;
  v5 = *&a4->stashedMinimumPadding.bottom;
  v23 = *&a4->stashedMinimumPadding.top;
  v24 = v5;
  v25 = *&a4->offscreenCorners;
  v6 = *&a4->edgeInsets.bottom;
  v19 = *&a4->edgeInsets.top;
  v20 = v6;
  v7 = *&a4->minimumPadding.bottom;
  v21 = *&a4->minimumPadding.top;
  v22 = v7;
  pipAnchorPointOffset = a4->pipAnchorPointOffset;
  pipStashedSize = a4->pipStashedSize;
  v16 = pipAnchorPointOffset;
  size = a4->containerBounds.size;
  origin = a4->containerBounds.origin;
  v18 = size;
  pipLastSteadySize = a4->pipLastSteadySize;
  pipCurrentSize = a4->pipCurrentSize;
  v14 = pipLastSteadySize;
  v11 = a3;
  v12 = [(SBPIPPositionHyperregionLibrary *)regionsLibrary regionWithType:4 geometry:&pipCurrentSize];
  [v11 setObject:v12 forKey:{&unk_283371870, pipCurrentSize, v14, pipStashedSize, v16, origin, v18, v19, v20, v21, v22, v23, v24, v25}];
}

- (SBPIPPositionHyperregionComposerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end