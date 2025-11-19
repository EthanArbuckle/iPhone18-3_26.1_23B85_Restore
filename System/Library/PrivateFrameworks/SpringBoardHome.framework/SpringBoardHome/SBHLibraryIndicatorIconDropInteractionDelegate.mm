@interface SBHLibraryIndicatorIconDropInteractionDelegate
- (BOOL)_canPerformDropForAnyItemInSession:(id)a3;
- (BOOL)_canPerformDropForDragItem:(id)a3;
- (BOOL)_canPerformDropForDraggedIcon:(id)a3;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (SBHLibraryIndicatorIconDropInteractionContextProviding)contextProvider;
- (SBHLibraryIndicatorIconDropInteractionDelegate)initWithLibraryIndicatorIconView:(id)a3;
- (SBIconView)libraryIndicatorIconView;
- (id)_draggedItemIdentifiersInSession:(id)a3;
- (id)_iconIdentifierForDragItem:(id)a3;
- (id)_iconModel;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)targetItemForSpringLoadingInteractionInView:(id)a3 atLocation:(CGPoint)a4 forDropSession:(id)a5;
- (id)targetViewForSpringLoadingEffectForView:(id)a3;
- (void)_handleSpringLoadedInteractionDidActivateWithContext:(id)a3;
- (void)_notifyDidPerformDropForSession:(id)a3;
- (void)_updateIndicatorIconViewForSession:(id)a3 isActive:(BOOL)a4;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
@end

@implementation SBHLibraryIndicatorIconDropInteractionDelegate

- (SBHLibraryIndicatorIconDropInteractionDelegate)initWithLibraryIndicatorIconView:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SBHLibraryIndicatorIconDropInteractionDelegate;
  v5 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryIndicatorIconView, v4);
    v7 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v6];
    dropInteraction = v6->_dropInteraction;
    v6->_dropInteraction = v7;

    [(UIDropInteraction *)v6->_dropInteraction _setWantsDefaultVisualBehavior:0];
    [v4 addInteraction:v6->_dropInteraction];
    v9 = objc_alloc_init(MEMORY[0x1E69D4010]);
    v10 = objc_alloc_init(MEMORY[0x1E69D4018]);
    [v9 setDelegate:v6];
    [v10 setDelegate:v6];
    [v10 setUseFastBlinkAnimation:1];
    objc_initWeak(&location, v6);
    v11 = objc_alloc(MEMORY[0x1E69DCF80]);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __83__SBHLibraryIndicatorIconDropInteractionDelegate_initWithLibraryIndicatorIconView___block_invoke;
    v17 = &unk_1E808B188;
    objc_copyWeak(&v18, &location);
    v12 = [v11 initWithInteractionBehavior:v9 interactionEffect:v10 activationHandler:&v14];
    [v4 addInteraction:{v12, v14, v15, v16, v17}];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __83__SBHLibraryIndicatorIconDropInteractionDelegate_initWithLibraryIndicatorIconView___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSpringLoadedInteractionDidActivateWithContext:v4];
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69D4390];
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = [v5 arrayWithObjects:&v12 count:1];
  v8 = [v6 hasItemsConformingToTypeIdentifiers:{v7, v12, v13}];

  if (!v8)
  {
    return 0;
  }

  v9 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  v10 = [v9 isEditing];

  return v10;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  if ([(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForAnyItemInSession:a4])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v4];

  return v5;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconModel];
  v7 = [v6 rootFolder];
  v8 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _draggedItemIdentifiersInSession:v5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v6 leafIconForIdentifier:*(*(&v16 + 1) + 8 * v12)];
        if ([(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForDraggedIcon:v13])
        {
          v14 = [v7 ignoredList];
          v15 = [v14 addIcon:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _notifyDidPerformDropForSession:v5];
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v7 = a5;
  if ([(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForDragItem:a4])
  {
    v8 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
    [v8 bounds];
    UIRectGetCenter();
    v10 = v9;
    v12 = v11;
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, 0.01, 0.01);
    v13 = objc_alloc(MEMORY[0x1E69DC9A8]);
    v17 = v18;
    v14 = [v13 initWithContainer:v8 center:&v17 transform:{v10, v12}];
    v15 = [v7 retargetedPreviewWithTarget:v14];
    [v15 set_springboardPlatterStyle:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v6 = a5;
  v7 = [a4 sbh_appDragLocalContext];
  v8 = [v7 portaledPreview];
  if (objc_opt_respondsToSelector())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__SBHLibraryIndicatorIconDropInteractionDelegate_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
    v14[3] = &unk_1E8088C90;
    v11 = v10;
    v15 = v11;
    [v6 addAnimations:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __99__SBHLibraryIndicatorIconDropInteractionDelegate_dropInteraction_item_willAnimateDropWithAnimator___block_invoke_2;
    v12[3] = &unk_1E8089000;
    v13 = v11;
    [v6 addCompletion:v12];
  }
}

uint64_t __99__SBHLibraryIndicatorIconDropInteractionDelegate_dropInteraction_item_willAnimateDropWithAnimator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIconAllowsLabelArea:0];
  [*(a1 + 32) setIconAllowsAccessory:0];
  [*(a1 + 32) setIconCanShowCloseBox:0];
  v2 = *(a1 + 32);

  return [v2 setDragState:3];
}

- (id)targetItemForSpringLoadingInteractionInView:(id)a3 atLocation:(CGPoint)a4 forDropSession:(id)a5
{
  if ([(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForAnyItemInSession:a5, a4.x, a4.y])
  {
    v6 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)targetViewForSpringLoadingEffectForView:(id)a3
{
  v3 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  v4 = [v3 customIconImageViewController];
  v5 = [v4 springLoadingEffectTargetView];

  return v5;
}

- (id)_iconIdentifierForDragItem:(id)a3
{
  v3 = [a3 sbh_appDragLocalContext];
  v4 = [v3 uniqueIdentifier];

  return v4;
}

- (id)_draggedItemIdentifiersInSession:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = v4;
  v6 = [v4 items];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 sbh_appDragLocalContext];
        v13 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconIdentifierForDragItem:v11];
        if (v13)
        {
          [v5 addObject:v13];
        }

        v14 = [v12 containedIconIdentifiers];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 allObjects];
          [v5 addObjectsFromArray:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_canPerformDropForAnyItemInSession:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconModel];
  [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _draggedItemIdentifiersInSession:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 leafIconForIdentifier:{*(*(&v15 + 1) + 8 * i), v15}];
        v12 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForDraggedIcon:v11];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)_canPerformDropForDragItem:(id)a3
{
  v3 = self;
  v4 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconIdentifierForDragItem:a3];
  v5 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)v3 _iconModel];
  v6 = [v5 leafIconForIdentifier:v4];

  LOBYTE(v3) = [(SBHLibraryIndicatorIconDropInteractionDelegate *)v3 _canPerformDropForDraggedIcon:v6];
  return v3;
}

