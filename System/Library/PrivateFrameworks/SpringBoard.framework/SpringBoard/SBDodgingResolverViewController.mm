@interface SBDodgingResolverViewController
- (CGRect)contentViewBounds;
- (SBDodgingResolverViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)addItemWithIdentifier:(id)identifier view:(id)view initialCenter:(CGPoint)center initialSize:(CGSize)size delegate:(id)delegate;
- (id)invalidateItem:(id)item;
- (id)preferenceForIdentifier:(id)identifier;
- (void)_dispatchNextEventIfNeededAndHandleResponse;
- (void)_dispatchOrAppendEvent:(id)event;
- (void)_handleEventResponse:(id)response;
- (void)_performEventResponse:(id)response;
- (void)_performInvalidationResponse:(id)response;
- (void)_performScheduleEventResponse:(id)response;
- (void)_setAllItemsNeedUpdate;
- (void)_updateItemIfNeeded:(id)needed;
- (void)_updateItemsIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)_updateLayoutWithItemIdentifier:(id)identifier completion:(id)completion;
- (void)_updateModelIfNeeded;
- (void)loadView;
- (void)performTransitionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation animated:(BOOL)animated mutationBlock:(id)block;
- (void)setItemNeedsUpdate:(id)update animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation SBDodgingResolverViewController

- (SBDodgingResolverViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v19.receiver = self;
  v19.super_class = SBDodgingResolverViewController;
  v4 = [(SBDodgingResolverViewController *)&v19 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    eventQueue = v4->_eventQueue;
    v4->_eventQueue = v5;

    v7 = objc_opt_new();
    itemsNeedingUpdate = v4->_itemsNeedingUpdate;
    v4->_itemsNeedingUpdate = v7;

    v9 = objc_opt_new();
    itemsNeedingNonAnimatedUpdate = v4->_itemsNeedingNonAnimatedUpdate;
    v4->_itemsNeedingNonAnimatedUpdate = v9;

    v11 = objc_alloc_init(SBRootDodgingLayerModifier);
    rootModifier = v4->_rootModifier;
    v4->_rootModifier = v11;

    [(SBRootDodgingLayerModifier *)v4->_rootModifier setDelegate:v4];
    v13 = [SBDodgingModel alloc];
    v14 = [(SBDodgingModel *)v13 initWithReferenceBounds:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    model = v4->_model;
    v4->_model = v14;

    v16 = objc_opt_new();
    itemsForIdentifiers = v4->_itemsForIdentifiers;
    v4->_itemsForIdentifiers = v16;
  }

  return v4;
}

- (id)addItemWithIdentifier:(id)identifier view:(id)view initialCenter:(CGPoint)center initialSize:(CGSize)size delegate:(id)delegate
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  identifierCopy = identifier;
  viewCopy = view;
  delegateCopy = delegate;
  v18 = [(NSMutableDictionary *)self->_itemsForIdentifiers objectForKey:identifierCopy];

  if (v18)
  {
    [SBDodgingResolverViewController addItemWithIdentifier:a2 view:identifierCopy initialCenter:? initialSize:? delegate:?];
  }

  v19 = [[SBDodgingItem alloc] initWithUniqueIdentifier:identifierCopy view:viewCopy delegate:delegateCopy dodgingResolverViewController:self];
  [(NSMutableDictionary *)self->_itemsForIdentifiers setObject:v19 forKey:identifierCopy];
  if (viewCopy)
  {
    view = [(SBDodgingResolverViewController *)self view];
    [view addSubview:viewCopy];
  }

  v21 = [delegateCopy dodgingResolver:self preferenceForDodgingItem:v19];
  [(SBDodgingItem *)v19 setPreference:v21];

  height = [[SBInsertionDodgingModifierEvent alloc] initWithIdentifier:identifierCopy center:x size:y, width, height];
  [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:height];

  return v19;
}

