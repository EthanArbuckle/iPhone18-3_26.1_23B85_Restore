@interface SBWindowingSwitcherPersonality
- (BOOL)_shouldResetCacheForEvent:(id)event;
- (CGRect)bounds;
- (CGSize)_minimumSizeForDisplayItem:(id)item;
- (CGSize)_sceneFittingSize:(CGSize)size minimumSize:(CGSize)minimumSize;
- (CGSize)preferredSceneSizeThatFits:(CGSize)fits displayItem:(id)item;
- (SBSwitcherPersonalityView)view;
- (SBWindowingSwitcherPersonality)initWithSwitcherModifier:(id)modifier;
- (id)handleEvent:(id)event;
- (id)identifiersInStrip;
- (id)recentAppLayouts;
- (void)_updateCurrentAppLayout:(id)layout;
- (void)handleEvent:(id)event responseHandler:(id)handler;
- (void)performWithFinalPresentationValue:(id)value;
- (void)performWithInterfaceOrientation:(int64_t)orientation block:(id)block;
- (void)performWithUpdateMode:(int64_t)mode block:(id)block;
@end

@implementation SBWindowingSwitcherPersonality

- (SBWindowingSwitcherPersonality)initWithSwitcherModifier:(id)modifier
{
  modifierCopy = modifier;
  if (!modifierCopy)
  {
    [(SBWindowingSwitcherPersonality *)a2 initWithSwitcherModifier:?];
  }

  v14.receiver = self;
  v14.super_class = SBWindowingSwitcherPersonality;
  v6 = [(SBSwitcherModifier *)&v14 init];
  if (v6)
  {
    v7 = [[SBRootWindowingModifier alloc] initWithSwitcherModifier:modifierCopy];
    rootModifier = v6->_rootModifier;
    v6->_rootModifier = v7;

    [(SBChainableModifier *)v6 addChildModifier:v6->_rootModifier];
    v9 = +[SBWindowingStrip emptyStrip];
    strip = v6->_strip;
    v6->_strip = v9;

    v11 = objc_alloc_init(SBSceneHandleSizesCache);
    sceneHandleSizeCache = v6->_sceneHandleSizeCache;
    v6->_sceneHandleSizeCache = v11;
  }

  return v6;
}

- (void)performWithInterfaceOrientation:(int64_t)orientation block:(id)block
{
  blockCopy = block;
  if ([(SBWindowingSwitcherPersonality *)self switcherInterfaceOrientation]== orientation)
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    v7 = [[SBOverrideInterfaceOrientationSwitcherModifier alloc] initWithInterfaceOrientation:orientation];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__SBWindowingSwitcherPersonality_performWithInterfaceOrientation_block___block_invoke;
    v8[3] = &unk_2783A98A0;
    v8[4] = self;
    v9 = blockCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v7 usingBlock:v8];
  }
}

uint64_t __72__SBWindowingSwitcherPersonality_performWithInterfaceOrientation_block___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) layoutViewModelsIfNeeded];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)performWithUpdateMode:(int64_t)mode block:(id)block
{
  blockCopy = block;
  v7 = [[SBFixedLayoutModeSwitcherModifier alloc] initWithUpdateMode:mode];
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v7 usingBlock:blockCopy];
}

- (void)performWithFinalPresentationValue:(id)value
{
  valueCopy = value;
  switcherModifier = [(SBWindowingSwitcherPersonality *)self switcherModifier];
  animatablePropertyIdentifiers = [switcherModifier animatablePropertyIdentifiers];

  if ([animatablePropertyIdentifiers count])
  {
    v7 = [[SBOverridePresentationValueSwitcherModifier alloc] initWithAnimatablePropertyKeys:animatablePropertyIdentifiers presentationValue:1.0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__SBWindowingSwitcherPersonality_performWithFinalPresentationValue___block_invoke;
    v8[3] = &unk_2783A98A0;
    v8[4] = self;
    v9 = valueCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v7 usingBlock:v8];
  }

  else
  {
    valueCopy[2](valueCopy);
  }
}

uint64_t __68__SBWindowingSwitcherPersonality_performWithFinalPresentationValue___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) layoutViewModelsIfNeeded];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)identifiersInStrip
{
  strip = [(SBWindowingSwitcherPersonality *)self strip];
  appLayoutsInStrip = [strip appLayoutsInStrip];
  bs_flatten = [appLayoutsInStrip bs_flatten];
  v5 = [bs_flatten bs_compactMap:&__block_literal_global_126];

  return v5;
}

