@interface SBSystemAperturePresentableManager
- (BOOL)_takeProcessAssertionForElement:(id)a3;
- (BOOL)willInterceptPresentable:(id)a3 userInfo:(id)a4;
- (SBSystemApertureController)elementRegistrar;
- (SBSystemAperturePresentableManager)initWithElementRegistrar:(id)a3;
- (id)_elementForPresentableCreatingIfNecessary:(id)a3 elementGenerator:(id)a4;
- (id)_existingAssertionForElement:(id)a3;
- (id)_existingElementForPresentableWithIdentification:(id)a3;
- (id)_existingPresentableWithIdentification:(id)a3;
- (id)_existingPresentablesWithIdentification:(id)a3;
- (id)_presentableElementForElementLayoutSpecifier:(id)a3;
- (id)revocationRequestedForPresentablesWithIdentification:(id)a3 reason:(id)a4;
- (void)_invalidateElement:(id)a3 withReason:(id)a4;
- (void)_noteElementDidAppear:(id)a3;
- (void)_noteElementDidDisappear:(id)a3 reason:(id)a4;
- (void)_noteElementDidInvalidate:(id)a3 reason:(id)a4;
- (void)_noteElementWillDisappear:(id)a3 reason:(id)a4;
- (void)_noteElementWillNotAppearAsBanner:(id)a3 reason:(id)a4;
- (void)_registerElement:(id)a3;
- (void)_removeAssertionForElement:(id)a3;
- (void)_removeElementForPresentableWithIdentification:(id)a3;
- (void)_removePresentableForElement:(id)a3;
- (void)_sync_registerAssertion:(id)a3 forElement:(id)a4;
- (void)elementLayoutSpecifier:(id)a3 layoutModeDidChange:(int64_t)a4 reason:(int64_t)a5;
@end

@implementation SBSystemAperturePresentableManager

- (SBSystemAperturePresentableManager)initWithElementRegistrar:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBSystemAperturePresentableManager;
  v5 = [(SBSystemAperturePresentableManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_elementRegistrar, v4);
  }

  return v6;
}

- (BOOL)willInterceptPresentable:(id)a3 userInfo:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 providesTemplateContent] && objc_msgSend(v6, "presentableBehavior") == 1)
  {
    v8 = SBLogSystemApertureNotice();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = BNEffectivePresentableDescription();
      *buf = 138543362;
      v42 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Intercepting template notice presentable: %{public}@", buf, 0xCu);
    }

    v10 = v6;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke;
    v39[3] = &unk_2783AD500;
    v40 = v10;
    v11 = [(SBSystemAperturePresentableManager *)self _elementForPresentableCreatingIfNecessary:v10 elementGenerator:v39];
    [(SBSystemAperturePresentableManager *)self _registerElement:v11];

    v12 = v40;
    goto LABEL_29;
  }

  v13 = [v7 objectForKey:*MEMORY[0x277D68098]];
  v14 = objc_opt_class();
  v15 = v13;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v17 BOOLValue];
  if (v18)
  {
    v19 = objc_opt_class();
    v20 = v6;
    if (v19)
    {
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v12 = v21;

    v22 = v12 != 0;
    if (!v12)
    {
      goto LABEL_30;
    }

    v23 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = BNEffectivePresentableDescription();
      *buf = 138543362;
      v42 = v24;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "Intercepting hosted presentable: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_12;
    v34[3] = &unk_2783AD578;
    v35 = v20;
    v12 = v12;
    v36 = v12;
    v37 = self;
    objc_copyWeak(&v38, buf);
    v25 = [(SBSystemAperturePresentableManager *)self _elementForPresentableCreatingIfNecessary:v12 elementGenerator:v34];
    if (![v25 isActivated] || (objc_msgSend(v25, "scene"), v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_2_17;
      v32[3] = &unk_2783AD5A0;
      objc_copyWeak(&v33, buf);
      [v25 setSceneInvalidationHandler:v32];
      [v25 setPresentable:v12];
      if ([v25 isActivated])
      {
        v28 = [v12 scene];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_4;
        v30[3] = &unk_2783AD5C8;
        v30[4] = self;
        v31 = v25;
        [v31 updateWithConnectedScene:v28 configuration:0 elementAssertionAcquisitionHandler:v30];
      }

      else
      {
        [v25 activate];
      }

      objc_destroyWeak(&v33);
    }

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
LABEL_29:
    v22 = 1;
LABEL_30:

    goto LABEL_31;
  }

  v22 = 0;
LABEL_31:

  return v22;
}

SBNoticePresentableElement *__72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke(uint64_t a1)
{
  v1 = [[SBNoticePresentableElement alloc] initWithTemplatePresentable:*(a1 + 32)];

  return v1;
}

SBSystemApertureSceneElement *__72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_12(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_2;
  v12[3] = &unk_2783AD528;
  v13 = *(a1 + 32);
  v2 = [SBSystemApertureSceneElement activePlaceholderElementPassingTest:v12];
  if (v2)
  {
    v3 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v2;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Found existing placeholder for intercepted presentable: %{public}@", buf, 0xCu);
    }

    v4 = v2;
  }

  else
  {
    v5 = [*(a1 + 40) scene];
    v6 = [SBSystemApertureSceneElement alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 32));
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_15;
    v9[3] = &unk_2783AD550;
    objc_copyWeak(&v11, (a1 + 56));
    v10 = *(a1 + 32);
    v4 = [(SBSystemApertureSceneElement *)v6 initWithScene:v5 statusBarBackgroundActivitiesSuppresser:WeakRetained readyForPresentationHandler:v9];

    objc_destroyWeak(&v11);
  }

  return v4;
}

