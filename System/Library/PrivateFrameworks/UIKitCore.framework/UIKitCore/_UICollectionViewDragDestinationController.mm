@interface _UICollectionViewDragDestinationController
+ (id)controllerForCollectionView:(void *)a3 delegate:;
- (BOOL)_hasGapLargeEnoughToRequireDropActionCallForCurrentItemAttributes:(id)a3 proposedNextItemAttributes:(id)a4;
- (BOOL)_isLocalInteractiveMove;
- (BOOL)_isMultiItemSource;
- (BOOL)_shouldQueryDropActionForIndexPath:(id)a3;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)hasPerformedReordering;
- (NSString)description;
- (_UICollectionViewDragDestinationController)initWithCollectionView:(id)a3 delegate:(id)a4;
- (id)_computeNextItemAttributesStartingFromItemAttributes:(id)a3 withCurrentDragLocation:(CGPoint)a4;
- (id)_dragDestinationDelegateActual;
- (id)_dragDestinationDelegateProxy;
- (id)_dropDelegateActual;
- (id)_dropDelegateProxy;
- (id)_effectiveDropProposalForProposal:(id)a3;
- (id)_queryClientForPreviewParametersForItemAtIndexPath:(id)a3;
- (id)currentDropProposal;
- (id)currentDropSession;
- (id)currentIndexPath;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)reorderingState;
- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (uint64_t)isActive;
- (uint64_t)shouldPerformMovementForCurrentProposal;
- (uint64_t)supportsLocalSessionReordering;
- (void)_beginOrResumeDropSession:(id)a3;
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
- (void)_updateDropProposalByQueryingClientIfNeeded:(id)a3 indicatorLayoutAttributes:(id)a4;
- (void)deactivate;
- (void)dealloc;
- (void)dragSourceSelectedItemCountDidChangeWithCount:(id *)a1;
- (void)dropInsertionRolledBack;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)dropProposalState;
- (void)dropWasCancelled;
- (void)rebaseForUpdates:(void *)a1;
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
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      v4 = objc_alloc_init(_UIDragDestinationControllerSessionState);
      v5 = v2[5];
      v2[5] = v4;

      v3 = v2[5];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)isActive
{
  if (a1)
  {
    v1 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
    if (v1)
    {
      v2 = v1[2];
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
  if (a1)
  {
    [*(a1 + 32) invalidate];
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    if (WeakRetained)
    {
      v4 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
      v5 = v4;
      if (v4)
      {
        v6 = v4[2];
        if ((v6 - 1) < 8 || v6 == 10)
        {

          v7 = objc_loadWeakRetained((a1 + 24));
          v8 = v7;
          if (v7)
          {
            [v7 _decrementSessionRefCount];
          }

          v5 = objc_loadWeakRetained((a1 + 8));
          [v5 _resetDropTargetAppearance];
        }
      }

      v9 = objc_loadWeakRetained((a1 + 8));
      v10 = objc_loadWeakRetained((a1 + 16));
      [v9 removeInteraction:v10];

      objc_storeWeak((a1 + 16), 0);
    }

    *(a1 + 64) = 0;
  }
}

- (void)dealloc
{
  [(_UICollectionViewDragDestinationController *)self deactivate];
  v3.receiver = self;
  v3.super_class = _UICollectionViewDragDestinationController;
  [(_UICollectionViewDragDestinationController *)&v3 dealloc];
}

- (_UICollectionViewDragDestinationController)initWithCollectionView:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UICollectionViewDragDestinationController;
  v8 = [(_UICollectionViewDragDestinationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_collectionView, v6);
    objc_storeWeak(&v9->_delegate, v7);
    [(_UICollectionViewDragDestinationController *)v9 _configureInteraction];
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v7 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  v8 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v9 = [v3 stringWithFormat:@"<%@:%p sessionState = %@; reorderingState = %@; dropProposalState = %@>", v5, self, v6, v7, v8];;

  return v9;
}

- (id)reorderingState
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[6];
    if (!v3)
    {
      v4 = [_UIDragDestinationControllerReorderingState alloc];
      v5 = [(_UICollectionViewDragDestinationController *)v2 sessionState];
      WeakRetained = objc_loadWeakRetained(v2 + 1);
      v7 = v5;
      v8 = WeakRetained;
      if (v4)
      {
        v14.receiver = v4;
        v14.super_class = _UIDragDestinationControllerReorderingState;
        v9 = objc_msgSendSuper2(&v14, sel_init);
        v4 = v9;
        if (v9)
        {
          objc_storeStrong(&v9->_sessionState, v5);
          objc_storeWeak(&v4->_collectionView, v8);
          v10 = objc_alloc_init(_UIVelocityIntegrator);
          velocityIntegrator = v4->_velocityIntegrator;
          v4->_velocityIntegrator = v10;

          [(_UIVelocityIntegrator *)v4->_velocityIntegrator setMinimumRequiredMovement:0.0];
          v4->_dragMovementPhase = 0;
        }
      }

      v12 = v2[6];
      v2[6] = v4;

      v3 = v2[6];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)dropProposalState
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[7];
    if (!v3)
    {
      v4 = objc_alloc_init(_UIDragDestinationControllerDropProposalState);
      v5 = v2[7];
      v2[7] = v4;

      v3 = v2[7];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

+ (id)controllerForCollectionView:(void *)a3 delegate:
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_alloc(objc_opt_self()) initWithCollectionView:v5 delegate:v4];

  return v6;
}

- (uint64_t)supportsLocalSessionReordering
{
  if (a1)
  {
    v1 = [(_UICollectionViewDragDestinationController *)a1 reorderingState];
    if (v1)
    {
      v2 = v1[8];
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
  if (a1)
  {
    v1 = [(_UICollectionViewDragDestinationController *)a1 dropProposalState];
    v2 = v1;
    if (v1)
    {
      v3 = *(v1 + 24);
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
  if (a1)
  {
    v1 = [(_UICollectionViewDragDestinationController *)a1 dropProposalState];
    v2 = v1;
    if (v1)
    {
      v3 = *(v1 + 16);
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
  if (a1)
  {
    v1 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
    v2 = v1;
    if (v1)
    {
      v3 = *(v1 + 16);
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

- (void)dragSourceSelectedItemCountDidChangeWithCount:(id *)a1
{
  if (a1)
  {
    v4 = [(_UICollectionViewDragDestinationController *)a1 reorderingState];
    if (v4)
    {
      v5 = v4[8];

      if (a2 >= 2 && (v5 & 1) != 0)
      {
        [a1 _cancelCurrentInteractiveReorder];
        v6 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
        if (v6 && v6[2] != 6)
        {
          v6[2] = 6;
        }
      }
    }
  }
}

- (void)dropWasCancelled
{
  if (a1)
  {
    v2 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
    if (v2)
    {
      v3 = v2[2];
      if ((v3 - 1) < 8 || v3 == 10)
      {

        [a1 _cancelInteractiveReorderingIfNeeded];
        WeakRetained = objc_loadWeakRetained((a1 + 8));
        [WeakRetained _resetDropTargetAppearance];

        v2 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
        if (v2)
        {
          if (v2[2] != 8)
          {
            v2[2] = 8;
          }
        }
      }
    }
  }
}

- (void)dropInsertionRolledBack
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v3 = [(_UICollectionViewDragDestinationController *)a1 currentIndexPath];
    v5 = [WeakRetained indexPathBeforeShadowUpdates:v3];

    if (v5)
    {
      v4 = [(_UICollectionViewDragDestinationController *)a1 dropProposalState];
      [(_UIHomeAffordanceObservationRecord *)v4 setLegacyViewServiceSessionIdentifier:v5];
    }
  }
}

- (BOOL)hasPerformedReordering
{
  v2 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (v2 && *(v2 + 24) >= 1)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)suspendDrops
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 64);
  *(a1 + 64) = v2 + 1;
  if (v2)
  {
    return;
  }

  v3 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
  if (v3)
  {
    v4 = v3[2];
    v5 = v4 > 0xA;
    v6 = (1 << v4) & 0x47D;
    if (!v5 && v6 != 0)
    {

      v8 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
      v9 = v8;
      v10 = v8 ? *(v8 + 16) : 0;
      v21 = v10;

      v3 = v21;
      if (v21)
      {
        [a1 _pauseReorderingDisplayLink];
        WeakRetained = objc_loadWeakRetained((a1 + 24));
        v12 = WeakRetained;
        if (WeakRetained)
        {
          [WeakRetained _updatePreferredDraggedCellAppearanceForSessionUpdate];
        }

        v13 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
        if (v13 && v13[2] != 9)
        {
          v13[2] = 9;
        }

        v14 = objc_loadWeakRetained((a1 + 8));
        [v14 _resetDropTargetAppearance];

        v15 = [a1 _dropDelegateActual];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = [a1 _dropDelegateProxy];
          v18 = objc_loadWeakRetained((a1 + 8));
          [v17 collectionView:v18 dropSessionDidExit:v21];
        }

        else
        {
          v19 = [a1 _dragDestinationDelegateActual];
          v20 = objc_opt_respondsToSelector();

          if ((v20 & 1) == 0)
          {
LABEL_22:
            v3 = v21;
            goto LABEL_23;
          }

          v17 = [a1 _dragDestinationDelegateProxy];
          v18 = objc_loadWeakRetained((a1 + 8));
          [v17 _collectionView:v18 dropSessionDidExit:v21];
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
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }

      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v10 = 136315650;
      v11 = "[_UICollectionViewDragDestinationController resumeDrops]";
      v12 = 2112;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = a1;
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
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v10 = 136315650;
      v11 = "[_UICollectionViewDragDestinationController resumeDrops]";
      v12 = 2112;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = a1;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unbalanced call to %s. Collection view: %@; destination controller: %@", &v10, 0x20u);
    }

LABEL_16:
    return;
  }

  v3 = v2 - 1;
  *(a1 + 64) = v3;
  if (!v3)
  {
    v4 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
    if (v4)
    {
      v5 = v4[2];

      if (v5 == 9)
      {
        v6 = [(_UICollectionViewDragDestinationController *)a1 sessionState];
        if (v6 && v6[2] != 10)
        {
          v6[2] = 10;
        }
      }
    }
  }
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = a4;
  v6 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    v9 = [v8 collectionView:self canHandleDropSession:v5];
  }

  else
  {
    v10 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      v12 = 1;
      goto LABEL_11;
    }

    v8 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    v9 = [v8 _collectionView:self canHandleDropSesson:v5];
  }

  v12 = v9;

LABEL_11:
  return v12;
}

- (void)_beginOrResumeDropSession:(id)a3
{
  v5 = a3;
  v6 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v7 = v6;
  if (v6)
  {
    v51 = *(v6 + 8) == 10;
  }

  else
  {
    v51 = 0;
  }

  v8 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v8 && (v9 = v8[2], v8, v9))
  {
    v10 = [(_UICollectionViewDragDestinationController *)self sessionState];
    v11 = v10;
    if (v10)
    {
      v10 = v10[2];
    }

    v12 = [v10 isEqual:v5];

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

  v15 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 16), a3);
  }

  v17 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v17 && v17[2] != 1)
  {
    v17[2] = 1;
  }

  if (self)
  {
    objc_storeStrong(&self->_reorderingState, 0);
    objc_storeStrong(&self->_dropProposalState, 0);
  }

  v18 = [(_UICollectionViewDragDestinationController *)self _isLocalInteractiveMove];
  v19 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v20 = [UICollectionViewDropProposal alloc];
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  v22 = [(UICollectionViewDropProposal *)v20 initWithDropOperation:v21 intent:0];
  if (v19)
  {
    [v19 setProposal:v22];
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v24 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    [v26 collectionView:WeakRetained dropSessionDidEnter:v5];
  }

  else
  {
    v27 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
    v28 = objc_opt_respondsToSelector();

    if ((v28 & 1) == 0)
    {
      goto LABEL_33;
    }

    v26 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
    [v26 _collectionView:WeakRetained dropSessionDidEnter:v5];
  }

LABEL_33:
  v29 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v30 = v29;
  if (v29)
  {
    v29 = v29[2];
  }

  v31 = [v29 intent];

  [v5 locationInView:WeakRetained];
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
  v40 = [(_UICollectionViewDragSourceController *)v39 dragFromIndexPath];

  v52 = 0;
  v41 = [WeakRetained _indexPathForInsertionAtPoint:v31 dropIntent:v40 sourceIndexPath:&v52 indicatorLayoutAttributes:{v33, v35}];
  v42 = v52;
  [(_UICollectionViewDragDestinationController *)self _updateDropProposalByQueryingClientIfNeeded:v41 indicatorLayoutAttributes:v42];
  if (v18)
  {
    v43 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v44 = v43;
    if (v43)
    {
      v43 = v43[2];
    }

    v45 = [v43 operation] != 2;
  }

  else
  {
    v45 = 0;
  }

  v46 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (v46)
  {
    v46[8] = v45;
  }

  v47 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v45)
  {
    if (!v47 || v47[2] == 2)
    {
      goto LABEL_53;
    }

    v48 = 2;
  }

  else
  {
    if (!v47 || v47[2] == 3)
    {
      goto LABEL_53;
    }

    v48 = 3;
  }

  v47[2] = v48;
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

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v7 = a4;
  v5 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (!v5 || (v6 = v5[2], v5, v6 != 9))
  {
    [(_UICollectionViewDragDestinationController *)self _beginOrResumeDropSession:v7];
  }
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a4;
  v7 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v7 && (v8 = v7[2], v7, v8 == 9))
  {
    v9 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 16);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (!v12)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [(_UIHomeAffordanceObservationRecord *)&self->super.isa observer];
      v24 = [(_UICollectionViewDragDestinationController *)self sessionState];
      [v22 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragDestinationController.m" lineNumber:385 description:{@"Couldn't find a drop proposal to return to the drop interaction. Collection view: %@; drop session: %@; destination controller session state: %@", v23, v6, v24}];
    }

    v13 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 16);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v17 = [(_UICollectionViewDragDestinationController *)self sessionState];
    if (v17)
    {
      v18 = v17[2];

      if (v18 == 10)
      {
        [(_UICollectionViewDragDestinationController *)self _beginOrResumeDropSession:v6];
      }
    }

    v19 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v14 = v19;
    if (v19)
    {
      v20 = *(v19 + 16);
    }

    else
    {
      v20 = 0;
    }

    v16 = [(_UICollectionViewDragDestinationController *)self _effectiveDropProposalForProposal:v20];
  }

  return v16;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v22 = a4;
  v5 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v6 = v5;
  if (v5 && *(v5 + 8) == 9)
  {
    goto LABEL_32;
  }

  v7 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v7)
  {
    v8 = v7[2];

    if (v8 == 10)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  [(_UICollectionViewDragDestinationController *)self _pauseReorderingDisplayLink];
  v9 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (v9)
  {
    v9[8] = 0;
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

  v12 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v12)
  {
    v13 = v12[2];

    if (v13 == 4)
    {
      v14 = [(_UICollectionViewDragDestinationController *)self sessionState];
      if (v14 && v14[2] != 2)
      {
        v14[2] = 2;
      }

LABEL_20:

      [(_UICollectionViewDragDestinationController *)self _cancelInteractiveReorderingIfNeeded];
      goto LABEL_21;
    }
  }

  v15 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v15)
  {
    v16 = v15[2];

    if (v16 == 5)
    {
      v14 = [(_UICollectionViewDragDestinationController *)self sessionState];
      if (v14 && v14[2])
      {
        v14[2] = 0;
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

  v18 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v6 = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    [v6 collectionView:self dropSessionDidExit:v22];
  }

  else
  {
    v20 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
    v21 = objc_opt_respondsToSelector();

    if ((v21 & 1) == 0)
    {
      goto LABEL_33;
    }

    v6 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    [v6 _collectionView:self dropSessionDidExit:v22];
  }

LABEL_32:
LABEL_33:
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  [(_UICollectionViewDragDestinationController *)self _pauseReorderingDisplayLink:a3];
  v5 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v21 = [(_UIDragDestinationControllerDropProposalState *)v5 effectiveIndexPath];

  v6 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v7 = v6;
  if (v6)
  {
    v6[8] = [v6 _hasDropActionTarget];
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

  v10 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v11 = v10;
  if (v10 && *(v10 + 8) == 4)
  {
    goto LABEL_11;
  }

  v12 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v13 = v12;
  if (v12 && v12[2] == 2)
  {

LABEL_11:
LABEL_12:
    [(_UICollectionViewDragDestinationController *)self _commitCurrentInteractiveReordering];
    goto LABEL_13;
  }

  v15 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v15)
  {
    v16 = v15[2];

    if (v16 == 6)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v17 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v18 = v17;
  if (v17 && v17[2] == 5)
  {

LABEL_25:
    [(_UICollectionViewDragDestinationController *)self _commitCurrentDragAndDropSession];
    goto LABEL_13;
  }

  v19 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v19)
  {
    v20 = v19[2];

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

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
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

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v16 = a4;
  v5 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v5)
  {
    v6 = v5[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v16;
  if (v6 == v16)
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

    v11 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
      if (self)
      {
        self = objc_loadWeakRetained(&self->_collectionView);
      }

      [v13 collectionView:self dropSessionDidEnd:v16];
    }

    else
    {
      v14 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
      v15 = objc_opt_respondsToSelector();

      v7 = v16;
      if ((v15 & 1) == 0)
      {
        goto LABEL_17;
      }

      v13 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
      if (self)
      {
        self = objc_loadWeakRetained(&self->_collectionView);
      }

      [v13 _collectionView:self dropSessionDidEnd:v16];
    }

    v7 = v16;
  }

LABEL_17:
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = [WeakRetained _dropCoordinatorItemForDragItem:v9];

  if (!v12)
  {
LABEL_24:
    v20 = 0;
    goto LABEL_32;
  }

  v13 = [v12 kind];
  if (v13 == 2)
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
      v33 = [v12 previewParametersProvider];

      if (v33 && ([v12 previewParametersProvider], v34 = objc_claimAutoreleasedReturnValue(), (v34)[2](v34, v32), v35 = objc_claimAutoreleasedReturnValue(), v34, v35))
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

  if (v13 == 1)
  {
    v21 = [UIDragPreviewTarget alloc];
    v22 = [v12 target];
    v23 = [v22 container];
    v24 = [v12 target];
    [v24 center];
    v26 = v25;
    v28 = v27;
    v29 = [v12 target];
    v30 = v29;
    if (v29)
    {
      [v29 transform];
    }

    else
    {
      memset(v40, 0, sizeof(v40));
    }

    v37 = [(UIPreviewTarget *)v21 initWithContainer:v23 center:v40 transform:v26, v28];

    v20 = [v10 retargetedPreviewWithTarget:v37];

    goto LABEL_32;
  }

  if (v13)
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

  v15 = [v12 destinationIndexPath];
  v16 = [v14 _cellForItemAtIndexPath:v15];

  v17 = [v12 destinationIndexPath];
  v18 = [(_UICollectionViewDragDestinationController *)self _queryClientForPreviewParametersForItemAtIndexPath:v17];

  if (v16)
  {
    if (!v18)
    {
      v18 = objc_alloc_init(UIDragPreviewParameters);
      v19 = [v16 _visiblePathForBackgroundConfiguration];
      [(UIPreviewParameters *)v18 setVisiblePath:v19];
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

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  [(_UICollectionViewDragAndDropController *)WeakRetained dragDestinationController:v7 willBeginDropAnimationForDragItem:v8 animator:?];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95___UICollectionViewDragDestinationController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
  v11[3] = &unk_1E71003B0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 addCompletion:v11];
}

- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v5 = a4;
  v6 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
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

    [v5 locationInView:WeakRetained];
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

    v15 = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    if (self)
    {
      v16 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v15 _collectionView:v16 dataOwnerForDropSession:v5 withDestinationIndexPath:v14];
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

  v3 = [WeakRetained _dragDestinationDelegateProxy];

  return v3;
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

  v3 = [WeakRetained _dragDestinationDelegateActual];

  return v3;
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

  v3 = [WeakRetained _dropDelegateProxy];

  return v3;
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

  v3 = [WeakRetained _dropDelegateActual];

  return v3;
}

- (void)_cancelInteractiveReorderingIfNeeded
{
  v3 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (v3)
  {
    v4 = v3[9];

    if (v4 == 1)
    {
      v5 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
      if (v5)
      {
        v5[9] = 0;
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
  v3 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (v3)
  {
    v4 = v3[9];

    if (v4 == 1)
    {
      v5 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
      if (v5)
      {
        v5[9] = 0;
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

- (id)_queryClientForPreviewParametersForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v9 = [v7 collectionView:WeakRetained dropPreviewParametersForItemAtIndexPath:v4];
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
    v3 = [objc_opt_self() mainScreen];
    v4 = [v3 displayLinkWithTarget:self selector:sel__reorderingDisplayLinkDidTick];
    v5 = v4;
    if (self)
    {
      objc_storeStrong(&self->_reorderDisplayLink, v4);

      v6 = MEMORY[0x1E695DFD0];
      v7 = self->_reorderDisplayLink;
      v8 = [v6 mainRunLoop];
      [(CADisplayLink *)v7 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

      reorderDisplayLink = self->_reorderDisplayLink;
    }

    else
    {

      v14 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [0 addToRunLoop:v14 forMode:*MEMORY[0x1E695DA28]];

      reorderDisplayLink = 0;
    }

    v10 = MEMORY[0x1E695DFD0];
    v11 = reorderDisplayLink;
    v12 = [v10 mainRunLoop];
    [(CADisplayLink *)v11 addToRunLoop:v12 forMode:@"UITrackingRunLoopMode"];

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
  v3 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (!v3)
  {
    v8 = 0;
    v12 = 0;
LABEL_16:

    return v12;
  }

  v4 = v3[2];

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

        v9 = [(_UICollectionViewDragDestinationController *)self sessionState];
        v10 = v9;
        if (v9)
        {
          v9 = v9[2];
        }

        v11 = [v9 localDragSession];

        v12 = 0;
        if (v8 && v11)
        {
          v13 = [(_UICollectionViewDragSourceController *)v8 dragSession];
          if (v11 == v13)
          {
            v12 = [v11 allowsMoveOperation];
          }

          else
          {
            v12 = 0;
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
  v3 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  v4 = [(_UICollectionViewDragDestinationController *)self sessionState];
  v5 = v4;
  if (v4 && *(v4 + 16))
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
      if (WeakRetained && *(v5 + 8) != 7)
      {
        [*(v5 + 16) locationInView:WeakRetained];
        v9 = v7;
        v10 = v8;
        v11 = v3 ? *(v3 + 16) : 0;
        [v11 addSample:{v7, v8}];
        if (v3)
        {
          v12 = *(v3 + 16);
          if (v12)
          {
            if (*(v12 + 48) >= 12)
            {
              if (fabs(*(v3 + 56)) < 2.22044605e-16)
              {
                *(v3 + 56) = CACurrentMediaTime();
              }

              v13 = *(v3 + 32);
              if (!v13)
              {
                v14 = [v3 _reorderCadenceSettings];
                v15 = *(v3 + 32);
                *(v3 + 32) = v14;

                v13 = *(v3 + 32);
              }

              v16 = v13;
              [v16 dwellTimeThreshold];
              if (fabs(*(v3 + 56)) >= 2.22044605e-16 && CACurrentMediaTime() - *(v3 + 56) >= v17)
              {
                [*(v3 + 16) velocity];
                v20 = hypot(v18, v19);
                [v16 velocityMagnitudeThreshold];
                if (fabs(v21) < 2.22044605e-16 || v20 <= v21)
                {
                  v22 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
                  v23 = v22;
                  if (v22)
                  {
                    v22 = v22[2];
                  }

                  v24 = [v22 intent];

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
                  v29 = [(_UICollectionViewDragSourceController *)v28 dragFromIndexPath];

                  v37 = 0;
                  v30 = [WeakRetained _indexPathForInsertionAtPoint:v24 dropIntent:v29 sourceIndexPath:&v37 indicatorLayoutAttributes:{v9, v10}];
                  v31 = v37;
                  [(_UICollectionViewDragDestinationController *)self _updateDropProposalByQueryingClientIfNeeded:v30 indicatorLayoutAttributes:v31];
                  v32 = *(v5 + 8);
                  switch(v32)
                  {
                    case 4:
                      if ([(_UICollectionViewDragDestinationController *)self shouldPerformMovementForCurrentProposal])
                      {
                        [WeakRetained updateInteractiveMovementTargetPosition:{v9, v10}];
                        [(_UIDragDestinationControllerReorderingState *)v3 didReorder];
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
                        v35 = [(_UICollectionViewDragAndDropController *)v34 effectiveDragDestinationVisualStyle];

                        if (v35 != 2)
                        {
                          [WeakRetained _beginReorderingItemAtIndexPath:v30 isLegacyMovement:0];
                        }

                        v36 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
                        if (v36)
                        {
                          v36[9] = 1;
                        }
                      }

                      break;
                    case 2:
                      if (v29 && [(_UICollectionViewDragDestinationController *)self shouldPerformMovementForCurrentProposal])
                      {
                        v33 = [WeakRetained _cellForItemAtIndexPath:v29];

                        if (v33)
                        {
                          [WeakRetained _beginReorderingItemAtIndexPath:v29 isLegacyMovement:0];
                          [WeakRetained updateInteractiveMovementTargetPosition:{v9, v10}];
                          *(v3 + 9) = 1;
                          if (*(v5 + 8) != 4)
                          {
                            *(v5 + 8) = 4;
                          }
                        }

                        else if (([WeakRetained isScrollAnimating] & 1) == 0 && objc_msgSend(WeakRetained, "_globalIndexPathForItemAtIndexPath:", v29) != 0x7FFFFFFFFFFFFFFFLL)
                        {
                          [WeakRetained _scrollToItemAtPresentationIndexPath:v29 atScrollPosition:0 additionalInsets:1 animated:{0.0, 0.0, 0.0, 0.0}];
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
                  *(v3 + 56) = 0;
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
  if (!a1)
  {
    return 0;
  }

  v1 = [(_UICollectionViewDragDestinationController *)a1 dropProposalState];
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 intent];
  v6 = [v4 operation] == 2 || objc_msgSend(v4, "operation") == 3;
  v7 = (v5 == 1) & v6;

  return v7;
}

- (void)_commitCurrentDragAndDropSession
{
  p_isa = &self->super.isa;
  v3 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v3 && v3[2] != 7)
  {
    v3[2] = 7;
  }

  [p_isa _endInteractiveReorderingIfNeeded];
  v4 = [p_isa _dropDelegateActual];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = [p_isa _dropDelegateProxy];
    if (p_isa)
    {
      WeakRetained = objc_loadWeakRetained(p_isa + 1);
      p_isa = objc_loadWeakRetained(p_isa + 3);
    }

    else
    {
      WeakRetained = 0;
    }

    [v9 collectionView:WeakRetained performDropWithCoordinator:p_isa];
  }

  else
  {
    v7 = [p_isa _dragDestinationDelegateActual];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    v9 = [p_isa _dragDestinationDelegateProxy];
    if (p_isa)
    {
      WeakRetained = objc_loadWeakRetained(p_isa + 1);
      p_isa = objc_loadWeakRetained(p_isa + 3);
    }

    else
    {
      WeakRetained = 0;
    }

    [v9 _collectionView:WeakRetained performDropWithCoordinator:p_isa];
  }
}

- (void)_cancelCurrentInteractiveReorder
{
  v3 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v3)
  {
    v4 = v3[2];

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

  v5 = [(_UICollectionViewDragDestinationController *)self sessionState];
  if (v5 && v5[2] != 7)
  {
    v5[2] = 7;
  }

  if (self)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    v6 = 0;
  }

  v7 = [WeakRetained _dataSourceImplementsReorderingHandlers];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [WeakRetained _supportsAutomaticCatalystDragAndDropReordering];
  }

  if (v6)
  {
    v9 = [v6[21] count] < 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(_UICollectionViewDragDestinationController *)&self->super.isa reorderingState];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_35;
  }

  v11 = v10[9];

  if ((v8 & v9) != 1 || (v11 & 1) == 0)
  {
LABEL_36:
    if (dyld_program_sdk_at_least())
    {
      v27 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
      v28 = v27;
      if (v27)
      {
        v27 = v27[2];
      }

      v29 = [v27 intent];

      if (v29 == 2)
      {
        v30 = [(_UICollectionViewDragDestinationController *)self currentIndexPath];
        v31 = [v6 indexPathBeforeShadowUpdates:v30];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = v30;
        }

        v34 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
        [(_UIHomeAffordanceObservationRecord *)v34 setLegacyViewServiceSessionIdentifier:v33];
      }
    }

    [(_UICollectionViewDragDestinationController *)self _cancelInteractiveReorderingIfNeeded];
    v35 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v37 = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
      [v37 collectionView:WeakRetained performDropWithCoordinator:v6];
    }

    else
    {
      v38 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
      v39 = objc_opt_respondsToSelector();

      if ((v39 & 1) == 0)
      {
        goto LABEL_49;
      }

      v37 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
      [v37 _collectionView:WeakRetained performDropWithCoordinator:v6];
    }

    goto LABEL_49;
  }

  if (v7)
  {
    v12 = [WeakRetained _diffableDataSourceImpl];
    if (!v12)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragDestinationController.m" lineNumber:820 description:{@"Invalid parameter not satisfying: %@", @"dataSourceImpl"}];
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = v6;
  v15 = [v14 proposal];
  if ([v15 operation] != 3 || objc_msgSend(v15, "intent") != 1)
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
  v18 = [(_UICollectionViewDragSourceController *)v17 dragFromIndexPath];

  v19 = [v14 destinationIndexPath];
  v20 = v19;
  v62 = v18;
  if (!v18 || !v19)
  {

    goto LABEL_34;
  }

  [(_UICollectionViewDragDestinationController *)self _endInteractiveReorderingIfNeeded];
  v21 = [(_UICollectionViewDragAndDropController *)v14 effectiveDragDestinationVisualStyle];
  v22 = v21;
  v60 = v6;
  v61 = WeakRetained;
  v58 = v15;
  v59 = v12;
  if (v12)
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
    v25 = [(_UICollectionViewDragSourceController *)v24 dragItemsCreatedForReordering];
    if (v22 == 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    [v12 _commitReorderingForItemAtIndexPath:v18 toDestinationIndexPath:v20 shouldPerformViewAnimations:v26];
  }

  else if (v21 == 2)
  {
    v40 = [[UICollectionViewUpdateItem alloc] initWithOldIndexPath:v18 newIndexPath:v20];
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
    [v61 _notifyDataSourceForMoveOfItemFromIndexPath:v18 toIndexPath:v20];
    [v61 moveItemAtIndexPath:v18 toIndexPath:v20];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v45 = v14;
  v46 = [v14 items];
  v47 = [v46 countByEnumeratingWithState:&v63 objects:v69 count:16];
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
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v63 + 1) + 8 * i);
        v52 = [v51 sourceIndexPath];
        if (v52)
        {
          v53 = v52;
          v54 = [v51 sourceIndexPath];
          v55 = [v54 isEqual:v62];

          if (v55)
          {
            v56 = [v51 dragItem];
            v57 = [v45 dropItem:v56 toItemAtIndexPath:v20];
          }
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v63 objects:v69 count:16];
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

- (void)_updateDropProposalByQueryingClientIfNeeded:(id)a3 indicatorLayoutAttributes:(id)a4
{
  v36 = a3;
  v6 = a4;
  if ([(_UICollectionViewDragDestinationController *)self _shouldQueryDropActionForIndexPath:v36])
  {
    if (v36)
    {
      v7 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
      [(_UIHomeAffordanceObservationRecord *)v7 setLegacyViewServiceSessionIdentifier:v36];
    }

    v8 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateActual];
    if (objc_opt_respondsToSelector())
    {

LABEL_7:
      v11 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(_UICollectionViewDragDestinationController *)self _dropDelegateProxy];
        if (self)
        {
          WeakRetained = objc_loadWeakRetained(&self->_collectionView);
        }

        else
        {
          WeakRetained = 0;
        }

        v15 = [(_UICollectionViewDragDestinationController *)self sessionState];
        v16 = v15;
        if (v15)
        {
          v17 = *(v15 + 16);
        }

        else
        {
          v17 = 0;
        }

        v18 = [v13 collectionView:WeakRetained dropSessionDidUpdate:v17 withDestinationIndexPath:v36];
      }

      else
      {
        v13 = [(_UICollectionViewDragDestinationController *)self _dragDestinationDelegateProxy];
        if (self)
        {
          WeakRetained = objc_loadWeakRetained(&self->_collectionView);
        }

        else
        {
          WeakRetained = 0;
        }

        v19 = [(_UICollectionViewDragDestinationController *)self sessionState];
        v16 = v19;
        if (v19)
        {
          v20 = *(v19 + 16);
        }

        else
        {
          v20 = 0;
        }

        v18 = [v13 _collectionView:WeakRetained dropSessionDidUpdate:v20 withDestinationIndexPath:v36];
      }

      v21 = v18;

      if (!v21)
      {
        goto LABEL_34;
      }

      v22 = [(_UICollectionViewDragDestinationController *)self _effectiveDropProposalForProposal:v21];
      v23 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
      v24 = v23;
      if (v23)
      {
        [v23 setProposal:v22];
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

      v35 = [(_UICollectionViewDragDestinationController *)self currentDropProposal];
      [v34 _updateDropTargetAppearanceWithTargetIndexPath:v36 intent:objc_msgSend(v35 indicatorLayoutAttributes:{"intent"), v6}];

      goto LABEL_37;
    }

    v9 = [(_UICollectionViewDragDestinationController *)self _dropDelegateActual];
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
        v29 = [(_UICollectionViewDragSourceController *)v28 dragItemsCreatedForReordering];

        v30 = [UICollectionViewDropProposal alloc];
        if (v29)
        {
          v31 = [(UICollectionViewDropProposal *)v30 initWithDropOperation:3 intent:1];
          v21 = [(_UICollectionViewDragDestinationController *)self _effectiveDropProposalForProposal:v31];

          goto LABEL_31;
        }

        v32 = 0;
LABEL_30:
        v21 = [(UICollectionViewDropProposal *)v30 initWithDropOperation:v32 intent:0];
LABEL_31:
        v33 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
        v22 = v33;
        if (v33)
        {
          [v33 setProposal:v21];
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

- (id)_effectiveDropProposalForProposal:(id)a3
{
  v4 = a3;
  v5 = [v4 intent];
  v6 = [v4 operation];

  if (v6 == 3)
  {
    v7 = [(_UICollectionViewDragDestinationController *)self sessionState];
    v8 = v7;
    if (v7)
    {
      v7 = v7[2];
    }

    v9 = [v7 allowsMoveOperation];

    if (v9)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }
  }

  if ([(_UICollectionViewDragDestinationController *)self _isLocalInteractiveMove])
  {
    if ([(_UICollectionViewDragDestinationController *)self _isMultiItemSource])
    {
      if (v5 == 1)
      {
        v6 = 0;
        v5 = 0;
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

      v11 = [(_UICollectionViewDragAndDropController *)WeakRetained sourceIndexPaths];
      v12 = [v11 firstObject];

      v13 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
      v14 = [(_UIDragDestinationControllerDropProposalState *)v13 effectiveIndexPath];

      if (v12 && [v12 isEqual:v14])
      {
        v6 = 0;
        v5 = 0;
      }
    }
  }

  v15 = [[UICollectionViewDropProposal alloc] initWithDropOperation:v6 intent:v5];

  return v15;
}

- (BOOL)_shouldQueryDropActionForIndexPath:(id)a3
{
  v5 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
  v6 = [(_UIDragDestinationControllerDropProposalState *)v5 effectiveIndexPath];

  v7 = 1;
  if (!a3 && v6)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v9 = [WeakRetained collectionViewLayout];
    v10 = [(_UICollectionViewDragDestinationController *)self dropProposalState];
    v11 = [(_UIDragDestinationControllerDropProposalState *)v10 effectiveIndexPath];
    v12 = [v9 layoutAttributesForItemAtIndexPath:v11];

    if (v12)
    {
      v13 = [(_UICollectionViewDragDestinationController *)self sessionState];
      if (!v13)
      {
        v25 = 0;
        v7 = 1;
        goto LABEL_14;
      }

      v14 = v13[2];

      if (v14)
      {
        v15 = [(_UICollectionViewDragDestinationController *)self sessionState];
        v16 = v15;
        v17 = v15 ? *(v15 + 16) : 0;
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

- (id)_computeNextItemAttributesStartingFromItemAttributes:(id)a3 withCurrentDragLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    [v7 frame];
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

    v22 = [WeakRetained collectionViewLayout];

    v23 = [v22 _layoutAttributesForElementsInProjectedRect:v31 withProjectionVector:v30 projectionDistance:{v29, v15, v16, v17, v20}];
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
    v27 = [v24 firstObject];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)_hasGapLargeEnoughToRequireDropActionCallForCurrentItemAttributes:(id)a3 proposedNextItemAttributes:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 center];
  v35 = v16;
  v36 = v15;

  [v5 frame];
  v33 = v18;
  v34 = v17;
  v20 = v19;
  v22 = v21;
  [v5 center];
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

- (void)rebaseForUpdates:(void *)a1
{
  v10 = a2;
  if (a1)
  {
    v3 = [(_UICollectionViewDragDestinationController *)a1 dropProposalState];
    if (!v3 || (v4 = v3[8], v3, (v4 & 1) == 0))
    {
      v5 = [(_UICollectionViewDragDestinationController *)a1 dropProposalState];
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = v10[2](v10, v7);

      v9 = [(_UICollectionViewDragDestinationController *)a1 dropProposalState];
      [(_UIHomeAffordanceObservationRecord *)v9 setLegacyViewServiceSessionIdentifier:v8];
    }
  }
}

@end