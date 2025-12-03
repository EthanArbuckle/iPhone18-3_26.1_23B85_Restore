@interface SBDraggingSystemManager
+ (SBDraggingSystemManager)sharedInstance;
- (id)touchRoutingPolicyForBeginningDragSessionWithInfo:(id)info;
- (void)_acquireRoutingKeysAssertion;
- (void)_invalidateRoutingKeysAssertion;
- (void)addObserver:(id)observer;
- (void)cancelActiveDraggingSystemSession;
- (void)dragSessionDidBegin:(id)begin;
- (void)dragSessionDidEnd:(id)end;
- (void)setCommandeered:(BOOL)commandeered forDraggingSystemSession:(id)session forReason:(id)reason;
- (void)setCommandeered:(BOOL)commandeered forDropSession:(id)session forReason:(id)reason;
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

    mEMORY[0x277D75490] = [MEMORY[0x277D75490] sharedInstance];
    [mEMORY[0x277D75490] setDelegate:sharedInstance_sharedInstance_0];

    v2 = sharedInstance_sharedInstance_0;
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)setCommandeered:(BOOL)commandeered forDropSession:(id)session forReason:(id)reason
{
  commandeeredCopy = commandeered;
  v8 = MEMORY[0x277D75490];
  reasonCopy = reason;
  sessionCopy = session;
  sharedInstance = [v8 sharedInstance];
  v11 = [sharedInstance sessionForDropSession:sessionCopy];

  [(SBDraggingSystemManager *)self setCommandeered:commandeeredCopy forDraggingSystemSession:v11 forReason:reasonCopy];
}

- (void)setCommandeered:(BOOL)commandeered forDraggingSystemSession:(id)session forReason:(id)reason
{
  commandeeredCopy = commandeered;
  sessionCopy = session;
  reasonCopy = reason;
  commandeerReasons = self->_commandeerReasons;
  if (commandeerReasons)
  {
    v10 = 1;
  }

  else
  {
    v10 = !commandeeredCopy;
  }

  if (!v10)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v12 = self->_commandeerReasons;
    self->_commandeerReasons = weakToStrongObjectsMapTable;

    commandeerReasons = self->_commandeerReasons;
  }

  v13 = [(NSMapTable *)commandeerReasons objectForKey:sessionCopy];
  v14 = v13;
  if (commandeeredCopy)
  {
    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CCA940]);
      [(NSMapTable *)self->_commandeerReasons setObject:v14 forKey:sessionCopy];
    }

    [v14 addObject:reasonCopy];
    [sessionCopy setCommandeered:1];
  }

  else
  {
    [v13 removeObject:reasonCopy];
    if (v14 && ![v14 count])
    {
      [sessionCopy setCommandeered:0];
      [(NSMapTable *)self->_commandeerReasons removeObjectForKey:sessionCopy];
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

- (void)dragSessionDidBegin:(id)begin
{
  v16 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  objc_storeStrong(&self->_currentSession, begin);
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

        [*(*(&v11 + 1) + 8 * v10++) dragSessionDidBegin:beginCopy];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)dragSessionDidEnd:(id)end
{
  v16 = *MEMORY[0x277D85DE8];
  endCopy = end;
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

        [*(*(&v11 + 1) + 8 * v9++) dragSessionDidEnd:endCopy];
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

- (id)touchRoutingPolicyForBeginningDragSessionWithInfo:(id)info
{
  v80 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (![infoCopy supportsSystemDrag])
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
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];

  v8 = [connectedWindowScenes countByEnumeratingWithState:&v70 objects:v79 count:16];
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
          objc_enumerationMutation(connectedWindowScenes);
        }

        switcherController = [*(*(&v70 + 1) + 8 * i) switcherController];
        switcherWindow = [switcherController switcherWindow];

        if (switcherWindow)
        {
          (v5)[2](v5, switcherWindow);
        }
      }

      v9 = [connectedWindowScenes countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v9);
  }

  processIdentifier = [infoCopy processIdentifier];
  v68 = 0u;
  v69 = 0u;
  if (infoCopy)
  {
    [infoCopy auditToken];
  }

  v67[0] = v68;
  v67[1] = v69;
  v54 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v67];
  v51 = processIdentifier;
  if (processIdentifier == getpid() || [v54 hasEntitlement:@"com.apple.springboard.app-drag"])
  {
    v50 = infoCopy;
    v15 = +[SBUIController sharedInstance];
    window = [v15 window];

    _sbWindowScene = [window _sbWindowScene];
    controlCenterController = [_sbWindowScene controlCenterController];
    _controlCenterWindow = [controlCenterController _controlCenterWindow];

    if (_controlCenterWindow)
    {
      v20 = [_controlCenterWindow isHidden] ^ 1;
      if (!window)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LOBYTE(v20) = 0;
      if (!window)
      {
LABEL_22:
        v49 = _controlCenterWindow;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        windowSceneManager2 = [SBApp windowSceneManager];
        connectedWindowScenes2 = [windowSceneManager2 connectedWindowScenes];

        v24 = [connectedWindowScenes2 countByEnumeratingWithState:&v63 objects:v78 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v64;
          do
          {
            v27 = 0;
            v28 = window;
            do
            {
              if (*v64 != v26)
              {
                objc_enumerationMutation(connectedWindowScenes2);
              }

              v29 = *(*(&v63 + 1) + 8 * v27);
              homeScreenController = [v29 homeScreenController];
              window = [homeScreenController window];

              if (!((v29 == 0) | v20 & 1))
              {
                (v5)[2](v5, window);
              }

              ++v27;
              v28 = window;
            }

            while (v25 != v27);
            v25 = [connectedWindowScenes2 countByEnumeratingWithState:&v63 objects:v78 count:16];
          }

          while (v25);
        }

        infoCopy = v50;
        goto LABEL_32;
      }
    }

    if ((v20 & 1) == 0)
    {
      (v5)[2](v5, window);
    }

    goto LABEL_22;
  }

LABEL_32:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  windowSceneManager3 = [SBApp windowSceneManager];
  connectedWindowScenes3 = [windowSceneManager3 connectedWindowScenes];

  v33 = [connectedWindowScenes3 countByEnumeratingWithState:&v59 objects:v77 count:16];
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
          objc_enumerationMutation(connectedWindowScenes3);
        }

        floatingDockController = [*(*(&v59 + 1) + 8 * j) floatingDockController];
        floatingDockWindow = [floatingDockController floatingDockWindow];

        if (floatingDockWindow)
        {
          (v5)[2](v5, floatingDockWindow);
        }
      }

      v34 = [connectedWindowScenes3 countByEnumeratingWithState:&v59 objects:v77 count:16];
    }

    while (v34);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  windowSceneManager4 = [SBApp windowSceneManager];
  connectedWindowScenes4 = [windowSceneManager4 connectedWindowScenes];

  v41 = [connectedWindowScenes4 countByEnumeratingWithState:&v55 objects:v76 count:16];
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
          objc_enumerationMutation(connectedWindowScenes4);
        }

        controlCenterController2 = [*(*(&v55 + 1) + 8 * k) controlCenterController];
        _controlCenterWindow2 = [controlCenterController2 _controlCenterWindow];

        isHidden = [_controlCenterWindow2 isHidden];
        if (_controlCenterWindow2 && (isHidden & 1) == 0)
        {
          (v5)[2](v5, _controlCenterWindow2);
        }
      }

      v42 = [connectedWindowScenes4 countByEnumeratingWithState:&v55 objects:v76 count:16];
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