uint64_t __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) requesterIdentifier];
  v5 = [v3 clientIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) requestIdentifier];
    v7 = [v3 elementIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_15(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v7 = [WeakRetained _existingElementForPresentableWithIdentification:*(a1 + 32)];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 _existingPresentableWithIdentification:*(a1 + 32)];

        if (v9)
        {
          [v6 _registerElement:v10];
        }
      }
    }
  }
}

void __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_2_17(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) isActivated] && (objc_msgSend(*(a1 + 32), "isDeactivating") & 1) == 0)
  {
    [WeakRetained _invalidateElement:*(a1 + 32) withReason:@"Presentable client scene unexpectedly invalidated."];
  }
}

void __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) _sync_registerAssertion:v4 forElement:*(a1 + 40)];
  objc_sync_exit(v3);

  [*(a1 + 32) elementLayoutSpecifier:*(a1 + 40) layoutModeDidChange:0 reason:0];
}

- (id)revocationRequestedForPresentablesWithIdentification:(id)a3 reason:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v6 = a4;
  v7 = SBLogSystemApertureNotice();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v19;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Asked to revoke presentable with identification: %{public}@", buf, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  [(SBSystemAperturePresentableManager *)v8 _existingPresentablesWithIdentification:v19];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [(SBSystemAperturePresentableManager *)v8 _existingElementForPresentableWithIdentification:v14];
        if (v15)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"revocation requested for presentable (%@)", v6];
          [(SBSystemAperturePresentableManager *)v8 _invalidateElement:v15 withReason:v16];

          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v10 addObject:v14];
        }

        else
        {
          v17 = SBLogSystemApertureNotice();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            BNEffectivePresentableDescription();
            objc_claimAutoreleasedReturnValue();
            [SBSystemAperturePresentableManager revocationRequestedForPresentablesWithIdentification:reason:];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v8);

  return v10;
}

- (void)elementLayoutSpecifier:(id)a3 layoutModeDidChange:(int64_t)a4 reason:(int64_t)a5
{
  v9 = a3;
  v7 = [(SBSystemAperturePresentableManager *)self _presentableElementForElementLayoutSpecifier:?];
  if (v7)
  {
    v8 = [v9 layoutMode];
    if (a4 <= 0 && v8 >= 1)
    {
      [(SBSystemAperturePresentableManager *)self _noteElementDidAppear:v7];
    }
  }
}

- (id)_existingPresentablesWithIdentification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5->_presentablesToElements;
    v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (BNIsPresentableIdentifiedByIdentification())
          {
            [v6 addObject:{v11, v13}];
          }
        }

        v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_existingPresentableWithIdentification:(id)a3
{
  if (a3)
  {
    v3 = [(SBSystemAperturePresentableManager *)self _existingPresentablesWithIdentification:?];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_existingElementForPresentableWithIdentification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(SBSystemAperturePresentableManager *)v5 _existingPresentableWithIdentification:v4];
    if (v6)
    {
      v7 = [(NSMapTable *)v5->_presentablesToElements objectForKey:v6];
    }

    else
    {
      v7 = 0;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_elementForPresentableCreatingIfNecessary:(id)a3 elementGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(SBSystemAperturePresentableManager *)v8 _existingElementForPresentableWithIdentification:v6];
    if (!v9)
    {
      v9 = v7[2](v7);
      presentablesToElements = v8->_presentablesToElements;
      if (!presentablesToElements)
      {
        v11 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v12 = v8->_presentablesToElements;
        v8->_presentablesToElements = v11;

        presentablesToElements = v8->_presentablesToElements;
      }

      [(NSMapTable *)presentablesToElements setObject:v9 forKey:v6];
    }

    objc_sync_exit(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_removeElementForPresentableWithIdentification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(SBSystemAperturePresentableManager *)v5 _existingPresentableWithIdentification:v7];
    if (v6)
    {
      [(NSMapTable *)v5->_presentablesToElements removeObjectForKey:v6];
    }

    objc_sync_exit(v5);
    v4 = v7;
  }
}