- (BOOL)_canPerformDropForDraggedIcon:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconModel];
  v6 = [v5 rootFolder];
  v7 = [v6 ignoredList];

  LOBYTE(v6) = [v7 isAllowedToContainIcon:v4];
  return v6;
}

- (id)_iconModel
{
  v3 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self contextProvider];
  v4 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  v5 = [v3 iconModelForDroppingIntoLibraryIndicatorIconView:v4];

  return v5;
}

- (void)_notifyDidPerformDropForSession:(id)a3
{
  v4 = a3;
  v6 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self contextProvider];
  v5 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  [v6 libraryIndicatorIconView:v5 didAcceptDropForSession:v4];
}

- (void)_handleSpringLoadedInteractionDidActivateWithContext:(id)a3
{
  v5 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self contextProvider];
  v4 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  [v5 handleSpringLoadDidActivateForLibraryIndicatorIconView:v4];
}

- (void)_updateIndicatorIconViewForSession:(id)a3 isActive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  if (v4)
  {
    v4 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForAnyItemInSession:v6];
  }

  v8 = [v7 customIconImageViewController];
  if (v4 != [v8 isOverlapping])
  {
    v9 = MEMORY[0x1E69DD250];
    +[SBHIconManager defaultIconLayoutAnimationDuration];
    v11 = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__SBHLibraryIndicatorIconDropInteractionDelegate__updateIndicatorIconViewForSession_isActive___block_invoke;
    v12[3] = &unk_1E80897D8;
    v13 = v8;
    v14 = v4;
    [v9 animateWithDuration:v12 animations:v11];
  }
}

- (SBIconView)libraryIndicatorIconView
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryIndicatorIconView);

  return WeakRetained;
}

- (SBHLibraryIndicatorIconDropInteractionContextProviding)contextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_contextProvider);

  return WeakRetained;
}

@end