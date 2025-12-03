@interface PKPGSVTransitionInterstitialController
+ (id)createInView:(id)view withProvider:(id)provider containerAlpha:(double)alpha deactivationHandler:(id)handler;
- (BOOL)isCurrentProvider:(id)provider;
- (BOOL)isInView:(id)view;
- (void)_beginTimeout;
- (void)_createDefaultInterstitialsIn:(void *)in forViews:;
- (void)_createPlaceholderInterstitialsIn:(unint64_t)in forCount:(int)count push:;
- (void)_setNeedsUpdateForCurrentProvider:(uint64_t)provider;
- (void)_updateActive;
- (void)_updateBindings;
- (void)dealloc;
- (void)invalidate;
- (void)pushProvider:(id)provider withContainerAlpha:(double)alpha context:(void *)context;
- (void)setNeedsUpdateForProvider:(id)provider;
- (void)transferToView:(id)view withDeactivationHandler:(id)handler;
- (void)updateCurrentProvider:(id)provider withContainerAlpha:(double)alpha;
- (void)updateExistingViewsForCurrentProviderAnimated:(BOOL)animated withContainerAlpha:(double)alpha;
@end

@implementation PKPGSVTransitionInterstitialController

+ (id)createInView:(id)view withProvider:(id)provider containerAlpha:(double)alpha deactivationHandler:(id)handler
{
  viewCopy = view;
  providerCopy = provider;
  handlerCopy = handler;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v12 = 0;
LABEL_22:

    return v12;
  }

  v13 = [PKPGSVTransitionInterstitialController alloc];
  v14 = viewCopy;
  v15 = providerCopy;
  result = handlerCopy;
  v17 = result;
  if (!v13)
  {
    goto LABEL_10;
  }

  if (v14 && v15)
  {
    v50.receiver = v13;
    v50.super_class = PKPGSVTransitionInterstitialController;
    v18 = objc_msgSendSuper2(&v50, sel_init);
    if (v18)
    {
      v19 = v18;
      v41 = v17;
      pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      v21 = *(v19 + 120);
      *(v19 + 120) = pk_weakObjectsHashTableUsingPointerPersonality;

      pk_createStrongPointerPersonalityToStrongObjects = [MEMORY[0x1E696AD18] pk_createStrongPointerPersonalityToStrongObjects];
      v23 = *(v19 + 32);
      *(v19 + 32) = pk_createStrongPointerPersonalityToStrongObjects;

      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v25 = *(v19 + 72);
      *(v19 + 72) = v24;

      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = *(v19 + 80);
      *(v19 + 80) = v26;

      v28 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithSpringState:{1.0, 246.820852, 31.4210663, 0.0}];
      v29 = *(v19 + 56);
      *(v19 + 56) = v28;

      v30 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithSpringState:{2.0, 300.0, 50.0, 0.0}];
      v31 = *(v19 + 64);
      *(v19 + 64) = v30;

      [*(v19 + 64) setSpeed:1.6];
      v40 = v14;
      objc_storeWeak((v19 + 8), v14);
      *(v19 + 16) = alpha;
      *(v19 + 106) = 1;
      objc_storeWeak((v19 + 112), v15);
      [(PKPGSVTransitionInterstitialController *)v19 _updateBindings];
      *(v19 + 104) = 1;
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __102__PKPGSVTransitionInterstitialController__initInView_withProvider_containerAlpha_deactivationHandler___block_invoke;
      aBlock[3] = &unk_1E80193E8;
      v45 = &v46;
      v12 = v19;
      v44 = v12;
      v32 = _Block_copy(aBlock);
      v33 = [v15 leadingViewsForInterstitialController:v12];
      v42 = v32[2](v32, v33);

      v34 = [v15 trailingViewsForInterstitialController:v12];
      v35 = v32[2](v32, v34);

      [(PKPGSVTransitionInterstitialController *)v12 _createDefaultInterstitialsIn:v42 forViews:?];
      [(PKPGSVTransitionInterstitialController *)v12 _createDefaultInterstitialsIn:v35 forViews:?];
      *(v19 + 104) = 0;
      if (*(v12 + 105) == 1)
      {
        WeakRetained = objc_loadWeakRetained((v19 + 112));
        if (WeakRetained)
        {
          [v12 setNeedsUpdateForProvider:WeakRetained];
        }

        else
        {
          *(v12 + 105) = 0;
        }
      }

      if ([*(v19 + 72) count] || objc_msgSend(*(v19 + 80), "count") || (v47[3] & 1) != 0)
      {
        v37 = _Block_copy(v41);
        v38 = *(v12 + 5);
        *(v12 + 5) = v37;

        [(PKPGSVTransitionInterstitialController *)v12 _beginTimeout];
        if ((*(v12 + 137) & 1) == 0)
        {
          v39 = *(v12 + 5);
          if (v39)
          {
            (*(v39 + 16))(v39, v12);
          }
        }

        _Block_object_dispose(&v46, 8);
      }

      else
      {
        *(v19 + 106) = 0;
        objc_storeWeak((v19 + 112), 0);
        [(PKPGSVTransitionInterstitialController *)v12 _updateBindings];

        _Block_object_dispose(&v46, 8);
        v12 = 0;
      }

      v14 = v40;
      v17 = v41;
      goto LABEL_21;
    }

