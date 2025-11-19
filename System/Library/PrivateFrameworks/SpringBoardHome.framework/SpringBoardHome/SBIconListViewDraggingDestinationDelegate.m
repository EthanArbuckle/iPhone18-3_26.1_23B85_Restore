@interface SBIconListViewDraggingDestinationDelegate
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)stopTrackingDragForDropSessionIfPossible:(id)a3;
- (BOOL)updateCurrentPolicyHandlerForDropSession:(id)a3;
- (BOOL)updateSpringLoadedPolicyHandlerForDropSession:(id)a3;
- (SBIconListView)iconListView;
- (SBIconListViewDraggingDestinationDelegate)initWithIconListView:(id)a3;
- (id)_dropInteraction:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)dragContextForDropSession:(id)a3 createIfNecessary:(BOOL)a4;
- (id)dragContextForIdentifier:(id)a3 createIfNecessary:(BOOL)a4;
- (id)dragDelegate;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)succinctDescription;
- (id)targetItemForSpringLoadingInteractionInView:(id)a3 atLocation:(CGPoint)a4 forDropSession:(id)a5;
- (id)targetViewForSpringLoadingEffectForView:(id)a3;
- (id)uniqueIdentifierForDropSession:(id)a3;
- (unint64_t)dragTypeForDropSession:(id)a3;
- (void)_handleSpringloadAndComplete:(id)a3;
- (void)_resetSpringLoadingPolicyHandler;
- (void)addDragObserver:(id)a3 forDropSession:(id)a4;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)stopTrackingDragForIdentifier:(id)a3;
@end

@implementation SBIconListViewDraggingDestinationDelegate

- (SBIconListViewDraggingDestinationDelegate)initWithIconListView:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SBIconListViewDraggingDestinationDelegate;
  v5 = [(SBIconListViewDraggingDestinationDelegate *)&v19 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v5];
    dropInteraction = v5->_dropInteraction;
    v5->_dropInteraction = v6;

    [(UIDropInteraction *)v5->_dropInteraction setAllowsSimultaneousDropSessions:1];
    [(UIDropInteraction *)v5->_dropInteraction _setWantsDefaultVisualBehavior:0];
    [v4 addInteraction:v5->_dropInteraction];
    objc_storeWeak(&v5->_iconListView, v4);
    v8 = objc_alloc_init(MEMORY[0x1E69D4010]);
    v9 = objc_alloc_init(MEMORY[0x1E69D4018]);
    [v8 setDelegate:v5];
    [v9 setDelegate:v5];
    [v9 setUseFastBlinkAnimation:1];
    objc_initWeak(&location, v5);
    v10 = objc_alloc(MEMORY[0x1E69DCF80]);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __66__SBIconListViewDraggingDestinationDelegate_initWithIconListView___block_invoke;
    v16 = &unk_1E808B188;
    objc_copyWeak(&v17, &location);
    v11 = [v10 initWithInteractionBehavior:v8 interactionEffect:v9 activationHandler:&v13];
    [v4 addInteraction:{v11, v13, v14, v15, v16}];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __66__SBIconListViewDraggingDestinationDelegate_initWithIconListView___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSpringloadAndComplete:v4];
}

- (id)dragDelegate
{
  v2 = [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  v3 = [v2 effectiveDragDelegate];

  return v3;
}

- (id)uniqueIdentifierForDropSession:(id)a3
{
  v3 = a3;
  v4 = [v3 localDragSession];
  v5 = [v4 localContext];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = v5;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v8 = objc_getAssociatedObject(v3, &uniqueIdentifierForDropSession__SBIconListViewDraggingDestinationDelegateDropSessionUniqueIdentifier);
  }

LABEL_7:
  if (!v8)
  {
    v8 = objc_getAssociatedObject(v3, &uniqueIdentifierForDropSession__SBIconListViewDraggingDestinationDelegateDropSessionUniqueIdentifier);
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      objc_setAssociatedObject(v3, &uniqueIdentifierForDropSession__SBIconListViewDraggingDestinationDelegateDropSessionUniqueIdentifier, v8, 0x301);
      if (v4)
      {
        objc_setAssociatedObject(v4, &uniqueIdentifierForDropSession__SBIconListViewDraggingDestinationDelegateDropSessionUniqueIdentifier, v8, 0x301);
        [v4 setLocalContext:v8];
      }
    }
  }

  return v8;
}

