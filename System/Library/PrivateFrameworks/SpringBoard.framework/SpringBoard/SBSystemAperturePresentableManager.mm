@interface SBSystemAperturePresentableManager
- (BOOL)_takeProcessAssertionForElement:(id)element;
- (BOOL)willInterceptPresentable:(id)presentable userInfo:(id)info;
- (SBSystemApertureController)elementRegistrar;
- (SBSystemAperturePresentableManager)initWithElementRegistrar:(id)registrar;
- (id)_elementForPresentableCreatingIfNecessary:(id)necessary elementGenerator:(id)generator;
- (id)_existingAssertionForElement:(id)element;
- (id)_existingElementForPresentableWithIdentification:(id)identification;
- (id)_existingPresentableWithIdentification:(id)identification;
- (id)_existingPresentablesWithIdentification:(id)identification;
- (id)_presentableElementForElementLayoutSpecifier:(id)specifier;
- (id)revocationRequestedForPresentablesWithIdentification:(id)identification reason:(id)reason;
- (void)_invalidateElement:(id)element withReason:(id)reason;
- (void)_noteElementDidAppear:(id)appear;
- (void)_noteElementDidDisappear:(id)disappear reason:(id)reason;
- (void)_noteElementDidInvalidate:(id)invalidate reason:(id)reason;
- (void)_noteElementWillDisappear:(id)disappear reason:(id)reason;
- (void)_noteElementWillNotAppearAsBanner:(id)banner reason:(id)reason;
- (void)_registerElement:(id)element;
- (void)_removeAssertionForElement:(id)element;
- (void)_removeElementForPresentableWithIdentification:(id)identification;
- (void)_removePresentableForElement:(id)element;
- (void)_sync_registerAssertion:(id)assertion forElement:(id)element;
- (void)elementLayoutSpecifier:(id)specifier layoutModeDidChange:(int64_t)change reason:(int64_t)reason;
@end

@implementation SBSystemAperturePresentableManager

- (SBSystemAperturePresentableManager)initWithElementRegistrar:(id)registrar
{
  registrarCopy = registrar;
  v8.receiver = self;
  v8.super_class = SBSystemAperturePresentableManager;
  v5 = [(SBSystemAperturePresentableManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_elementRegistrar, registrarCopy);
  }

  return v6;
}

- (BOOL)willInterceptPresentable:(id)presentable userInfo:(id)info
{
  v43 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  infoCopy = info;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [presentableCopy providesTemplateContent] && objc_msgSend(presentableCopy, "presentableBehavior") == 1)
  {
    v8 = SBLogSystemApertureNotice();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = BNEffectivePresentableDescription();
      *buf = 138543362;
      v42 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Intercepting template notice presentable: %{public}@", buf, 0xCu);
    }

    v10 = presentableCopy;
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

  v13 = [infoCopy objectForKey:*MEMORY[0x277D68098]];
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

  bOOLValue = [v17 BOOLValue];
  if (bOOLValue)
  {
    v19 = objc_opt_class();
    v20 = presentableCopy;
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
    selfCopy = self;
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
        scene = [v12 scene];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __72__SBSystemAperturePresentableManager_willInterceptPresentable_userInfo___block_invoke_4;
        v30[3] = &unk_2783AD5C8;
        v30[4] = self;
        v31 = v25;
        [v31 updateWithConnectedScene:scene configuration:0 elementAssertionAcquisitionHandler:v30];
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

- (id)revocationRequestedForPresentablesWithIdentification:(id)identification reason:(id)reason
{
  v27 = *MEMORY[0x277D85DE8];
  identificationCopy = identification;
  reasonCopy = reason;
  v7 = SBLogSystemApertureNotice();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = identificationCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Asked to revoke presentable with identification: %{public}@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SBSystemAperturePresentableManager *)selfCopy _existingPresentablesWithIdentification:identificationCopy];
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
        v15 = [(SBSystemAperturePresentableManager *)selfCopy _existingElementForPresentableWithIdentification:v14];
        if (v15)
        {
          reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"revocation requested for presentable (%@)", reasonCopy];
          [(SBSystemAperturePresentableManager *)selfCopy _invalidateElement:v15 withReason:reasonCopy];

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

  objc_sync_exit(selfCopy);

  return v10;
}