- (id)_existingAssertionForElement:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)v5->_elementsToAssertions objectForKey:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_registerElement:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(SBSystemAperturePresentableManager *)v5 _existingAssertionForElement:v4];
    if (!v6)
    {
      v7 = SBLogSystemApertureNotice();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x223D6CED0](v4);
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Registering element: %{public}@", &v11, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&v5->_elementRegistrar);
      v6 = [WeakRetained registerElement:v4];

      if (v6)
      {
        [(SBSystemAperturePresentableManager *)v5 _sync_registerAssertion:v6 forElement:v4];
      }

      else
      {
        v10 = SBLogSystemApertureNotice();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          MEMORY[0x223D6CED0](v4);
          objc_claimAutoreleasedReturnValue();
          [SBSystemAperturePresentableManager _registerElement:];
        }

        v6 = 0;
      }
    }

    objc_sync_exit(v5);
  }
}

- (void)_sync_registerAssertion:(id)a3 forElement:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogSystemApertureNotice();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Registering assertion %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SBSystemAperturePresentableManager__sync_registerAssertion_forElement___block_invoke;
  v12[3] = &unk_2783AD5F0;
  objc_copyWeak(&v13, buf);
  objc_copyWeak(&v14, &location);
  [v6 addInvalidationBlock:v12];
  elementsToAssertions = self->_elementsToAssertions;
  if (!elementsToAssertions)
  {
    v10 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v11 = self->_elementsToAssertions;
    self->_elementsToAssertions = v10;

    elementsToAssertions = self->_elementsToAssertions;
  }

  [(NSMapTable *)elementsToAssertions setObject:v6 forKey:v7];
  if (objc_opt_respondsToSelector())
  {
    [v7 addElementLayoutSpecifierObserver:self];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __73__SBSystemAperturePresentableManager__sync_registerAssertion_forElement___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _noteElementDidInvalidate:v5 reason:v4];
}

- (void)_removeAssertionForElement:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(SBSystemAperturePresentableManager *)v6 _existingAssertionForElement:v5];
    v8 = v7;
    if (v7)
    {
      if ([v7 isValid])
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        v11 = MEMORY[0x223D6CED0](v5);
        [v10 handleFailureInMethod:a2 object:v6 file:@"SBSystemAperturePresentableManager.m" lineNumber:272 description:{@"Removing a valid assertion: element: %@; assertion: %@", v11, v8}];
      }

      [(NSMapTable *)v6->_elementsToAssertions removeObjectForKey:v5];
    }

    else
    {
      v9 = SBLogSystemApertureNotice();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        MEMORY[0x223D6CED0](v5);
        objc_claimAutoreleasedReturnValue();
        [SBSystemAperturePresentableManager _removeAssertionForElement:];
      }
    }

    objc_sync_exit(v6);
  }
}

- (void)_removePresentableForElement:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5->_presentablesToElements;
    v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [(NSMapTable *)v5->_presentablesToElements objectForKey:v10, v15];
        v12 = v11 == v4;

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v13 = v10;

      if (!v13)
      {
        goto LABEL_13;
      }

      [(NSMapTable *)v5->_presentablesToElements removeObjectForKey:v13];
    }

    else
    {
LABEL_10:

LABEL_13:
      v14 = SBLogSystemApertureNotice();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        MEMORY[0x223D6CED0](v4);
        objc_claimAutoreleasedReturnValue();
        [SBSystemAperturePresentableManager _removePresentableForElement:];
      }

      v13 = 0;
    }

    objc_sync_exit(v5);
  }
}