LABEL_10:
    v12 = 0;
LABEL_21:

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

- (void)_updateBindings
{
  v43 = *MEMORY[0x1E69E9840];
  if (self)
  {
    allObjects = [*(self + 120) allObjects];
    v3 = [allObjects mutableCopy];

    if (*(self + 136))
    {
      v4 = 0;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__PKPGSVTransitionInterstitialController__updateBindings__block_invoke;
      aBlock[3] = &unk_1E8023AE8;
      v37 = v3;
      selfCopy = self;
      v4 = v5;
      v39 = v4;
      v6 = _Block_copy(aBlock);
      WeakRetained = objc_loadWeakRetained((self + 96));
      v6[2](v6, WeakRetained);

      v8 = objc_loadWeakRetained((self + 112));
      v6[2](v6, v8);
    }

    if ([v3 count])
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = v3;
      v10 = [v9 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v33;
        do
        {
          v13 = 0;
          do
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(self + 120) removeObject:*(*(&v32 + 1) + 8 * v13++)];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v32 objects:v42 count:16];
        }

        while (v11);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v9;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          v18 = 0;
          do
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v28 + 1) + 8 * v18++) unbindInterstitialController:self];
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v28 objects:v41 count:16];
        }

        while (v16);
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v4;
    v20 = [v19 countByEnumeratingWithState:&v24 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v25;
      do
      {
        v23 = 0;
        do
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v24 + 1) + 8 * v23++) bindInterstitialController:{self, v24}];
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v24 objects:v40 count:16];
      }

      while (v21);
    }
  }
}

id __102__PKPGSVTransitionInterstitialController__initInView_withProvider_containerAlpha_deactivationHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    __break(1u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v8 = MEMORY[0x1E695E0F0];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        *(*(*(a1 + 40) + 8) + 24) = 1;
        v11 = [v10 layer];
        v12 = [v11 presentationLayer];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v11;
        }

        v15 = v14;

        [v15 opacity];
        v17 = v16;

        v18 = *(*(a1 + 32) + 16) * v17;
        if (v18 > 0.0)
        {
          v8 = v4;
          goto LABEL_16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

LABEL_16:

  v19 = v8;
  return v19;
}

- (void)_createDefaultInterstitialsIn:(void *)in forViews:
{
  v5 = a2;
  inCopy = in;
  if (v5 && (v7 = inCopy) != 0)
  {
    v8 = [v5 count];
    v26 = [v7 count];
    if (v8 < v26)
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      if (WeakRetained)
      {
        v24 = v5;
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __81__PKPGSVTransitionInterstitialController__createDefaultInterstitialsIn_forViews___block_invoke;
        aBlock[3] = &unk_1E8011180;
        objc_copyWeak(&v28, &location);
        v23 = _Block_copy(aBlock);
        v9 = *MEMORY[0x1E695F060];
        v10 = *(MEMORY[0x1E695F060] + 8);
        do
        {
          v11 = v7;
          v12 = [v7 objectAtIndexedSubscript:{v8, v23}];
          v13 = [*(self + 32) objectForKey:v12];
          if (!v13)
          {
            v13 = [[PKPGSVTransitionInterstitialItem alloc] initWithView:v12];
            [*(self + 32) setObject:v13 forKey:v12];
          }

          v14 = [PKPGSVTransitionInterstitialView alloc];
          v15 = *(self + 56);
          v16 = *(self + 64);
          v17 = *(self + 16);
          v18 = v13;
          v19 = WeakRetained;
          v20 = v15;
          v21 = v16;
          v22 = v23;
          if (v14)
          {
            if (!v18)
            {
              goto LABEL_15;
            }

            v14 = [(PKPGSVTransitionInterstitialView *)v14 _initForItem:v18 inView:v19 withSpringFactory:v20 dismissalSpringFactory:v21 defaultSize:v22 containerAlpha:v9 activationObserver:v10, v17];
          }

          [v24 addObject:v14];
          ++v8;
          v7 = v11;
        }

        while (v26 != v8);

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
        v5 = v24;
      }
    }
  }

  else
  {
LABEL_15:
    __break(1u);
  }
}