- (id)invalidateItem:(id)item
{
  itemCopy = item;
  v5 = [SBRemovalDodgingModifierEvent alloc];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v7 = [(SBRemovalDodgingModifierEvent *)v5 initWithIdentifier:uniqueIdentifier];

  [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v7];
  view = [itemCopy view];
  v9 = view;
  if (view)
  {
    [view removeFromSuperview];
  }

  itemsForIdentifiers = self->_itemsForIdentifiers;
  uniqueIdentifier2 = [itemCopy uniqueIdentifier];
  [(NSMutableDictionary *)itemsForIdentifiers removeObjectForKey:uniqueIdentifier2];

  return v9;
}

- (void)setItemNeedsUpdate:(id)update animated:(BOOL)animated
{
  updateCopy = update;
  v6 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [(NSMutableSet *)self->_itemsNeedingUpdate addObject:updateCopy];
  if (!animated)
  {
    [(NSMutableSet *)self->_itemsNeedingNonAnimatedUpdate addObject:updateCopy];
  }

  [(SBDodgingResolverViewController *)self _updateItemIfNeeded:updateCopy];
  self->_lastUpdateTimeNS = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v6;
}

- (void)performTransitionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation animated:(BOOL)animated mutationBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v12 = [[SBRotationDodgingModifierEvent alloc] initWithIdentifier:uUID fromOrientation:orientation toOrientation:toOrientation phase:0];
  [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v12];
  v13 = 0;
  if (animatedCopy)
  {
    v13 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:orientation toInterfaceOrientation:toOrientation];
  }

  v14 = MEMORY[0x277CF0D38];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__SBDodgingResolverViewController_performTransitionFromOrientation_toOrientation_animated_mutationBlock___block_invoke;
  v22[3] = &unk_2783C0208;
  v24 = blockCopy;
  toOrientationCopy = toOrientation;
  v22[4] = self;
  v23 = uUID;
  orientationCopy = orientation;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__SBDodgingResolverViewController_performTransitionFromOrientation_toOrientation_animated_mutationBlock___block_invoke_2;
  v17[3] = &unk_2783C0230;
  orientationCopy2 = orientation;
  toOrientationCopy2 = toOrientation;
  v18 = v23;
  selfCopy = self;
  v15 = v23;
  v16 = blockCopy;
  [v14 animateWithSettings:v13 actions:v22 completion:v17];
}

void __105__SBDodgingResolverViewController_performTransitionFromOrientation_toOrientation_animated_mutationBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1024) = *(a1 + 56);
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _setAllItemsNeedUpdate];
  [*(a1 + 32) _updateItemsIfNeeded];
  v2 = [[SBRotationDodgingModifierEvent alloc] initWithIdentifier:*(a1 + 40) fromOrientation:*(a1 + 64) toOrientation:*(a1 + 56) phase:1];
  [*(a1 + 32) _dispatchOrAppendEvent:v2];
}

void __105__SBDodgingResolverViewController_performTransitionFromOrientation_toOrientation_animated_mutationBlock___block_invoke_2(uint64_t a1)
{
  v2 = [[SBRotationDodgingModifierEvent alloc] initWithIdentifier:*(a1 + 32) fromOrientation:*(a1 + 48) toOrientation:*(a1 + 56) phase:2];
  [*(a1 + 40) _dispatchOrAppendEvent:v2];
}

- (CGRect)contentViewBounds
{
  view = [(SBDodgingResolverViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)preferenceForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_itemsForIdentifiers objectForKey:identifier];
  preference = [v3 preference];

  return preference;
}

- (void)_dispatchOrAppendEvent:(id)event
{
  eventCopy = event;
  v6 = eventCopy;
  if (!eventCopy)
  {
    [(SBDodgingResolverViewController *)a2 _dispatchOrAppendEvent:?];
    eventCopy = 0;
  }

  [(NSMutableArray *)self->_eventQueue _sb_enqueue:eventCopy];
  [(SBDodgingResolverViewController *)self _dispatchNextEventIfNeededAndHandleResponse];
}

