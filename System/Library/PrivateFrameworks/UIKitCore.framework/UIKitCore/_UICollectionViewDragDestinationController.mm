@interface _UICollectionViewDragDestinationController
+ (id)controllerForCollectionView:(void *)view delegate:;
- (BOOL)_hasGapLargeEnoughToRequireDropActionCallForCurrentItemAttributes:(id)attributes proposedNextItemAttributes:(id)itemAttributes;
- (BOOL)_isLocalInteractiveMove;
- (BOOL)_isMultiItemSource;
- (BOOL)_shouldQueryDropActionForIndexPath:(id)path;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)hasPerformedReordering;
- (NSString)description;
- (_UICollectionViewDragDestinationController)initWithCollectionView:(id)view delegate:(id)delegate;
- (id)_computeNextItemAttributesStartingFromItemAttributes:(id)attributes withCurrentDragLocation:(CGPoint)location;
- (id)_dragDestinationDelegateActual;
- (id)_dragDestinationDelegateProxy;
- (id)_dropDelegateActual;
- (id)_dropDelegateProxy;
- (id)_effectiveDropProposalForProposal:(id)proposal;
- (id)_queryClientForPreviewParametersForItemAtIndexPath:(id)path;
- (id)currentDropProposal;
- (id)currentDropSession;
- (id)currentIndexPath;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)reorderingState;
- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session;
- (uint64_t)isActive;
- (uint64_t)shouldPerformMovementForCurrentProposal;
- (uint64_t)supportsLocalSessionReordering;
- (void)_beginOrResumeDropSession:(id)session;
- (void)_cancelCurrentInteractiveReorder;
- (void)_cancelInteractiveReorderingIfNeeded;
- (void)_commitCurrentDragAndDropSession;
- (void)_commitCurrentInteractiveReordering;
- (void)_configureInteraction;
- (void)_configureReorderingDisplayLinkIfNeeded;
- (void)_endInteractiveReorderingIfNeeded;
- (void)_pauseReorderingDisplayLink;
- (void)_reorderingDisplayLinkDidTick;
- (void)_resumeReorderingDisplayLink;
- (void)_updateDropProposalByQueryingClientIfNeeded:(id)needed indicatorLayoutAttributes:(id)attributes;
- (void)deactivate;
- (void)dealloc;
- (void)dragSourceSelectedItemCountDidChangeWithCount:(id *)count;
- (void)dropInsertionRolledBack;
- (void)dropInteraction:(id)interaction concludeDrop:(id)drop;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)dropProposalState;
- (void)dropWasCancelled;
- (void)rebaseForUpdates:(void *)updates;
- (void)resumeDrops;
- (void)sessionState;
- (void)suspendDrops;
@end

@implementation _UICollectionViewDragDestinationController