- (void)_invalidateElement:(id)a3 withReason:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = SBLogSystemApertureNotice();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x223D6CED0](v7);
    *buf = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Asked to invalidate element with reason: element: %{public}@; reason: %{public}@", buf, 0x16u);
  }

  if (v7)
  {
    if (!v8)
    {
      [SBSystemAperturePresentableManager _invalidateElement:a2 withReason:self];
    }

    v11 = self;
    objc_sync_enter(v11);
    v12 = [(SBSystemAperturePresentableManager *)v11 _existingAssertionForElement:v7];
    v13 = objc_opt_class();
    v14 = v7;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if ([v16 isActivated] && (objc_msgSend(v16, "isDeactivating") & 1) == 0)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __68__SBSystemAperturePresentableManager__invalidateElement_withReason___block_invoke;
      v20[3] = &unk_2783AD618;
      v20[4] = v11;
      v21 = v14;
      v22 = v8;
      [v16 deactivateWhenRemovedWithHandler:v20];
    }

    else if (!v16)
    {
      [(SBSystemAperturePresentableManager *)v11 _removePresentableForElement:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 removeElementLayoutSpecifierObserver:v11];
    }

    if ([v12 isValid])
    {
      [v12 invalidateWithReason:v8];
      [(SBSystemAperturePresentableManager *)v11 _removeAssertionForElement:v14];
    }

    else
    {
      v17 = SBLogSystemApertureNotice();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x223D6CED0](v14);
        *buf = 138543362;
        v24 = v18;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "There was no assertion for element: %{public}@", buf, 0xCu);
      }

      v19 = [v14 presentable];
      [v19 presentableWillNotAppearAsBanner:v19 withReason:@"revoked before ever becoming visible"];
    }

    objc_sync_exit(v11);
  }
}

uint64_t __68__SBSystemAperturePresentableManager__invalidateElement_withReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _noteElementWillDisappear:*(a1 + 40) reason:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _noteElementDidDisappear:v3 reason:v4];
}

- (id)_presentableElementForElementLayoutSpecifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_elementsToAssertions;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v9 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_noteElementDidAppear:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = self;
    objc_sync_enter(v5);
    if (![(NSHashTable *)v5->_elementsThatDidAppear containsObject:v10])
    {
      v6 = [v10 presentable];
      if ([(SBSystemAperturePresentableManager *)v5 _takeProcessAssertionForElement:v10])
      {
        [v6 presentableWillAppearAsBanner:v6];
        [v6 presentableDidAppearAsBanner:v6];
      }
    }

    elementsThatDidAppear = v5->_elementsThatDidAppear;
    if (!elementsThatDidAppear)
    {
      v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v9 = v5->_elementsThatDidAppear;
      v5->_elementsThatDidAppear = v8;

      elementsThatDidAppear = v5->_elementsThatDidAppear;
    }

    [(NSHashTable *)elementsThatDidAppear addObject:v10];
    objc_sync_exit(v5);

    v4 = v10;
  }
}

- (void)_noteElementDidInvalidate:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = self;
    objc_sync_enter(v8);
    if ([(NSHashTable *)v8->_elementsThatDidAppear containsObject:v6])
    {
      [(SBSystemAperturePresentableManager *)v8 _noteElementWillDisappear:v6 reason:v7];
      v9 = objc_opt_class();
      v10 = v6;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if ([v12 isActivated] && (objc_msgSend(v12, "isDeactivating") & 1) == 0)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __71__SBSystemAperturePresentableManager__noteElementDidInvalidate_reason___block_invoke;
        v13[3] = &unk_2783AD618;
        v13[4] = v8;
        v14 = v10;
        v15 = v7;
        [v12 deactivateWhenRemovedWithHandler:v13];
      }

      else if (([v12 isActivated] & 1) == 0)
      {
        [(SBSystemAperturePresentableManager *)v8 _noteElementDidDisappear:v10 reason:v7];
      }
    }

    else
    {
      [(SBSystemAperturePresentableManager *)v8 _noteElementWillNotAppearAsBanner:v6 reason:@"revoked before ever becoming visible"];
    }

    objc_sync_exit(v8);
  }
}

- (void)_noteElementWillNotAppearAsBanner:(id)a3 reason:(id)a4
{
  v5 = a3;
  v6 = [v5 presentable];
  LODWORD(self) = [(SBSystemAperturePresentableManager *)self _takeProcessAssertionForElement:v5];

  if (self)
  {
    [v6 presentableWillNotAppearAsBanner:v6 withReason:@"revoked before ever becoming visible"];
  }
}

- (void)_noteElementWillDisappear:(id)a3 reason:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(NSHashTable *)self->_elementsThatDidAppear containsObject:v8])
  {
    v7 = [v8 presentable];
    if ([(SBSystemAperturePresentableManager *)self _takeProcessAssertionForElement:v8])
    {
      [v7 presentableWillDisappearAsBanner:v7 withReason:v6];
    }
  }
}