- (void)_dispatchNextEventIfNeededAndHandleResponse
{
  if (!self->_dispatchingEvent)
  {
    _sb_dequeue = [(NSMutableArray *)self->_eventQueue _sb_dequeue];
    if (_sb_dequeue)
    {
      self->_dispatchingEvent = 1;
      v5 = _sb_dequeue;
      v4 = [(SBChainableModifier *)self->_rootModifier handleEvent:_sb_dequeue];
      if (v4)
      {
        [(SBDodgingResolverViewController *)self _handleEventResponse:v4];
      }

      [(SBDodgingResolverViewController *)self _updateItemsIfNeeded];
      [(SBDodgingResolverViewController *)self _updateModelIfNeeded];
      [(SBDodgingResolverViewController *)self _updateLayoutIfNeeded];
      self->_dispatchingEvent = 0;
      [(SBDodgingResolverViewController *)self _dispatchNextEventIfNeededAndHandleResponse];

      _sb_dequeue = v5;
    }
  }
}

- (void)_updateModelIfNeeded
{
  if (self->_needsModelUpdate)
  {
    v3 = [(SBRootDodgingLayerModifier *)self->_rootModifier modelForInvalidatedModel:self->_model];
    model = self->_model;
    self->_model = v3;

    self->_needsModelUpdate = 0;
  }
}

- (void)_updateLayoutIfNeeded
{
  if (self->_needsLayout)
  {
    [(SBDodgingResolverViewController *)self _updateLayoutWithItemIdentifier:0 completion:0];
    self->_needsLayout = 0;
  }
}

- (void)_updateLayoutWithItemIdentifier:(id)identifier completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  zOrderedIdentifiers = [(SBRootDodgingLayerModifier *)self->_rootModifier zOrderedIdentifiers];
  reverseObjectEnumerator = [zOrderedIdentifiers reverseObjectEnumerator];

  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v14 = [(NSMutableDictionary *)self->_itemsForIdentifiers objectForKey:*(*(&v21 + 1) + 8 * v13)];
        view = [v14 view];

        if (view)
        {
          view2 = [(SBDodgingResolverViewController *)self view];
          [view2 bringSubviewToFront:view];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v17 = MEMORY[0x277D65DA0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__SBDodgingResolverViewController__updateLayoutWithItemIdentifier_completion___block_invoke;
  v19[3] = &unk_2783AE530;
  v19[4] = self;
  v20 = identifierCopy;
  v18 = identifierCopy;
  [v17 perform:v19 finalCompletion:completionCopy];
}

void __78__SBDodgingResolverViewController__updateLayoutWithItemIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v27 = [*(*(a1 + 32) + 1000) framesForIdentifiers];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [*(*(a1 + 32) + 1008) identifiers];
  v30 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v30)
  {
    v29 = *v44;
    do
    {
      v3 = 0;
      do
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v43 + 1) + 8 * v3);
        v5 = *(a1 + 40);
        if (!v5 || [v5 isEqual:*(*(&v43 + 1) + 8 * v3)])
        {
          v6 = [*(*(a1 + 32) + 1016) objectForKey:v4];
          v7 = [v6 view];
          v8 = [v27 objectForKey:v4];
          [v8 CGRectValue];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v17 = [*(*(a1 + 32) + 1000) layoutSettingsForIdentifier:v4];
          v18 = [*(*(a1 + 32) + 1000) animationBehaviorModeForIdentifier:v4];
          v19 = v28[2](v28, @"frame");
          v20 = MEMORY[0x277D75D18];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __78__SBDodgingResolverViewController__updateLayoutWithItemIdentifier_completion___block_invoke_2;
          v35[3] = &unk_2783C0258;
          v36 = v7;
          v39 = v10;
          v40 = v12;
          v41 = v14;
          v42 = v16;
          v21 = v6;
          v22 = *(a1 + 32);
          v37 = v21;
          v38 = v22;
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __78__SBDodgingResolverViewController__updateLayoutWithItemIdentifier_completion___block_invoke_3;
          v31[3] = &unk_2783B9188;
          v32 = v21;
          v33 = v22;
          v34 = v19;
          v23 = v19;
          v24 = v21;
          v25 = v7;
          [v20 sb_animateWithSettings:v17 mode:v18 animations:v35 completion:v31];
        }

        ++v3;
      }

      while (v30 != v3);
      v30 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v30);
  }
}