- (void)_configureInteraction
{
  obj = [[UIDropInteraction alloc] initWithDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  [WeakRetained addInteraction:obj];

  if (self)
  {
    objc_storeWeak(&self->_dropInteraction, obj);
  }
}

- (void)sessionState
{
  if (self)
  {
    selfCopy = self;
    v3 = self[5];
    if (!v3)
    {
      v4 = objc_alloc_init(_UIDragDestinationControllerSessionState);
      v5 = selfCopy[5];
      selfCopy[5] = v4;

      v3 = selfCopy[5];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (uint64_t)isActive
{
  if (self)
  {
    sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
    if (sessionState)
    {
      v2 = sessionState[2];
      v3 = v2 > 0xA;
      v4 = 0x5FEu >> v2;
      if (v3)
      {
        v5 = 0;
      }

      else
      {
        v5 = v4;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)deactivate
{
  if (self)
  {
    [*(self + 32) invalidate];
    v2 = *(self + 32);
    *(self + 32) = 0;

    WeakRetained = objc_loadWeakRetained((self + 16));
    if (WeakRetained)
    {
      sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
      v5 = sessionState;
      if (sessionState)
      {
        v6 = sessionState[2];
        if ((v6 - 1) < 8 || v6 == 10)
        {

          v7 = objc_loadWeakRetained((self + 24));
          v8 = v7;
          if (v7)
          {
            [v7 _decrementSessionRefCount];
          }

          v5 = objc_loadWeakRetained((self + 8));
          [v5 _resetDropTargetAppearance];
        }
      }

      v9 = objc_loadWeakRetained((self + 8));
      v10 = objc_loadWeakRetained((self + 16));
      [v9 removeInteraction:v10];

      objc_storeWeak((self + 16), 0);
    }

    *(self + 64) = 0;
  }
}

- (void)dealloc
{
  [(_UICollectionViewDragDestinationController *)self deactivate];
  v3.receiver = self;
  v3.super_class = _UICollectionViewDragDestinationController;
  [(_UICollectionViewDragDestinationController *)&v3 dealloc];
}

- (_UICollectionViewDragDestinationController)initWithCollectionView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _UICollectionViewDragDestinationController;
  v8 = [(_UICollectionViewDragDestinationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_collectionView, viewCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    [(_UICollectionViewDragDestinationController *)v9 _configureInteraction];
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  reorderingState = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v9 = [v3 stringWithFormat:@"<%@:%p sessionState = %@; reorderingState = %@; dropProposalState = %@>", v5, self, sessionState, reorderingState, dropProposalState];;

  return v9;
}

- (id)reorderingState
{
  if (self)
  {
    selfCopy = self;
    v3 = self[6];
    if (!v3)
    {
      v4 = [_UIDragDestinationControllerReorderingState alloc];
      sessionState = [(_UICollectionViewDragDestinationController *)selfCopy sessionState];
      WeakRetained = objc_loadWeakRetained(selfCopy + 1);
      v7 = sessionState;
      v8 = WeakRetained;
      if (v4)
      {
        v14.receiver = v4;
        v14.super_class = _UIDragDestinationControllerReorderingState;
        v9 = objc_msgSendSuper2(&v14, sel_init);
        v4 = v9;
        if (v9)
        {
          objc_storeStrong(&v9->_sessionState, sessionState);
          objc_storeWeak(&v4->_collectionView, v8);
          v10 = objc_alloc_init(_UIVelocityIntegrator);
          velocityIntegrator = v4->_velocityIntegrator;
          v4->_velocityIntegrator = v10;

          [(_UIVelocityIntegrator *)v4->_velocityIntegrator setMinimumRequiredMovement:0.0];
          v4->_dragMovementPhase = 0;
        }
      }

      v12 = selfCopy[6];
      selfCopy[6] = v4;

      v3 = selfCopy[6];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)dropProposalState
{
  if (self)
  {
    selfCopy = self;
    v3 = self[7];
    if (!v3)
    {
      v4 = objc_alloc_init(_UIDragDestinationControllerDropProposalState);
      v5 = selfCopy[7];
      selfCopy[7] = v4;

      v3 = selfCopy[7];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

+ (id)controllerForCollectionView:(void *)view delegate:
{
  viewCopy = view;
  v5 = a2;
  v6 = [objc_alloc(objc_opt_self()) initWithCollectionView:v5 delegate:viewCopy];

  return v6;
}

- (uint64_t)supportsLocalSessionReordering
{
  if (self)
  {
    reorderingState = [(_UICollectionViewDragDestinationController *)self reorderingState];
    if (reorderingState)
    {
      v2 = reorderingState[8];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)currentIndexPath
{
  if (self)
  {
    dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v2 = dropProposalState;
    if (dropProposalState)
    {
      v3 = *(dropProposalState + 24);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)currentDropProposal
{
  if (self)
  {
    dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v2 = dropProposalState;
    if (dropProposalState)
    {
      v3 = *(dropProposalState + 16);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)currentDropSession
{
  if (self)
  {
    sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
    v2 = sessionState;
    if (sessionState)
    {
      v3 = *(sessionState + 16);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dragSourceSelectedItemCountDidChangeWithCount:(id *)count
{
  if (count)
  {
    reorderingState = [(_UICollectionViewDragDestinationController *)count reorderingState];
    if (reorderingState)
    {
      v5 = reorderingState[8];

      if (a2 >= 2 && (v5 & 1) != 0)
      {
        [count _cancelCurrentInteractiveReorder];
        sessionState = [(_UICollectionViewDragDestinationController *)count sessionState];
        if (sessionState && sessionState[2] != 6)
        {
          sessionState[2] = 6;
        }
      }
    }
  }
}

- (void)dropWasCancelled
{
  if (self)
  {
    sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
    if (sessionState)
    {
      v3 = sessionState[2];
      if ((v3 - 1) < 8 || v3 == 10)
      {

        [self _cancelInteractiveReorderingIfNeeded];
        WeakRetained = objc_loadWeakRetained((self + 8));
        [WeakRetained _resetDropTargetAppearance];

        sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
        if (sessionState)
        {
          if (sessionState[2] != 8)
          {
            sessionState[2] = 8;
          }
        }
      }
    }
  }
}

- (void)dropInsertionRolledBack
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 24));
    currentIndexPath = [(_UICollectionViewDragDestinationController *)self currentIndexPath];
    v5 = [WeakRetained indexPathBeforeShadowUpdates:currentIndexPath];

    if (v5)
    {
      dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
      [(_UIHomeAffordanceObservationRecord *)dropProposalState setLegacyViewServiceSessionIdentifier:v5];
    }
  }
}

- (BOOL)hasPerformedReordering
{
  reorderingState = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (reorderingState && *(reorderingState + 24) >= 1)
  {
    v3 = *(reorderingState + 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)suspendDrops
{
  if (!self)
  {
    return;
  }

  v2 = *(self + 64);
  *(self + 64) = v2 + 1;
  if (v2)
  {
    return;
  }

  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState)
  {
    v4 = sessionState[2];
    v5 = v4 > 0xA;
    v6 = (1 << v4) & 0x47D;
    if (!v5 && v6 != 0)
    {

      sessionState2 = [(_UICollectionViewDragDestinationController *)self sessionState];
      v9 = sessionState2;
      v10 = sessionState2 ? *(sessionState2 + 16) : 0;
      v21 = v10;

      sessionState = v21;
      if (v21)
      {
        [self _pauseReorderingDisplayLink];
        WeakRetained = objc_loadWeakRetained((self + 24));
        v12 = WeakRetained;
        if (WeakRetained)
        {
          [WeakRetained _updatePreferredDraggedCellAppearanceForSessionUpdate];
        }

        sessionState3 = [(_UICollectionViewDragDestinationController *)self sessionState];
        if (sessionState3 && sessionState3[2] != 9)
        {
          sessionState3[2] = 9;
        }

        v14 = objc_loadWeakRetained((self + 8));
        [v14 _resetDropTargetAppearance];

        _dropDelegateActual = [self _dropDelegateActual];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          _dropDelegateProxy = [self _dropDelegateProxy];
          v18 = objc_loadWeakRetained((self + 8));
          [_dropDelegateProxy collectionView:v18 dropSessionDidExit:v21];
        }

        else
        {
          _dragDestinationDelegateActual = [self _dragDestinationDelegateActual];
          v20 = objc_opt_respondsToSelector();

          if ((v20 & 1) == 0)
          {
LABEL_22:
            sessionState = v21;
            goto LABEL_23;
          }

          _dropDelegateProxy = [self _dragDestinationDelegateProxy];
          v18 = objc_loadWeakRetained((self + 8));
          [_dropDelegateProxy _collectionView:v18 dropSessionDidExit:v21];
        }

        goto LABEL_22;
      }
    }
  }

LABEL_23:
}

- (void)resumeDrops
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = *(self + 64);
  if (!v2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }

      WeakRetained = objc_loadWeakRetained((self + 8));
      v10 = 136315650;
      v11 = "[_UICollectionViewDragDestinationController resumeDrops]";
      v12 = 2112;
      v13 = WeakRetained;
      v14 = 2112;
      selfCopy2 = self;
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unbalanced call to %s. Collection view: %@; destination controller: %@", &v10, 0x20u);
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &resumeDrops___s_category) + 8);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v8 = v7;
      WeakRetained = objc_loadWeakRetained((self + 8));
      v10 = 136315650;
      v11 = "[_UICollectionViewDragDestinationController resumeDrops]";
      v12 = 2112;
      v13 = WeakRetained;
      v14 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unbalanced call to %s. Collection view: %@; destination controller: %@", &v10, 0x20u);
    }

LABEL_16:
    return;
  }

  v3 = v2 - 1;
  *(self + 64) = v3;
  if (!v3)
  {
    sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
    if (sessionState)
    {
      v5 = sessionState[2];

      if (v5 == 9)
      {
        sessionState2 = [(_UICollectionViewDragDestinationController *)self sessionState];
        if (sessionState2 && sessionState2[2] != 10)
        {
          sessionState2[2] = 10;
        }
      }
    }
  }
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  _dropDelegateActual = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    v9 = [_dropDelegateProxy collectionView:self canHandleDropSession:sessionCopy];
  }

  else
  {
    _dragDestinationDelegateActual = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      v12 = 1;
      goto LABEL_11;
    }

    _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    v9 = [_dropDelegateProxy _collectionView:self canHandleDropSesson:sessionCopy];
  }

  v12 = v9;

LABEL_11:
  return v12;
}

- (void)_beginOrResumeDropSession:(id)session
{
  sessionCopy = session;
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  v7 = sessionState;
  if (sessionState)
  {
    v51 = *(sessionState + 8) == 10;
  }

  else
  {
    v51 = 0;
  }

  sessionState2 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState2 && (v9 = sessionState2[2], sessionState2, v9))
  {
    sessionState3 = [(_UICollectionViewDragDestinationController *)self sessionState];
    v11 = sessionState3;
    if (sessionState3)
    {
      sessionState3 = sessionState3[2];
    }

    v12 = [sessionState3 isEqual:sessionCopy];

    if ((v12 & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v50 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          *v54 = 0;
          _os_log_fault_impl(&dword_188A29000, v50, OS_LOG_TYPE_FAULT, "UIKit Internal Bug: UICollectionView entered a new UIDropSession whilst an existing session was active. This can lead to unexpected results at runtime.", v54, 2u);
        }
      }

      else
      {
        v14 = *(__UILogGetCategoryCachedImpl("Assert", &_beginOrResumeDropSession____s_category) + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "UIKit Internal Bug: UICollectionView entered a new UIDropSession whilst an existing session was active. This can lead to unexpected results at runtime.", buf, 2u);
        }
      }
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  sessionState4 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v16 = sessionState4;
  if (sessionState4)
  {
    objc_storeStrong((sessionState4 + 16), session);
  }

  sessionState5 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState5 && sessionState5[2] != 1)
  {
    sessionState5[2] = 1;
  }

  if (self)
  {
    objc_storeStrong(&self->_reorderingState, 0);
    objc_storeStrong(&self->_dropProposalState, 0);
  }

  _isLocalInteractiveMove = [(_UICollectionViewDragDestinationController *)self _isLocalInteractiveMove];
  dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v20 = [UICollectionViewDropProposal alloc];
  if (_isLocalInteractiveMove)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  v22 = [(UICollectionViewDropProposal *)v20 initWithDropOperation:v21 intent:0];
  if (dropProposalState)
  {
    [dropProposalState setProposal:v22];
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dropDelegateActual = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    [_dropDelegateProxy collectionView:WeakRetained dropSessionDidEnter:sessionCopy];
  }

  else
  {
    _dragDestinationDelegateActual = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
    v28 = objc_opt_respondsToSelector();

    if ((v28 & 1) == 0)
    {
      goto LABEL_33;
    }

    _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
    [_dropDelegateProxy _collectionView:WeakRetained dropSessionDidEnter:sessionCopy];
  }

LABEL_33:
  dropProposalState2 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v30 = dropProposalState2;
  if (dropProposalState2)
  {
    dropProposalState2 = dropProposalState2[2];
  }

  intent = [dropProposalState2 intent];

  [sessionCopy locationInView:WeakRetained];
  v33 = v32;
  v35 = v34;
  if (self)
  {
    v36 = objc_loadWeakRetained(&self->_delegate);
    v37 = v36;
    if (v36)
    {
      v38 = *(v36 + 7);
      goto LABEL_38;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = 0;
LABEL_38:
  v39 = v38;
  dragFromIndexPath = [(_UICollectionViewDragSourceController *)v39 dragFromIndexPath];

  v52 = 0;
  v41 = [WeakRetained _indexPathForInsertionAtPoint:intent dropIntent:dragFromIndexPath sourceIndexPath:&v52 indicatorLayoutAttributes:{v33, v35}];
  v42 = v52;
  [(_UICollectionViewDragDestinationController *)self _updateDropProposalByQueryingClientIfNeeded:v41 indicatorLayoutAttributes:v42];
  if (_isLocalInteractiveMove)
  {
    dropProposalState3 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v44 = dropProposalState3;
    if (dropProposalState3)
    {
      dropProposalState3 = dropProposalState3[2];
    }

    v45 = [dropProposalState3 operation] != 2;
  }

  else
  {
    v45 = 0;
  }

  reorderingState = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (reorderingState)
  {
    reorderingState[8] = v45;
  }

  sessionState6 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v45)
  {
    if (!sessionState6 || sessionState6[2] == 2)
    {
      goto LABEL_53;
    }

    v48 = 2;
  }

  else
  {
    if (!sessionState6 || sessionState6[2] == 3)
    {
      goto LABEL_53;
    }

    v48 = 3;
  }

  sessionState6[2] = v48;
LABEL_53:

  if (self)
  {
    v49 = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    v49 = 0;
  }

  [(_UICollectionViewDragAndDropController *)v49 dragDestinationControllerSessionDidEnter:v13 isNewSession:v51 isResuming:?];

  [(_UICollectionViewDragDestinationController *)self _configureReorderingDisplayLinkIfNeeded];
  [(_UICollectionViewDragDestinationController *)self _resumeReorderingDisplayLink];
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  enterCopy = enter;
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (!sessionState || (v6 = sessionState[2], sessionState, v6 != 9))
  {
    [(_UICollectionViewDragDestinationController *)self _beginOrResumeDropSession:enterCopy];
  }
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState && (v8 = sessionState[2], sessionState, v8 == 9))
  {
    dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v10 = dropProposalState;
    if (dropProposalState)
    {
      v11 = *(dropProposalState + 16);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (!v12)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      observer = [(_UIHomeAffordanceObservationRecord *)&self->super.isa observer];
      sessionState2 = [(_UICollectionViewDragDestinationController *)self sessionState];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragDestinationController.m" lineNumber:385 description:{@"Couldn't find a drop proposal to return to the drop interaction. Collection view: %@; drop session: %@; destination controller session state: %@", observer, updateCopy, sessionState2}];
    }

    dropProposalState2 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v14 = dropProposalState2;
    if (dropProposalState2)
    {
      v15 = *(dropProposalState2 + 16);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    sessionState3 = [(_UICollectionViewDragDestinationController *)self sessionState];
    if (sessionState3)
    {
      v18 = sessionState3[2];

      if (v18 == 10)
      {
        [(_UICollectionViewDragDestinationController *)self _beginOrResumeDropSession:updateCopy];
      }
    }

    dropProposalState3 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v14 = dropProposalState3;
    if (dropProposalState3)
    {
      v20 = *(dropProposalState3 + 16);
    }

    else
    {
      v20 = 0;
    }

    v16 = [(_UICollectionViewDragDestinationController *)self _effectiveDropProposalForProposal:v20];
  }

  return v16;
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  exitCopy = exit;
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  _dropDelegateProxy = sessionState;
  if (sessionState && *(sessionState + 8) == 9)
  {
    goto LABEL_32;
  }

  sessionState2 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState2)
  {
    v8 = sessionState2[2];

    if (v8 == 10)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  [(_UICollectionViewDragDestinationController *)self _pauseReorderingDisplayLink];
  reorderingState = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (reorderingState)
  {
    reorderingState[8] = 0;
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _updatePreferredDraggedCellAppearanceForSessionUpdate];
    }
  }

  else
  {
    v11 = 0;
  }

  sessionState3 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState3)
  {
    v13 = sessionState3[2];

    if (v13 == 4)
    {
      sessionState4 = [(_UICollectionViewDragDestinationController *)self sessionState];
      if (sessionState4 && sessionState4[2] != 2)
      {
        sessionState4[2] = 2;
      }

LABEL_20:

      [(_UICollectionViewDragDestinationController *)self _cancelInteractiveReorderingIfNeeded];
      goto LABEL_21;
    }
  }

  sessionState5 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState5)
  {
    v16 = sessionState5[2];

    if (v16 == 5)
    {
      sessionState4 = [(_UICollectionViewDragDestinationController *)self sessionState];
      if (sessionState4 && sessionState4[2])
      {
        sessionState4[2] = 0;
      }

      goto LABEL_20;
    }
  }

LABEL_21:
  if (self)
  {
    v17 = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    v17 = 0;
  }

  [v17 _resetDropTargetAppearance];

  _dropDelegateActual = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    [_dropDelegateProxy collectionView:self dropSessionDidExit:exitCopy];
  }

  else
  {
    _dragDestinationDelegateActual = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
    v21 = objc_opt_respondsToSelector();

    if ((v21 & 1) == 0)
    {
      goto LABEL_33;
    }

    _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    [_dropDelegateProxy _collectionView:self dropSessionDidExit:exitCopy];
  }

LABEL_32:
LABEL_33:
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  [(_UICollectionViewDragDestinationController *)self _pauseReorderingDisplayLink:interaction];
  dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  effectiveIndexPath = [(_UIDragDestinationControllerDropProposalState *)dropProposalState effectiveIndexPath];

  dropProposalState2 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v7 = dropProposalState2;
  if (dropProposalState2)
  {
    dropProposalState2[8] = [dropProposalState2 _hasDropActionTarget];
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _incrementSessionRefCount];
    }
  }

  else
  {
    v9 = 0;
  }

  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  v11 = sessionState;
  if (sessionState && *(sessionState + 8) == 4)
  {
    goto LABEL_11;
  }

  sessionState2 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v13 = sessionState2;
  if (sessionState2 && sessionState2[2] == 2)
  {

LABEL_11:
LABEL_12:
    [(_UICollectionViewDragDestinationController *)self _commitCurrentInteractiveReordering];
    goto LABEL_13;
  }

  sessionState3 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState3)
  {
    v16 = sessionState3[2];

    if (v16 == 6)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  sessionState4 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v18 = sessionState4;
  if (sessionState4 && sessionState4[2] == 5)
  {

LABEL_25:
    [(_UICollectionViewDragDestinationController *)self _commitCurrentDragAndDropSession];
    goto LABEL_13;
  }

  sessionState5 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState5)
  {
    v20 = sessionState5[2];

    if (v20 != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_13:
  if (self)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    v14 = 0;
  }
}

- (void)dropInteraction:(id)interaction concludeDrop:(id)drop
{
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_delegate)) != 0)
  {
    v5 = WeakRetained;
    [WeakRetained _invokeAllCompletionHandlers];
    [v5 _resetAllAnimationHandlers];
    [v5 _decrementSessionRefCount];
  }

  else
  {
    v5 = 0;
  }
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  endCopy = end;
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState)
  {
    v6 = sessionState[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = endCopy;
  if (v6 == endCopy)
  {
    [(_UICollectionViewDragDestinationController *)self _cancelCurrentInteractiveReorder];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = WeakRetained;
      if (WeakRetained)
      {
        [WeakRetained _decrementSessionRefCount];
      }

      objc_storeStrong(&self->_sessionState, 0);
      objc_storeStrong(&self->_reorderingState, 0);
      v10 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v10 = 0;
    }

    [v10 _resetDropTargetAppearance];

    _dropDelegateActual = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
      if (self)
      {
        self = objc_loadWeakRetained(&self->_collectionView);
      }

      [_dropDelegateProxy collectionView:self dropSessionDidEnd:endCopy];
    }

    else
    {
      _dragDestinationDelegateActual = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
      v15 = objc_opt_respondsToSelector();

      v7 = endCopy;
      if ((v15 & 1) == 0)
      {
        goto LABEL_17;
      }

      _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
      if (self)
      {
        self = objc_loadWeakRetained(&self->_collectionView);
      }

      [_dropDelegateProxy _collectionView:self dropSessionDidEnd:endCopy];
    }

    v7 = endCopy;
  }

