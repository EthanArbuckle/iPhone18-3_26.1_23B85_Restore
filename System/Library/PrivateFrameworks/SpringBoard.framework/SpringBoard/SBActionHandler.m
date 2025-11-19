@interface SBActionHandler
+ (id)sharedInstance;
- (BOOL)_shouldPromptForSecureDrawViolations;
- (void)_captureRadarAttachmentsWithCompletion:(id)a3;
- (void)_executeRestartAction:(id)a3 fromProcess:(id)a4;
- (void)_reportAndKillInsecureProcesses:(id)a3;
- (void)addActionHandler:(id)a3;
- (void)handleActions:(id)a3 origin:(id)a4 withResult:(id)a5;
@end

@implementation SBActionHandler

+ (id)sharedInstance
{
  if (sharedInstance___once_5 != -1)
  {
    +[SBActionHandler sharedInstance];
  }

  v3 = sharedInstance___instance_7;

  return v3;
}

uint64_t __33__SBActionHandler_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBActionHandler);
  v1 = sharedInstance___instance_7;
  sharedInstance___instance_7 = v0;

  return kdebug_trace();
}

- (void)handleActions:(id)a3 origin:(id)a4 withResult:(id)a5
{
  v131 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke;
  v121[3] = &unk_2783B8B50;
  v11 = v10;
  v122 = v11;
  v12 = MEMORY[0x223D6F7F0](v121);
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_2;
  v118[3] = &unk_2783B8B78;
  v13 = v9;
  v119 = v13;
  v14 = v12;
  v120 = v14;
  v15 = MEMORY[0x223D6F7F0](v118);
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_37;
  v116[3] = &unk_2783B8BC8;
  v16 = v15;
  v117 = v16;
  v17 = MEMORY[0x223D6F7F0](v116);
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v112 objects:v130 count:16];
  v90 = v17;
  if (!v19)
  {

LABEL_83:
    (*(v14 + 2))(v14, 0);
    goto LABEL_84;
  }

  v77 = v16;
  v78 = v14;
  v79 = v11;
  v92 = *v113;
  v81 = *MEMORY[0x277CCA068];
  v88 = *MEMORY[0x277D67008];
  v20 = 1;
  v80 = *MEMORY[0x277D67028];
  v76 = *MEMORY[0x277D67018];
  v74 = *MEMORY[0x277D67010];
  v75 = *MEMORY[0x277D67020];
  v82 = v13;
  v83 = *MEMORY[0x277D67000];
  v86 = self;
  v87 = v18;
  v21 = v17;
  v22 = v19;
  while (2)
  {
    v23 = 0;
    v89 = v22;
    do
    {
      if (*v113 != v92)
      {
        objc_enumerationMutation(v18);
      }

      if ((v20 & 1) == 0)
      {

        v14 = v78;
        v11 = v79;
        v16 = v77;
        goto LABEL_84;
      }

      v24 = *(*(&v112 + 1) + 8 * v23);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_3;
        v111[3] = &unk_2783A92D8;
        v111[4] = self;
        v111[5] = v24;
        v20 = (v21)[2](v21, v24, @"com.apple.backboardd", v111);
        goto LABEL_77;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_4;
        v107[3] = &unk_2783A8ED8;
        v108 = v13;
        v109 = self;
        v110 = v24;
        v20 = (v21)[2](v21, v24, @"com.apple.frontboard.shutdown", v107);

        goto LABEL_77;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = 1;
            goto LABEL_77;
          }

          v38 = [v24 locations];
          v39 = +[SBWallpaperController sharedInstance];
          v40 = [v39 wallpaperConfigurationManager];
          v20 = 1;
          [v40 wallpaperDidChangeForVariants:v38 shouldNotify:1];

          goto LABEL_64;
        }

        v31 = objc_opt_class();
        v32 = v24;
        if (v31)
        {
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        v46 = v33;

        v85 = v46;
        v47 = [v46 persistedIdentifiers];
        v91 = v32;
        v84 = v47;
        if (v47)
        {
          v48 = v47;
          v49 = [MEMORY[0x277CBEB58] set];
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v50 = v48;
          v51 = [v50 countByEnumeratingWithState:&v95 objects:v129 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v96;
            do
            {
              for (i = 0; i != v52; ++i)
              {
                if (*v96 != v53)
                {
                  objc_enumerationMutation(v50);
                }

                v55 = *(*(&v95 + 1) + 8 * i);
                v56 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
                v57 = [v56 existingSceneHandleForPersistenceIdentifier:v55];

                if (v57)
                {
                  [v49 addObject:v57];
                }

                else
                {
                  v58 = SBLogCommon();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v126 = 0;
                    v127 = 2112;
                    v128 = v91;
                  }
                }
              }

              v52 = [v50 countByEnumeratingWithState:&v95 objects:v129 count:16];
            }

            while (v52);
          }

          if ([v49 count])
          {
            v59 = SBApplicationSceneEntityDestructionMakeIntent([v85 preferredAnimationType], objc_msgSend(v85, "destroySceneSession"));
            v93[0] = MEMORY[0x277D85DD0];
            v93[1] = 3221225472;
            v93[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_55;
            v93[3] = &unk_2783B8C10;
            v93[4] = v91;
            v94 = &__block_literal_global_51_3;
            SBWorkspaceDestroyApplicationSceneHandlesWithIntent(v49, v59, v93);

            v60 = 0;
            v61 = 0;
          }

          else
          {
            v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to retrive SBDeviceApplicationSceneHandle-s from the provided persisted identifiers: %@", v50];
            v60 = 2;
          }

          v13 = v82;
          v18 = v87;
          v21 = v90;

          if (!v61)
          {
            goto LABEL_63;
          }
        }

        else
          v61 = {;
          v60 = 1;
          if (!v61)
          {
LABEL_63:

            v20 = 1;
            self = v86;
LABEL_64:
            v22 = v89;
            goto LABEL_77;
          }
        }

        v65 = SBLogCommon();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v126 = v61;
          _os_log_error_impl(&dword_21ED4E000, v65, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v66 = MEMORY[0x277CCA9B8];
        v67 = SBActionHandlerErrorDomain;
        v123 = v81;
        v124 = v61;
        v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        v69 = [v66 errorWithDomain:v67 code:v60 userInfo:v68];

        __51__SBActionHandler_handleActions_origin_withResult___block_invoke_9(v70, v91, v69);
        v18 = v87;
        goto LABEL_63;
      }

      v25 = v24;
      v26 = [v25 identifier];

      v27 = [v25 slot];
      if ([v27 isEqualToString:v88])
      {
        v28 = [SBApp windowSceneManager];
        v29 = [v28 activeDisplayWindowScene];
        v30 = [v29 isContinuityDisplayWindowScene];

        v20 = 1;
        if (v30)
        {
          self = v86;
LABEL_73:
          v18 = v87;
          goto LABEL_74;
        }

        self = v86;
        v18 = v87;
        if (!v26)
        {
          goto LABEL_74;
        }
      }

      else
      {

        if (!v26)
        {
          v20 = 1;
          goto LABEL_74;
        }
      }

      v34 = [v25 slot];
      v35 = [v34 isEqualToString:v88];

      if (v35)
      {
        if ([v25 secureAppType])
        {
          v105[0] = MEMORY[0x277D85DD0];
          v105[1] = 3221225472;
          v105[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_5;
          v105[3] = &unk_2783A8C18;
          v36 = v25;
          v106 = v36;
          if ((v90)[2](v90, v36, @"com.apple.springboard.lockScreenContentAssertion", v105))
          {
            v20 = 1;
            v37 = v106;
LABEL_75:
            v22 = v89;

            goto LABEL_76;
          }

          v103[0] = MEMORY[0x277D85DD0];
          v103[1] = 3221225472;
          v103[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_6;
          v103[3] = &unk_2783A8C18;
          v104 = v36;
          v44 = (v90)[2](v90, v104, @"com.apple.springboard.secureAppAssertion", v103);

          v45 = v106;
          goto LABEL_66;
        }

        goto LABEL_67;
      }

      v41 = [v25 slot];
      v42 = [v41 isEqualToString:v80];

      if (v42)
      {
        v43 = [v25 identifier];

        if (v43)
        {
          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_7;
          v101[3] = &unk_2783A8C18;
          v102 = v25;
          v44 = (v90)[2](v90, v102, @"com.apple.springboard.lockScreenContentAssertion", v101);
          v45 = v102;
LABEL_66:

          if (v44)
          {
            goto LABEL_67;
          }

          v20 = 0;
LABEL_74:
          v37 = [MEMORY[0x277CCA9B8] errorWithDomain:v83 code:2 userInfo:0];
          v73 = [MEMORY[0x277CF0B68] responseForError:v37];
          [v25 sendResponse:v73];

          goto LABEL_75;
        }

LABEL_67:
        v20 = 1;
        goto LABEL_68;
      }

      v62 = [v25 slot];
      if ([v62 isEqualToString:v76])
      {
        goto LABEL_54;
      }

      v63 = [v25 slot];
      if ([v63 isEqualToString:v75])
      {

LABEL_54:
        goto LABEL_55;
      }

      v71 = [v25 slot];
      v72 = [v71 isEqualToString:v74];

      if ((v72 & 1) == 0)
      {
        v20 = 1;
        goto LABEL_73;
      }

LABEL_55:
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_8;
      v99[3] = &unk_2783A92D8;
      v99[4] = self;
      v100 = v25;
      v64 = (v90)[2](v90, v100, @"com.apple.springboard.lockScreenContentAssertion", v99);

      if ((v64 & 1) == 0)
      {
        v20 = 0;
        goto LABEL_73;
      }

      v20 = 1;
      v18 = v87;
LABEL_68:
      v22 = v89;
LABEL_76:

      v21 = v90;
LABEL_77:
      ++v23;
    }

    while (v23 != v22);
    v22 = [v18 countByEnumeratingWithState:&v112 objects:v130 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

  v14 = v78;
  v11 = v79;
  v16 = v77;
  if (v20)
  {
    goto LABEL_83;
  }

LABEL_84:
}

uint64_t __51__SBActionHandler_handleActions_origin_withResult___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __51__SBActionHandler_handleActions_origin_withResult___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([*(a1 + 32) hasEntitlement:v8])
  {
    if (v9)
    {
      v10 = v9[2](v9);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "Entitlement %{public}@ required for action: %{public}@", &v15, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
    v10 = 0;
  }

  return v10;
}

uint64_t __51__SBActionHandler_handleActions_origin_withResult___block_invoke_37(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_2_38;
  v13[3] = &unk_2783B8BA0;
  v14 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v11 = v9(v8, a2, a3, v13);

  return v11;
}

uint64_t __51__SBActionHandler_handleActions_origin_withResult___block_invoke_2_38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 1;
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277D0AAC0] sharedInstance];
  v3 = [v2 processForPID:{objc_msgSend(*(a1 + 32), "pid")}];

  [*(a1 + 40) _executeRestartAction:*(a1 + 48) fromProcess:v3];
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_5(uint64_t a1)
{
  v2 = +[SBSecureAppManager sharedInstance];
  [v2 addLockScreenContentAction:*(a1 + 32)];
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_6(uint64_t a1)
{
  v2 = +[SBSecureAppManager sharedInstance];
  [v2 addLockScreenContentAction:*(a1 + 32)];
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_7(uint64_t a1)
{
  v2 = +[SBSecureAppManager sharedInstance];
  [v2 addLockScreenContentAction:*(a1 + 32)];
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_8(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v8 + 1) + 8 * v6);
      if ([v7 handlesActionWithClass:{objc_opt_class(), v8}])
      {
        if ([v7 handleAction:*(a1 + 40) forProvider:*(a1 + 32)])
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  if ([v6 canSendResponse])
  {
    v5 = [objc_alloc(MEMORY[0x277D75408]) initWithInfo:0 error:v4];
    [v6 sendResponse:v5];
  }
}

- (void)addActionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    externalHandlers = self->_externalHandlers;
    v8 = v4;
    if (!externalHandlers)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_externalHandlers;
      self->_externalHandlers = v6;

      externalHandlers = self->_externalHandlers;
    }

    [(NSHashTable *)externalHandlers addObject:v8];
    v4 = v8;
  }
}