- (void)_beginTimeout
{
  if (self && (*(self + 136) & 1) == 0)
  {
    v2 = *(self + 48);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 48);
      *(self + 48) = 0;
    }

    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v5 = *(self + 48);
    *(self + 48) = v4;

    v6 = *(self + 48);
    v7 = dispatch_time(0, 750000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    objc_initWeak(&location, self);
    v8 = *(self + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__PKPGSVTransitionInterstitialController__beginTimeout__block_invoke;
    v9[3] = &unk_1E8010998;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v8, v9);
    dispatch_resume(*(self + 48));
    [(PKPGSVTransitionInterstitialController *)self _updateActive];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  timeout = self->_timeout;
  if (timeout)
  {
    dispatch_source_cancel(timeout);
    v4 = self->_timeout;
    self->_timeout = 0;
  }

  if (!self->_invalidated)
  {
    objectEnumerator = [(NSMapTable *)self->_items objectEnumerator];
    allObjects = [objectEnumerator allObjects];

    if ([allObjects count])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__PKPGSVTransitionInterstitialController_dealloc__block_invoke;
      block[3] = &unk_1E8010970;
      v9 = allObjects;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v7.receiver = self;
  v7.super_class = PKPGSVTransitionInterstitialController;
  [(PKPGSVTransitionInterstitialController *)&v7 dealloc];
}

void __49__PKPGSVTransitionInterstitialController_dealloc__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [(PKPGSVTransitionInterstitialItem *)*(*(&v6 + 1) + 8 * v5++) invalidate];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_updateActive
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 136))
    {
      if (!*(self + 137))
      {
        return;
      }

      *(self + 137) = 0;
      goto LABEL_5;
    }

    if (*(self + 24))
    {
      return;
    }

    if (*(self + 128))
    {
      if ((*(self + 137) & 1) == 0)
      {
        *(self + 137) = 1;
      }
    }

    else
    {
      v5 = *(self + 48);
      v6 = v5 != 0;
      if (*(self + 137) != v6)
      {
        *(self + 137) = v6;
        if (!v5)
        {
          keyEnumerator = [*(self + 32) keyEnumerator];
          allObjects = [keyEnumerator allObjects];

          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v9 = allObjects;
          v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v18;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v18 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v17 + 1) + 8 * i);
                v15 = [*(self + 32) objectForKey:{v14, v17}];
                v16 = v15;
                if (!v15 || (*(v15 + 40) & 1) != 0 || ![*(v15 + 32) count])
                {
                  [*(self + 32) removeObjectForKey:v14];
                  [(PKPGSVTransitionInterstitialItem *)v16 invalidate];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
            }

            while (v11);
          }

LABEL_5:
          v2 = *(self + 40);
          if (v2)
          {
            v3 = *(v2 + 16);
            selfCopy = self;
            v3(v2, selfCopy);
          }
        }
      }
    }
  }
}

void __55__PKPGSVTransitionInterstitialController__beginTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    v5 = v2;
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = v5[6];
      v5[6] = 0;

      v2 = v5;
    }

    [(PKPGSVTransitionInterstitialController *)v2 _updateActive];
    v2 = v5;
  }
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    timeout = self->_timeout;
    if (timeout)
    {
      dispatch_source_cancel(timeout);
      v4 = self->_timeout;
      self->_timeout = 0;
    }

    [(PKPGSVTransitionInterstitialController *)self _updateBindings];
    v5 = [(NSMutableArray *)self->_leadingInterstitials copy];
    [(NSMutableArray *)self->_leadingInterstitials removeAllObjects];
    v6 = [(NSMutableArray *)self->_trailingInterstitials copy];
    [(NSMutableArray *)self->_trailingInterstitials removeAllObjects];
    objectEnumerator = [(NSMapTable *)self->_items objectEnumerator];
    allObjects = [objectEnumerator allObjects];

    [(NSMapTable *)self->_items removeAllObjects];
    __52__PKPGSVTransitionInterstitialController_invalidate__block_invoke(v5);
    __52__PKPGSVTransitionInterstitialController_invalidate__block_invoke(v6);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = allObjects;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(PKPGSVTransitionInterstitialItem *)*(*(&v14 + 1) + 8 * v13++) invalidate];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    [(PKPGSVTransitionInterstitialController *)self _updateActive];
  }
}