- (BOOL)stopTrackingDragForDropSessionIfPossible:(id)a3
{
  v4 = [(SBIconListViewDraggingDestinationDelegate *)self uniqueIdentifierForDropSession:a3];
  if (v4)
  {
    v5 = [(SBIconListViewDraggingDestinationDelegate *)self dragContextForIdentifier:v4 createIfNecessary:1];
    v6 = v5;
    if (v5 && v5[18] == 1 && (v5[16] != 1 || v5[17] == 1))
    {
      [(SBIconListViewDraggingDestinationDelegate *)self stopTrackingDragForIdentifier:v4];
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dragContextForDropSession:(id)a3 createIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBIconListViewDraggingDestinationDelegate *)self uniqueIdentifierForDropSession:a3];
  if (v6)
  {
    v7 = [(SBIconListViewDraggingDestinationDelegate *)self dragContextForIdentifier:v6 createIfNecessary:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dragContextForIdentifier:(id)a3 createIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_dragContexts objectForKey:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    if (!self->_dragContexts)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      dragContexts = self->_dragContexts;
      self->_dragContexts = v9;
    }

    v7 = objc_alloc_init(SBIconListViewDragContext);
    [(NSMutableDictionary *)self->_dragContexts setObject:v7 forKey:v6];
  }

  return v7;
}

- (void)addDragObserver:(id)a3 forDropSession:(id)a4
{
  v6 = a3;
  v7 = [(SBIconListViewDraggingDestinationDelegate *)self dragContextForDropSession:a4 createIfNecessary:1];
  [(SBIconListViewDragContext *)v7 addDragObserver:v6];
}

- (unint64_t)dragTypeForDropSession:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  v6 = [v5 iconDragTypeIdentifier];

  if (!v6 || (v23[0] = v6, v7 = 1, [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v4, "hasItemsConformingToTypeIdentifiers:", v8), v8, (v9 & 1) == 0))
  {
    v10 = [MEMORY[0x1E69DC9B0] sharedInstance];
    v11 = [v10 sessionForDropSession:v4];

    v12 = [v11 info];
    v13 = [v12 processIdentifier];
    if (v13 == getpid())
    {
      v14 = 0;
      if (v6)
      {
LABEL_5:
        v22 = *MEMORY[0x1E699A3D0];
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
        v16 = [v4 hasItemsConformingToTypeIdentifiers:v15] & v14;

        if (v16)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      if (v12)
      {
        [v12 auditToken];
      }

      v19[0] = v20;
      v19[1] = v21;
      v17 = [MEMORY[0x1E698E620] tokenFromAuditToken:v19];
      v14 = [v17 hasEntitlement:@"com.apple.springboard.app-drag"];

      if (v6)
      {
        goto LABEL_5;
      }
    }

    v7 = 2;
LABEL_12:
  }

  return v7;
}

- (BOOL)updateCurrentPolicyHandlerForDropSession:(id)a3
{
  v4 = [(SBIconListViewDraggingDestinationDelegate *)self dragTypeForDropSession:a3];
  v5 = [(SBIconListViewDraggingDestinationDelegate *)self currentDragType];
  result = v4 == v5;
  if (v4 && !v5)
  {
    if (v4 == 1)
    {
      v7 = off_1E8087698;
    }

    else
    {
      if (v4 != 2)
      {
        v8 = 0;
        goto LABEL_9;
      }

      v7 = off_1E80876A0;
    }

    v8 = objc_alloc_init(*v7);
    [v8 setDraggingDestinationDelegate:self];
LABEL_9:
    [(SBIconListViewDraggingDestinationDelegate *)self setCurrentPolicyHandler:v8];
    [(SBIconListViewDraggingDestinationDelegate *)self setCurrentDragType:v4];

    return 1;
  }

  return result;
}

