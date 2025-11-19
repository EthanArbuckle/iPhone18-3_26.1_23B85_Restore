@interface SBSystemApertureSceneHoster
- (SBSystemApertureController)systemApertureController;
- (id)sceneCreationRequestServer:(id)a3 didReceiveRequestForSystemApertureSceneWithClientIdentity:(id)a4;
- (void)_addPendingElement:(id)a3;
- (void)_enumerateElementsUsingBlock:(id)a3;
- (void)_invalidateElement:(id)a3;
- (void)_registerElement:(id)a3;
- (void)_removeElement:(id)a3;
- (void)_removePendingElement:(id)a3;
- (void)activateWithSystemApertureController:(id)a3;
- (void)invalidate;
- (void)sceneCreationRequestServer:(id)a3 invalidateSceneElement:(id)a4;
@end

@implementation SBSystemApertureSceneHoster

- (void)activateWithSystemApertureController:(id)a3
{
  objc_storeWeak(&self->_systemApertureController, a3);
  v4 = [(SBSystemApertureSceneHoster *)self server];

  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D66C80]) initWithDelegate:self];
    [(SBSystemApertureSceneHoster *)self setServer:v5];

    v6 = [(SBSystemApertureSceneHoster *)self server];
    [v6 startServer];
  }
}

- (id)sceneCreationRequestServer:(id)a3 didReceiveRequestForSystemApertureSceneWithClientIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  objc_initWeak(&location, self);
  v8 = [SBSystemApertureSceneElement alloc];
  v9 = [MEMORY[0x277D67E40] specification];
  v10 = [(SBSystemApertureSceneHoster *)self systemApertureController];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __116__SBSystemApertureSceneHoster_sceneCreationRequestServer_didReceiveRequestForSystemApertureSceneWithClientIdentity___block_invoke;
  v18 = &unk_2783C1258;
  objc_copyWeak(&v19, &location);
  v11 = [(SBSystemApertureSceneElement *)v8 initWithSceneSpecification:v9 sceneClientIdentity:v7 statusBarBackgroundActivitiesSuppresser:v10 readyForPresentationHandler:&v15];

  [(SBSystemApertureSceneHoster *)self _addPendingElement:v11, v15, v16, v17, v18];
  [(SBSystemApertureSceneElement *)v11 activate];
  v12 = [(SBSystemApertureSceneElement *)v11 scene];
  v13 = [v12 identityToken];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

void __116__SBSystemApertureSceneHoster_sceneCreationRequestServer_didReceiveRequestForSystemApertureSceneWithClientIdentity___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v8 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _registerElement:v8];
    }

    else if ([v8 isActivated])
    {
      [v8 deactivateWhenRemovedWithHandler:0];
    }

    v5 = v8;
  }
}

- (void)sceneCreationRequestServer:(id)a3 invalidateSceneElement:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMapTable *)self->_activeElements copy];
  v7 = [v6 keyEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 scene];
        v14 = [v13 identityToken];

        if ([v14 isEqual:v5])
        {
          [(SBSystemApertureSceneHoster *)self _invalidateElement:v12];

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_addPendingElement:(id)a3
{
  v7 = a3;
  BSDispatchQueueAssertMain();
  pendingElements = self->_pendingElements;
  if (!pendingElements)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = self->_pendingElements;
    self->_pendingElements = v5;

    pendingElements = self->_pendingElements;
  }

  [(NSMutableSet *)pendingElements addObject:v7];
}

- (void)_removePendingElement:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(NSMutableSet *)self->_pendingElements removeObject:v4];

  if (![(NSMutableSet *)self->_pendingElements count])
  {
    pendingElements = self->_pendingElements;
    self->_pendingElements = 0;
  }
}

- (void)_registerElement:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!self->_activeElements)
  {
    v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    activeElements = self->_activeElements;
    self->_activeElements = v5;
  }

  v7 = [(SBSystemApertureSceneHoster *)self systemApertureController];
  v8 = [v7 registerElement:v4];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v9 = [v4 scene];
  v10 = [v9 clientHandle];
  v11 = [v10 processHandle];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__SBSystemApertureSceneHoster__registerElement___block_invoke;
  v19[3] = &unk_2783C4308;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  [v11 monitorForDeath:v19];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__SBSystemApertureSceneHoster__registerElement___block_invoke_3;
  v16 = &unk_2783C4330;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  v12 = MEMORY[0x223D6F7F0](&v13);
  [v4 setClientInvalidationRequestHandler:{v12, v13, v14, v15, v16}];
  [v4 setSceneInvalidationHandler:v12];
  if (v8)
  {
    [(NSMapTable *)self->_activeElements setObject:v8 forKey:v4];
  }

  else
  {
    [(SBSystemApertureSceneHoster *)self _invalidateElement:v4];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __48__SBSystemApertureSceneHoster__registerElement___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v7, (a1 + 32));
  objc_copyWeak(&v8, (a1 + 40));
  BSDispatchMain();
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void __48__SBSystemApertureSceneHoster__registerElement___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained _invalidateElement:v2];
  }
}

void __48__SBSystemApertureSceneHoster__registerElement___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  objc_copyWeak(&v5, (a1 + 40));
  BSDispatchMain();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
}

void __48__SBSystemApertureSceneHoster__registerElement___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateElement:v2];
}

- (void)_invalidateElement:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSystemApertureSceneHoster *)a2 _invalidateElement:?];
  }

  BSDispatchQueueAssertMain();
  v6 = [(NSMapTable *)self->_activeElements objectForKey:v5];
  if ([v5 isActivated] && (objc_msgSend(v5, "isDeactivating") & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SBSystemApertureSceneHoster__invalidateElement___block_invoke;
    v7[3] = &unk_2783AFCD0;
    v7[4] = self;
    [v5 deactivateWhenRemovedWithHandler:v7];
  }

  else if (([v5 isDeactivating] & 1) == 0)
  {
    [(SBSystemApertureSceneHoster *)self _removeElement:v5];
  }

  if ([v6 isValid])
  {
    [v6 invalidateWithReason:@"SBSystemApertureSceneHoster invalidated element"];
  }
}

- (void)_removeElement:(id)a3
{
  activeElements = self->_activeElements;
  v5 = a3;
  [(NSMapTable *)activeElements removeObjectForKey:v5];
  [(NSMutableSet *)self->_pendingElements removeObject:v5];

  if (![(NSMapTable *)self->_activeElements count])
  {
    v6 = self->_activeElements;
    self->_activeElements = 0;
  }
}

- (void)invalidate
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SBSystemApertureSceneHoster_invalidate__block_invoke;
  v4[3] = &unk_2783AFCD0;
  v4[4] = self;
  [(SBSystemApertureSceneHoster *)self _enumerateElementsUsingBlock:v4];
  v3 = [(SBSystemApertureSceneHoster *)self server];
  [v3 invalidate];

  [(SBSystemApertureSceneHoster *)self setServer:0];
}

- (void)_enumerateElementsUsingBlock:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSMutableSet *)self->_pendingElements allObjects];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v20 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NSMapTable *)self->_activeElements copy];
  v11 = [v10 keyEnumerator];

  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v4[2](v4, *(*(&v16 + 1) + 8 * v15++));
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (SBSystemApertureController)systemApertureController
{
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureController);

  return WeakRetained;
}

- (void)_invalidateElement:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureSceneHoster.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"element != nil"}];
}

@end