void __52__PKPGSVTransitionInterstitialController_invalidate__block_invoke(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v21;
    v18 = v25;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v20 + 1) + 8 * i);
        if (v5 && (*(v5 + 413) & 1) == 0)
        {
          *(v5 + 413) = 1;
          v6 = [*(v5 + 528) mutableCopy];
          [*(v5 + 528) removeAllObjects];
          v7 = *(v5 + 472);
          if (v7)
          {
            v8 = _Block_copy(v7);
            [v6 addObject:v8];

            v9 = *(v5 + 472);
            *(v5 + 472) = 0;
          }

          v10 = *(v5 + 504);
          if (v10)
          {
            v11 = _Block_copy(v10);
            [v6 addObject:v11];

            v12 = *(v5 + 504);
            *(v5 + 504) = 0;
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = v6;
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                (*(*(*(&v26 + 1) + 8 * j) + 16))();
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
            }

            while (v15);
          }

          [(PKPGSVTransitionInterstitialView *)v5 _updateActive];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v25[0] = __46__PKPGSVTransitionInterstitialView_invalidate__block_invoke;
          v25[1] = &unk_1E8010970;
          v25[2] = v5;
          [MEMORY[0x1E69DD250] performWithoutAnimation:v24];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v2);
  }
}

void __57__PKPGSVTransitionInterstitialController__updateBindings__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) indexOfObjectIdenticalTo:?];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(*(a1 + 40) + 120) addObject:v5];
      [*(a1 + 48) addObject:v5];
    }

    else
    {
      [*(a1 + 32) removeObjectAtIndex:v4];
    }

    v3 = v5;
  }
}

- (void)_createPlaceholderInterstitialsIn:(unint64_t)in forCount:(int)count push:
{
  v7 = a2;
  v8 = v7;
  if (!self)
  {
LABEL_26:

    return;
  }

  if (v7)
  {
    v9 = [v7 count];
    if (v9 < in)
    {
      v10 = v9;
      WeakRetained = objc_loadWeakRetained((self + 8));
      if (WeakRetained)
      {
        objc_initWeak(&location, self);
        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __90__PKPGSVTransitionInterstitialController__createPlaceholderInterstitialsIn_forCount_push___block_invoke;
        v32 = &unk_1E8011180;
        objc_copyWeak(&v33, &location);
        v12 = _Block_copy(&v29);
        v13 = 0;
        v14 = *MEMORY[0x1E695F050];
        v15 = *(MEMORY[0x1E695F050] + 8);
        v16 = *(MEMORY[0x1E695F050] + 16);
        v17 = *(MEMORY[0x1E695F050] + 24);
        if (v10 && count)
        {
          for (i = 0; i != v10; ++i)
          {
            v19 = [v8 objectAtIndexedSubscript:{i, v29, v30, v31, v32}];
            v14 = [(PKPGSVTransitionInterstitialView *)v19 resolveIndeterminatePositionWithPriorItemFrame:v14 animated:v15, v16, v17];
            v15 = v20;
            v16 = v21;
            v17 = v22;
          }

          v13 = v10;
        }

        v35.origin.x = v14;
        v35.origin.y = v15;
        v35.size.width = v16;
        v35.size.height = v17;
        IsNull = CGRectIsNull(v35);
        v24 = in - v13;
        if (in > v13)
        {
          if (IsNull)
          {
            v25 = *(MEMORY[0x1E695F060] + 8);
          }

          else
          {
            v25 = v17;
          }

          if (IsNull)
          {
            v26 = *MEMORY[0x1E695F060];
          }

          else
          {
            v26 = v16;
          }

          do
          {
            v27 = [PKPGSVTransitionInterstitialView alloc];
            if (v27)
            {
              v28 = [(PKPGSVTransitionInterstitialView *)v27 _initForItem:WeakRetained inView:*(self + 56) withSpringFactory:*(self + 64) dismissalSpringFactory:v12 defaultSize:v26 containerAlpha:v25 activationObserver:*(self + 16)];
            }

            else
            {
              v28 = 0;
            }

            [v8 addObject:{v28, v29, v30, v31, v32}];
            if (count)
            {
              [(PKPGSVTransitionInterstitialView *)v28 resolveIndeterminatePositionWithPriorItemFrame:v14 animated:v15, v16, v17];
            }

            --v24;
          }

          while (v24);
        }

        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
      }
    }

    goto LABEL_26;
  }

  __break(1u);
}

