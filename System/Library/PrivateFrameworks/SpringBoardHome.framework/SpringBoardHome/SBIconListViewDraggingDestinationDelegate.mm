@interface SBIconListViewDraggingDestinationDelegate
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)stopTrackingDragForDropSessionIfPossible:(id)possible;
- (BOOL)updateCurrentPolicyHandlerForDropSession:(id)session;
- (BOOL)updateSpringLoadedPolicyHandlerForDropSession:(id)session;
- (SBIconListView)iconListView;
- (SBIconListViewDraggingDestinationDelegate)initWithIconListView:(id)view;
- (id)_dropInteraction:(id)interaction customSpringAnimationBehaviorForDroppingItem:(id)item;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)dragContextForDropSession:(id)session createIfNecessary:(BOOL)necessary;
- (id)dragContextForIdentifier:(id)identifier createIfNecessary:(BOOL)necessary;
- (id)dragDelegate;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)succinctDescription;
- (id)targetItemForSpringLoadingInteractionInView:(id)view atLocation:(CGPoint)location forDropSession:(id)session;
- (id)targetViewForSpringLoadingEffectForView:(id)view;
- (id)uniqueIdentifierForDropSession:(id)session;
- (unint64_t)dragTypeForDropSession:(id)session;
- (void)_handleSpringloadAndComplete:(id)complete;
- (void)_resetSpringLoadingPolicyHandler;
- (void)addDragObserver:(id)observer forDropSession:(id)session;
- (void)dropInteraction:(id)interaction concludeDrop:(id)drop;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)stopTrackingDragForIdentifier:(id)identifier;
@end

@implementation SBIconListViewDraggingDestinationDelegate

- (SBIconListViewDraggingDestinationDelegate)initWithIconListView:(id)view
{
  viewCopy = view;
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
    [viewCopy addInteraction:v5->_dropInteraction];
    objc_storeWeak(&v5->_iconListView, viewCopy);
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
    [viewCopy addInteraction:{v11, v13, v14, v15, v16}];

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
  iconListView = [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  effectiveDragDelegate = [iconListView effectiveDragDelegate];

  return effectiveDragDelegate;
}

- (id)uniqueIdentifierForDropSession:(id)session
{
  sessionCopy = session;
  localDragSession = [sessionCopy localDragSession];
  localContext = [localDragSession localContext];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = localContext;
    if (!localDragSession)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!localDragSession)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v8 = objc_getAssociatedObject(sessionCopy, &uniqueIdentifierForDropSession__SBIconListViewDraggingDestinationDelegateDropSessionUniqueIdentifier);
  }

LABEL_7:
  if (!v8)
  {
    v8 = objc_getAssociatedObject(sessionCopy, &uniqueIdentifierForDropSession__SBIconListViewDraggingDestinationDelegateDropSessionUniqueIdentifier);
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      objc_setAssociatedObject(sessionCopy, &uniqueIdentifierForDropSession__SBIconListViewDraggingDestinationDelegateDropSessionUniqueIdentifier, v8, 0x301);
      if (localDragSession)
      {
        objc_setAssociatedObject(localDragSession, &uniqueIdentifierForDropSession__SBIconListViewDraggingDestinationDelegateDropSessionUniqueIdentifier, v8, 0x301);
        [localDragSession setLocalContext:v8];
      }
    }
  }

  return v8;
}

- (BOOL)stopTrackingDragForDropSessionIfPossible:(id)possible
{
  v4 = [(SBIconListViewDraggingDestinationDelegate *)self uniqueIdentifierForDropSession:possible];
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

- (id)dragContextForDropSession:(id)session createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v6 = [(SBIconListViewDraggingDestinationDelegate *)self uniqueIdentifierForDropSession:session];
  if (v6)
  {
    v7 = [(SBIconListViewDraggingDestinationDelegate *)self dragContextForIdentifier:v6 createIfNecessary:necessaryCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dragContextForIdentifier:(id)identifier createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_dragContexts objectForKey:identifierCopy];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !necessaryCopy;
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
    [(NSMutableDictionary *)self->_dragContexts setObject:v7 forKey:identifierCopy];
  }

  return v7;
}

- (void)addDragObserver:(id)observer forDropSession:(id)session
{
  observerCopy = observer;
  v7 = [(SBIconListViewDraggingDestinationDelegate *)self dragContextForDropSession:session createIfNecessary:1];
  [(SBIconListViewDragContext *)v7 addDragObserver:observerCopy];
}