- (BOOL)updateSpringLoadedPolicyHandlerForDropSession:(id)a3
{
  v4 = [(SBIconListViewDraggingDestinationDelegate *)self dragTypeForDropSession:a3];
  v5 = [(SBIconListViewDraggingDestinationDelegate *)self currentSpringLoadedDragType];
  result = v4 == v5;
  if (v4 && !v5)
  {
    if (v4 == 1)
    {
      v7 = off_1E8087698;
    }

    else
    {
      if (v4 != 2)
      {
        v8 = 0;
        goto LABEL_9;
      }

      v7 = off_1E80876A0;
    }

    v8 = objc_alloc_init(*v7);
    [v8 setDraggingDestinationDelegate:self];
LABEL_9:
    [(SBIconListViewDraggingDestinationDelegate *)self setSpringLoadingPolicyHandler:v8];
    [(SBIconListViewDraggingDestinationDelegate *)self setCurrentSpringLoadedDragType:v4];

    return 1;
  }

  return result;
}

- (id)targetItemForSpringLoadingInteractionInView:(id)a3 atLocation:(CGPoint)a4 forDropSession:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = a3;
  v11 = [(SBIconListViewDraggingDestinationDelegate *)self updateSpringLoadedPolicyHandlerForDropSession:v9];
  v12 = [(SBIconListViewDraggingDestinationDelegate *)self springLoadingPolicyHandler];
  objc_opt_class();
  v13 = SBFSafeCast();

  if (![v13 isDragSpringloadingEnabled])
  {
    goto LABEL_12;
  }

  v14 = [v13 iconAtPoint:0 index:{x, y}];
  v15 = [v12 dragHitRegionForDropSession:v9 iconListView:v13 point:v14 icon:{x, y}] & 2;
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_11:

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v17 = [v13 iconViewForIcon:v14];

  if (!v17)
  {
LABEL_13:
    [(SBIconListViewDraggingDestinationDelegate *)self _resetSpringLoadingPolicyHandler];
    goto LABEL_14;
  }

  if (![v12 allowsSpringLoadForSession:v9 onIconView:v17])
  {
    v14 = v17;
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v17;
}

- (id)targetViewForSpringLoadingEffectForView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = SBFSafeCast();

  v5 = [v4 _iconImageView];
  if (!v5)
  {
    v6 = [v4 customIconImageViewController];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 springLoadingEffectTargetView];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_handleSpringloadAndComplete:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 targetItem];

  v7 = SBFSafeCast();

  v6 = [(SBIconListViewDraggingDestinationDelegate *)self springLoadingPolicyHandler];
  [v6 handleSpringLoadOnIconView:v7];
}

- (void)_resetSpringLoadingPolicyHandler
{
  [(SBIconListViewDraggingDestinationDelegate *)self setSpringLoadingPolicyHandler:0];

  [(SBIconListViewDraggingDestinationDelegate *)self setCurrentSpringLoadedDragType:0];
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  IsVisible = SBHContentVisibilityIsVisible([v8 contentVisibility]);

  if (IsVisible)
  {
    v10 = [(SBIconListViewDraggingDestinationDelegate *)self updateCurrentPolicyHandlerForDropSession:v7];
    v11 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
    if (v10 && ((objc_opt_respondsToSelector() & 1) == 0 || ([v11 dropInteraction:v6 canHandleSession:v7] & 1) != 0))
    {
      v12 = 1;
    }

    else
    {
      [(SBIconListViewDraggingDestinationDelegate *)self setCurrentPolicyHandler:0];
      [(SBIconListViewDraggingDestinationDelegate *)self setCurrentDragType:0];
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SBIconListViewDraggingDestinationDelegate *)self startTrackingDragForDropSession:v6];
  v8 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [v8 dropInteraction:v9 sessionDidEnter:v6];
  }
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 dropInteraction:v6 sessionDidUpdate:v7];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];
  }

  v10 = v9;

  return v10;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [v7 dropInteraction:v8 sessionDidExit:v6];
  }
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  v12 = v10;
  v13 = v12;
  if (objc_opt_respondsToSelector())
  {
    v13 = [v11 dropInteraction:v8 previewForDroppingItem:v9 withDefault:v12];
  }

  [v13 set_springboardPlatterStyle:1];

  return v13;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [v10 dropInteraction:v11 item:v8 willAnimateDropWithAnimator:v9];
  }
}