void __90__PKPGSVTransitionInterstitialController__createPlaceholderInterstitialsIn_forCount_push___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained[16];
    if (a2)
    {
      v5 = 1;
    }

    else
    {
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = -1;
    }

    WeakRetained[16] = v5 + v4;
    v6 = WeakRetained;
    [(PKPGSVTransitionInterstitialController *)WeakRetained _updateActive];
    WeakRetained = v6;
  }
}

void __81__PKPGSVTransitionInterstitialController__createDefaultInterstitialsIn_forViews___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained[16];
    if (a2)
    {
      v5 = 1;
    }

    else
    {
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = -1;
    }

    WeakRetained[16] = v5 + v4;
    v6 = WeakRetained;
    [(PKPGSVTransitionInterstitialController *)WeakRetained _updateActive];
    WeakRetained = v6;
  }
}

- (void)setNeedsUpdateForProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    if (!self->_invalidated)
    {
      v7 = providerCopy;
      WeakRetained = objc_loadWeakRetained(&self->_currentProvider);

      providerCopy = v7;
      if (WeakRetained == v7 || (v6 = objc_loadWeakRetained(&self->_previousProvider), v6, providerCopy = v7, v6 == v7))
      {
        [(PKPGSVTransitionInterstitialController *)self _setNeedsUpdateForCurrentProvider:?];
        providerCopy = v7;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)_setNeedsUpdateForCurrentProvider:(uint64_t)provider
{
  if (provider && (*(provider + 136) & 1) == 0)
  {
    if (a2)
    {
      if (*(provider + 104) == 1)
      {
        *(provider + 105) = 1;
        return;
      }

      *(provider + 104) = 1;
      WeakRetained = objc_loadWeakRetained((provider + 112));
      v5 = WeakRetained == 0;
    }

    else
    {
      if (*(provider + 88) == 1)
      {
        *(provider + 89) = 1;
        return;
      }

      *(provider + 88) = 1;
      v6 = objc_loadWeakRetained((provider + 96));
      if (!v6)
      {
        *(provider + 88) = 0;
        return;
      }

      WeakRetained = v6;
      v5 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__PKPGSVTransitionInterstitialController__setNeedsUpdateForCurrentProvider___block_invoke;
    aBlock[3] = &unk_1E8023B10;
    v19 = a2;
    aBlock[4] = provider;
    v7 = _Block_copy(aBlock);
    if (v5)
    {
      v8 = MEMORY[0x1E695E0F0];
      v9 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v10 = [WeakRetained leadingViewsForInterstitialController:provider];
      v9 = v7[2](v7, v10);

      v11 = [WeakRetained trailingViewsForInterstitialController:provider];
      v8 = v7[2](v7, v11);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__PKPGSVTransitionInterstitialController__setNeedsUpdateForCurrentProvider___block_invoke_2;
    v16[3] = &unk_1E8023B38;
    v16[4] = provider;
    v17 = a2;
    v12 = _Block_copy(v16);
    v13 = v12;
    v14 = *(provider + 24);
    *(provider + 24) = 1;
    if (a2)
    {
      -[PKPGSVTransitionInterstitialController _createPlaceholderInterstitialsIn:forCount:push:](provider, *(provider + 72), [v9 count], 0);
      -[PKPGSVTransitionInterstitialController _createPlaceholderInterstitialsIn:forCount:push:](provider, *(provider + 80), [v8 count], 0);
      (*(v13 + 2))(v13, *(provider + 72), v9);
      (*(v13 + 2))(v13, *(provider + 80), v8);
      *(provider + 104) = 0;
      if ((*(provider + 105) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = (v12 + 16);
      (*(v12 + 2))(v12, *(provider + 72), v9);
      (*v15)(v13, *(provider + 80), v8);
      *(provider + 88) = 0;
      if (*(provider + 89) != 1)
      {
LABEL_19:
        *(provider + 24) = v14;
        [(PKPGSVTransitionInterstitialController *)provider _updateActive];

        return;
      }
    }

    [(PKPGSVTransitionInterstitialController *)provider _setNeedsUpdateForCurrentProvider:a2];
    goto LABEL_19;
  }
}

id __76__PKPGSVTransitionInterstitialController__setNeedsUpdateForCurrentProvider___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = v3;
  if (*(a1 + 40) == 1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      v5 = MEMORY[0x1E695E0F0];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [*(*(a1 + 32) + 32) objectForKey:{v11, v23}];
          if (v12)
          {

LABEL_18:
            v5 = v6;
            goto LABEL_19;
          }

          v13 = [v11 layer];
          v14 = [v13 presentationLayer];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v13;
          }

          v17 = v16;

          [v17 opacity];
          v19 = v18;

          v20 = *(*(a1 + 32) + 16) * v19;
          if (v20 > 0.0)
          {
            goto LABEL_18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }

LABEL_19:
  }

  v21 = v5;

  return v21;
}

void __76__PKPGSVTransitionInterstitialController__setNeedsUpdateForCurrentProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v5 = a3;
  v6 = [v32 count];
  v7 = [v5 count];
  v8 = v7;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  v11 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v13 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  if (v6 >= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v6;
  }

  if (v15)
  {
    v16 = 0;
    v17 = *MEMORY[0x1E695F060];
    v18 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      v19 = [v32 objectAtIndexedSubscript:v16];
      v20 = [v5 objectAtIndexedSubscript:v16];
      v21 = [*(*(a1 + 32) + 32) objectForKey:v20];
      if (!v21)
      {
        v21 = [[PKPGSVTransitionInterstitialItem alloc] initWithView:v20];
        [*(*(a1 + 32) + 32) setObject:v21 forKey:v20];
      }

      if (*(a1 + 40) == 1)
      {
        v17 = [(PKPGSVTransitionInterstitialView *)v19 updateCurrentItem:v21 withDefaultSize:v17 containerAlpha:v18, *(*(a1 + 32) + 16)];
        v18 = v22;
        v11 = [(PKPGSVTransitionInterstitialView *)v19 resolveIndeterminatePositionWithPriorItemFrame:v11 animated:v12, v13, v14];
        v12 = v23;
        v13 = v24;
        v14 = v25;
      }

      else if (v19)
      {
        [(PKPGSVTransitionInterstitialView *)v19 _setPreviousItem:v21 withDefaultSize:0 force:1 animated:v9, v10];
      }

      ++v16;
    }

    while (v15 != v16);
  }

  else
  {
    v18 = *(MEMORY[0x1E695F060] + 8);
    v17 = *MEMORY[0x1E695F060];
  }

  if (v8 < v6)
  {
    do
    {
      v26 = [v32 objectAtIndexedSubscript:v15];
      v27 = v26;
      if (*(a1 + 40) == 1)
      {
        v17 = [(PKPGSVTransitionInterstitialView *)v26 updateCurrentItem:v17 withDefaultSize:v18 containerAlpha:*(*(a1 + 32) + 16)];
        v18 = v28;
        v11 = [(PKPGSVTransitionInterstitialView *)v27 resolveIndeterminatePositionWithPriorItemFrame:v11 animated:v12, v13, v14];
        v12 = v29;
        v13 = v30;
        v14 = v31;
      }

      else if (v26)
      {
        [(PKPGSVTransitionInterstitialView *)v26 _setPreviousItem:0 withDefaultSize:1 force:v9 animated:v10];
      }

      ++v15;
    }

    while (v6 != v15);
  }
}

- (BOOL)isInView:(id)view
{
  v3 = 0;
  if (view && !self->_invalidated)
  {
    viewCopy = view;
    WeakRetained = objc_loadWeakRetained(&self->_container);
    v3 = WeakRetained == viewCopy;
  }

  return v3;
}

- (void)transferToView:(id)view withDeactivationHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  if (viewCopy)
  {
    v8 = handlerCopy;
    if (!self->_invalidated)
    {
      objc_storeWeak(&self->_container, viewCopy);
      v9 = _Block_copy(v8);
      deactivation = self->_deactivation;
      self->_deactivation = v9;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __81__PKPGSVTransitionInterstitialController_transferToView_withDeactivationHandler___block_invoke;
      aBlock[3] = &unk_1E8014878;
      v13 = viewCopy;
      v11 = _Block_copy(aBlock);
      self->_deferUpdateActive = 1;
      v11[2](v11, self->_leadingInterstitials);
      v11[2](v11, self->_trailingInterstitials);
      [(PKPGSVTransitionInterstitialController *)self _beginTimeout];
      self->_deferUpdateActive = 0;
      [(PKPGSVTransitionInterstitialController *)self _updateActive];
    }
  }

  else
  {
    __break(1u);
  }
}