LABEL_17:
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  interactionCopy = interaction;
  itemCopy = item;
  defaultCopy = default;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = [WeakRetained _dropCoordinatorItemForDragItem:itemCopy];

  if (!v12)
  {
LABEL_24:
    v20 = 0;
    goto LABEL_32;
  }

  kind = [v12 kind];
  if (kind == 2)
  {
    if (self)
    {
      v31 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v31 = 0;
    }

    v32 = [v31 _cellForDropCoordinatorItem:v12];

    if (v32)
    {
      previewParametersProvider = [v12 previewParametersProvider];

      if (previewParametersProvider && ([v12 previewParametersProvider], v34 = objc_claimAutoreleasedReturnValue(), (v34)[2](v34, v32), v35 = objc_claimAutoreleasedReturnValue(), v34, v35))
      {
        v20 = [(UITargetedPreview *)[UITargetedDragPreview alloc] initWithView:v32 parameters:v35];
      }

      else
      {
        v20 = [[UITargetedDragPreview alloc] initWithView:v32];
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_32;
  }

  if (kind == 1)
  {
    v21 = [UIDragPreviewTarget alloc];
    target = [v12 target];
    container = [target container];
    target2 = [v12 target];
    [target2 center];
    v26 = v25;
    v28 = v27;
    target3 = [v12 target];
    v30 = target3;
    if (target3)
    {
      [target3 transform];
    }

    else
    {
      memset(v40, 0, sizeof(v40));
    }

    v37 = [(UIPreviewTarget *)v21 initWithContainer:container center:v40 transform:v26, v28];

    v20 = [defaultCopy retargetedPreviewWithTarget:v37];

    goto LABEL_32;
  }

  if (kind)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v39 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v40[0]) = 0;
        _os_log_fault_impl(&dword_188A29000, v39, OS_LOG_TYPE_FAULT, "Unknown drop coordinator item kind.", v40, 2u);
      }
    }

    else
    {
      v36 = *(__UILogGetCategoryCachedImpl("Assert", &dropInteraction_previewForDroppingItem_withDefault____s_category) + 8);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v40[0]) = 0;
        _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "Unknown drop coordinator item kind.", v40, 2u);
      }
    }

    goto LABEL_24;
  }

  if (self)
  {
    v14 = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    v14 = 0;
  }

  destinationIndexPath = [v12 destinationIndexPath];
  v16 = [v14 _cellForItemAtIndexPath:destinationIndexPath];

  destinationIndexPath2 = [v12 destinationIndexPath];
  v18 = [(_UICollectionViewDragDestinationController *)self _queryClientForPreviewParametersForItemAtIndexPath:destinationIndexPath2];

  if (v16)
  {
    if (!v18)
    {
      v18 = objc_alloc_init(UIDragPreviewParameters);
      _visiblePathForBackgroundConfiguration = [v16 _visiblePathForBackgroundConfiguration];
      [(UIPreviewParameters *)v18 setVisiblePath:_visiblePathForBackgroundConfiguration];
    }

    [(UIPreviewParameters *)v18 setHidesSourceViewDuringDropAnimation:1];
    v20 = [(UITargetedPreview *)[UITargetedDragPreview alloc] initWithView:v16 parameters:v18];
  }

  else
  {
    v20 = 0;
  }