- (void)_executeRestartAction:(id)a3 fromProcess:(id)a4
{
  v16 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = FBSProcessPrettyDescription();
  v6 = [v16 reason];
  v7 = [v4 stringWithFormat:@"RestartTransitionRequest-(%@)-reason:%@", v5, v6];

  v8 = [SBRestartTransitionRequest alloc];
  v9 = [v16 reason];
  v10 = [(SBRestartTransitionRequest *)v8 initWithRequester:v7 reason:v9];

  v11 = [v16 options];
  v12 = v11;
  if (v11)
  {
    v13 = 2;
  }

  else
  {
    v13 = (v11 >> 2) & 1;
  }

  [(SBRestartTransitionRequest *)v10 setRestartType:v13];
  if ((v12 & 2) != 0)
  {
    [(SBRestartTransitionRequest *)v10 setWantsPersistentSnapshot:1];
  }

  v14 = [v16 targetURL];
  [(SBRestartTransitionRequest *)v10 setApplicationLaunchURL:v14];

  v15 = [SBApp restartManager];
  [v15 restartWithTransitionRequest:v10];
}

- (void)_reportAndKillInsecureProcesses:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 secureModeViolations];
  v6 = SBLogWorkspace();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Received insecure drawing action %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277D02C20] rootSettings];
  if ([v7 killsInsecureDrawingApps])
  {
    v39 = self;
    v42 = v7;
    v43 = v4;
    v41 = getpid();
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v65;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v65 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v64 + 1) + 8 * i);
          v14 = [v13 layerNamesByContext];
          v15 = [v14 count];

          if (v15)
          {
            v16 = [v13 layerNamesByContext];
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke;
            v60[3] = &unk_2783B8C38;
            v61 = v8;
            v62 = v45;
            v63 = v13;
            [v16 enumerateKeysAndObjectsUsingBlock:v60];

            v17 = v61;
          }

          else
          {
            v17 = [v13 processId];
            [v45 addObject:v17];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v10);
    }

    if ([v8 count])
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v18 = v8;
      v19 = [v18 countByEnumeratingWithState:&v56 objects:v68 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v57;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v57 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v56 + 1) + 8 * j);
            v51 = MEMORY[0x277D85DD0];
            v52 = 3221225472;
            v53 = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_2;
            v54 = &unk_2783AC3E8;
            v55 = v23;
            AnalyticsSendEventLazy();
          }

          v20 = [v18 countByEnumeratingWithState:&v56 objects:v68 count:16];
        }

        while (v20);
      }
    }

    if (![v45 count])
    {
      v24 = +[SBDefaults localDefaults];
      v25 = [v24 securityDefaults];
      v26 = [v25 enableLayerBasedViewSecurity];

      if ((v26 & 1) == 0)
      {
        v32 = SBLogWorkspace();
        v7 = v42;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "Disregarding insecure drawing action because only layer-based violations were reported.", buf, 2u);
        }

        v4 = v43;
        goto LABEL_42;
      }
    }

    v27 = +[SBDefaults localDefaults];
    v28 = [v27 securityDefaults];
    v29 = [v28 enableLayerBasedViewSecurity];

    if (v29)
    {
      v30 = MEMORY[0x277CBEB98];
      v31 = [obj bs_map:&__block_literal_global_86_3];
      v32 = [v30 setWithArray:v31];
    }

    else
    {
      v32 = v45;
    }

    v7 = v42;
    v33 = MEMORY[0x277CBEB98];
    v34 = [MEMORY[0x277CCABB0] numberWithInt:v41];
    v35 = [v33 setWithObject:v34];
    v36 = [v32 isEqualToSet:v35];

    if (v36)
    {
      v37 = SBLogWorkspace();
      v4 = v43;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v38 = "Disregarding insecure drawing action because only SpringBoard violations were reported.";
LABEL_40:
        _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
      }
    }

    else
    {
      v4 = v43;
      if ([v32 count])
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_88;
        v46[3] = &unk_2783B8CA8;
        v47 = obj;
        v50 = v41;
        v48 = v32;
        v49 = v40;
        [v40 _captureRadarAttachmentsWithCompletion:v46];

        v37 = v47;
      }

      else
      {
        v37 = SBLogWorkspace();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v38 = "Disregarding insecure drawing action because no processes were selected for reporting.";
          goto LABEL_40;
        }
      }
    }

