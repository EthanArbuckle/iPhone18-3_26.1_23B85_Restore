@interface SBAutoPIPWorkspaceTransaction
+ (BOOL)isSystemGesture:(uint64_t)a1;
+ (BOOL)shouldAutoPIPEnteringBackgroundForRequest:(id)a3 foundEntity:(id *)a4 tetheringMode:(int64_t *)a5 transitionStyle:(int64_t *)a6 reason:(int64_t)a7;
+ (uint64_t)_doesPegasusAllowEntityToAutoPIP:(void *)a3 pipCoordinator:;
+ (uint64_t)transitionStyleForProcessIdentifier:(void *)a3 entityToPIP:(void *)a4 withTransitionContext:(void *)a5 request:(uint64_t)a6 reason:;
- (SBAutoPIPWorkspaceTransaction)initWithTransitionRequest:(id)a3 includeActiveAppEntity:(BOOL)a4 reason:(int64_t)a5;
- (id)_customizedDescriptionProperties;
- (int64_t)transitionStyle;
- (uint64_t)_transitionStyle;
- (void)_begin;
- (void)_didComplete;
@end

@implementation SBAutoPIPWorkspaceTransaction

+ (BOOL)shouldAutoPIPEnteringBackgroundForRequest:(id)a3 foundEntity:(id *)a4 tetheringMode:(int64_t *)a5 transitionStyle:(int64_t *)a6 reason:(int64_t)a7
{
  v89 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [SBApp windowSceneManager];
  v13 = [v11 displayIdentity];
  v14 = [v12 windowSceneForDisplayIdentity:v13];

  if (v14 && ([v14 uiLockStateProvider], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isUILocked"), v15, (v16 & 1) == 0))
  {
    v69 = a4;
    v73 = a7;
    v18 = [v11 applicationContext];
    v19 = [v11 workspace];
    v20 = [v19 pipCoordinator];

    v21 = objc_opt_class();
    v22 = [v18 previousLayoutState];
    v74 = SBSafeCast(v21, v22);

    v23 = [SBApp windowSceneManager];
    v24 = [v11 displayIdentity];
    v25 = [v23 windowSceneForDisplayIdentity:v24];

    v26 = [v18 requestedPIPEntity];
    v70 = a5;
    v71 = v26;
    v72 = v25;
    if (v26 && (v27 = v26, [(SBAutoPIPWorkspaceTransaction *)a1 _doesPegasusAllowEntityToAutoPIP:v26 pipCoordinator:v20]))
    {
      v28 = v27;
    }

    else
    {
      v29 = [v25 switcherController];
      v30 = [v29 windowManagementContext];
      v31 = [v30 isFlexibleWindowingEnabled];

      if (v31)
      {
        v32 = [v74 elementIdentifiersToLayoutAttributes];
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v33 = [v18 previousEntities];
        v28 = [v33 countByEnumeratingWithState:&v82 objects:v88 count:16];
        if (v28)
        {
          v68 = v32;
          v34 = *v83;
          while (2)
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v83 != v34)
              {
                objc_enumerationMutation(v33);
              }

              v36 = *(*(&v82 + 1) + 8 * i);
              if ([v36 isApplicationSceneEntity] && +[SBAutoPIPWorkspaceTransaction _doesPegasusAllowEntityToAutoPIP:pipCoordinator:](a1, v36, v20))
              {
                v45 = [v36 uniqueIdentifier];
                v32 = v68;
                v46 = [v68 objectForKey:v45];

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

            v28 = [v33 countByEnumeratingWithState:&v82 objects:v88 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }

          v32 = v68;
        }

LABEL_30:
      }

      else
      {
        v37 = [v18 previousApplicationSceneEntityForLayoutRole:1];
        v38 = [v18 previousApplicationSceneEntityForLayoutRole:2];
        if (v38)
        {
          v39 = objc_opt_class();
          v40 = [v11 applicationContext];
          v41 = [v40 previousLayoutState];
          v42 = SBSafeCast(v39, v41);

          if (v42 && [v42 spaceConfiguration] == 2)
          {
            v43 = v38;

            v37 = v43;
          }
        }

        if ([(SBAutoPIPWorkspaceTransaction *)a1 _doesPegasusAllowEntityToAutoPIP:v37 pipCoordinator:v20])
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
    v47 = [v18 applicationSceneEntities];
    v48 = [v47 countByEnumeratingWithState:&v76 objects:v86 count:16];
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
            objc_enumerationMutation(v47);
          }

          if ([*(*(&v76 + 1) + 8 * j) isAnalogousToEntity:v28])
          {

            v28 = 0;
            goto LABEL_41;
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v76 objects:v86 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_41:

    v52 = [v28 application];
    v53 = [v52 info];
    v54 = [v53 isBlockedForScreenTimeExpiration];

    if (v54)
    {

      v28 = 0;
    }

    v55 = [v18 removalContextForEntity:v28];

    if (v55)
    {

      v28 = 0;
    }

    if ([v11 isCrossingDisplays])
    {

      v28 = 0;
    }

    if (v28)
    {
      v56 = [v28 application];
      v57 = [v56 processState];
      v58 = [v57 pid];

      v59 = [v28 sceneHandle];
      v60 = [v59 persistenceIdentifier];

      v61 = [v20 tetheringModeForScenePersistenceIdentifier:v60 pipContentType:0];
      v62 = v61;
      v63 = (v73 - 1) >= 3 && v61 == 1;
      v17 = !v63;
      if (!v63)
      {
        if (a6)
        {
          *a6 = [(SBAutoPIPWorkspaceTransaction *)a1 transitionStyleForProcessIdentifier:v58 entityToPIP:v28 withTransitionContext:v18 request:v11 reason:v73];
        }

        if (v69)
        {
          v64 = v28;
          *v69 = v28;
        }
      }

      if (v70)
      {
        *v70 = v62;
      }

      v65 = SBLogPIP();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *&buf[4] = v11;
        *&buf[12] = 1024;
        *&buf[14] = v17;
        *&buf[18] = 2048;
        *&buf[20] = v62;
        *&buf[28] = 2048;
        *&buf[30] = v73;
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
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v17;
    _os_log_impl(&dword_21ED4E000, v66, OS_LOG_TYPE_DEFAULT, "[ShouldAutoPiP] For request(%p): %{BOOL}u", buf, 0x12u);
  }

  return v17;
}

+ (uint64_t)_doesPegasusAllowEntityToAutoPIP:(void *)a3 pipCoordinator:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v5 application];
  v7 = [v6 processState];
  v8 = [v7 pid];

  v9 = [v5 sceneHandle];

  v10 = [v9 persistenceIdentifier];

  v11 = [v4 shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:v8 scenePersistenceIdentifier:v10 pipContentType:0];
  return v11;
}

+ (uint64_t)transitionStyleForProcessIdentifier:(void *)a3 entityToPIP:(void *)a4 withTransitionContext:(void *)a5 request:(uint64_t)a6 reason:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_self();
  v13 = objc_opt_class();
  v14 = v11;
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

  v21 = [SBAutoPIPWorkspaceTransaction isSystemGesture:v12];
  v22 = [v16 previousLayoutState];
  v23 = [v22 unlockedEnvironmentMode];

  if (a6 == 3)
  {
    v24 = 2;
    goto LABEL_26;
  }

  if (SBReduceMotion())
  {
    goto LABEL_25;
  }

  if (!v16 || v23 == 2)
  {
    if (!v20)
    {
      goto LABEL_25;
    }

    v26 = 0;
    goto LABEL_20;
  }

  v25 = [v16 animationDisabled];
  if (v20)
  {
    v26 = v25 ^ 1;
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

  if (v25)
  {
    goto LABEL_25;
  }

LABEL_27:
  v28 = objc_opt_class();
  v29 = v10;
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

  v32 = [v31 sceneHandle];
  v33 = [v32 persistenceIdentifier];

  v44 = [v12 source] == 11;
  v34 = [v31 objectForActivationSetting:58];

  v35 = [v34 integerValue];
  v36 = [v12 workspace];
  v45 = [v36 pipCoordinator];

  v37 = [v45 controllerForType:v35];
  v38 = [SBApp windowSceneManager];
  v39 = v33;
  v43 = v33;
  v40 = [v38 windowSceneForPersistentIdentifier:v33];

  v41 = [[SBPIPMorphAnimatorController alloc] initWithTargetProcessIdentifier:a2 scenePersistenceIdentifier:v39 windowScene:v40 direction:0 gestureInitiated:v44 delegate:v37 uuid:0];
  v42 = [(SBPIPMorphAnimatorController *)v41 viewMorphAnimator];
  LODWORD(v39) = [v42 preflightCheck];

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

+ (BOOL)isSystemGesture:(uint64_t)a1
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

- (SBAutoPIPWorkspaceTransaction)initWithTransitionRequest:(id)a3 includeActiveAppEntity:(BOOL)a4 reason:(int64_t)a5
{
  v7 = a3;
  v25.receiver = self;
  v25.super_class = SBAutoPIPWorkspaceTransaction;
  v8 = [(SBWorkspaceTransaction *)&v25 initWithTransitionRequest:v7];
  v9 = v8;
  if (v8)
  {
    v8->_inferredTransitionStyle = 2;
    v24 = 0;
    v10 = [SBAutoPIPWorkspaceTransaction shouldAutoPIPEnteringBackgroundForRequest:v7 foundEntity:&v24 tetheringMode:0 transitionStyle:&v8->_transitionStyle reason:a5];
    v11 = v24;
    v12 = v24;
    v13 = [v12 application];
    v14 = [v13 processState];
    v9->_pidToPIP = [v14 pid];

    objc_storeStrong(&v9->_entityToPIP, v11);
    v15 = [v7 workspace];
    v16 = [v15 pipCoordinator];
    pipCoordinator = v9->_pipCoordinator;
    v9->_pipCoordinator = v16;

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

    v8 = [(SBApplicationSceneEntity *)v7 sceneHandle];
    v9 = [v8 persistenceIdentifier];

    v10 = [(SBWorkspaceEntity *)v7 objectForActivationSetting:58];
    v11 = [v10 integerValue];

    transitionStyle = self->_transitionStyle;
    if (!transitionStyle)
    {
      transitionStyle = self->_inferredTransitionStyle;
    }

    v13 = [(SBPIPControllerCoordinator *)self->_pipCoordinator controllerForType:v11];
    pipController = self->_pipController;
    self->_pipController = v13;

    [(SBAutoPIPWorkspaceTransaction *)self addMilestone:@"PIPTransition"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke;
    v29[3] = &unk_2783B27A0;
    v29[4] = self;
    v15 = v9;
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
    v21 = [(SBTransaction *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SBAutoPIPWorkspaceTransaction__begin__block_invoke_3;
    block[3] = &unk_2783A9348;
    v24 = v18;
    v22 = v18;
    dispatch_after(v20, v21, block);
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (self->_pidToPIP >= 1)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v3 setObject:v4 forKey:@"pidToPIP"];
  }

  entityToPIP = self->_entityToPIP;
  if (entityToPIP)
  {
    v6 = [(SBWorkspaceEntity *)entityToPIP succinctDescription];
    [v3 setObject:v6 forKey:@"entityToPIP"];
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

  [v3 setObject:v8 forKey:@"transitionStyle"];

  return v3;
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
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 256);
  if (!v1)
  {
    return *(a1 + 216);
  }

  return v1;
}

@end