- (unint64_t)dragTypeForDropSession:(id)session
{
  v23[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  iconListView = [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  iconDragTypeIdentifier = [iconListView iconDragTypeIdentifier];

  if (!iconDragTypeIdentifier || (v23[0] = iconDragTypeIdentifier, v7 = 1, [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(sessionCopy, "hasItemsConformingToTypeIdentifiers:", v8), v8, (v9 & 1) == 0))
  {
    mEMORY[0x1E69DC9B0] = [MEMORY[0x1E69DC9B0] sharedInstance];
    v11 = [mEMORY[0x1E69DC9B0] sessionForDropSession:sessionCopy];

    info = [v11 info];
    processIdentifier = [info processIdentifier];
    if (processIdentifier == getpid())
    {
      v14 = 0;
      if (iconDragTypeIdentifier)
      {
LABEL_5:
        v22 = *MEMORY[0x1E699A3D0];
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
        v16 = [sessionCopy hasItemsConformingToTypeIdentifiers:v15] & v14;

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
      if (info)
      {
        [info auditToken];
      }

      v19[0] = v20;
      v19[1] = v21;
      v17 = [MEMORY[0x1E698E620] tokenFromAuditToken:v19];
      v14 = [v17 hasEntitlement:@"com.apple.springboard.app-drag"];

      if (iconDragTypeIdentifier)
      {
        goto LABEL_5;
      }
    }

    v7 = 2;
LABEL_12:
  }

  return v7;
}

- (BOOL)updateCurrentPolicyHandlerForDropSession:(id)session
{
  v4 = [(SBIconListViewDraggingDestinationDelegate *)self dragTypeForDropSession:session];
  currentDragType = [(SBIconListViewDraggingDestinationDelegate *)self currentDragType];
  result = v4 == currentDragType;
  if (v4 && !currentDragType)
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

- (BOOL)updateSpringLoadedPolicyHandlerForDropSession:(id)session
{
  v4 = [(SBIconListViewDraggingDestinationDelegate *)self dragTypeForDropSession:session];
  currentSpringLoadedDragType = [(SBIconListViewDraggingDestinationDelegate *)self currentSpringLoadedDragType];
  result = v4 == currentSpringLoadedDragType;
  if (v4 && !currentSpringLoadedDragType)
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

- (id)targetItemForSpringLoadingInteractionInView:(id)view atLocation:(CGPoint)location forDropSession:(id)session
{
  y = location.y;
  x = location.x;
  sessionCopy = session;
  viewCopy = view;
  v11 = [(SBIconListViewDraggingDestinationDelegate *)self updateSpringLoadedPolicyHandlerForDropSession:sessionCopy];
  springLoadingPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self springLoadingPolicyHandler];
  objc_opt_class();
  v13 = SBFSafeCast();

  if (![v13 isDragSpringloadingEnabled])
  {
    goto LABEL_12;
  }

  v14 = [v13 iconAtPoint:0 index:{x, y}];
  v15 = [springLoadingPolicyHandler dragHitRegionForDropSession:sessionCopy iconListView:v13 point:v14 icon:{x, y}] & 2;
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

  if (![springLoadingPolicyHandler allowsSpringLoadForSession:sessionCopy onIconView:v17])
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

- (id)targetViewForSpringLoadingEffectForView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  v4 = SBFSafeCast();

  _iconImageView = [v4 _iconImageView];
  if (!_iconImageView)
  {
    customIconImageViewController = [v4 customIconImageViewController];
    if (objc_opt_respondsToSelector())
    {
      _iconImageView = [customIconImageViewController springLoadingEffectTargetView];
    }

    else
    {
      _iconImageView = 0;
    }
  }

  return _iconImageView;
}

- (void)_handleSpringloadAndComplete:(id)complete
{
  completeCopy = complete;
  objc_opt_class();
  targetItem = [completeCopy targetItem];

  v7 = SBFSafeCast();

  springLoadingPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self springLoadingPolicyHandler];
  [springLoadingPolicyHandler handleSpringLoadOnIconView:v7];
}

- (void)_resetSpringLoadingPolicyHandler
{
  [(SBIconListViewDraggingDestinationDelegate *)self setSpringLoadingPolicyHandler:0];

  [(SBIconListViewDraggingDestinationDelegate *)self setCurrentSpringLoadedDragType:0];
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  iconListView = [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  IsVisible = SBHContentVisibilityIsVisible([iconListView contentVisibility]);

  if (IsVisible)
  {
    v10 = [(SBIconListViewDraggingDestinationDelegate *)self updateCurrentPolicyHandlerForDropSession:sessionCopy];
    currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
    if (v10 && ((objc_opt_respondsToSelector() & 1) == 0 || ([currentPolicyHandler dropInteraction:interactionCopy canHandleSession:sessionCopy] & 1) != 0))
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

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  interactionCopy = interaction;
  enterCopy = enter;
  v7 = [(SBIconListViewDraggingDestinationDelegate *)self startTrackingDragForDropSession:enterCopy];
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [currentPolicyHandler dropInteraction:interactionCopy sessionDidEnter:enterCopy];
  }
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  updateCopy = update;
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    v9 = [currentPolicyHandler dropInteraction:interactionCopy sessionDidUpdate:updateCopy];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];
  }

  v10 = v9;

  return v10;
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  interactionCopy = interaction;
  exitCopy = exit;
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [currentPolicyHandler dropInteraction:interactionCopy sessionDidExit:exitCopy];
  }
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  interactionCopy = interaction;
  itemCopy = item;
  defaultCopy = default;
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  v12 = defaultCopy;
  v13 = v12;
  if (objc_opt_respondsToSelector())
  {
    v13 = [currentPolicyHandler dropInteraction:interactionCopy previewForDroppingItem:itemCopy withDefault:v12];
  }

  [v13 set_springboardPlatterStyle:1];

  return v13;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  interactionCopy = interaction;
  itemCopy = item;
  animatorCopy = animator;
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [currentPolicyHandler dropInteraction:interactionCopy item:itemCopy willAnimateDropWithAnimator:animatorCopy];
  }
}

- (id)_dropInteraction:(id)interaction customSpringAnimationBehaviorForDroppingItem:(id)item
{
  interactionCopy = interaction;
  itemCopy = item;
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    v9 = [currentPolicyHandler _dropInteraction:interactionCopy customSpringAnimationBehaviorForDroppingItem:itemCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListViewDraggingDestinationDelegate *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListViewDraggingDestinationDelegate *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListViewDraggingDestinationDelegate *)self succinctDescriptionBuilder];
  dropInteraction = [(SBIconListViewDraggingDestinationDelegate *)self dropInteraction];
  v6 = [succinctDescriptionBuilder appendObject:dropInteraction withName:@"dropInteraction"];

  v7 = [succinctDescriptionBuilder appendInteger:-[SBIconListViewDraggingDestinationDelegate currentDragType](self withName:{"currentDragType"), @"currentDragType"}];
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  v9 = [succinctDescriptionBuilder appendObject:currentPolicyHandler withName:@"currentPolicyHandler"];

  springLoadingPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self springLoadingPolicyHandler];
  v11 = [succinctDescriptionBuilder appendObject:springLoadingPolicyHandler withName:@"springLoadingPolicyHandler"];

  return succinctDescriptionBuilder;
}

