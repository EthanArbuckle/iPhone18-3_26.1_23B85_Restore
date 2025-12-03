@interface SBSystemApertureSceneHoster
- (SBSystemApertureController)systemApertureController;
- (id)sceneCreationRequestServer:(id)server didReceiveRequestForSystemApertureSceneWithClientIdentity:(id)identity;
- (void)_addPendingElement:(id)element;
- (void)_enumerateElementsUsingBlock:(id)block;
- (void)_invalidateElement:(id)element;
- (void)_registerElement:(id)element;
- (void)_removeElement:(id)element;
- (void)_removePendingElement:(id)element;
- (void)activateWithSystemApertureController:(id)controller;
- (void)invalidate;
- (void)sceneCreationRequestServer:(id)server invalidateSceneElement:(id)element;
@end

@implementation SBSystemApertureSceneHoster

- (void)activateWithSystemApertureController:(id)controller
{
  objc_storeWeak(&self->_systemApertureController, controller);
  server = [(SBSystemApertureSceneHoster *)self server];

  if (!server)
  {
    v5 = [objc_alloc(MEMORY[0x277D66C80]) initWithDelegate:self];
    [(SBSystemApertureSceneHoster *)self setServer:v5];

    server2 = [(SBSystemApertureSceneHoster *)self server];
    [server2 startServer];
  }
}

- (id)sceneCreationRequestServer:(id)server didReceiveRequestForSystemApertureSceneWithClientIdentity:(id)identity
{
  serverCopy = server;
  identityCopy = identity;
  BSDispatchQueueAssertMain();
  objc_initWeak(&location, self);
  v8 = [SBSystemApertureSceneElement alloc];
  specification = [MEMORY[0x277D67E40] specification];
  systemApertureController = [(SBSystemApertureSceneHoster *)self systemApertureController];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __116__SBSystemApertureSceneHoster_sceneCreationRequestServer_didReceiveRequestForSystemApertureSceneWithClientIdentity___block_invoke;
  v18 = &unk_2783C1258;
  objc_copyWeak(&v19, &location);
  v11 = [(SBSystemApertureSceneElement *)v8 initWithSceneSpecification:specification sceneClientIdentity:identityCopy statusBarBackgroundActivitiesSuppresser:systemApertureController readyForPresentationHandler:&v15];

  [(SBSystemApertureSceneHoster *)self _addPendingElement:v11, v15, v16, v17, v18];
  [(SBSystemApertureSceneElement *)v11 activate];
  scene = [(SBSystemApertureSceneElement *)v11 scene];
  identityToken = [scene identityToken];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return identityToken;
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

- (void)sceneCreationRequestServer:(id)server invalidateSceneElement:(id)element
{
  v20 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMapTable *)self->_activeElements copy];
  keyEnumerator = [v6 keyEnumerator];

  v8 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        scene = [v12 scene];
        identityToken = [scene identityToken];

        if ([identityToken isEqual:elementCopy])
        {
          [(SBSystemApertureSceneHoster *)self _invalidateElement:v12];

          goto LABEL_11;
        }
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_addPendingElement:(id)element
{
  elementCopy = element;
  BSDispatchQueueAssertMain();
  pendingElements = self->_pendingElements;
  if (!pendingElements)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = self->_pendingElements;
    self->_pendingElements = v5;

    pendingElements = self->_pendingElements;
  }

  [(NSMutableSet *)pendingElements addObject:elementCopy];
}

- (void)_removePendingElement:(id)element
{
  elementCopy = element;
  BSDispatchQueueAssertMain();
  [(NSMutableSet *)self->_pendingElements removeObject:elementCopy];

  if (![(NSMutableSet *)self->_pendingElements count])
  {
    pendingElements = self->_pendingElements;
    self->_pendingElements = 0;
  }
}

- (void)_registerElement:(id)element
{
  elementCopy = element;
  BSDispatchQueueAssertMain();
  if (!self->_activeElements)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    activeElements = self->_activeElements;
    self->_activeElements = strongToStrongObjectsMapTable;
  }

  systemApertureController = [(SBSystemApertureSceneHoster *)self systemApertureController];
  v8 = [systemApertureController registerElement:elementCopy];

  objc_initWeak(&location, self);
  objc_initWeak(&from, elementCopy);
  scene = [elementCopy scene];
  clientHandle = [scene clientHandle];
  processHandle = [clientHandle processHandle];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__SBSystemApertureSceneHoster__registerElement___block_invoke;
  v19[3] = &unk_2783C4308;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  [processHandle monitorForDeath:v19];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__SBSystemApertureSceneHoster__registerElement___block_invoke_3;
  v16 = &unk_2783C4330;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  v12 = MEMORY[0x223D6F7F0](&v13);
  [elementCopy setClientInvalidationRequestHandler:{v12, v13, v14, v15, v16}];
  [elementCopy setSceneInvalidationHandler:v12];
  if (v8)
  {
    [(NSMapTable *)self->_activeElements setObject:v8 forKey:elementCopy];
  }

  else
  {
    [(SBSystemApertureSceneHoster *)self _invalidateElement:elementCopy];
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

- (void)_invalidateElement:(id)element
{
  elementCopy = element;
  if (!elementCopy)
  {
    [(SBSystemApertureSceneHoster *)a2 _invalidateElement:?];
  }

  BSDispatchQueueAssertMain();
  v6 = [(NSMapTable *)self->_activeElements objectForKey:elementCopy];
  if ([elementCopy isActivated] && (objc_msgSend(elementCopy, "isDeactivating") & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SBSystemApertureSceneHoster__invalidateElement___block_invoke;
    v7[3] = &unk_2783AFCD0;
    v7[4] = self;
    [elementCopy deactivateWhenRemovedWithHandler:v7];
  }

  else if (([elementCopy isDeactivating] & 1) == 0)
  {
    [(SBSystemApertureSceneHoster *)self _removeElement:elementCopy];
  }

  if ([v6 isValid])
  {
    [v6 invalidateWithReason:@"SBSystemApertureSceneHoster invalidated element"];
  }
}

- (void)_removeElement:(id)element
{
  activeElements = self->_activeElements;
  elementCopy = element;
  [(NSMapTable *)activeElements removeObjectForKey:elementCopy];
  [(NSMutableSet *)self->_pendingElements removeObject:elementCopy];

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
  server = [(SBSystemApertureSceneHoster *)self server];
  [server invalidate];

  [(SBSystemApertureSceneHoster *)self setServer:0];
}

- (void)_enumerateElementsUsingBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allObjects = [(NSMutableSet *)self->_pendingElements allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        blockCopy[2](blockCopy, *(*(&v20 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NSMapTable *)self->_activeElements copy];
  keyEnumerator = [v10 keyEnumerator];

  v12 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        blockCopy[2](blockCopy, *(*(&v16 + 1) + 8 * v15++));
      }

      while (v13 != v15);
      v13 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v24 count:16];
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