- (CGSize)preferredSceneSizeThatFits:(CGSize)fits displayItem:(id)item
{
  height = fits.height;
  width = fits.width;
  [(SBWindowingSwitcherPersonality *)self _minimumSizeForDisplayItem:item];

  [(SBWindowingSwitcherPersonality *)self _sceneFittingSize:width minimumSize:height, v7, v8];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)handleEvent:(id)event responseHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  if ([eventCopy type] != 34)
  {
    if ([eventCopy isTransitionEvent])
    {
      v8 = eventCopy;
      [(SBWindowingSwitcherPersonality *)self _updateCurrentAppLayout:v8];
      if ([v8 phase] == 2)
      {
        v9 = 1;
      }

      else
      {
        v9 = [v8 isAnimated] ^ 1;
      }

      HIDWORD(v34) = v9;
    }

    else
    {
      HIDWORD(v34) = 0;
    }

    if ([(SBWindowingSwitcherPersonality *)self _shouldResetCacheForEvent:eventCopy])
    {
      [(SBSceneHandleSizesCache *)self->_sceneHandleSizeCache reset];
    }

    v10 = [(SBWindowingModifier *)self->_rootModifier handleEvent:eventCopy];
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__45;
    v48 = __Block_byref_object_dispose__45;
    v49 = objc_opt_new();
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__45;
    v42 = __Block_byref_object_dispose__45;
    v43 = objc_opt_new();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __62__SBWindowingSwitcherPersonality_handleEvent_responseHandler___block_invoke;
    v37[3] = &unk_2783B4478;
    v37[4] = &v44;
    v37[5] = &v38;
    [v10 enumerateResponseTreeUsingBlock:v37];
    if ([v45[5] count])
    {
      [v45[5] enumerateObjectsUsingBlock:&__block_literal_global_19_1];
      [v39[5] enumerateObjectsUsingBlock:&__block_literal_global_21];
      v11 = objc_opt_new();
      [v11 setChildResponses:v45[5]];
      v12 = objc_opt_new();
      [v12 setChildResponses:v39[5]];
      LODWORD(v34) = v11 != 0;
      if (v11)
      {
        self->_shouldDeferVisibleOverlayAndUnderlayViewsUpdate = 1;
        [(SBRootWindowingModifier *)self->_rootModifier layoutViewModelsIfNeeded];
        handlerCopy[2](handlerCopy, v11);
        self->_shouldDeferVisibleOverlayAndUnderlayViewsUpdate = 0;
      }
    }

    else
    {
      LODWORD(v34) = 0;
      v12 = v10;
    }

    stateModel = [(SBWindowingModifier *)self->_rootModifier stateModel];
    strip = [stateModel strip];
    v15 = [strip copy];

    if ((BSEqualObjects() & 1) == 0)
    {
      rootModifier = self->_rootModifier;
      v17 = [[SBStripChangedModifierActivity alloc] initWithNewStrip:v15 phase:0];
      v18 = [(SBWindowingModifier *)rootModifier handleEvent:v17];
      handlerCopy[2](handlerCopy, v18);

      objc_storeStrong(&self->_strip, v15);
      v19 = self->_rootModifier;
      v20 = [[SBStripChangedModifierActivity alloc] initWithNewStrip:v15 phase:1];
      v21 = [(SBWindowingModifier *)v19 handleEvent:v20];
      v22 = SBAppendChainableModifierResponse(v21, v12);

      v12 = v22;
    }

    arcSwipeInitialAppLayout = [stateModel arcSwipeInitialAppLayout];
    arcSwipeInitialAppLayout = self->_arcSwipeInitialAppLayout;
    self->_arcSwipeInitialAppLayout = arcSwipeInitialAppLayout;

    arcSwipeNextDisplayItem = [stateModel arcSwipeNextDisplayItem];
    arcSwipeNextDisplayItem = self->_arcSwipeNextDisplayItem;
    self->_arcSwipeNextDisplayItem = arcSwipeNextDisplayItem;

    arcSwipePreviousDisplayItem = [stateModel arcSwipePreviousDisplayItem];
    arcSwipePreviousDisplayItem = self->_arcSwipePreviousDisplayItem;
    self->_arcSwipePreviousDisplayItem = arcSwipePreviousDisplayItem;

    [(SBRootWindowingModifier *)self->_rootModifier layoutViewModelsIfNeeded];
    if (v35)
    {
      delegate = [(SBChainableModifier *)self delegate];
      v30 = objc_opt_class();
      v31 = delegate;
      if (v30)
      {
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;

      [v33 performDeferredUpdateVisibleOverlayAndUnderlayViews];
    }

    handlerCopy[2](handlerCopy, v12);
    if (v36)
    {
      [(SBRootWindowingModifier *)self->_rootModifier layoutViewModelsIfNeeded];
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
  }
}

void __62__SBWindowingSwitcherPersonality_handleEvent_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 type] == 18)
  {
    v3 = v5;
    v4 = 32;
  }

  else
  {
    if (![v5 type])
    {
      goto LABEL_6;
    }

    v3 = v5;
    v4 = 40;
  }

  [*(*(*(a1 + v4) + 8) + 40) addObject:v3];
