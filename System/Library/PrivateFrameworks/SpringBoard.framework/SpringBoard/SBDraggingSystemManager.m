@interface SBDraggingSystemManager
+ (SBDraggingSystemManager)sharedInstance;
- (id)touchRoutingPolicyForBeginningDragSessionWithInfo:(id)a3;
- (void)_acquireRoutingKeysAssertion;
- (void)_invalidateRoutingKeysAssertion;
- (void)addObserver:(id)a3;
- (void)cancelActiveDraggingSystemSession;
- (void)dragSessionDidBegin:(id)a3;
- (void)dragSessionDidEnd:(id)a3;
- (void)setCommandeered:(BOOL)a3 forDraggingSystemSession:(id)a4 forReason:(id)a5;
- (void)setCommandeered:(BOOL)a3 forDropSession:(id)a4 forReason:(id)a5;
@end

@implementation SBDraggingSystemManager

+ (SBDraggingSystemManager)sharedInstance
{
  v2 = sharedInstance_sharedInstance_0;
  if (!sharedInstance_sharedInstance_0)
  {
    v3 = objc_alloc_init(SBDraggingSystemManager);
    v4 = sharedInstance_sharedInstance_0;
    sharedInstance_sharedInstance_0 = v3;

    v5 = [MEMORY[0x277D75490] sharedInstance];
    [v5 setDelegate:sharedInstance_sharedInstance_0];

    v2 = sharedInstance_sharedInstance_0;
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)setCommandeered:(BOOL)a3 forDropSession:(id)a4 forReason:(id)a5
{
  v6 = a3;
  v8 = MEMORY[0x277D75490];
  v9 = a5;
  v10 = a4;
  v12 = [v8 sharedInstance];
  v11 = [v12 sessionForDropSession:v10];

  [(SBDraggingSystemManager *)self setCommandeered:v6 forDraggingSystemSession:v11 forReason:v9];
}

- (void)setCommandeered:(BOOL)a3 forDraggingSystemSession:(id)a4 forReason:(id)a5
{
  v6 = a3;
  v15 = a4;
  v8 = a5;
  commandeerReasons = self->_commandeerReasons;
  if (commandeerReasons)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v6;
  }

  if (!v10)
  {
    v11 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v12 = self->_commandeerReasons;
    self->_commandeerReasons = v11;

    commandeerReasons = self->_commandeerReasons;
  }

  v13 = [(NSMapTable *)commandeerReasons objectForKey:v15];
  v14 = v13;
  if (v6)
  {
    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CCA940]);
      [(NSMapTable *)self->_commandeerReasons setObject:v14 forKey:v15];
    }

    [v14 addObject:v8];
    [v15 setCommandeered:1];
  }

  else
  {
    [v13 removeObject:v8];
    if (v14 && ![v14 count])
    {
      [v15 setCommandeered:0];
      [(NSMapTable *)self->_commandeerReasons removeObjectForKey:v15];
    }
  }
}

- (void)cancelActiveDraggingSystemSession
{
  if (self->_currentSession && (objc_opt_respondsToSelector() & 1) != 0)
  {
    currentSession = self->_currentSession;

    [(UIDraggingSystemSession *)currentSession cancel];
  }
}

- (void)_acquireRoutingKeysAssertion
{
  [(SBDraggingSystemManager *)self _invalidateRoutingKeysAssertion];
  v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_283370430, 0}];
  v3 = +[SBHIDEventDispatchController sharedInstance];
  v4 = [v3 dispatchKeyboardUsagesToSystemEnvironment:v6 reason:@"SBDraggingSystemManager"];
  routingKeysAssertion = self->_routingKeysAssertion;
  self->_routingKeysAssertion = v4;
}

- (void)_invalidateRoutingKeysAssertion
{
  routingKeysAssertion = self->_routingKeysAssertion;
  if (routingKeysAssertion)
  {
    [(BSInvalidatable *)routingKeysAssertion invalidate];
    v4 = self->_routingKeysAssertion;
    self->_routingKeysAssertion = 0;
  }
}

- (void)dragSessionDidBegin:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_currentSession, a3);
  [(SBDraggingSystemManager *)self _acquireRoutingKeysAssertion];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) dragSessionDidBegin:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)dragSessionDidEnd:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) dragSessionDidEnd:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(SBDraggingSystemManager *)self _invalidateRoutingKeysAssertion];
  currentSession = self->_currentSession;
  self->_currentSession = 0;
}