void __78__SBDodgingResolverViewController__updateLayoutWithItemIdentifier_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 40);
  [*(a1 + 48) contentViewBounds];
  [v2 setContainerSize:{v3, v4}];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) view];
  [v5 setContainerCoordinateSpace:v6];

  v7 = *(a1 + 40);
  v8 = [*(*(a1 + 48) + 1016) allKeys];
  [v7 setOtherDodgingIdentifiers:v8];

  [*(a1 + 40) setSize:{*(a1 + 72), *(a1 + 80)}];
  v9 = *(a1 + 40);
  UIRectGetCenter();
  [v9 setCenter:?];
  v10 = [*(a1 + 40) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 dodgingResolver:*(a1 + 48) dodgingItemDidChange:*(a1 + 40)];
  }
}

uint64_t __78__SBDodgingResolverViewController__updateLayoutWithItemIdentifier_completion___block_invoke_3(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 dodgingResolver:*(a1 + 40) dodgingItemDidSettle:*(a1 + 32)];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_setAllItemsNeedUpdate
{
  itemsNeedingUpdate = self->_itemsNeedingUpdate;
  identifiers = [(SBDodgingModel *)self->_model identifiers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SBDodgingResolverViewController__setAllItemsNeedUpdate__block_invoke;
  v6[3] = &unk_2783BD920;
  v6[4] = self;
  v5 = [identifiers bs_map:v6];
  [(NSMutableSet *)itemsNeedingUpdate addObjectsFromArray:v5];
}

- (void)_updateItemsIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableSet *)self->_itemsNeedingUpdate copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBDodgingResolverViewController *)self _updateItemIfNeeded:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateItemIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(NSMutableSet *)self->_itemsNeedingUpdate containsObject:?])
  {
    [(NSMutableSet *)self->_itemsNeedingUpdate removeObject:neededCopy];
    delegate = [neededCopy delegate];
    v5 = [delegate dodgingResolver:self preferenceForDodgingItem:neededCopy];

    isUpdatingInteractively = [v5 isUpdatingInteractively];
    if ([(NSMutableSet *)self->_itemsNeedingNonAnimatedUpdate containsObject:neededCopy])
    {
      [(NSMutableSet *)self->_itemsNeedingNonAnimatedUpdate removeObject:neededCopy];
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    if (isUpdatingInteractively)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = [SBPreferenceChangeDodgingModifierEvent alloc];
    uniqueIdentifier = [neededCopy uniqueIdentifier];
    v11 = [(SBPreferenceChangeDodgingModifierEvent *)v9 initWithIdentifier:uniqueIdentifier phase:0 style:v8];

    [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v11];
    [neededCopy setPreference:v5];
    v12 = [SBPreferenceChangeDodgingModifierEvent alloc];
    uniqueIdentifier2 = [neededCopy uniqueIdentifier];
    v14 = [(SBPreferenceChangeDodgingModifierEvent *)v12 initWithIdentifier:uniqueIdentifier2 phase:1 style:v8];

    [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v14];
  }
}

- (void)_handleEventResponse:(id)response
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (!responseCopy)
  {
    [(SBDodgingResolverViewController *)a2 _handleEventResponse:?];
  }

  if ([responseCopy isValid])
  {
    [responseCopy delay];
    if (BSFloatIsZero())
    {
      [(SBDodgingResolverViewController *)self _performEventResponse:responseCopy];
    }

    else
    {
      [responseCopy delay];
      v9 = dispatch_time(0, (v8 * 1000000000.0));
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__SBDodgingResolverViewController__handleEventResponse___block_invoke;
      v10[3] = &unk_2783A92D8;
      v11 = responseCopy;
      selfCopy = self;
      dispatch_after(v9, MEMORY[0x277D85CD0], v10);
    }
  }

  else
  {
    v6 = SBLogAppSwitcher();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [responseCopy description];
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "[DodgingVC] Skipping the following action because it's no longer valid: %@", buf, 0xCu);
    }
  }
}

void __56__SBDodgingResolverViewController__handleEventResponse___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isValid])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);

    [v2 _performEventResponse:v3];
  }

  else
  {
    v4 = SBLogAppSwitcher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) description];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "[DodgingVC] Skipping the following action because it's no longer valid: %@", &v6, 0xCu);
    }
  }
}

