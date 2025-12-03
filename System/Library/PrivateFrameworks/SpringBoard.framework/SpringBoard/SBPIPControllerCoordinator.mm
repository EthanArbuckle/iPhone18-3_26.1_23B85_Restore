@interface SBPIPControllerCoordinator
- (BOOL)hasIdleTimerBehaviors;
- (BOOL)isAnyPictureInPictureWindowVisible;
- (BOOL)isHostingAnApp;
- (BOOL)isPresentingPictureInPictureRequiringMedusaKeyboard;
- (BOOL)shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)background scenePersistenceIdentifier:(id)identifier pipContentType:(int64_t)type;
- (SBPIPControllerCoordinator)init;
- (id)acquireAssertionToPreventVideoCallPIPFromStartingUnderControlCenter:(id)center;
- (id)controllerForType:(int64_t)type;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (int64_t)tetheringModeForScenePersistenceIdentifier:(id)identifier pipContentType:(int64_t)type;
- (void)_enumerateControllersByDescendingPriority:(id)priority;
- (void)handleDestructionRequestForSceneHandles:(id)handles;
- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)orientation;
- (void)registerController:(id)controller forType:(int64_t)type;
- (void)setPictureInPictureWindowsHidden:(BOOL)hidden withReason:(id)reason;
- (void)setWindowSceneManager:(id)manager;
@end

@implementation SBPIPControllerCoordinator

- (BOOL)isHostingAnApp
{
  hostedAppSceneHandles = [(SBPIPControllerCoordinator *)self hostedAppSceneHandles];
  v3 = [hostedAppSceneHandles count] != 0;

  return v3;
}

- (id)hostedAppSceneHandles
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SBPIPControllerCoordinator_hostedAppSceneHandles__block_invoke;
  v6[3] = &unk_2783A9020;
  v4 = array;
  v7 = v4;
  [(SBPIPControllerCoordinator *)self _enumerateControllersByDescendingPriority:v6];

  return v4;
}

void __51__SBPIPControllerCoordinator_hostedAppSceneHandles__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hostedAppSceneHandles];
  [v2 addObjectsFromArray:v3];
}

uint64_t __64__SBPIPControllerCoordinator_isAnyPictureInPictureWindowVisible__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isPictureInPictureWindowVisibleOnWindowScene:0];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isAnyPictureInPictureWindowVisible
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SBPIPControllerCoordinator_isAnyPictureInPictureWindowVisible__block_invoke;
  v4[3] = &unk_2783BC988;
  v4[4] = &v5;
  [(SBPIPControllerCoordinator *)self _enumerateControllersByDescendingPriority:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)hasIdleTimerBehaviors
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SBPIPControllerCoordinator_hasIdleTimerBehaviors__block_invoke;
  v4[3] = &unk_2783BC988;
  v4[4] = &v5;
  [(SBPIPControllerCoordinator *)self _enumerateControllersByDescendingPriority:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __51__SBPIPControllerCoordinator_hasIdleTimerBehaviors__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 hasIdleTimerBehaviors];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isPresentingPictureInPictureRequiringMedusaKeyboard
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__SBPIPControllerCoordinator_isPresentingPictureInPictureRequiringMedusaKeyboard__block_invoke;
  v4[3] = &unk_2783BC988;
  v4[4] = &v5;
  [(SBPIPControllerCoordinator *)self _enumerateControllersByDescendingPriority:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __81__SBPIPControllerCoordinator_isPresentingPictureInPictureRequiringMedusaKeyboard__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isPresentingPictureInPictureRequiringMedusaKeyboard];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (SBPIPControllerCoordinator)init
{
  v6.receiver = self;
  v6.super_class = SBPIPControllerCoordinator;
  v2 = [(SBPIPControllerCoordinator *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    controllersByType = v2->_controllersByType;
    v2->_controllersByType = v3;
  }

  return v2;
}

- (void)setWindowSceneManager:(id)manager
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (self->_windowSceneManager != managerCopy)
  {
    objc_storeStrong(&self->_windowSceneManager, manager);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_controllersByType objectEnumerator];
    v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v11 + 1) + 8 * i) setWindowSceneManager:managerCopy];
        }

        v8 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)registerController:(id)controller forType:(int64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (!SBPIPContentTypeIsValid(type))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = SBStringFromSBPIPContentType(type);
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBPIPControllerCoordinator.m" lineNumber:65 description:{@"Attempt to register pipController %@ for invalid contentType: %@", controllerCopy, v9}];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v11 = [(NSMutableDictionary *)self->_controllersByType objectForKey:v10];
  if (v11)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v19 = SBStringFromSBPIPContentType(type);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SBPIPControllerCoordinator.m" lineNumber:70 description:{@"Attempt to register pipController %@ for type %@ when one is already registered: %@", controllerCopy, v19, v11}];
  }

  contentType = [controllerCopy contentType];
  if (contentType != type)
  {
    v20 = contentType;
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v22 = SBStringFromSBPIPContentType(type);
    v23 = SBStringFromSBPIPContentType(v20);
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SBPIPControllerCoordinator.m" lineNumber:73 description:{@"Attempt to register pipController %@ for contentType %@ when the pipController itself reports contentType %@", controllerCopy, v22, v23}];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = self->_pictureInPictureWindowsHiddenReasons;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [controllerCopy setPictureInPictureWindowsHidden:1 forReason:*(*(&v24 + 1) + 8 * v17++)];
      }

      while (v15 != v17);
      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  [controllerCopy setWindowSceneManager:self->_windowSceneManager];
  [(NSMutableDictionary *)self->_controllersByType setObject:controllerCopy forKey:v10];
}