LABEL_42:
    goto LABEL_43;
  }

  v8 = SBLogWorkspace();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Disregarding insecure drawing actions per configuration settings.", buf, 2u);
  }

LABEL_43:
}

void __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 count])
  {
    [*(a1 + 32) unionSet:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) processId];
    [v4 addObject:v5];
  }
}

id __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"layerName";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

void __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_88(uint64_t a1, void *a2, int a3)
{
  v114 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v6 = SBLogWorkspace();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Disregarding insecure drawing actions because attachments are still being gathered for a previous report.";
LABEL_64:
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else
  {
    v8 = +[SBLockStateAggregator sharedInstance];
    v9 = [v8 hasAnyLockState];

    if (v9)
    {
      v6 = [MEMORY[0x277D0AAC0] sharedInstance];
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      obj = *(a1 + 32);
      v74 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
      if (v74)
      {
        v66 = v6;
        v67 = 0;
        v61 = v5;
        v10 = 0;
        v73 = *v100;
        v62 = 0;
        v71 = a1;
        do
        {
          v11 = 0;
          do
          {
            if (*v100 != v73)
            {
              objc_enumerationMutation(obj);
            }

            v75 = v11;
            v12 = *(*(&v99 + 1) + 8 * v11);
            v13 = [v12 processId];
            v14 = [v13 intValue];

            if (v14 >= 1 && v14 != *(a1 + 56))
            {
              v15 = *(a1 + 40);
              v16 = [MEMORY[0x277CCABB0] numberWithInt:v14];
              LODWORD(v15) = [v15 containsObject:v16];

              if (v15)
              {
                v17 = [v66 processForPID:v14];
                a1 = v71;
                if (v17)
                {
                  v18 = [MEMORY[0x277D0AAD8] sharedInstance];
                  v97[0] = MEMORY[0x277D85DD0];
                  v97[1] = 3221225472;
                  v97[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_91;
                  v97[3] = &unk_2783B1488;
                  v69 = v17;
                  v19 = v17;
                  v98 = v19;
                  v70 = [v18 scenesPassingTest:v97];
                  v95[0] = MEMORY[0x277D85DD0];
                  v95[1] = 3221225472;
                  v95[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_2_93;
                  v95[3] = &unk_2783B1488;
                  v96 = v19;
                  v68 = v18;
                  v20 = v18;
                  v21 = v96;
                  v22 = [v20 scenesPassingTest:v95];
                  v23 = [v21 bundleIdentifier];
                  v24 = SBLogWorkspace();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    v58 = [v21 state];
                    *buf = 67109890;
                    v106 = v14;
                    v107 = 2114;
                    v108 = v23;
                    v109 = 2112;
                    v110 = v58;
                    v111 = 2114;
                    v112 = v22;
                    _os_log_error_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_ERROR, "Killing process with pid %i (bundleID: %{public}@, state: %@, foreground scenes: %{public}@) for view security", buf, 0x26u);

                    a1 = v71;
                  }

                  if (!v67)
                  {
                    v25 = [v21 handle];
                    v26 = [v25 name];
                    v67 = [v26 copy];

                    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
                    v28 = [v12 layerNamesByContext];
                    v93[0] = MEMORY[0x277D85DD0];
                    v93[1] = 3221225472;
                    v93[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_94;
                    v93[3] = &unk_2783B8C80;
                    v29 = v27;
                    v94 = v29;
                    [v28 enumerateKeysAndObjectsUsingBlock:v93];

                    if ([v29 count])
                    {
                      v30 = [v29 copy];

                      v62 = v30;
                    }

                    a1 = v71;
                  }

                  if ([v21 isApplicationProcess])
                  {
                    v63 = v21;
                    v64 = v23;
                    v65 = v22;
                    v31 = +[SBLockStateAggregator sharedInstance];
                    v32 = [v31 lockState];

                    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process detected doing insecure drawing while in secure mode | isUILocked:%d", v32 & 1];
                    v89 = 0u;
                    v90 = 0u;
                    v91 = 0u;
                    v92 = 0u;
                    v76 = v70;
                    v78 = [v76 countByEnumeratingWithState:&v89 objects:v104 count:16];
                    if (v78)
                    {
                      v77 = *v90;
                      do
                      {
                        v34 = 0;
                        do
                        {
                          if (*v90 != v77)
                          {
                            objc_enumerationMutation(v76);
                          }

                          v35 = *(*(&v89 + 1) + 8 * v34);
                          v36 = [v35 settings];
                          v37 = [v35 identifier];
                          v38 = [v33 stringByAppendingFormat:@" \n Scene %@ isOccluded:%d", v37, objc_msgSend(v36, "isOccluded")];

                          objc_opt_class();
                          v79 = v36;
                          v80 = v34;
                          if (objc_opt_isKindOfClass())
                          {
                            v33 = [v38 stringByAppendingFormat:@" isUnderlock:%d", objc_msgSend(v36, "underLock")];
                          }

                          else
                          {
                            v33 = v38;
                          }

                          v87 = 0u;
                          v88 = 0u;
                          v85 = 0u;
                          v86 = 0u;
                          v39 = [v12 contextIds];
                          v40 = [v39 countByEnumeratingWithState:&v85 objects:v103 count:16];
                          if (v40)
                          {
                            v41 = v40;
                            v42 = *v86;
                            do
                            {
                              for (i = 0; i != v41; ++i)
                              {
                                if (*v86 != v42)
                                {
                                  objc_enumerationMutation(v39);
                                }

                                v44 = *(*(&v85 + 1) + 8 * i);
                                v45 = [v44 unsignedIntValue];
                                v46 = [v33 stringByAppendingFormat:@" \n contextId:0x%x", v45];

                                v47 = [v35 layerManager];
                                v48 = [v47 layerWithContextID:v45];

                                if (v48)
                                {
                                  [v48 level];
                                  v50 = [v46 stringByAppendingFormat:@" level:%.1f", v49];

                                  v46 = v50;
                                }

                                v51 = [v12 layerNamesByContext];
                                v52 = [v51 objectForKey:v44];

                                if ([v52 count])
                                {
                                  v33 = [v46 stringByAppendingFormat:@"\n   violating layer names:%@", v52];
                                }

                                else
                                {
                                  v33 = v46;
                                }
                              }

                              v41 = [v39 countByEnumeratingWithState:&v85 objects:v103 count:16];
                            }

                            while (v41);
                          }

                          v34 = v80 + 1;
                        }

                        while (v80 + 1 != v78);
                        v78 = [v76 countByEnumeratingWithState:&v89 objects:v104 count:16];
                      }

                      while (v78);
                    }

                    [v63 killForReason:8 andReport:1 withDescription:v33];
                    a1 = v71;
                    v53 = v69;
                    v23 = v64;
                    v22 = v65;
                  }

                  else
                  {
                    kill(v14, 9);
                    v53 = v69;
                  }

                  v10 = 1;
                  v11 = v75;
                  v55 = v68;
                }

                else
                {
                  v54 = BSExecutablePathForPID();
                  v55 = [v54 lastPathComponent];

                  v56 = kill(v14, 9);
                  v57 = SBLogWorkspace();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109634;
                    v106 = v14;
                    v107 = 2114;
                    v108 = v55;
                    v109 = 1024;
                    LODWORD(v110) = v56;
                    _os_log_error_impl(&dword_21ED4E000, v57, OS_LOG_TYPE_ERROR, "Killing unknown process with pid %i for view security: %{public}@ (result: %i)", buf, 0x18u);
                  }

                  if (v56 == 3)
                  {
                    a1 = v71;
                    v53 = 0;
                  }

                  else
                  {
                    a1 = v71;
                    v53 = 0;
                    if (v55)
                    {
                      if (v67)
                      {
                        v10 = 1;
                      }

                      else
                      {
                        v55 = v55;
                        v10 = 1;
                        v67 = v55;
                      }
                    }
                  }
                }
              }

              else
              {
                a1 = v71;
              }
            }

            ++v11;
          }

          while (v11 != v74);
          v59 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
          v74 = v59;
        }

        while (v59);

        if ((v10 & 1) != 0 && [*(a1 + 48) _shouldPromptForSecureDrawViolations])
        {
          v60 = dispatch_time(0, 1000000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_114;
          block[3] = &unk_2783A8ED8;
          v67 = v67;
          v82 = v67;
          v62 = v62;
          v83 = v62;
          v5 = v61;
          v84 = v61;
          dispatch_after(v60, MEMORY[0x277D85CD0], block);

          v6 = v66;
        }

        else
        {
          v5 = v61;
          v6 = v66;
        }
      }

      else
      {
        v67 = 0;
        v62 = 0;
      }
    }

    else
    {
      v6 = SBLogWorkspace();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Disregarding insecure drawing actions because the UI is not locked.";
        goto LABEL_64;
      }
    }
  }
}