LABEL_6:
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  switcherModifierEvent = [eventCopy switcherModifierEvent];
  if (switcherModifierEvent)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__45;
    v15 = __Block_byref_object_dispose__45;
    v16 = 0;
    switcherModifierEvent2 = [eventCopy switcherModifierEvent];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__SBWindowingSwitcherPersonality_handleEvent___block_invoke;
    v10[3] = &unk_2783B44C0;
    v10[4] = &v11;
    [(SBWindowingSwitcherPersonality *)self handleEvent:switcherModifierEvent2 responseHandler:v10];

    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBWindowingSwitcherPersonality;
    v7 = [(SBChainableModifier *)&v9 handleEvent:eventCopy];
  }

  return v7;
}

- (CGRect)bounds
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained bounds];
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

- (id)recentAppLayouts
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  recentAppLayouts = [WeakRetained recentAppLayouts];

  return recentAppLayouts;
}

- (void)_updateCurrentAppLayout:(id)layout
{
  layoutCopy = layout;
  obj = [layoutCopy toAppLayout];
  toEnvironmentMode = [layoutCopy toEnvironmentMode];
  isAnimated = [layoutCopy isAnimated];
  phase = [layoutCopy phase];

  if (phase == 2 || (isAnimated & 1) == 0)
  {
    objc_storeStrong(&self->_currentAppLayout, obj);
    self->_currentEnvironmentMode = toEnvironmentMode;
  }
}

- (CGSize)_minimumSizeForDisplayItem:(id)item
{
  itemCopy = item;
  [(SBSceneHandleSizesCache *)self->_sceneHandleSizeCache minimumSizeForDisplayItem:itemCopy];
  v6 = v5;
  v8 = v7;
  if (BSSizeEqualToSize())
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [WeakRetained deviceApplicationSceneHandleForDisplayItem:itemCopy];

    [v10 layoutPreferencesMinimumSize];
    v6 = v11;
    v8 = v12;
    [(SBSceneHandleSizesCache *)self->_sceneHandleSizeCache setMinimumSize:itemCopy forDisplayItem:?];
  }

  v13 = v6;
  v14 = v8;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)_sceneFittingSize:(CGSize)size minimumSize:(CGSize)minimumSize
{
  height = minimumSize.height;
  width = minimumSize.width;
  v6 = size.height;
  v7 = size.width;
  IsZero = BSFloatIsZero();
  if (width < v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = IsZero;
  }

  if (v9)
  {
    width = v7;
  }

  v10 = BSFloatIsZero();
  if (height < v6)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v6;
  }

  else
  {
    v12 = height;
  }

  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (BOOL)_shouldResetCacheForEvent:(id)event
{
  eventCopy = event;
  isTransitionEvent = [eventCopy isTransitionEvent];
  if (eventCopy && isTransitionEvent && [eventCopy phase] == 1)
  {
    v5 = 1;
  }

  else
  {
    isGestureEvent = [eventCopy isGestureEvent];
    v5 = 0;
    if (eventCopy && isGestureEvent)
    {
      v5 = [eventCopy phase] == 1;
    }
  }

  return v5;
}

- (SBSwitcherPersonalityView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)initWithSwitcherModifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowingSwitcherPersonality.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"switcherModifier"}];
}

@end