LABEL_32:

  return v20;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  itemCopy = item;
  animatorCopy = animator;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  [(_UICollectionViewDragAndDropController *)WeakRetained dragDestinationController:itemCopy willBeginDropAnimationForDragItem:animatorCopy animator:?];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95___UICollectionViewDragDestinationController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
  v11[3] = &unk_1E71003B0;
  v11[4] = self;
  v12 = itemCopy;
  v10 = itemCopy;
  [animatorCopy addCompletion:v11];
}

- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session
{
  sessionCopy = session;
  _dropDelegateActual = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    [sessionCopy locationInView:WeakRetained];
    v10 = v9;
    v12 = v11;

    if (self)
    {
      v13 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 indexPathForItemAtPoint:{v10, v12}];

    _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    if (self)
    {
      v16 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v16 = 0;
    }

    v17 = [_dropDelegateProxy _collectionView:v16 dataOwnerForDropSession:sessionCopy withDestinationIndexPath:v14];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_dragDestinationDelegateProxy
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dragDestinationDelegateProxy = [WeakRetained _dragDestinationDelegateProxy];

  return _dragDestinationDelegateProxy;
}

- (id)_dragDestinationDelegateActual
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dragDestinationDelegateActual = [WeakRetained _dragDestinationDelegateActual];

  return _dragDestinationDelegateActual;
}

- (id)_dropDelegateProxy
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dropDelegateProxy = [WeakRetained _dropDelegateProxy];

  return _dropDelegateProxy;
}