- (void)_noteElementDidDisappear:(id)a3 reason:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(NSHashTable *)self->_elementsThatDidAppear containsObject:v8])
  {
    v7 = [v8 presentable];
    if ([(SBSystemAperturePresentableManager *)self _takeProcessAssertionForElement:v8])
    {
      [v7 presentableDidDisappearAsBanner:v7 withReason:v6];
    }

    [(NSHashTable *)self->_elementsThatDidAppear removeObject:v8];
  }

  [(SBSystemAperturePresentableManager *)self _removePresentableForElement:v8];
}

- (BOOL)_takeProcessAssertionForElement:(id)a3
{
  v34[7] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 scene];
  v9 = [v8 clientProcess];
  v10 = [v9 pid];

  if (v10 < 2)
  {
    v21 = 0;
  }

  else
  {
    v25 = [MEMORY[0x277D47008] targetWithPid:v10];
    v11 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:1];
    v34[0] = v11;
    v12 = [MEMORY[0x277D46DF0] grantWithUserInteractivity];
    v34[1] = v12;
    v13 = [MEMORY[0x277D46EA8] grantWithForegroundPriority];
    v34[2] = v13;
    v14 = [MEMORY[0x277D46FC0] grantWithResistance:40];
    v34[3] = v14;
    v15 = [MEMORY[0x277D46E30] grant];
    v34[4] = v15;
    v16 = [MEMORY[0x277D46FD0] withReason:7];
    v34[5] = v16;
    v17 = [MEMORY[0x277D46E48] invalidateAfterInterval:1.0];
    v34[6] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:7];

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__10;
    v32 = __Block_byref_object_dispose__10;
    v33 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:@"SBSystemAperturePresentableManagerBannerKitCallbacks" target:v25 attributes:v18];
    v19 = v29[5];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __70__SBSystemAperturePresentableManager__takeProcessAssertionForElement___block_invoke;
    v27[3] = &unk_2783AD640;
    v27[4] = &v28;
    [v19 setInvalidationHandler:v27];
    v20 = v29[5];
    v26 = 0;
    LOBYTE(v12) = [v20 acquireWithError:&v26];
    v21 = v26;
    _Block_object_dispose(&v28, 8);

    if (v12)
    {
      v22 = 1;
      goto LABEL_13;
    }
  }

  v23 = SBLogSystemApertureNotice();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [(SBSystemAperturePresentableManager *)v5 _takeProcessAssertionForElement:v21, v23];
  }

  v22 = 0;
LABEL_13:

  return v22;
}

void __70__SBSystemAperturePresentableManager__takeProcessAssertionForElement___block_invoke(uint64_t a1)
{
  v2 = SBLogSystemApertureNotice();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__SBSystemAperturePresentableManager__takeProcessAssertionForElement___block_invoke_cold_1(a1, v2);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (SBSystemApertureController)elementRegistrar
{
  WeakRetained = objc_loadWeakRetained(&self->_elementRegistrar);

  return WeakRetained;
}

- (void)revocationRequestedForPresentablesWithIdentification:reason:.cold.1()
{
  OUTLINED_FUNCTION_0_11();
  *v1 = 138543362;
  *v3 = v2;
  _os_log_error_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_ERROR, "Failed to find element for presentable: %{public}@", v4, 0xCu);
}

- (void)_registerElement:.cold.1()
{
  OUTLINED_FUNCTION_0_11();
  *v1 = 138543362;
  *(v1 + 4) = v2;
  _os_log_error_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_ERROR, "Failed to obtain assertion when registering element: %{public}@", v4, 0xCu);
}

- (void)_removeAssertionForElement:.cold.1()
{
  OUTLINED_FUNCTION_0_11();
  *v1 = 138543362;
  *(v1 + 4) = v2;
  _os_log_debug_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEBUG, "No assertion to remove for element: %{public}@", v4, 0xCu);
}

- (void)_removePresentableForElement:.cold.1()
{
  OUTLINED_FUNCTION_0_11();
  *v1 = 138543362;
  *(v1 + 4) = v2;
  _os_log_error_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_ERROR, "Failed to find presentable for element: %{public}@", v4, 0xCu);
}

- (void)_invalidateElement:(uint64_t)a1 withReason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemAperturePresentableManager.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)_takeProcessAssertionForElement:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 presentable];
  v6 = BNEffectivePresentableDescription();
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "Failed to acquire assertion for presentable: %{public}@ error: %{public}@", &v7, 0x16u);
}

void __70__SBSystemAperturePresentableManager__takeProcessAssertionForElement___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Invalidated %@", &v3, 0xCu);
}

@end