- (id)controllerForType:(int64_t)type
{
  if (SBPIPContentTypeIsValid(type))
  {
    currentHandler = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v7 = [(NSMutableDictionary *)self->_controllersByType objectForKey:currentHandler];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = SBStringFromSBPIPContentType(type);
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBPIPControllerCoordinator.m" lineNumber:87 description:{@"invalid contentType received: %@", v8}];

    v7 = 0;
  }

  return v7;
}

- (void)_enumerateControllersByDescendingPriority:(id)priority
{
  v17 = *MEMORY[0x277D85DE8];
  priorityCopy = priority;
  if (_enumerateControllersByDescendingPriority__onceToken != -1)
  {
    [SBPIPControllerCoordinator _enumerateControllersByDescendingPriority:];
  }

  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = _enumerateControllersByDescendingPriority____typesByPriority;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_controllersByType objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        if (v10)
        {
          priorityCopy[2](priorityCopy, v10, &v15);
          if (v15 == 1)
          {

            goto LABEL_14;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

void __72__SBPIPControllerCoordinator__enumerateControllersByDescendingPriority___block_invoke()
{
  v0 = _enumerateControllersByDescendingPriority____typesByPriority;
  _enumerateControllersByDescendingPriority____typesByPriority = &unk_28336E838;
}

- (void)setPictureInPictureWindowsHidden:(BOOL)hidden withReason:(id)reason
{
  hiddenCopy = hidden;
  reasonCopy = reason;
  v7 = [(NSMutableSet *)self->_pictureInPictureWindowsHiddenReasons containsObject:reasonCopy];
  if (hiddenCopy)
  {
    if ((v7 & 1) == 0)
    {
      [(NSMutableSet *)self->_pictureInPictureWindowsHiddenReasons addObject:reasonCopy];
    }
  }

  else if (v7)
  {
    [(NSMutableSet *)self->_pictureInPictureWindowsHiddenReasons removeObject:reasonCopy];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__SBPIPControllerCoordinator_setPictureInPictureWindowsHidden_withReason___block_invoke;
  v9[3] = &unk_2783A9110;
  v11 = hiddenCopy;
  v10 = reasonCopy;
  v8 = reasonCopy;
  [(SBPIPControllerCoordinator *)self _enumerateControllersByDescendingPriority:v9];
}

- (BOOL)shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)background scenePersistenceIdentifier:(id)identifier pipContentType:(int64_t)type
{
  v6 = *&background;
  identifierCopy = identifier;
  v9 = [(SBPIPControllerCoordinator *)self controllerForType:type];
  LOBYTE(v6) = [v9 shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:v6 scenePersistenceIdentifier:identifierCopy];

  return v6;
}

- (int64_t)tetheringModeForScenePersistenceIdentifier:(id)identifier pipContentType:(int64_t)type
{
  identifierCopy = identifier;
  v7 = [(SBPIPControllerCoordinator *)self controllerForType:type];
  v8 = [v7 tetheringModeForScenePersistenceIdentifier:identifierCopy];

  return v8;
}

- (id)acquireAssertionToPreventVideoCallPIPFromStartingUnderControlCenter:(id)center
{
  centerCopy = center;
  preventPIPFromStartingUnderControllerCenterCompoundAssertion = self->_preventPIPFromStartingUnderControllerCenterCompoundAssertion;
  if (!preventPIPFromStartingUnderControllerCenterCompoundAssertion)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __98__SBPIPControllerCoordinator_acquireAssertionToPreventVideoCallPIPFromStartingUnderControlCenter___block_invoke;
    v11[3] = &unk_2783BC9B0;
    objc_copyWeak(&v12, &location);
    v11[4] = v14;
    v11[5] = v17;
    v11[6] = v16;
    v7 = [v6 assertionWithIdentifier:@"Prevent PIP Under CC" stateDidChangeHandler:v11];
    v8 = self->_preventPIPFromStartingUnderControllerCenterCompoundAssertion;
    self->_preventPIPFromStartingUnderControllerCenterCompoundAssertion = v7;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v17, 8);
    preventPIPFromStartingUnderControllerCenterCompoundAssertion = self->_preventPIPFromStartingUnderControllerCenterCompoundAssertion;
  }

  v9 = [(BSCompoundAssertion *)preventPIPFromStartingUnderControllerCenterCompoundAssertion acquireForReason:centerCopy];

  return v9;
}

void __98__SBPIPControllerCoordinator_acquireAssertionToPreventVideoCallPIPFromStartingUnderControlCenter___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained isAnyPictureInPictureWindowVisible];

  if (v4)
  {
LABEL_2:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_20;
  }

  v5 = [v22 isActive];
  v6 = *(*(a1 + 32) + 8);
  if (!v5)
  {
    if (*(v6 + 24) == 1)
    {
      v13 = +[SBDefaults localDefaults];
      v14 = [v13 pipDefaults];
      v15 = [v14 lastKnownCornerPositionForContentType:@"VideoCall"];
      v16 = *(*(*(a1 + 48) + 8) + 24);

      if (v15 == v16)
      {
        v17 = +[SBDefaults localDefaults];
        v18 = [v17 pipDefaults];
        [v18 setLastKnownCornerPosition:*(*(*(a1 + 40) + 8) + 24) contentType:@"VideoCall"];
      }
    }

    goto LABEL_2;
  }

  *(v6 + 24) = 1;
  v7 = +[SBDefaults localDefaults];
  v8 = [v7 pipDefaults];
  *(*(*(a1 + 40) + 8) + 24) = [v8 lastKnownCornerPositionForContentType:@"VideoCall"];

  v9 = *(*(*(a1 + 40) + 8) + 24);
  if ((v9 - 1) < 2)
  {
    v19 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v12 = 1;
    if (v19 == 1)
    {
      v12 = 2;
    }
  }

  else
  {
    if (v9 != 3 && v9 != 0)
    {
      goto LABEL_19;
    }

    v11 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v12 = 3;
    if (v11 != 1)
    {
      v12 = 0;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v12;
LABEL_19:
  v20 = +[SBDefaults localDefaults];
  v21 = [v20 pipDefaults];
  [v21 setLastKnownCornerPosition:*(*(*(a1 + 48) + 8) + 24) contentType:@"VideoCall"];

LABEL_20:
}

- (void)handleDestructionRequestForSceneHandles:(id)handles
{
  handlesCopy = handles;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__SBPIPControllerCoordinator_handleDestructionRequestForSceneHandles___block_invoke;
  v6[3] = &unk_2783A9020;
  v7 = handlesCopy;
  v5 = handlesCopy;
  [(SBPIPControllerCoordinator *)self _enumerateControllersByDescendingPriority:v6];
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__95;
  v15 = __Block_byref_object_dispose__95;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SBPIPControllerCoordinator_coordinatorRequestedIdleTimerBehavior___block_invoke;
  v8[3] = &unk_2783BC9D8;
  v5 = behaviorCopy;
  v9 = v5;
  v10 = &v11;
  [(SBPIPControllerCoordinator *)self _enumerateControllersByDescendingPriority:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __68__SBPIPControllerCoordinator_coordinatorRequestedIdleTimerBehavior___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 coordinatorRequestedIdleTimerBehavior:*(a1 + 32)];
  if (v5)
  {
    v6 = v5;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    v5 = v6;
    *a3 = 1;
  }
}

- (id)hostedAppSceneHandle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBPIPControllerCoordinator.m" lineNumber:252 description:{@"%@ should never be called", v5}];

  return 0;
}

- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)orientation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBPIPControllerCoordinator.m" lineNumber:265 description:{@"%@ should never be called", v5}];
}

@end