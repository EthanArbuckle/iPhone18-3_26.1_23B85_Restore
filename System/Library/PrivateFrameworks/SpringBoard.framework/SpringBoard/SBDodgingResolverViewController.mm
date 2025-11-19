@interface SBDodgingResolverViewController
- (CGRect)contentViewBounds;
- (SBDodgingResolverViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)addItemWithIdentifier:(id)a3 view:(id)a4 initialCenter:(CGPoint)a5 initialSize:(CGSize)a6 delegate:(id)a7;
- (id)invalidateItem:(id)a3;
- (id)preferenceForIdentifier:(id)a3;
- (void)_dispatchNextEventIfNeededAndHandleResponse;
- (void)_dispatchOrAppendEvent:(id)a3;
- (void)_handleEventResponse:(id)a3;
- (void)_performEventResponse:(id)a3;
- (void)_performInvalidationResponse:(id)a3;
- (void)_performScheduleEventResponse:(id)a3;
- (void)_setAllItemsNeedUpdate;
- (void)_updateItemIfNeeded:(id)a3;
- (void)_updateItemsIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)_updateLayoutWithItemIdentifier:(id)a3 completion:(id)a4;
- (void)_updateModelIfNeeded;
- (void)loadView;
- (void)performTransitionFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4 animated:(BOOL)a5 mutationBlock:(id)a6;
- (void)setItemNeedsUpdate:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation SBDodgingResolverViewController

- (SBDodgingResolverViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v19.receiver = self;
  v19.super_class = SBDodgingResolverViewController;
  v4 = [(SBDodgingResolverViewController *)&v19 initWithNibName:a3 bundle:a4];
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

- (id)addItemWithIdentifier:(id)a3 view:(id)a4 initialCenter:(CGPoint)a5 initialSize:(CGSize)a6 delegate:(id)a7
{
  height = a6.height;
  width = a6.width;
  y = a5.y;
  x = a5.x;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = [(NSMutableDictionary *)self->_itemsForIdentifiers objectForKey:v15];

  if (v18)
  {
    [SBDodgingResolverViewController addItemWithIdentifier:a2 view:v15 initialCenter:? initialSize:? delegate:?];
  }

  v19 = [[SBDodgingItem alloc] initWithUniqueIdentifier:v15 view:v16 delegate:v17 dodgingResolverViewController:self];
  [(NSMutableDictionary *)self->_itemsForIdentifiers setObject:v19 forKey:v15];
  if (v16)
  {
    v20 = [(SBDodgingResolverViewController *)self view];
    [v20 addSubview:v16];
  }

  v21 = [v17 dodgingResolver:self preferenceForDodgingItem:v19];
  [(SBDodgingItem *)v19 setPreference:v21];

  v22 = [[SBInsertionDodgingModifierEvent alloc] initWithIdentifier:v15 center:x size:y, width, height];
  [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v22];

  return v19;
}

- (id)invalidateItem:(id)a3
{
  v4 = a3;
  v5 = [SBRemovalDodgingModifierEvent alloc];
  v6 = [v4 uniqueIdentifier];
  v7 = [(SBRemovalDodgingModifierEvent *)v5 initWithIdentifier:v6];

  [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v7];
  v8 = [v4 view];
  v9 = v8;
  if (v8)
  {
    [v8 removeFromSuperview];
  }

  itemsForIdentifiers = self->_itemsForIdentifiers;
  v11 = [v4 uniqueIdentifier];
  [(NSMutableDictionary *)itemsForIdentifiers removeObjectForKey:v11];

  return v9;
}

- (void)setItemNeedsUpdate:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  v6 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [(NSMutableSet *)self->_itemsNeedingUpdate addObject:v7];
  if (!a4)
  {
    [(NSMutableSet *)self->_itemsNeedingNonAnimatedUpdate addObject:v7];
  }

  [(SBDodgingResolverViewController *)self _updateItemIfNeeded:v7];
  self->_lastUpdateTimeNS = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v6;
}

