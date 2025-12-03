@interface SBHLibraryIndicatorIconDropInteractionDelegate
- (BOOL)_canPerformDropForAnyItemInSession:(id)session;
- (BOOL)_canPerformDropForDragItem:(id)item;
- (BOOL)_canPerformDropForDraggedIcon:(id)icon;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (SBHLibraryIndicatorIconDropInteractionContextProviding)contextProvider;
- (SBHLibraryIndicatorIconDropInteractionDelegate)initWithLibraryIndicatorIconView:(id)view;
- (SBIconView)libraryIndicatorIconView;
- (id)_draggedItemIdentifiersInSession:(id)session;
- (id)_iconIdentifierForDragItem:(id)item;
- (id)_iconModel;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)targetItemForSpringLoadingInteractionInView:(id)view atLocation:(CGPoint)location forDropSession:(id)session;
- (id)targetViewForSpringLoadingEffectForView:(id)view;
- (void)_handleSpringLoadedInteractionDidActivateWithContext:(id)context;
- (void)_notifyDidPerformDropForSession:(id)session;
- (void)_updateIndicatorIconViewForSession:(id)session isActive:(BOOL)active;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
@end

@implementation SBHLibraryIndicatorIconDropInteractionDelegate

- (SBHLibraryIndicatorIconDropInteractionDelegate)initWithLibraryIndicatorIconView:(id)view
{
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = SBHLibraryIndicatorIconDropInteractionDelegate;
  v5 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryIndicatorIconView, viewCopy);
    v7 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v6];
    dropInteraction = v6->_dropInteraction;
    v6->_dropInteraction = v7;

    [(UIDropInteraction *)v6->_dropInteraction _setWantsDefaultVisualBehavior:0];
    [viewCopy addInteraction:v6->_dropInteraction];
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
    [viewCopy addInteraction:{v12, v14, v15, v16, v17}];

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

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69D4390];
  v5 = MEMORY[0x1E695DEC8];
  sessionCopy = session;
  v7 = [v5 arrayWithObjects:&v12 count:1];
  v8 = [sessionCopy hasItemsConformingToTypeIdentifiers:{v7, v12, v13}];

  if (!v8)
  {
    return 0;
  }

  libraryIndicatorIconView = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  isEditing = [libraryIndicatorIconView isEditing];

  return isEditing;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  if ([(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForAnyItemInSession:update])
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

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v21 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  _iconModel = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconModel];
  rootFolder = [_iconModel rootFolder];
  v8 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _draggedItemIdentifiersInSession:dropCopy];
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

        v13 = [_iconModel leafIconForIdentifier:*(*(&v16 + 1) + 8 * v12)];
        if ([(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForDraggedIcon:v13])
        {
          ignoredList = [rootFolder ignoredList];
          v15 = [ignoredList addIcon:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _notifyDidPerformDropForSession:dropCopy];
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  defaultCopy = default;
  if ([(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForDragItem:item])
  {
    libraryIndicatorIconView = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
    [libraryIndicatorIconView bounds];
    UIRectGetCenter();
    v10 = v9;
    v12 = v11;
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, 0.01, 0.01);
    v13 = objc_alloc(MEMORY[0x1E69DC9A8]);
    v17 = v18;
    v14 = [v13 initWithContainer:libraryIndicatorIconView center:&v17 transform:{v10, v12}];
    v15 = [defaultCopy retargetedPreviewWithTarget:v14];
    [v15 set_springboardPlatterStyle:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  animatorCopy = animator;
  sbh_appDragLocalContext = [item sbh_appDragLocalContext];
  portaledPreview = [sbh_appDragLocalContext portaledPreview];
  if (objc_opt_respondsToSelector())
  {
    v9 = portaledPreview;
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
    [animatorCopy addAnimations:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __99__SBHLibraryIndicatorIconDropInteractionDelegate_dropInteraction_item_willAnimateDropWithAnimator___block_invoke_2;
    v12[3] = &unk_1E8089000;
    v13 = v11;
    [animatorCopy addCompletion:v12];
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

- (id)targetItemForSpringLoadingInteractionInView:(id)view atLocation:(CGPoint)location forDropSession:(id)session
{
  if ([(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForAnyItemInSession:session, location.x, location.y])
  {
    libraryIndicatorIconView = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  }

  else
  {
    libraryIndicatorIconView = 0;
  }

  return libraryIndicatorIconView;
}

- (id)targetViewForSpringLoadingEffectForView:(id)view
{
  libraryIndicatorIconView = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  customIconImageViewController = [libraryIndicatorIconView customIconImageViewController];
  springLoadingEffectTargetView = [customIconImageViewController springLoadingEffectTargetView];

  return springLoadingEffectTargetView;
}

- (id)_iconIdentifierForDragItem:(id)item
{
  sbh_appDragLocalContext = [item sbh_appDragLocalContext];
  uniqueIdentifier = [sbh_appDragLocalContext uniqueIdentifier];

  return uniqueIdentifier;
}

- (id)_draggedItemIdentifiersInSession:(id)session
{
  v24 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = sessionCopy;
  items = [sessionCopy items];
  v7 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(items);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        sbh_appDragLocalContext = [v11 sbh_appDragLocalContext];
        v13 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconIdentifierForDragItem:v11];
        if (v13)
        {
          [array addObject:v13];
        }

        containedIconIdentifiers = [sbh_appDragLocalContext containedIconIdentifiers];
        v15 = containedIconIdentifiers;
        if (containedIconIdentifiers)
        {
          allObjects = [containedIconIdentifiers allObjects];
          [array addObjectsFromArray:allObjects];
        }
      }

      v8 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return array;
}

- (BOOL)_canPerformDropForAnyItemInSession:(id)session
{
  v20 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  _iconModel = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconModel];
  [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _draggedItemIdentifiersInSession:sessionCopy];
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

        v11 = [_iconModel leafIconForIdentifier:{*(*(&v15 + 1) + 8 * i), v15}];
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

- (BOOL)_canPerformDropForDragItem:(id)item
{
  selfCopy = self;
  v4 = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconIdentifierForDragItem:item];
  _iconModel = [(SBHLibraryIndicatorIconDropInteractionDelegate *)selfCopy _iconModel];
  v6 = [_iconModel leafIconForIdentifier:v4];

  LOBYTE(selfCopy) = [(SBHLibraryIndicatorIconDropInteractionDelegate *)selfCopy _canPerformDropForDraggedIcon:v6];
  return selfCopy;
}

- (BOOL)_canPerformDropForDraggedIcon:(id)icon
{
  if (!icon)
  {
    return 0;
  }

  iconCopy = icon;
  _iconModel = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _iconModel];
  rootFolder = [_iconModel rootFolder];
  ignoredList = [rootFolder ignoredList];

  LOBYTE(rootFolder) = [ignoredList isAllowedToContainIcon:iconCopy];
  return rootFolder;
}

- (id)_iconModel
{
  contextProvider = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self contextProvider];
  libraryIndicatorIconView = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  v5 = [contextProvider iconModelForDroppingIntoLibraryIndicatorIconView:libraryIndicatorIconView];

  return v5;
}

- (void)_notifyDidPerformDropForSession:(id)session
{
  sessionCopy = session;
  contextProvider = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self contextProvider];
  libraryIndicatorIconView = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  [contextProvider libraryIndicatorIconView:libraryIndicatorIconView didAcceptDropForSession:sessionCopy];
}

- (void)_handleSpringLoadedInteractionDidActivateWithContext:(id)context
{
  contextProvider = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self contextProvider];
  libraryIndicatorIconView = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  [contextProvider handleSpringLoadDidActivateForLibraryIndicatorIconView:libraryIndicatorIconView];
}

- (void)_updateIndicatorIconViewForSession:(id)session isActive:(BOOL)active
{
  activeCopy = active;
  sessionCopy = session;
  libraryIndicatorIconView = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self libraryIndicatorIconView];
  if (activeCopy)
  {
    activeCopy = [(SBHLibraryIndicatorIconDropInteractionDelegate *)self _canPerformDropForAnyItemInSession:sessionCopy];
  }

  customIconImageViewController = [libraryIndicatorIconView customIconImageViewController];
  if (activeCopy != [customIconImageViewController isOverlapping])
  {
    v9 = MEMORY[0x1E69DD250];
    +[SBHIconManager defaultIconLayoutAnimationDuration];
    v11 = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__SBHLibraryIndicatorIconDropInteractionDelegate__updateIndicatorIconViewForSession_isActive___block_invoke;
    v12[3] = &unk_1E80897D8;
    v13 = customIconImageViewController;
    v14 = activeCopy;
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