- (id)_dropDelegateActual
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dropDelegateActual = [WeakRetained _dropDelegateActual];

  return _dropDelegateActual;
}

- (void)_cancelInteractiveReorderingIfNeeded
{
  reorderingState = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (reorderingState)
  {
    v4 = reorderingState[9];

    if (v4 == 1)
    {
      reorderingState2 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
      if (reorderingState2)
      {
        reorderingState2[9] = 0;
      }

      if (self)
      {
        WeakRetained = objc_loadWeakRetained(&self->_collectionView);
      }

      else
      {
        WeakRetained = 0;
      }

      v7 = WeakRetained;
      [WeakRetained cancelInteractiveMovement];
    }
  }
}

- (void)_endInteractiveReorderingIfNeeded
{
  reorderingState = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (reorderingState)
  {
    v4 = reorderingState[9];

    if (v4 == 1)
    {
      reorderingState2 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
      if (reorderingState2)
      {
        reorderingState2[9] = 0;
      }

      if (self)
      {
        WeakRetained = objc_loadWeakRetained(&self->_collectionView);
      }

      else
      {
        WeakRetained = 0;
      }

      v7 = WeakRetained;
      [WeakRetained endInteractiveMovement];
    }
  }
}

- (id)_queryClientForPreviewParametersForItemAtIndexPath:(id)path
{
  pathCopy = path;
  _dropDelegateActual = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v9 = [_dropDelegateProxy collectionView:WeakRetained dropPreviewParametersForItemAtIndexPath:pathCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_configureReorderingDisplayLinkIfNeeded
{
  if (!self || !self->_reorderDisplayLink)
  {
    mainScreen = [objc_opt_self() mainScreen];
    v4 = [mainScreen displayLinkWithTarget:self selector:sel__reorderingDisplayLinkDidTick];
    v5 = v4;
    if (self)
    {
      objc_storeStrong(&self->_reorderDisplayLink, v4);

      v6 = MEMORY[0x1E695DFD0];
      v7 = self->_reorderDisplayLink;
      mainRunLoop = [v6 mainRunLoop];
      [(CADisplayLink *)v7 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

      reorderDisplayLink = self->_reorderDisplayLink;
    }

    else
    {

      mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [0 addToRunLoop:mainRunLoop2 forMode:*MEMORY[0x1E695DA28]];

      reorderDisplayLink = 0;
    }

    v10 = MEMORY[0x1E695DFD0];
    v11 = reorderDisplayLink;
    mainRunLoop3 = [v10 mainRunLoop];
    [(CADisplayLink *)v11 addToRunLoop:mainRunLoop3 forMode:@"UITrackingRunLoopMode"];

    if (self)
    {
      v13 = self->_reorderDisplayLink;
    }

    else
    {
      v13 = 0;
    }

    [(CADisplayLink *)v13 setPaused:1];
  }
}

- (void)_pauseReorderingDisplayLink
{
  if (self)
  {
    self = self->_reorderDisplayLink;
  }

  [(_UICollectionViewDragDestinationController *)self setPaused:1];
}

- (void)_resumeReorderingDisplayLink
{
  if (self)
  {
    self = self->_reorderDisplayLink;
  }

  [(_UICollectionViewDragDestinationController *)self setPaused:0];
}

- (BOOL)_isLocalInteractiveMove
{
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (!sessionState)
  {
    v8 = 0;
    allowsMoveOperation = 0;
LABEL_16:

    return allowsMoveOperation;
  }

  v4 = sessionState[2];

  if (v4)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v6 = WeakRetained;
      if (WeakRetained)
      {
        v7 = *(WeakRetained + 7);
LABEL_6:
        v8 = v7;

        sessionState2 = [(_UICollectionViewDragDestinationController *)self sessionState];
        v10 = sessionState2;
        if (sessionState2)
        {
          sessionState2 = sessionState2[2];
        }

        localDragSession = [sessionState2 localDragSession];

        allowsMoveOperation = 0;
        if (v8 && localDragSession)
        {
          dragSession = [(_UICollectionViewDragSourceController *)v8 dragSession];
          if (localDragSession == dragSession)
          {
            allowsMoveOperation = [localDragSession allowsMoveOperation];
          }

          else
          {
            allowsMoveOperation = 0;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    goto LABEL_6;
  }

  return 0;
}

- (void)_reorderingDisplayLinkDidTick
{
  reorderingState = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  v5 = sessionState;
  if (sessionState && *(sessionState + 16))
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
      if (WeakRetained && *(v5 + 8) != 7)
      {
        [*(v5 + 16) locationInView:WeakRetained];
        v9 = v7;
        v10 = v8;
        v11 = reorderingState ? *(reorderingState + 16) : 0;
        [v11 addSample:{v7, v8}];
        if (reorderingState)
        {
          v12 = *(reorderingState + 16);
          if (v12)
          {
            if (*(v12 + 48) >= 12)
            {
              if (fabs(*(reorderingState + 56)) < 2.22044605e-16)
              {
                *(reorderingState + 56) = CACurrentMediaTime();
              }

              v13 = *(reorderingState + 32);
              if (!v13)
              {
                _reorderCadenceSettings = [reorderingState _reorderCadenceSettings];
                v15 = *(reorderingState + 32);
                *(reorderingState + 32) = _reorderCadenceSettings;

                v13 = *(reorderingState + 32);
              }

              v16 = v13;
              [v16 dwellTimeThreshold];
              if (fabs(*(reorderingState + 56)) >= 2.22044605e-16 && CACurrentMediaTime() - *(reorderingState + 56) >= v17)
              {
                [*(reorderingState + 16) velocity];
                v20 = hypot(v18, v19);
                [v16 velocityMagnitudeThreshold];
                if (fabs(v21) < 2.22044605e-16 || v20 <= v21)
                {
                  dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
                  v23 = dropProposalState;
                  if (dropProposalState)
                  {
                    dropProposalState = dropProposalState[2];
                  }

                  intent = [dropProposalState intent];

                  v25 = objc_loadWeakRetained(&self->_delegate);
                  v26 = v25;
                  if (v25)
                  {
                    v27 = *(v25 + 7);
                  }

                  else
                  {
                    v27 = 0;
                  }

                  v28 = v27;
                  dragFromIndexPath = [(_UICollectionViewDragSourceController *)v28 dragFromIndexPath];

                  v37 = 0;
                  v30 = [WeakRetained _indexPathForInsertionAtPoint:intent dropIntent:dragFromIndexPath sourceIndexPath:&v37 indicatorLayoutAttributes:{v9, v10}];
                  v31 = v37;
                  [(_UICollectionViewDragDestinationController *)self _updateDropProposalByQueryingClientIfNeeded:v30 indicatorLayoutAttributes:v31];
                  v32 = *(v5 + 8);
                  switch(v32)
                  {
                    case 4:
                      if ([(_UICollectionViewDragDestinationController *)self shouldPerformMovementForCurrentProposal])
                      {
                        [WeakRetained updateInteractiveMovementTargetPosition:{v9, v10}];
                        [(_UIDragDestinationControllerReorderingState *)reorderingState didReorder];
                      }

                      break;
                    case 3:
                      if (v30 && [(_UICollectionViewDragDestinationController *)self shouldPerformMovementForCurrentProposal])
                      {
                        if (*(v5 + 8) != 5)
                        {
                          *(v5 + 8) = 5;
                        }

                        v34 = objc_loadWeakRetained(&self->_delegate);
                        effectiveDragDestinationVisualStyle = [(_UICollectionViewDragAndDropController *)v34 effectiveDragDestinationVisualStyle];

                        if (effectiveDragDestinationVisualStyle != 2)
                        {
                          [WeakRetained _beginReorderingItemAtIndexPath:v30 isLegacyMovement:0];
                        }

                        reorderingState2 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
                        if (reorderingState2)
                        {
                          reorderingState2[9] = 1;
                        }
                      }

                      break;
                    case 2:
                      if (dragFromIndexPath && [(_UICollectionViewDragDestinationController *)self shouldPerformMovementForCurrentProposal])
                      {
                        v33 = [WeakRetained _cellForItemAtIndexPath:dragFromIndexPath];

                        if (v33)
                        {
                          [WeakRetained _beginReorderingItemAtIndexPath:dragFromIndexPath isLegacyMovement:0];
                          [WeakRetained updateInteractiveMovementTargetPosition:{v9, v10}];
                          *(reorderingState + 9) = 1;
                          if (*(v5 + 8) != 4)
                          {
                            *(v5 + 8) = 4;
                          }
                        }

                        else if (([WeakRetained isScrollAnimating] & 1) == 0 && objc_msgSend(WeakRetained, "_globalIndexPathForItemAtIndexPath:", dragFromIndexPath) != 0x7FFFFFFFFFFFFFFFLL)
                        {
                          [WeakRetained _scrollToItemAtPresentationIndexPath:dragFromIndexPath atScrollPosition:0 additionalInsets:1 animated:{0.0, 0.0, 0.0, 0.0}];
                        }
                      }

                      break;
                    default:
                      if (v32 == 5 && v30 && [(_UICollectionViewDragDestinationController *)self shouldPerformMovementForCurrentProposal])
                      {
                        [WeakRetained updateInteractiveMovementTargetPosition:{v9, v10}];
                      }

                      break;
                  }
                }

                else
                {
                  *(reorderingState + 56) = 0;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      WeakRetained = 0;
    }
  }
}

- (uint64_t)shouldPerformMovementForCurrentProposal
{
  if (!self)
  {
    return 0;
  }

  dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v2 = dropProposalState;
  if (dropProposalState)
  {
    v3 = *(dropProposalState + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  intent = [v4 intent];
  v6 = [v4 operation] == 2 || objc_msgSend(v4, "operation") == 3;
  v7 = (intent == 1) & v6;

  return v7;
}

- (void)_commitCurrentDragAndDropSession
{
  p_isa = &self->super.isa;
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState && sessionState[2] != 7)
  {
    sessionState[2] = 7;
  }

  [p_isa _endInteractiveReorderingIfNeeded];
  _dropDelegateActual = [p_isa _dropDelegateActual];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _dropDelegateProxy = [p_isa _dropDelegateProxy];
    if (p_isa)
    {
      WeakRetained = objc_loadWeakRetained(p_isa + 1);
      p_isa = objc_loadWeakRetained(p_isa + 3);
    }

    else
    {
      WeakRetained = 0;
    }

    [_dropDelegateProxy collectionView:WeakRetained performDropWithCoordinator:p_isa];
  }

  else
  {
    _dragDestinationDelegateActual = [p_isa _dragDestinationDelegateActual];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    _dropDelegateProxy = [p_isa _dragDestinationDelegateProxy];
    if (p_isa)
    {
      WeakRetained = objc_loadWeakRetained(p_isa + 1);
      p_isa = objc_loadWeakRetained(p_isa + 3);
    }

    else
    {
      WeakRetained = 0;
    }

    [_dropDelegateProxy _collectionView:WeakRetained performDropWithCoordinator:p_isa];
  }
}

- (void)_cancelCurrentInteractiveReorder
{
  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState)
  {
    v4 = sessionState[2];

    if (v4 == 4)
    {

      [(_UICollectionViewDragDestinationController *)self _cancelInteractiveReorderingIfNeeded];
    }
  }
}

- (void)_commitCurrentInteractiveReordering
{
  v70[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (sessionState && sessionState[2] != 7)
  {
    sessionState[2] = 7;
  }

  if (self)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    v6 = 0;
  }

  _dataSourceImplementsReorderingHandlers = [WeakRetained _dataSourceImplementsReorderingHandlers];
  if (_dataSourceImplementsReorderingHandlers)
  {
    _supportsAutomaticCatalystDragAndDropReordering = 1;
  }

  else
  {
    _supportsAutomaticCatalystDragAndDropReordering = [WeakRetained _supportsAutomaticCatalystDragAndDropReordering];
  }

  if (v6)
  {
    v9 = [v6[21] count] < 2;
  }

  else
  {
    v9 = 1;
  }

  reorderingState = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (!reorderingState)
  {
    _diffableDataSourceImpl = 0;
    goto LABEL_35;
  }

  v11 = reorderingState[9];

  if ((_supportsAutomaticCatalystDragAndDropReordering & v9) != 1 || (v11 & 1) == 0)
  {
LABEL_36:
    if (dyld_program_sdk_at_least())
    {
      dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
      v28 = dropProposalState;
      if (dropProposalState)
      {
        dropProposalState = dropProposalState[2];
      }

      intent = [dropProposalState intent];

      if (intent == 2)
      {
        currentIndexPath = [(_UICollectionViewDragDestinationController *)self currentIndexPath];
        v31 = [v6 indexPathBeforeShadowUpdates:currentIndexPath];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = currentIndexPath;
        }

        dropProposalState2 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
        [(_UIHomeAffordanceObservationRecord *)dropProposalState2 setLegacyViewServiceSessionIdentifier:v33];
      }
    }

    [(_UICollectionViewDragDestinationController *)self _cancelInteractiveReorderingIfNeeded];
    _dropDelegateActual = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
      [_dropDelegateProxy collectionView:WeakRetained performDropWithCoordinator:v6];
    }

    else
    {
      _dragDestinationDelegateActual = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
      v39 = objc_opt_respondsToSelector();

      if ((v39 & 1) == 0)
      {
        goto LABEL_49;
      }

      _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
      [_dropDelegateProxy _collectionView:WeakRetained performDropWithCoordinator:v6];
    }

    goto LABEL_49;
  }

  if (_dataSourceImplementsReorderingHandlers)
  {
    _diffableDataSourceImpl = [WeakRetained _diffableDataSourceImpl];
    if (!_diffableDataSourceImpl)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragDestinationController.m" lineNumber:820 description:{@"Invalid parameter not satisfying: %@", @"dataSourceImpl"}];
    }
  }

  else
  {
    _diffableDataSourceImpl = 0;
  }

  v14 = v6;
  proposal = [v14 proposal];
  if ([proposal operation] != 3 || objc_msgSend(proposal, "intent") != 1)
  {
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  if (v6)
  {
    v16 = v14[7];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  dragFromIndexPath = [(_UICollectionViewDragSourceController *)v17 dragFromIndexPath];

  destinationIndexPath = [v14 destinationIndexPath];
  v20 = destinationIndexPath;
  v62 = dragFromIndexPath;
  if (!dragFromIndexPath || !destinationIndexPath)
  {

    goto LABEL_34;
  }

  [(_UICollectionViewDragDestinationController *)self _endInteractiveReorderingIfNeeded];
  effectiveDragDestinationVisualStyle = [(_UICollectionViewDragAndDropController *)v14 effectiveDragDestinationVisualStyle];
  v22 = effectiveDragDestinationVisualStyle;
  v60 = v6;
  v61 = WeakRetained;
  v58 = proposal;
  v59 = _diffableDataSourceImpl;
  if (_diffableDataSourceImpl)
  {
    if (v6)
    {
      v23 = v14[7];
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    dragItemsCreatedForReordering = [(_UICollectionViewDragSourceController *)v24 dragItemsCreatedForReordering];
    if (v22 == 2)
    {
      v26 = dragItemsCreatedForReordering;
    }

    else
    {
      v26 = 0;
    }

    [_diffableDataSourceImpl _commitReorderingForItemAtIndexPath:dragFromIndexPath toDestinationIndexPath:v20 shouldPerformViewAnimations:v26];
  }

  else if (effectiveDragDestinationVisualStyle == 2)
  {
    v40 = [[UICollectionViewUpdateItem alloc] initWithOldIndexPath:dragFromIndexPath newIndexPath:v20];
    v41 = [off_1E70ECC48 snapshotterForDataSourceBackedView:WeakRetained];
    v70[0] = v40;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
    v43 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v41 orderedUpdateItems:v42];

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __81___UICollectionViewDragDestinationController__commitCurrentInteractiveReordering__block_invoke;
    v67[3] = &unk_1E70FFBD8;
    v68 = v43;
    v44 = v43;
    [(_UICollectionViewDragAndDropController *)v14 rebaseCellAppearanceStatesForUpdates:v67];
    [v61 _notifyDataSourceForMoveOfItemFromIndexPath:dragFromIndexPath toIndexPath:v20];
    [v61 moveItemAtIndexPath:dragFromIndexPath toIndexPath:v20];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v45 = v14;
  items = [v14 items];
  v47 = [items countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v64;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v64 != v49)
        {
          objc_enumerationMutation(items);
        }

        v51 = *(*(&v63 + 1) + 8 * i);
        sourceIndexPath = [v51 sourceIndexPath];
        if (sourceIndexPath)
        {
          v53 = sourceIndexPath;
          sourceIndexPath2 = [v51 sourceIndexPath];
          v55 = [sourceIndexPath2 isEqual:v62];

          if (v55)
          {
            dragItem = [v51 dragItem];
            v57 = [v45 dropItem:dragItem toItemAtIndexPath:v20];
          }
        }
      }

      v48 = [items countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v48);
  }

  v6 = v60;
  WeakRetained = v61;
LABEL_49:
}

- (BOOL)_isMultiItemSource
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = *(WeakRetained + 7);
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
LABEL_4:
  v5 = v4;

  if (v5)
  {
    v6 = [(_UICollectionViewDragSourceController *)v5 currentSessionItemCount]> 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateDropProposalByQueryingClientIfNeeded:(id)needed indicatorLayoutAttributes:(id)attributes
{
  neededCopy = needed;
  attributesCopy = attributes;
  if ([(_UICollectionViewDragDestinationController *)self _shouldQueryDropActionForIndexPath:neededCopy])
  {
    if (neededCopy)
    {
      dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
      [(_UIHomeAffordanceObservationRecord *)dropProposalState setLegacyViewServiceSessionIdentifier:neededCopy];
    }

    _dragDestinationDelegateActual = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
    if (objc_opt_respondsToSelector())
    {

LABEL_7:
      _dropDelegateActual = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
        if (self)
        {
          WeakRetained = objc_loadWeakRetained(&self->_collectionView);
        }

        else
        {
          WeakRetained = 0;
        }

        sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
        v16 = sessionState;
        if (sessionState)
        {
          v17 = *(sessionState + 16);
        }

        else
        {
          v17 = 0;
        }

        v18 = [_dropDelegateProxy collectionView:WeakRetained dropSessionDidUpdate:v17 withDestinationIndexPath:neededCopy];
      }

      else
      {
        _dropDelegateProxy = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
        if (self)
        {
          WeakRetained = objc_loadWeakRetained(&self->_collectionView);
        }

        else
        {
          WeakRetained = 0;
        }

        sessionState2 = [(_UICollectionViewDragDestinationController *)self sessionState];
        v16 = sessionState2;
        if (sessionState2)
        {
          v20 = *(sessionState2 + 16);
        }

        else
        {
          v20 = 0;
        }

        v18 = [_dropDelegateProxy _collectionView:WeakRetained dropSessionDidUpdate:v20 withDestinationIndexPath:neededCopy];
      }

      v21 = v18;

      if (!v21)
      {
        goto LABEL_34;
      }

      v22 = [(_UICollectionViewDragDestinationController *)self _effectiveDropProposalForProposal:v21];
      dropProposalState2 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
      v24 = dropProposalState2;
      if (dropProposalState2)
      {
        [dropProposalState2 setProposal:v22];
      }

LABEL_33:
LABEL_34:

      if (self)
      {
        v34 = objc_loadWeakRetained(&self->_collectionView);
      }

      else
      {
        v34 = 0;
      }

      currentDropProposal = [(_UICollectionViewDragDestinationController *)self currentDropProposal];
      [v34 _updateDropTargetAppearanceWithTargetIndexPath:neededCopy intent:objc_msgSend(currentDropProposal indicatorLayoutAttributes:{"intent"), attributesCopy}];

      goto LABEL_37;
    }

    _dropDelegateActual2 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      goto LABEL_7;
    }

    if (![(_UICollectionViewDragDestinationController *)self _isLocalInteractiveMove])
    {
      v30 = [UICollectionViewDropProposal alloc];
      v32 = 2;
      goto LABEL_30;
    }

    if (self)
    {
      v25 = objc_loadWeakRetained(&self->_delegate);
      v26 = v25;
      if (v25)
      {
        v27 = *(v25 + 7);
LABEL_26:
        v28 = v27;
        dragItemsCreatedForReordering = [(_UICollectionViewDragSourceController *)v28 dragItemsCreatedForReordering];

        v30 = [UICollectionViewDropProposal alloc];
        if (dragItemsCreatedForReordering)
        {
          v31 = [(UICollectionViewDropProposal *)v30 initWithDropOperation:3 intent:1];
          v21 = [(_UICollectionViewDragDestinationController *)self _effectiveDropProposalForProposal:v31];

          goto LABEL_31;
        }

        v32 = 0;
LABEL_30:
        v21 = [(UICollectionViewDropProposal *)v30 initWithDropOperation:v32 intent:0];
LABEL_31:
        dropProposalState3 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
        v22 = dropProposalState3;
        if (dropProposalState3)
        {
          [dropProposalState3 setProposal:v21];
        }

        goto LABEL_33;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = 0;
    goto LABEL_26;
  }

LABEL_37:
}

- (id)_effectiveDropProposalForProposal:(id)proposal
{
  proposalCopy = proposal;
  intent = [proposalCopy intent];
  operation = [proposalCopy operation];

  if (operation == 3)
  {
    sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
    v8 = sessionState;
    if (sessionState)
    {
      sessionState = sessionState[2];
    }

    allowsMoveOperation = [sessionState allowsMoveOperation];

    if (allowsMoveOperation)
    {
      operation = 3;
    }

    else
    {
      operation = 0;
    }
  }

  if ([(_UICollectionViewDragDestinationController *)self _isLocalInteractiveMove])
  {
    if ([(_UICollectionViewDragDestinationController *)self _isMultiItemSource])
    {
      if (intent == 1)
      {
        operation = 0;
        intent = 0;
      }
    }

    else if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      if (self)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        WeakRetained = 0;
      }

      sourceIndexPaths = [(_UICollectionViewDragAndDropController *)WeakRetained sourceIndexPaths];
      firstObject = [sourceIndexPaths firstObject];

      dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
      effectiveIndexPath = [(_UIDragDestinationControllerDropProposalState *)dropProposalState effectiveIndexPath];

      if (firstObject && [firstObject isEqual:effectiveIndexPath])
      {
        operation = 0;
        intent = 0;
      }
    }
  }

  v15 = [[UICollectionViewDropProposal alloc] initWithDropOperation:operation intent:intent];

  return v15;
}

- (BOOL)_shouldQueryDropActionForIndexPath:(id)path
{
  dropProposalState = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  effectiveIndexPath = [(_UIDragDestinationControllerDropProposalState *)dropProposalState effectiveIndexPath];

  v7 = 1;
  if (!path && effectiveIndexPath)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    collectionViewLayout = [WeakRetained collectionViewLayout];
    dropProposalState2 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    effectiveIndexPath2 = [(_UIDragDestinationControllerDropProposalState *)dropProposalState2 effectiveIndexPath];
    v12 = [collectionViewLayout layoutAttributesForItemAtIndexPath:effectiveIndexPath2];

    if (v12)
    {
      sessionState = [(_UICollectionViewDragDestinationController *)self sessionState];
      if (!sessionState)
      {
        v25 = 0;
        v7 = 1;
        goto LABEL_14;
      }

      v14 = sessionState[2];

      if (v14)
      {
        sessionState2 = [(_UICollectionViewDragDestinationController *)self sessionState];
        v16 = sessionState2;
        v17 = sessionState2 ? *(sessionState2 + 16) : 0;
        v18 = v17;
        v19 = self ? objc_loadWeakRetained(&self->_collectionView) : 0;
        [v18 locationInView:v19];
        v21 = v20;
        v23 = v22;

        v24 = [(_UICollectionViewDragDestinationController *)self _computeNextItemAttributesStartingFromItemAttributes:v12 withCurrentDragLocation:v21, v23];
        if (v24)
        {
          v25 = v24;
          v7 = [(_UICollectionViewDragDestinationController *)self _hasGapLargeEnoughToRequireDropActionCallForCurrentItemAttributes:v12 proposedNextItemAttributes:v24];
LABEL_14:

LABEL_16:
          return v7;
        }
      }
    }

    v7 = 1;
    goto LABEL_16;
  }

  return v7;
}

- (id)_computeNextItemAttributesStartingFromItemAttributes:(id)attributes withCurrentDragLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  attributesCopy = attributes;
  v8 = attributesCopy;
  if (attributesCopy)
  {
    [attributesCopy frame];
    v9 = v38.origin.x;
    v10 = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    v13 = CGRectGetWidth(v38) * 0.25;
    v39.origin.x = v9;
    v39.origin.y = v10;
    v39.size.width = width;
    v39.size.height = height;
    v14 = CGRectGetHeight(v39) * 0.25;
    v40.origin.x = v9;
    v40.origin.y = v10;
    v40.size.width = width;
    v40.size.height = height;
    v41 = CGRectInset(v40, v13, v14);
    v30 = v41.origin.y;
    v31 = v41.origin.x;
    v29 = v41.size.width;
    v15 = v41.size.height;
    v32 = v9 + width * 0.5;
    v16 = x - v32;
    v17 = y - (v10 + height * 0.5);
    v41.origin.x = v9;
    v41.origin.y = v10;
    v41.size.width = width;
    v41.size.height = height;
    v18 = CGRectGetWidth(v41);
    v42.origin.x = v9;
    v42.origin.y = v10;
    v42.size.width = width;
    v42.size.height = height;
    v19 = CGRectGetHeight(v42);
    if (v18 >= v19)
    {
      v19 = v18;
    }

    v20 = v19 * 4.0;
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    collectionViewLayout = [WeakRetained collectionViewLayout];

    v23 = [collectionViewLayout _layoutAttributesForElementsInProjectedRect:v31 withProjectionVector:v30 projectionDistance:{v29, v15, v16, v17, v20}];
    v24 = [v23 mutableCopy];

    v25 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __123___UICollectionViewDragDestinationController__computeNextItemAttributesStartingFromItemAttributes_withCurrentDragLocation___block_invoke;
    v34[3] = &unk_1E7100470;
    v35 = v25;
    v36 = v8;
    v26 = v25;
    [v24 enumerateObjectsUsingBlock:v34];
    [v24 removeObjectsAtIndexes:v26];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __123___UICollectionViewDragDestinationController__computeNextItemAttributesStartingFromItemAttributes_withCurrentDragLocation___block_invoke_2;
    v33[3] = &__block_descriptor_48_e79_q24__0__UICollectionViewLayoutAttributes_8__UICollectionViewLayoutAttributes_16l;
    *&v33[4] = v32;
    *&v33[5] = v10 + height * 0.5;
    [v24 sortUsingComparator:v33];
    firstObject = [v24 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)_hasGapLargeEnoughToRequireDropActionCallForCurrentItemAttributes:(id)attributes proposedNextItemAttributes:(id)itemAttributes
{
  itemAttributesCopy = itemAttributes;
  attributesCopy = attributes;
  [attributesCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [attributesCopy center];
  v35 = v16;
  v36 = v15;

  [itemAttributesCopy frame];
  v33 = v18;
  v34 = v17;
  v20 = v19;
  v22 = v21;
  [itemAttributesCopy center];
  v24 = v23;
  v26 = v25;

  v37 = v10;
  v27 = UIDistanceBetweenRects(v8, v10, v12, v14, v34, v20, v33, v22);
  v28 = v24 - v36;
  v29 = v26 - v35;
  v30 = hypot(v28, v29);
  if (fabs(v28 / v30) <= fabs(v29 / v30))
  {
    v39.origin.x = v8;
    v39.origin.y = v37;
    v39.size.width = v12;
    v39.size.height = v14;
    Height = CGRectGetHeight(v39);
  }

  else
  {
    v38.origin.x = v8;
    v38.origin.y = v37;
    v38.size.width = v12;
    v38.size.height = v14;
    Height = CGRectGetWidth(v38);
  }

  return v27 > Height * 0.5;
}

- (void)rebaseForUpdates:(void *)updates
{
  v10 = a2;
  if (updates)
  {
    dropProposalState = [(_UICollectionViewDragDestinationController *)updates dropProposalState];
    if (!dropProposalState || (v4 = dropProposalState[8], dropProposalState, (v4 & 1) == 0))
    {
      dropProposalState2 = [(_UICollectionViewDragDestinationController *)updates dropProposalState];
      v6 = dropProposalState2;
      if (dropProposalState2)
      {
        v7 = *(dropProposalState2 + 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = v10[2](v10, v7);

      dropProposalState3 = [(_UICollectionViewDragDestinationController *)updates dropProposalState];
      [(_UIHomeAffordanceObservationRecord *)dropProposalState3 setLegacyViewServiceSessionIdentifier:v8];
    }
  }
}

@end