- (SBIconListView)iconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconListView);

  return WeakRetained;
}

- (void)stopTrackingDragForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [SBIconListViewDraggingDestinationDelegate dragContextForIdentifier:"dragContextForIdentifier:createIfNecessary:" createIfNecessary:?];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 8);
    *(v4 + 8) = 0;
  }

  [(NSMutableDictionary *)self->_dragContexts removeObjectForKey:identifierCopy];
  if (![(NSMutableDictionary *)self->_dragContexts count])
  {
    [(SBIconListViewDraggingDestinationDelegate *)self setCurrentPolicyHandler:0];
    [(SBIconListViewDraggingDestinationDelegate *)self setCurrentDragType:0];
  }
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  interactionCopy = interaction;
  dropCopy = drop;
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [currentPolicyHandler dropInteraction:interactionCopy performDrop:dropCopy];
  }

  v8 = [(SBIconListViewDraggingDestinationDelegate *)self dragContextForDropSession:dropCopy createIfNecessary:1];
  if (v8)
  {
    v8[16] = 1;
  }
}

- (void)dropInteraction:(id)interaction concludeDrop:(id)drop
{
  interactionCopy = interaction;
  dropCopy = drop;
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [currentPolicyHandler dropInteraction:interactionCopy concludeDrop:dropCopy];
  }

  v11 = [OUTLINED_FUNCTION_2_3() dragContextForDropSession:? createIfNecessary:?];
  [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_13();
  v15[1] = 3221225472;
  v15[2] = __74__SBIconListViewDraggingDestinationDelegate_dropInteraction_concludeDrop___block_invoke;
  v15[3] = &unk_1E808FAF8;
  v16 = v12;
  v17 = dropCopy;
  v13 = dropCopy;
  v14 = v4;
  [(SBIconListViewDragContext *)v11 enumerateDragObserversUsingBlock:v15];
  if (v11)
  {
    v11[17] = v5;
  }

  [(SBIconListViewDraggingDestinationDelegate *)self stopTrackingDragForDropSessionIfPossible:v13];
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  interactionCopy = interaction;
  endCopy = end;
  currentPolicyHandler = [(SBIconListViewDraggingDestinationDelegate *)self currentPolicyHandler];
  if (objc_opt_respondsToSelector())
  {
    [currentPolicyHandler dropInteraction:interactionCopy sessionDidEnd:endCopy];
  }

  v11 = [OUTLINED_FUNCTION_2_3() dragContextForDropSession:? createIfNecessary:?];
  [(SBIconListViewDraggingDestinationDelegate *)self iconListView];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_13();
  v15[1] = 3221225472;
  v15[2] = __75__SBIconListViewDraggingDestinationDelegate_dropInteraction_sessionDidEnd___block_invoke;
  v15[3] = &unk_1E808FAF8;
  v16 = v12;
  v17 = endCopy;
  v13 = endCopy;
  v14 = v4;
  [(SBIconListViewDragContext *)v11 enumerateDragObserversUsingBlock:v15];
  if (v11)
  {
    v11[18] = v5;
  }

  [(SBIconListViewDraggingDestinationDelegate *)self stopTrackingDragForDropSessionIfPossible:v13];
}

@end