- (void)elementLayoutSpecifier:(id)specifier layoutModeDidChange:(int64_t)change reason:(int64_t)reason
{
  specifierCopy = specifier;
  v7 = [(SBSystemAperturePresentableManager *)self _presentableElementForElementLayoutSpecifier:?];
  if (v7)
  {
    layoutMode = [specifierCopy layoutMode];
    if (change <= 0 && layoutMode >= 1)
    {
      [(SBSystemAperturePresentableManager *)self _noteElementDidAppear:v7];
    }
  }
}

- (id)_existingPresentablesWithIdentification:(id)identification
{
  v18 = *MEMORY[0x277D85DE8];
  identificationCopy = identification;
  if (identificationCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = selfCopy->_presentablesToElements;
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

    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_existingPresentableWithIdentification:(id)identification
{
  if (identification)
  {
    v3 = [(SBSystemAperturePresentableManager *)self _existingPresentablesWithIdentification:?];
    firstObject = [v3 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_existingElementForPresentableWithIdentification:(id)identification
{
  identificationCopy = identification;
  if (identificationCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(SBSystemAperturePresentableManager *)selfCopy _existingPresentableWithIdentification:identificationCopy];
    if (v6)
    {
      v7 = [(NSMapTable *)selfCopy->_presentablesToElements objectForKey:v6];
    }

    else
    {
      v7 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_elementForPresentableCreatingIfNecessary:(id)necessary elementGenerator:(id)generator
{
  necessaryCopy = necessary;
  generatorCopy = generator;
  if (necessaryCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [(SBSystemAperturePresentableManager *)selfCopy _existingElementForPresentableWithIdentification:necessaryCopy];
    if (!v9)
    {
      v9 = generatorCopy[2](generatorCopy);
      presentablesToElements = selfCopy->_presentablesToElements;
      if (!presentablesToElements)
      {
        strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v12 = selfCopy->_presentablesToElements;
        selfCopy->_presentablesToElements = strongToStrongObjectsMapTable;

        presentablesToElements = selfCopy->_presentablesToElements;
      }

      [(NSMapTable *)presentablesToElements setObject:v9 forKey:necessaryCopy];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_removeElementForPresentableWithIdentification:(id)identification
{
  identificationCopy = identification;
  if (identificationCopy)
  {
    v7 = identificationCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(SBSystemAperturePresentableManager *)selfCopy _existingPresentableWithIdentification:v7];
    if (v6)
    {
      [(NSMapTable *)selfCopy->_presentablesToElements removeObjectForKey:v6];
    }

    objc_sync_exit(selfCopy);
    identificationCopy = v7;
  }
}

- (id)_existingAssertionForElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMapTable *)selfCopy->_elementsToAssertions objectForKey:elementCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_registerElement:(id)element
{
  v13 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  if (elementCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(SBSystemAperturePresentableManager *)selfCopy _existingAssertionForElement:elementCopy];
    if (!v6)
    {
      v7 = SBLogSystemApertureNotice();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x223D6CED0](elementCopy);
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Registering element: %{public}@", &v11, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&selfCopy->_elementRegistrar);
      v6 = [WeakRetained registerElement:elementCopy];

      if (v6)
      {
        [(SBSystemAperturePresentableManager *)selfCopy _sync_registerAssertion:v6 forElement:elementCopy];
      }

      else
      {
        v10 = SBLogSystemApertureNotice();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          MEMORY[0x223D6CED0](elementCopy);
          objc_claimAutoreleasedReturnValue();
          [SBSystemAperturePresentableManager _registerElement:];
        }

        v6 = 0;
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_sync_registerAssertion:(id)assertion forElement:(id)element
{
  v18 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  elementCopy = element;
  v8 = SBLogSystemApertureNotice();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = assertionCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Registering assertion %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, elementCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SBSystemAperturePresentableManager__sync_registerAssertion_forElement___block_invoke;
  v12[3] = &unk_2783AD5F0;
  objc_copyWeak(&v13, buf);
  objc_copyWeak(&v14, &location);
  [assertionCopy addInvalidationBlock:v12];
  elementsToAssertions = self->_elementsToAssertions;
  if (!elementsToAssertions)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v11 = self->_elementsToAssertions;
    self->_elementsToAssertions = weakToStrongObjectsMapTable;

    elementsToAssertions = self->_elementsToAssertions;
  }

  [(NSMapTable *)elementsToAssertions setObject:assertionCopy forKey:elementCopy];
  if (objc_opt_respondsToSelector())
  {
    [elementCopy addElementLayoutSpecifierObserver:self];
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

- (void)_removeAssertionForElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [(SBSystemAperturePresentableManager *)selfCopy _existingAssertionForElement:elementCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 isValid])
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v11 = MEMORY[0x223D6CED0](elementCopy);
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"SBSystemAperturePresentableManager.m" lineNumber:272 description:{@"Removing a valid assertion: element: %@; assertion: %@", v11, v8}];
      }

      [(NSMapTable *)selfCopy->_elementsToAssertions removeObjectForKey:elementCopy];
    }

    else
    {
      v9 = SBLogSystemApertureNotice();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        MEMORY[0x223D6CED0](elementCopy);
        objc_claimAutoreleasedReturnValue();
        [SBSystemAperturePresentableManager _removeAssertionForElement:];
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_removePresentableForElement:(id)element
{
  v20 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  if (elementCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = selfCopy->_presentablesToElements;
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
        v11 = [(NSMapTable *)selfCopy->_presentablesToElements objectForKey:v10, v15];
        v12 = v11 == elementCopy;

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

      [(NSMapTable *)selfCopy->_presentablesToElements removeObjectForKey:v13];
    }

    else
    {
LABEL_10:

LABEL_13:
      v14 = SBLogSystemApertureNotice();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        MEMORY[0x223D6CED0](elementCopy);
        objc_claimAutoreleasedReturnValue();
        [SBSystemAperturePresentableManager _removePresentableForElement:];
      }

      v13 = 0;
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_invalidateElement:(id)element withReason:(id)reason
{
  v27 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  reasonCopy = reason;
  v9 = SBLogSystemApertureNotice();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x223D6CED0](elementCopy);
    *buf = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Asked to invalidate element with reason: element: %{public}@; reason: %{public}@", buf, 0x16u);
  }

  if (elementCopy)
  {
    if (!reasonCopy)
    {
      [SBSystemAperturePresentableManager _invalidateElement:a2 withReason:self];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [(SBSystemAperturePresentableManager *)selfCopy _existingAssertionForElement:elementCopy];
    v13 = objc_opt_class();
    v14 = elementCopy;
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
      v20[4] = selfCopy;
      v21 = v14;
      v22 = reasonCopy;
      [v16 deactivateWhenRemovedWithHandler:v20];
    }

    else if (!v16)
    {
      [(SBSystemAperturePresentableManager *)selfCopy _removePresentableForElement:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 removeElementLayoutSpecifierObserver:selfCopy];
    }

    if ([v12 isValid])
    {
      [v12 invalidateWithReason:reasonCopy];
      [(SBSystemAperturePresentableManager *)selfCopy _removeAssertionForElement:v14];
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

      presentable = [v14 presentable];
      [presentable presentableWillNotAppearAsBanner:presentable withReason:@"revoked before ever becoming visible"];
    }

    objc_sync_exit(selfCopy);
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

- (id)_presentableElementForElementLayoutSpecifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
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
        if (v9 == specifierCopy)
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

- (void)_noteElementDidAppear:(id)appear
{
  appearCopy = appear;
  if (appearCopy)
  {
    v10 = appearCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (![(NSHashTable *)selfCopy->_elementsThatDidAppear containsObject:v10])
    {
      presentable = [v10 presentable];
      if ([(SBSystemAperturePresentableManager *)selfCopy _takeProcessAssertionForElement:v10])
      {
        [presentable presentableWillAppearAsBanner:presentable];
        [presentable presentableDidAppearAsBanner:presentable];
      }
    }

    elementsThatDidAppear = selfCopy->_elementsThatDidAppear;
    if (!elementsThatDidAppear)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v9 = selfCopy->_elementsThatDidAppear;
      selfCopy->_elementsThatDidAppear = weakObjectsHashTable;

      elementsThatDidAppear = selfCopy->_elementsThatDidAppear;
    }

    [(NSHashTable *)elementsThatDidAppear addObject:v10];
    objc_sync_exit(selfCopy);

    appearCopy = v10;
  }
}

- (void)_noteElementDidInvalidate:(id)invalidate reason:(id)reason
{
  invalidateCopy = invalidate;
  reasonCopy = reason;
  if (invalidateCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(NSHashTable *)selfCopy->_elementsThatDidAppear containsObject:invalidateCopy])
    {
      [(SBSystemAperturePresentableManager *)selfCopy _noteElementWillDisappear:invalidateCopy reason:reasonCopy];
      v9 = objc_opt_class();
      v10 = invalidateCopy;
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
        v13[4] = selfCopy;
        v14 = v10;
        v15 = reasonCopy;
        [v12 deactivateWhenRemovedWithHandler:v13];
      }

      else if (([v12 isActivated] & 1) == 0)
      {
        [(SBSystemAperturePresentableManager *)selfCopy _noteElementDidDisappear:v10 reason:reasonCopy];
      }
    }

    else
    {
      [(SBSystemAperturePresentableManager *)selfCopy _noteElementWillNotAppearAsBanner:invalidateCopy reason:@"revoked before ever becoming visible"];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_noteElementWillNotAppearAsBanner:(id)banner reason:(id)reason
{
  bannerCopy = banner;
  presentable = [bannerCopy presentable];
  LODWORD(self) = [(SBSystemAperturePresentableManager *)self _takeProcessAssertionForElement:bannerCopy];

  if (self)
  {
    [presentable presentableWillNotAppearAsBanner:presentable withReason:@"revoked before ever becoming visible"];
  }
}

- (void)_noteElementWillDisappear:(id)disappear reason:(id)reason
{
  disappearCopy = disappear;
  reasonCopy = reason;
  if ([(NSHashTable *)self->_elementsThatDidAppear containsObject:disappearCopy])
  {
    presentable = [disappearCopy presentable];
    if ([(SBSystemAperturePresentableManager *)self _takeProcessAssertionForElement:disappearCopy])
    {
      [presentable presentableWillDisappearAsBanner:presentable withReason:reasonCopy];
    }
  }
}

- (void)_noteElementDidDisappear:(id)disappear reason:(id)reason
{
  disappearCopy = disappear;
  reasonCopy = reason;
  if ([(NSHashTable *)self->_elementsThatDidAppear containsObject:disappearCopy])
  {
    presentable = [disappearCopy presentable];
    if ([(SBSystemAperturePresentableManager *)self _takeProcessAssertionForElement:disappearCopy])
    {
      [presentable presentableDidDisappearAsBanner:presentable withReason:reasonCopy];
    }

    [(NSHashTable *)self->_elementsThatDidAppear removeObject:disappearCopy];
  }

  [(SBSystemAperturePresentableManager *)self _removePresentableForElement:disappearCopy];
}

- (BOOL)_takeProcessAssertionForElement:(id)element
{
  v34[7] = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v4 = objc_opt_class();
  v5 = elementCopy;
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

  scene = [v7 scene];
  clientProcess = [scene clientProcess];
  v10 = [clientProcess pid];

  if (v10 < 2)
  {
    v21 = 0;
  }

  else
  {
    v25 = [MEMORY[0x277D47008] targetWithPid:v10];
    v11 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:1];
    v34[0] = v11;
    grantWithUserInteractivity = [MEMORY[0x277D46DF0] grantWithUserInteractivity];
    v34[1] = grantWithUserInteractivity;
    grantWithForegroundPriority = [MEMORY[0x277D46EA8] grantWithForegroundPriority];
    v34[2] = grantWithForegroundPriority;
    v14 = [MEMORY[0x277D46FC0] grantWithResistance:40];
    v34[3] = v14;
    grant = [MEMORY[0x277D46E30] grant];
    v34[4] = grant;
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
    LOBYTE(grantWithUserInteractivity) = [v20 acquireWithError:&v26];
    v21 = v26;
    _Block_object_dispose(&v28, 8);

    if (grantWithUserInteractivity)
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