- (void)performTransitionFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4 animated:(BOOL)a5 mutationBlock:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [[SBRotationDodgingModifierEvent alloc] initWithIdentifier:v11 fromOrientation:a3 toOrientation:a4 phase:0];
  [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v12];
  v13 = 0;
  if (v6)
  {
    v13 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:a3 toInterfaceOrientation:a4];
  }

  v14 = MEMORY[0x277CF0D38];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__SBDodgingResolverViewController_performTransitionFromOrientation_toOrientation_animated_mutationBlock___block_invoke;
  v22[3] = &unk_2783C0208;
  v24 = v10;
  v25 = a4;
  v22[4] = self;
  v23 = v11;
  v26 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__SBDodgingResolverViewController_performTransitionFromOrientation_toOrientation_animated_mutationBlock___block_invoke_2;
  v17[3] = &unk_2783C0230;
  v20 = a3;
  v21 = a4;
  v18 = v23;
  v19 = self;
  v15 = v23;
  v16 = v10;
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
  v2 = [(SBDodgingResolverViewController *)self view];
  [v2 bounds];
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

- (id)preferenceForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_itemsForIdentifiers objectForKey:a3];
  v4 = [v3 preference];

  return v4;
}

- (void)_dispatchOrAppendEvent:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    [(SBDodgingResolverViewController *)a2 _dispatchOrAppendEvent:?];
    v5 = 0;
  }

  [(NSMutableArray *)self->_eventQueue _sb_enqueue:v5];
  [(SBDodgingResolverViewController *)self _dispatchNextEventIfNeededAndHandleResponse];
}