- (id)touchRoutingPolicyForBeginningDragSessionWithInfo:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 supportsSystemDrag])
  {
    v21 = 0;
    goto LABEL_54;
  }

  v53 = objc_alloc_init(MEMORY[0x277D75498]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __77__SBDraggingSystemManager_touchRoutingPolicyForBeginningDragSessionWithInfo___block_invoke;
  v74[3] = &unk_2783AF2F0;
  v52 = v4;
  v75 = v52;
  v5 = MEMORY[0x223D6F7F0](v74);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v6 = [SBApp windowSceneManager];
  v7 = [v6 connectedWindowScenes];

  v8 = [v7 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v71;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v71 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v70 + 1) + 8 * i) switcherController];
        v13 = [v12 switcherWindow];

        if (v13)
        {
          (v5)[2](v5, v13);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v9);
  }

  v14 = [v3 processIdentifier];
  v68 = 0u;
  v69 = 0u;
  if (v3)
  {
    [v3 auditToken];
  }

  v67[0] = v68;
  v67[1] = v69;
  v54 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v67];
  v51 = v14;
  if (v14 == getpid() || [v54 hasEntitlement:@"com.apple.springboard.app-drag"])
  {
    v50 = v3;
    v15 = +[SBUIController sharedInstance];
    v16 = [v15 window];

    v17 = [v16 _sbWindowScene];
    v18 = [v17 controlCenterController];
    v19 = [v18 _controlCenterWindow];

    if (v19)
    {
      v20 = [v19 isHidden] ^ 1;
      if (!v16)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LOBYTE(v20) = 0;
      if (!v16)
      {
LABEL_22:
        v49 = v19;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v22 = [SBApp windowSceneManager];
        v23 = [v22 connectedWindowScenes];

        v24 = [v23 countByEnumeratingWithState:&v63 objects:v78 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v64;
          do
          {
            v27 = 0;
            v28 = v16;
            do
            {
              if (*v64 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v29 = *(*(&v63 + 1) + 8 * v27);
              v30 = [v29 homeScreenController];
              v16 = [v30 window];

              if (!((v29 == 0) | v20 & 1))
              {
                (v5)[2](v5, v16);
              }

              ++v27;
              v28 = v16;
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v63 objects:v78 count:16];
          }

          while (v25);
        }

        v3 = v50;
        goto LABEL_32;
      }
    }

    if ((v20 & 1) == 0)
    {
      (v5)[2](v5, v16);
    }

    goto LABEL_22;
  }

LABEL_32:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v31 = [SBApp windowSceneManager];
  v32 = [v31 connectedWindowScenes];

  v33 = [v32 countByEnumeratingWithState:&v59 objects:v77 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v60;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v60 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v59 + 1) + 8 * j) floatingDockController];
        v38 = [v37 floatingDockWindow];

        if (v38)
        {
          (v5)[2](v5, v38);
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v59 objects:v77 count:16];
    }

    while (v34);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v39 = [SBApp windowSceneManager];
  v40 = [v39 connectedWindowScenes];

  v41 = [v40 countByEnumeratingWithState:&v55 objects:v76 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v56;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v56 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v55 + 1) + 8 * k) controlCenterController];
        v46 = [v45 _controlCenterWindow];

        v47 = [v46 isHidden];
        if (v46 && (v47 & 1) == 0)
        {
          (v5)[2](v5, v46);
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v55 objects:v76 count:16];
    }

    while (v42);
  }

  v21 = v53;
  [v53 setContextIDsToAlwaysSendTouchesByDisplayIdentifier:v52];
  if (v51 == getpid())
  {
    [v53 setHitTestingDisabled:1];
  }

LABEL_54:

  return v21;
}

void __77__SBDraggingSystemManager_touchRoutingPolicyForBeginningDragSessionWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _screen];
  v5 = [v4 displayConfiguration];
  v6 = [v5 hardwareIdentifier];
  v7 = v6;
  v8 = *MEMORY[0x277D773A8];
  if (v6)
  {
    v8 = v6;
  }

  v16 = v8;

  v9 = [*(a1 + 32) objectForKey:v16];

  if (!v9)
  {
    v10 = *(a1 + 32);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v10 setObject:v11 forKey:v16];
  }

  v12 = [*(a1 + 32) objectForKey:v16];
  v13 = MEMORY[0x277CCABB0];
  v14 = [v3 _contextId];

  v15 = [v13 numberWithUnsignedInt:v14];
  [v12 addObject:v15];
}

@end