void __81__PKPGSVTransitionInterstitialController_transferToView_withDeactivationHandler___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = v9;
        if (v8)
        {
          if (!v9 || v8[410] == 1)
          {
            __break(1u);
          }

          v8[410] = 1;
          v11 = [v8 superview];
          v12 = v11;
          if (v11)
          {
            if (v11 != v10 && (v8[411] & 1) != 0)
            {
              [v8 bounds];
              [v10 convertRect:v8 fromView:?];
              v14 = v13;
              v16 = v15;
              v18 = v17;
              v20 = v19;
              [v10 addSubview:v8];
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = __51__PKPGSVTransitionInterstitialView_transferToView___block_invoke;
              v25[3] = &unk_1E8012160;
              v25[4] = v8;
              v25[5] = v14;
              v25[6] = v16;
              v25[7] = v18;
              v25[8] = v20;
              [MEMORY[0x1E69DD250] performWithoutAnimation:v25];
            }
          }

          else
          {
            [v10 addSubview:v8];
            v8[411] = 0;
          }

          v8[410] = 0;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }
}

- (void)pushProvider:(id)provider withContainerAlpha:(double)alpha context:(void *)context
{
  providerCopy = provider;
  if (self->_updatingCurrentProvider || self->_updatingPreviousProvider || self->_currentProviderDirty || self->_previousProviderDirty)
  {
    __break(1u);
  }

  else
  {
    v9 = providerCopy;
    if (!self->_invalidated)
    {
      timeout = self->_timeout;
      if (timeout)
      {
        dispatch_source_cancel(timeout);
        v11 = self->_timeout;
        self->_timeout = 0;
      }

      self->_alpha = alpha;
      self->_context = context;
      WeakRetained = objc_loadWeakRetained(&self->_currentProvider);
      objc_storeWeak(&self->_previousProvider, WeakRetained);

      self->_currentProviderExisted = v9 != 0;
      objc_storeWeak(&self->_currentProvider, v9);
      [(PKPGSVTransitionInterstitialController *)self _updateBindings];
      self->_updatingCurrentProvider = 1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __82__PKPGSVTransitionInterstitialController_pushProvider_withContainerAlpha_context___block_invoke;
      aBlock[3] = &unk_1E8023B60;
      aBlock[4] = self;
      *&aBlock[5] = alpha;
      v13 = _Block_copy(aBlock);
      if (v9)
      {
        v14 = [v9 leadingViewsForInterstitialController:self];
        v15 = v13[2](v13, v14);

        v16 = [v9 trailingViewsForInterstitialController:self];
        v17 = v13[2](v13, v16);
      }

      else
      {
        v17 = MEMORY[0x1E695E0F0];
        v15 = MEMORY[0x1E695E0F0];
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __82__PKPGSVTransitionInterstitialController_pushProvider_withContainerAlpha_context___block_invoke_2;
      v20[3] = &unk_1E8023B88;
      v20[4] = self;
      *&v20[5] = alpha;
      v18 = _Block_copy(v20);
      self->_deferUpdateActive = 1;
      -[PKPGSVTransitionInterstitialController _createPlaceholderInterstitialsIn:forCount:push:](self, self->_leadingInterstitials, [v15 count], 1);
      -[PKPGSVTransitionInterstitialController _createPlaceholderInterstitialsIn:forCount:push:](self, self->_trailingInterstitials, [v17 count], 1);
      v18[2](v18, self->_leadingInterstitials, v15);
      v18[2](v18, self->_trailingInterstitials, v17);
      self->_updatingCurrentProvider = 0;
      if (self->_currentProviderDirty)
      {
        v19 = objc_loadWeakRetained(&self->_currentProvider);
        if (v19)
        {
          [(PKPGSVTransitionInterstitialController *)self setNeedsUpdateForProvider:v19];
        }

        else
        {
          self->_currentProviderDirty = 0;
        }
      }

      self->_deferUpdateActive = 0;
      [(PKPGSVTransitionInterstitialController *)self _updateActive];
    }
  }
}

id __82__PKPGSVTransitionInterstitialController_pushProvider_withContainerAlpha_context___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    __break(1u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = MEMORY[0x1E695E0F0];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [*(*(a1 + 32) + 32) objectForKey:{v10, v22}];
        if (v11)
        {

LABEL_17:
          v8 = v4;
          goto LABEL_18;
        }

        v12 = [v10 layer];
        v13 = [v12 presentationLayer];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v12;
        }

        v16 = v15;

        [v16 opacity];
        v18 = v17;

        v19 = *(a1 + 40) * v18;
        if (v19 > 0.0)
        {
          goto LABEL_17;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

LABEL_18:

  v20 = v8;
  return v20;
}

void __82__PKPGSVTransitionInterstitialController_pushProvider_withContainerAlpha_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  v6 = [v29 count];
  v7 = [v5 count];
  v8 = v7;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  v11 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v13 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  if (v6 >= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v6;
  }

  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v17 = [v29 objectAtIndexedSubscript:i];
      v18 = [v5 objectAtIndexedSubscript:i];
      v19 = [*(*(a1 + 32) + 32) objectForKey:v18];
      if (!v19)
      {
        v19 = [[PKPGSVTransitionInterstitialItem alloc] initWithView:v18];
        [*(*(a1 + 32) + 32) setObject:v19 forKey:v18];
      }

      v9 = [(PKPGSVTransitionInterstitialView *)v17 pushItem:v19 withDefaultSize:v9 containerAlpha:v10, *(a1 + 40)];
      v10 = v20;
      v11 = [(PKPGSVTransitionInterstitialView *)v17 resolveIndeterminatePositionWithPriorItemFrame:v11 animated:v12, v13, v14];
      v12 = v21;
      v13 = v22;
      v14 = v23;
    }
  }

  if (v8 < v6)
  {
    do
    {
      v24 = [v29 objectAtIndexedSubscript:v15];
      v9 = [(PKPGSVTransitionInterstitialView *)v24 pushItem:v9 withDefaultSize:v10 containerAlpha:*(a1 + 40)];
      v10 = v25;
      v11 = [(PKPGSVTransitionInterstitialView *)v24 resolveIndeterminatePositionWithPriorItemFrame:v11 animated:v12, v13, v14];
      v12 = v26;
      v13 = v27;
      v14 = v28;

      ++v15;
    }

    while (v6 != v15);
  }
}