- (void)_dispatchNextEventIfNeededAndHandleResponse
{
  if (!self->_dispatchingEvent)
  {
    v3 = [(NSMutableArray *)self->_eventQueue _sb_dequeue];
    if (v3)
    {
      self->_dispatchingEvent = 1;
      v5 = v3;
      v4 = [(SBChainableModifier *)self->_rootModifier handleEvent:v3];
      if (v4)
      {
        [(SBDodgingResolverViewController *)self _handleEventResponse:v4];
      }

      [(SBDodgingResolverViewController *)self _updateItemsIfNeeded];
      [(SBDodgingResolverViewController *)self _updateModelIfNeeded];
      [(SBDodgingResolverViewController *)self _updateLayoutIfNeeded];
      self->_dispatchingEvent = 0;
      [(SBDodgingResolverViewController *)self _dispatchNextEventIfNeededAndHandleResponse];

      v3 = v5;
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

- (void)_updateLayoutWithItemIdentifier:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(SBRootDodgingLayerModifier *)self->_rootModifier zOrderedIdentifiers];
  v9 = [v8 reverseObjectEnumerator];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [(NSMutableDictionary *)self->_itemsForIdentifiers objectForKey:*(*(&v21 + 1) + 8 * v13)];
        v15 = [v14 view];

        if (v15)
        {
          v16 = [(SBDodgingResolverViewController *)self view];
          [v16 bringSubviewToFront:v15];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v17 = MEMORY[0x277D65DA0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__SBDodgingResolverViewController__updateLayoutWithItemIdentifier_completion___block_invoke;
  v19[3] = &unk_2783AE530;
  v19[4] = self;
  v20 = v6;
  v18 = v6;
  [v17 perform:v19 finalCompletion:v7];
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
  v4 = [(SBDodgingModel *)self->_model identifiers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SBDodgingResolverViewController__setAllItemsNeedUpdate__block_invoke;
  v6[3] = &unk_2783BD920;
  v6[4] = self;
  v5 = [v4 bs_map:v6];
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

- (void)_updateItemIfNeeded:(id)a3
{
  v15 = a3;
  if ([(NSMutableSet *)self->_itemsNeedingUpdate containsObject:?])
  {
    [(NSMutableSet *)self->_itemsNeedingUpdate removeObject:v15];
    v4 = [v15 delegate];
    v5 = [v4 dodgingResolver:self preferenceForDodgingItem:v15];

    v6 = [v5 isUpdatingInteractively];
    if ([(NSMutableSet *)self->_itemsNeedingNonAnimatedUpdate containsObject:v15])
    {
      [(NSMutableSet *)self->_itemsNeedingNonAnimatedUpdate removeObject:v15];
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = [SBPreferenceChangeDodgingModifierEvent alloc];
    v10 = [v15 uniqueIdentifier];
    v11 = [(SBPreferenceChangeDodgingModifierEvent *)v9 initWithIdentifier:v10 phase:0 style:v8];

    [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v11];
    [v15 setPreference:v5];
    v12 = [SBPreferenceChangeDodgingModifierEvent alloc];
    v13 = [v15 uniqueIdentifier];
    v14 = [(SBPreferenceChangeDodgingModifierEvent *)v12 initWithIdentifier:v13 phase:1 style:v8];

    [(SBDodgingResolverViewController *)self _dispatchOrAppendEvent:v14];
  }
}

- (void)_handleEventResponse:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBDodgingResolverViewController *)a2 _handleEventResponse:?];
  }

  if ([v5 isValid])
  {
    [v5 delay];
    if (BSFloatIsZero())
    {
      [(SBDodgingResolverViewController *)self _performEventResponse:v5];
    }

    else
    {
      [v5 delay];
      v9 = dispatch_time(0, (v8 * 1000000000.0));
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__SBDodgingResolverViewController__handleEventResponse___block_invoke;
      v10[3] = &unk_2783A92D8;
      v11 = v5;
      v12 = self;
      dispatch_after(v9, MEMORY[0x277D85CD0], v10);
    }
  }

  else
  {
    v6 = SBLogAppSwitcher();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 description];
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

- (void)_performEventResponse:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBDodgingResolverViewController *)a2 _performEventResponse:?];
  }

  v6 = [v5 type];
  if (v6 == 2)
  {
    [(SBDodgingResolverViewController *)self _performScheduleEventResponse:v5];
  }

  else if (v6 == 1)
  {
    [(SBDodgingResolverViewController *)self _performInvalidationResponse:v5];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SBDodgingResolverViewController__performEventResponse___block_invoke;
  v7[3] = &unk_2783C0280;
  v7[4] = self;
  [v5 enumerateChildResponsesUsingBlock:v7];
}

- (void)_performInvalidationResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 options];
  v6 = [v4 identifier];
  v7 = [v4 completionIdentifier];
  v8 = [v4 disableCoalescing];

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (SBInvalidationDodgingOptionsContainsOption(v5, 4))
  {
    if (v6)
    {
      v11 = [(NSMutableDictionary *)self->_itemsForIdentifiers objectForKey:v6];
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
  if (SBInvalidationDodgingOptionsContainsOption(v5, 1))
  {
    [(SBDodgingResolverViewController *)self _setNeedsModelUpdate];
    if (v10)
    {
      [(SBDodgingResolverViewController *)self _updateModelIfNeeded];
      if (!SBInvalidationDodgingOptionsContainsOption(v5, 2))
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (!SBInvalidationDodgingOptionsContainsOption(v5, 2))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (SBInvalidationDodgingOptionsContainsOption(v5, 2))
  {
    if (v10)
    {
LABEL_17:
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__SBDodgingResolverViewController__performInvalidationResponse___block_invoke;
      v12[3] = &unk_2783B5CD8;
      v13 = v7;
      v14 = self;
      [(SBDodgingResolverViewController *)self _updateLayoutWithItemIdentifier:v6 completion:v12];

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

- (void)_performScheduleEventResponse:(id)a3
{
  v4 = a3;
  v5 = [SBCustomEventDodgingModifierEvent alloc];
  v6 = [v4 name];

  v7 = [(SBCustomEventDodgingModifierEvent *)v5 initWithName:v6];
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