- (id)_dropInteraction:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 _dropInteraction:v6 customSpringAnimationBehaviorForDroppingItem:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)succinctDescription
{
  v2 = [(SBIconListViewDraggingDestinationDelegate *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListViewDraggingDestinationDelegate *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListViewDraggingDestinationDelegate *)self succinctDescriptionBuilder];
  v5 = [(SBIconListViewDraggingDestinationDelegate *)self dropInteraction];
  v6 = [v4 appendObject:v5 withName:@"dropInteraction"];

  v7 = [v4 appendInteger:-[SBIconListViewDraggingDestinationDelegate currentDragType](self withName:{"currentDragType"), @"currentDragType"}];
  v8 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  v9 = [v4 appendObject:v8 withName:@"currentPolicyHandler"];

  v10 = [(SBIconListViewDraggingDestinationDelegate *)self springLoadingPolicyHandler];
  v11 = [v4 appendObject:v10 withName:@"springLoadingPolicyHandler"];

  return v4;
}

- (SBIconListView)iconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconListView);

  return WeakRetained;
}

- (void)stopTrackingDragForIdentifier:(id)a3
{
  v7 = a3;
  v4 = [SBIconListViewDraggingDestinationDelegate dragContextForIdentifier:"dragContextForIdentifier:createIfNecessary:" createIfNecessary:?];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 8);
    *(v4 + 8) = 0;
  }

  [(NSMutableDictionary *)self->_dragContexts removeObjectForKey:v7];
  if (![(NSMutableDictionary *)self->_dragContexts count])
  {
    [(SBIconListViewDraggingDestinationDelegate *)self setCurrentPolicyHandler:0];
    [(SBIconListViewDraggingDestinationDelegate *)self setCurrentDragType:0];
  }
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [v7 dropInteraction:v9 performDrop:v6];
  }

  v8 = [(SBIconListViewDraggingDestinationDelegate *)self dragContextForDropSession:v6 createIfNecessary:1];
  if (v8)
  {
    v8[16] = 1;
  }
}

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [v10 dropInteraction:v8 concludeDrop:v9];
  }

  v11 = [OUTLINED_FUNCTION_2_3() dragContextForDropSession:? createIfNecessary:?];
  [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_13();
  v15[1] = 3221225472;
  v15[2] = __74__SBIconListViewDraggingDestinationDelegate_dropInteraction_concludeDrop___block_invoke;
  v15[3] = &unk_1E808FAF8;
  v16 = v12;
  v17 = v9;
  v13 = v9;
  v14 = v4;
  [(SBIconListViewDragContext *)v11 enumerateDragObserversUsingBlock:v15];
  if (v11)
  {
    v11[17] = v5;
  }

  [(SBIconListViewDraggingDestinationDelegate *)self stopTrackingDragForDropSessionIfPossible:v13];
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [v10 dropInteraction:v8 sessionDidEnd:v9];
  }

  v11 = [OUTLINED_FUNCTION_2_3() dragContextForDropSession:? createIfNecessary:?];
  [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_13();
  v15[1] = 3221225472;
  v15[2] = __75__SBIconListViewDraggingDestinationDelegate_dropInteraction_sessionDidEnd___block_invoke;
  v15[3] = &unk_1E808FAF8;
  v16 = v12;
  v17 = v9;
  v13 = v9;
  v14 = v4;
  [(SBIconListViewDragContext *)v11 enumerateDragObserversUsingBlock:v15];
  if (v11)
  {
    v11[18] = v5;
  }

  [(SBIconListViewDraggingDestinationDelegate *)self stopTrackingDragForDropSessionIfPossible:v13];
}

@end