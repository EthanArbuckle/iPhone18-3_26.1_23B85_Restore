@interface SBAutoPIPWorkspaceTransaction
+ (BOOL)isSystemGesture:(uint64_t)gesture;
+ (BOOL)shouldAutoPIPEnteringBackgroundForRequest:(id)request foundEntity:(id *)entity tetheringMode:(int64_t *)mode transitionStyle:(int64_t *)style reason:(int64_t)reason;
+ (uint64_t)_doesPegasusAllowEntityToAutoPIP:(void *)p pipCoordinator:;
+ (uint64_t)transitionStyleForProcessIdentifier:(void *)identifier entityToPIP:(void *)p withTransitionContext:(void *)context request:(uint64_t)request reason:;
- (SBAutoPIPWorkspaceTransaction)initWithTransitionRequest:(id)request includeActiveAppEntity:(BOOL)entity reason:(int64_t)reason;
- (id)_customizedDescriptionProperties;
- (int64_t)transitionStyle;
- (uint64_t)_transitionStyle;
- (void)_begin;
- (void)_didComplete;
@end

@implementation SBAutoPIPWorkspaceTransaction

+ (BOOL)shouldAutoPIPEnteringBackgroundForRequest:(id)request foundEntity:(id *)entity tetheringMode:(int64_t *)mode transitionStyle:(int64_t *)style reason:(int64_t)reason
{
  v89 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [requestCopy displayIdentity];
  v14 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  if (v14 && ([v14 uiLockStateProvider], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isUILocked"), v15, (v16 & 1) == 0))
  {
    entityCopy = entity;
    reasonCopy = reason;
    applicationContext = [requestCopy applicationContext];
    workspace = [requestCopy workspace];
    pipCoordinator = [workspace pipCoordinator];

    v21 = objc_opt_class();
    previousLayoutState = [applicationContext previousLayoutState];
    v74 = SBSafeCast(v21, previousLayoutState);

    windowSceneManager2 = [SBApp windowSceneManager];
    displayIdentity2 = [requestCopy displayIdentity];
    v25 = [windowSceneManager2 windowSceneForDisplayIdentity:displayIdentity2];

    requestedPIPEntity = [applicationContext requestedPIPEntity];
    modeCopy = mode;
    v71 = requestedPIPEntity;
    v72 = v25;
    if (requestedPIPEntity && (v27 = requestedPIPEntity, [(SBAutoPIPWorkspaceTransaction *)self _doesPegasusAllowEntityToAutoPIP:requestedPIPEntity pipCoordinator:pipCoordinator]))
    {
      v28 = v27;
    }

    else
    {
      switcherController = [v25 switcherController];
      windowManagementContext = [switcherController windowManagementContext];
      isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

      if (isFlexibleWindowingEnabled)
      {
        elementIdentifiersToLayoutAttributes = [v74 elementIdentifiersToLayoutAttributes];
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        previousEntities = [applicationContext previousEntities];
        v28 = [previousEntities countByEnumeratingWithState:&v82 objects:v88 count:16];
        if (v28)
        {
          v68 = elementIdentifiersToLayoutAttributes;
          v34 = *v83;
          while (2)
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v83 != v34)
              {
                objc_enumerationMutation(previousEntities);
              }

              v36 = *(*(&v82 + 1) + 8 * i);
              if ([v36 isApplicationSceneEntity] && +[SBAutoPIPWorkspaceTransaction _doesPegasusAllowEntityToAutoPIP:pipCoordinator:](self, v36, pipCoordinator))
              {
                uniqueIdentifier = [v36 uniqueIdentifier];
                elementIdentifiersToLayoutAttributes = v68;
                v46 = [v68 objectForKey:uniqueIdentifier];

                memset(buf, 0, sizeof(buf));
                [(SBDisplayItemLayoutAttributes *)v46 slideOverConfiguration];
                v80[0] = *buf;
                v80[1] = *&buf[16];
                v81 = *&buf[32];
                v28 = 0;
                if ((SBDisplayItemSlideOverConfigurationIsValid(v80) & 1) == 0)
                {
                  v28 = v36;
                }

                goto LABEL_30;
              }
            }

            v28 = [previousEntities countByEnumeratingWithState:&v82 objects:v88 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }

          elementIdentifiersToLayoutAttributes = v68;
        }

LABEL_30:
      }

      else
      {
        v37 = [applicationContext previousApplicationSceneEntityForLayoutRole:1];
        v38 = [applicationContext previousApplicationSceneEntityForLayoutRole:2];
        if (v38)
        {
          v39 = objc_opt_class();
          applicationContext2 = [requestCopy applicationContext];
          previousLayoutState2 = [applicationContext2 previousLayoutState];
          v42 = SBSafeCast(v39, previousLayoutState2);

          if (v42 && [v42 spaceConfiguration] == 2)
          {
            v43 = v38;

            v37 = v43;
          }
        }

        if ([(SBAutoPIPWorkspaceTransaction *)self _doesPegasusAllowEntityToAutoPIP:v37 pipCoordinator:pipCoordinator])
        {
          v44 = v37;
        }

        else
        {
          v44 = 0;
        }

        v28 = v44;
      }
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    applicationSceneEntities = [applicationContext applicationSceneEntities];
    v48 = [applicationSceneEntities countByEnumeratingWithState:&v76 objects:v86 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v77;
      while (2)
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v77 != v50)
          {
            objc_enumerationMutation(applicationSceneEntities);
          }

          if ([*(*(&v76 + 1) + 8 * j) isAnalogousToEntity:v28])
          {

            v28 = 0;
            goto LABEL_41;
          }
        }

        v49 = [applicationSceneEntities countByEnumeratingWithState:&v76 objects:v86 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_41:

    application = [v28 application];
    info = [application info];
    isBlockedForScreenTimeExpiration = [info isBlockedForScreenTimeExpiration];

    if (isBlockedForScreenTimeExpiration)
    {

      v28 = 0;
    }

    v55 = [applicationContext removalContextForEntity:v28];

    if (v55)
    {

      v28 = 0;
    }

    if ([requestCopy isCrossingDisplays])
    {

      v28 = 0;
    }

    if (v28)
    {
      application2 = [v28 application];
      processState = [application2 processState];
      v58 = [processState pid];

      sceneHandle = [v28 sceneHandle];
      persistenceIdentifier = [sceneHandle persistenceIdentifier];

      v61 = [pipCoordinator tetheringModeForScenePersistenceIdentifier:persistenceIdentifier pipContentType:0];
      v62 = v61;
      v63 = (reasonCopy - 1) >= 3 && v61 == 1;
      v17 = !v63;
      if (!v63)
      {
        if (style)
        {
          *style = [(SBAutoPIPWorkspaceTransaction *)self transitionStyleForProcessIdentifier:v58 entityToPIP:v28 withTransitionContext:applicationContext request:requestCopy reason:reasonCopy];
        }

        if (entityCopy)
        {
          v64 = v28;
          *entityCopy = v28;
        }
      }

      if (modeCopy)
      {
        *modeCopy = v62;
      }

      v65 = SBLogPIP();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *&buf[4] = requestCopy;
        *&buf[12] = 1024;
        *&buf[14] = v17;
        *&buf[18] = 2048;
        *&buf[20] = v62;
        *&buf[28] = 2048;
        *&buf[30] = reasonCopy;
        _os_log_impl(&dword_21ED4E000, v65, OS_LOG_TYPE_DEFAULT, "[ShouldAutoPiP] Request(%p) shouldStart: %{BOOL}u; tetheringMode: %ld; reason:%li", buf, 0x26u);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v66 = SBLogPIP();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = requestCopy;
    *&buf[12] = 1024;
    *&buf[14] = v17;
    _os_log_impl(&dword_21ED4E000, v66, OS_LOG_TYPE_DEFAULT, "[ShouldAutoPiP] For request(%p): %{BOOL}u", buf, 0x12u);
  }

  return v17;
}

+ (uint64_t)_doesPegasusAllowEntityToAutoPIP:(void *)p pipCoordinator:
{
  pCopy = p;
  v5 = a2;
  objc_opt_self();
  application = [v5 application];
  processState = [application processState];
  v8 = [processState pid];

  sceneHandle = [v5 sceneHandle];

  persistenceIdentifier = [sceneHandle persistenceIdentifier];

  v11 = [pCopy shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:v8 scenePersistenceIdentifier:persistenceIdentifier pipContentType:0];
  return v11;
}

+ (uint64_t)transitionStyleForProcessIdentifier:(void *)identifier entityToPIP:(void *)p withTransitionContext:(void *)context request:(uint64_t)request reason:
{
  identifierCopy = identifier;
  pCopy = p;
  contextCopy = context;
  objc_opt_self();
  v13 = objc_opt_class();
  v14 = pCopy;
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

  v17 = objc_opt_class();
  v18 = v14;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = [SBAutoPIPWorkspaceTransaction isSystemGesture:contextCopy];
  previousLayoutState = [v16 previousLayoutState];
  unlockedEnvironmentMode = [previousLayoutState unlockedEnvironmentMode];

  if (request == 3)
  {
    v24 = 2;
    goto LABEL_26;
  }

  if (SBReduceMotion())
  {
    goto LABEL_25;
  }

  if (!v16 || unlockedEnvironmentMode == 2)
  {
    if (!v20)
    {
      goto LABEL_25;
    }

    v26 = 0;
    goto LABEL_20;
  }

  animationDisabled = [v16 animationDisabled];
  if (v20)
  {
    v26 = animationDisabled ^ 1;
LABEL_20:
    if ([v20 isAnimated] & 1) != 0 || (v26)
    {
      if (((v21 | v26) & 1) == 0)
      {
        v24 = 1;
        goto LABEL_26;
      }

      goto LABEL_27;
    }

LABEL_25:
    v24 = 0;
    goto LABEL_26;
  }

  if (animationDisabled)
  {
    goto LABEL_25;
  }

LABEL_27:
  v28 = objc_opt_class();
  v29 = identifierCopy;
  if (v28)
  {
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  sceneHandle = [v31 sceneHandle];
  persistenceIdentifier = [sceneHandle persistenceIdentifier];

  v44 = [contextCopy source] == 11;
  v34 = [v31 objectForActivationSetting:58];

  integerValue = [v34 integerValue];
  workspace = [contextCopy workspace];
  pipCoordinator = [workspace pipCoordinator];

  v37 = [pipCoordinator controllerForType:integerValue];
  windowSceneManager = [SBApp windowSceneManager];
  v39 = persistenceIdentifier;
  v43 = persistenceIdentifier;
  v40 = [windowSceneManager windowSceneForPersistentIdentifier:persistenceIdentifier];

  v41 = [[SBPIPMorphAnimatorController alloc] initWithTargetProcessIdentifier:a2 scenePersistenceIdentifier:v39 windowScene:v40 direction:0 gestureInitiated:v44 delegate:v37 uuid:0];
  viewMorphAnimator = [(SBPIPMorphAnimatorController *)v41 viewMorphAnimator];
  LODWORD(v39) = [viewMorphAnimator preflightCheck];

  if (v39)
  {
    v24 = 3;
  }

  else
  {
    v24 = 0;
  }

LABEL_26:
  return v24;
}

+ (BOOL)isSystemGesture:(uint64_t)gesture
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_class();
  v4 = SBSafeCast(v3, v2);

  if (v4)
  {
    v5 = [v4 source] == 11;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBAutoPIPWorkspaceTransaction)initWithTransitionRequest:(id)request includeActiveAppEntity:(BOOL)entity reason:(int64_t)reason
{
  requestCopy = request;
  v25.receiver = self;
  v25.super_class = SBAutoPIPWorkspaceTransaction;
  v8 = [(SBWorkspaceTransaction *)&v25 initWithTransitionRequest:requestCopy];
  v9 = v8;
  if (v8)
  {
    v8->_inferredTransitionStyle = 2;
    v24 = 0;
    v10 = [SBAutoPIPWorkspaceTransaction shouldAutoPIPEnteringBackgroundForRequest:requestCopy foundEntity:&v24 tetheringMode:0 transitionStyle:&v8->_transitionStyle reason:reason];
    v11 = v24;
    v12 = v24;
    application = [v12 application];
    processState = [application processState];
    v9->_pidToPIP = [processState pid];

    objc_storeStrong(&v9->_entityToPIP, v11);
    workspace = [requestCopy workspace];
    pipCoordinator = [workspace pipCoordinator];
    pipCoordinator = v9->_pipCoordinator;
    v9->_pipCoordinator = pipCoordinator;

    if (v10 && v9->_pidToPIP)
    {
      if ([(SBAutoPIPWorkspaceTransaction *)v9 isAuditHistoryEnabled])
      {
        [(SBAutoPIPWorkspaceTransaction *)v9 _addAuditHistoryItem:@"PIPController says to start!"];
      }

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 initWithFormat:@"%@-%p", v20, v9];
      reason = v9->_reason;
      v9->_reason = v21;
    }

    else if ([(SBAutoPIPWorkspaceTransaction *)v9 isAuditHistoryEnabled])
    {
      [(SBAutoPIPWorkspaceTransaction *)v9 _addAuditHistoryItem:@"PIPController is not interested."];
    }
  }

  return v9;
}

- (void)_begin
{
  v31.receiver = self;
  v31.super_class = SBAutoPIPWorkspaceTransaction;
  [(SBAutoPIPWorkspaceTransaction *)&v31 _begin];
  entityToPIP = self->_entityToPIP;
  if (entityToPIP)
  {
    v4 = objc_opt_class();
    v5 = entityToPIP;
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

    sceneHandle = [(SBApplicationSceneEntity *)v7 sceneHandle];
    persistenceIdentifier = [sceneHandle persistenceIdentifier];

    v10 = [(SBWorkspaceEntity *)v7 objectForActivationSetting:58];
    integerValue = [v10 integerValue];

    transitionStyle = self->_transitionStyle;
    if (!transitionStyle)
    {
      transitionStyle = self->_inferredTransitionStyle;
    }

    v13 = [(SBPIPControllerCoordinator *)self->_pipCoordinator controllerForType:integerValue];
    pipController = self->_pipController;
    self->_pipController = v13;

    [(SBAutoPIPWorkspaceTransaction *)self addMilestone:@"PIPTransition"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke;
    v29[3] = &unk_2783B27A0;
    v29[4] = self;
    v15 = persistenceIdentifier;
    v30 = v15;
    v16 = MEMORY[0x223D6F7F0](v29);
    v17 = *MEMORY[0x277D76620];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke_26;
    v25[3] = &unk_2783AB780;
    v28 = transitionStyle;
    v25[4] = self;
    v26 = v15;
    v18 = v16;
    v27 = v18;
    v19 = v15;
    [v17 _performBlockAfterCATransactionCommits:v25];
    v20 = dispatch_time(0, 5000000000);
    queue = [(SBTransaction *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke_3;
    block[3] = &unk_2783A9348;
    v24 = v18;
    v22 = v18;
    dispatch_after(v20, queue, block);
  }

  else if ([(SBAutoPIPWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    [(SBAutoPIPWorkspaceTransaction *)self _addAuditHistoryItem:@"Nothing to PIP."];
  }
}

void __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  if ((*(v6 + 248) & 1) == 0)
  {
    *(v6 + 248) = 1;
    if ([*(a1 + 32) isWaitingForMilestone:@"PIPTransition"])
    {
      [*(a1 + 32) satisfyMilestone:@"PIPTransition"];
    }

    v7 = SBLogPIP();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 localizedDescription];
      *buf = 67109378;
      v15 = a2;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "PiP did start with success{%{BOOL}u} error{%{public}@}", buf, 0x12u);
    }

    if ((a2 & 1) == 0)
    {
      v9 = [*(*(a1 + 32) + 232) pictureInPictureMorphAnimatorControllerForProcessIdentifier:*(*(a1 + 32) + 208) scenePersistenceIdentifier:*(a1 + 40)];
      v10 = v9;
      if (v9)
      {
        [v9 cancel];
      }

      [*(*(a1 + 32) + 232) cancelPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:*(*(a1 + 32) + 208) scenePersistenceIdentifier:*(a1 + 40)];
      v11 = MEMORY[0x277CCACA8];
      v12 = [*(*(a1 + 32) + 264) uniqueIdentifier];
      v13 = [v11 stringWithFormat:@"Couldn't start PIP for %@ (pid %d)", v12, *(*(a1 + 32) + 208)];

      [*(a1 + 32) _failWithReason:@"startingPIPFailed" description:v13 precipitatingError:v5];
    }
  }
}

void __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke_26(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = SBLogPIP();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v2 == 1;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "AutoPIP Workspace transaction did begin animated{%{BOOL}u}", buf, 8u);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 232);
  v7 = *(v4 + 208);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke_27;
  v8[3] = &unk_2783AA068;
  v8[4] = v4;
  v9 = *(a1 + 48);
  [v6 startPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:v7 scenePersistenceIdentifier:v5 animated:v2 == 1 completionHandler:v8];
}

void __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke_27(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke_2;
  block[3] = &unk_2783B91D8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)_didComplete
{
  [(SBPIPController *)self->_pipController setPictureInPictureWindowsHidden:0 forReason:self->_reason];
  v3.receiver = self;
  v3.super_class = SBAutoPIPWorkspaceTransaction;
  [(SBWorkspaceTransaction *)&v3 _didComplete];
}

- (id)_customizedDescriptionProperties
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_pidToPIP >= 1)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [dictionary setObject:v4 forKey:@"pidToPIP"];
  }

  entityToPIP = self->_entityToPIP;
  if (entityToPIP)
  {
    succinctDescription = [(SBWorkspaceEntity *)entityToPIP succinctDescription];
    [dictionary setObject:succinctDescription forKey:@"entityToPIP"];
  }

  transitionStyle = self->_transitionStyle;
  if (!transitionStyle)
  {
    transitionStyle = self->_inferredTransitionStyle;
  }

  if (transitionStyle > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_2783B91F8[transitionStyle];
  }

  [dictionary setObject:v8 forKey:@"transitionStyle"];

  return dictionary;
}

- (int64_t)transitionStyle
{
  if (!self)
  {
    return 0;
  }

  transitionStyle = self->_transitionStyle;
  if (!transitionStyle)
  {
    return self->_inferredTransitionStyle;
  }

  return transitionStyle;
}

- (uint64_t)_transitionStyle
{
  if (!self)
  {
    return 0;
  }

  v1 = *(self + 256);
  if (!v1)
  {
    return *(self + 216);
  }

  return v1;
}

@end