- (BOOL)isCurrentProvider:(id)provider
{
  if (provider)
  {
    providerCopy = provider;
    WeakRetained = objc_loadWeakRetained(&self->_currentProvider);
    v6 = WeakRetained == providerCopy;
  }

  else
  {
    return !self->_currentProviderExisted;
  }

  return v6;
}

- (void)updateCurrentProvider:(id)provider withContainerAlpha:(double)alpha
{
  providerCopy = provider;
  if (self->_updatingCurrentProvider || self->_currentProviderDirty)
  {
    __break(1u);
  }

  else
  {
    v7 = providerCopy;
    if (!self->_invalidated)
    {
      self->_alpha = alpha;
      self->_currentProviderExisted = providerCopy != 0;
      v8 = providerCopy;
      objc_storeWeak(&self->_currentProvider, providerCopy);
      [(PKPGSVTransitionInterstitialController *)self _updateBindings];
      [(PKPGSVTransitionInterstitialController *)self _setNeedsUpdateForCurrentProvider:?];
      v7 = v8;
    }
  }
}

- (void)updateExistingViewsForCurrentProviderAnimated:(BOOL)animated withContainerAlpha:(double)alpha
{
  if (self->_updatingCurrentProvider || self->_currentProviderDirty)
  {
    self->_currentProviderDirty = 1;
  }

  else if (!self->_invalidated)
  {
    self->_alpha = alpha;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __107__PKPGSVTransitionInterstitialController_updateExistingViewsForCurrentProviderAnimated_withContainerAlpha___block_invoke;
    v6[3] = &unk_1E8023BB0;
    animatedCopy = animated;
    v6[4] = self;
    v5 = _Block_copy(v6);
    v5[2](v5, self->_leadingInterstitials);
    v5[2](v5, self->_trailingInterstitials);
  }
}

void __107__PKPGSVTransitionInterstitialController_updateExistingViewsForCurrentProviderAnimated_withContainerAlpha___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v9 = *(MEMORY[0x1E695F050] + 24);
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (v12)
        {
          v13 = *(*(a1 + 32) + 16);
          [(PKPGSVTransitionInterstitialView *)*(*(&v17 + 1) + 8 * v11) _updatePositionAnimated:?];
          [(PKPGSVTransitionInterstitialView *)v12 _setContainerAlpha:v13 animated:?];
        }

        v6 = [(PKPGSVTransitionInterstitialView *)v12 resolveIndeterminatePositionWithPriorItemFrame:v6 animated:v7, v8, v9];
        v7 = v14;
        v8 = v15;
        v9 = v16;
        ++v11;
      }

      while (v5 != v11);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

@end