- (void)_performEventResponse:(id)response
{
  responseCopy = response;
  if (!responseCopy)
  {
    [(SBDodgingResolverViewController *)a2 _performEventResponse:?];
  }

  type = [responseCopy type];
  if (type == 2)
  {
    [(SBDodgingResolverViewController *)self _performScheduleEventResponse:responseCopy];
  }

  else if (type == 1)
  {
    [(SBDodgingResolverViewController *)self _performInvalidationResponse:responseCopy];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SBDodgingResolverViewController__performEventResponse___block_invoke;
  v7[3] = &unk_2783C0280;
  v7[4] = self;
  [responseCopy enumerateChildResponsesUsingBlock:v7];
}

- (void)_performInvalidationResponse:(id)response
{
  responseCopy = response;
  options = [responseCopy options];
  identifier = [responseCopy identifier];
  completionIdentifier = [responseCopy completionIdentifier];
  disableCoalescing = [responseCopy disableCoalescing];

  if (completionIdentifier)
  {
    v9 = 1;
  }

  else
  {
    v9 = disableCoalescing;
  }

  if (identifier)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (SBInvalidationDodgingOptionsContainsOption(options, 4))
  {
    if (identifier)
    {
      v11 = [(NSMutableDictionary *)self->_itemsForIdentifiers objectForKey:identifier];
      [(SBDodgingResolverViewController *)self _setItemNeedsUpdate:v11];

      if (!v10)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    [(SBDodgingResolverViewController *)self _setAllItemsNeedUpdate];
    if (v10)
    {
LABEL_10:
      [(SBDodgingResolverViewController *)self _updateItemsIfNeeded];
    }
  }

LABEL_11:
  if (SBInvalidationDodgingOptionsContainsOption(options, 1))
  {
    [(SBDodgingResolverViewController *)self _setNeedsModelUpdate];
    if (v10)
    {
      [(SBDodgingResolverViewController *)self _updateModelIfNeeded];
      if (!SBInvalidationDodgingOptionsContainsOption(options, 2))
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (!SBInvalidationDodgingOptionsContainsOption(options, 2))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (SBInvalidationDodgingOptionsContainsOption(options, 2))
  {
    if (v10)
    {
LABEL_17:
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__SBDodgingResolverViewController__performInvalidationResponse___block_invoke;
      v12[3] = &unk_2783B5CD8;
      v13 = completionIdentifier;
      selfCopy = self;
      [(SBDodgingResolverViewController *)self _updateLayoutWithItemIdentifier:identifier completion:v12];

      goto LABEL_20;
    }

LABEL_19:
    [(SBDodgingResolverViewController *)self _setNeedsLayout];
  }

LABEL_20:
}

void __64__SBDodgingResolverViewController__performInvalidationResponse___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    v4 = [[SBAnimationCompletionDodgingModifierEvent alloc] initWithIdentifier:*(a1 + 32) finished:a2 retargeted:a3];
    [*(a1 + 40) _dispatchOrAppendEvent:v4];
  }
}

- (void)_performScheduleEventResponse:(id)response
{
  responseCopy = response;
  v5 = [SBCustomEventDodgingModifierEvent alloc];
  name = [responseCopy name];

  v7 = [(SBCustomEventDodgingModifierEvent *)v5 initWithName:name];
  [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v7];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D65F80]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SBDodgingResolverViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SBDodgingResolverViewController;
  [(SBDodgingResolverViewController *)&v2 viewDidLoad];
}

- (void)addItemWithIdentifier:(uint64_t)a3 view:initialCenter:initialSize:delegate:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [a1 description];
  [v7 handleFailureInMethod:a2 object:a1 file:@"SBDodgingResolverViewController.m" lineNumber:78 description:{@"%@ already exists in %@", a3, v6}];
}

- (void)_dispatchOrAppendEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDodgingResolverViewController.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"event"}];
}

- (void)_handleEventResponse:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDodgingResolverViewController.m" lineNumber:351 description:{@"Invalid parameter not satisfying: %@", @"response"}];
}

- (void)_performEventResponse:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDodgingResolverViewController.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"response"}];
}

@end