uint64_t __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_91(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientProcess];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v7 = [v3 settings];
    v8 = [v7 sb_displayIdentityForSceneManagers];
    v9 = [v8 isCarDisplay];

    v6 = v9 ^ 1u;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_2_93(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientProcess];
  v5 = *(a1 + 32);

  if (v4 == v5 && ([v3 settings], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "sb_displayIdentityForSceneManagers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isCarDisplay"), v7, v6, (v8 & 1) == 0))
  {
    v11 = [v3 settings];
    if ([v11 isForeground])
    {
      v9 = [v11 isOccluded] ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_114(void *a1)
{
  v3 = objc_alloc_init(SBInsecureDrawingAlertItem);
  [(SBInsecureDrawingAlertItem *)v3 setProcessName:a1[4]];
  [(SBInsecureDrawingAlertItem *)v3 setLayerNames:a1[5]];
  [(SBDiagnosticRequestAlertItem *)v3 setRadarAttachments:a1[6]];
  v2 = +[SBAlertItemsController sharedInstance];
  [v2 activateAlertItem:v3];
}

- (BOOL)_shouldPromptForSecureDrawViolations
{
  v2 = +[SBPlatformController sharedInstance];
  if ([v2 isInternalInstall])
  {
    v3 = +[SBDefaults localDefaults];
    v4 = [v3 securityDefaults];
    v5 = [v4 reportSecureDrawViolations];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_captureRadarAttachmentsWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SBActionHandler *)self _shouldPromptForSecureDrawViolations])
  {
    if (self->_capturingDisplayDump)
    {
      v4[2](v4, 0, 1);
    }

    else
    {
      self->_capturingDisplayDump = 1;
      v5 = v4;
      BKSDisplayServicesArchiveWithOptionsAndCompletion();
    }
  }

  else if (v4)
  {
    v4[2](v4, 0, 0);
  }
}

void __58__SBActionHandler__captureRadarAttachmentsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v20 = v4;
    v18 = a1;
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 temporaryDirectory];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v3;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"secureDrawViolation-%@-%@.caar", v14, v6];
          v16 = [v8 URLByAppendingPathComponent:v15];
          v17 = [v9 objectForKeyedSubscript:v14];
          if ([v17 writeToURL:v16 atomically:0])
          {
            [v20 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    a1 = v18;
    v3 = v19;
    v4 = v20;
  }

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SBActionHandler__captureRadarAttachmentsWithCompletion___block_invoke_2;
    block[3] = &unk_2783A9878;
    v23 = *(a1 + 40);
    v22 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  *(*(a1 + 32) + 8) = 0;
}

@end