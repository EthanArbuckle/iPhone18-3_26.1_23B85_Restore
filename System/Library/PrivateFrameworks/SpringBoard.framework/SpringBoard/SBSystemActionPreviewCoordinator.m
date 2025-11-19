@interface SBSystemActionPreviewCoordinator
- (id)_showPreviewForAction:(void *)a3 withContext:;
- (id)customSoundForPerformingAction:(id)a3;
- (id)initWithWindowScene:(void *)a3 activityManager:;
- (id)previewContextForAction:(id)a3;
- (id)showPreviewForAction:(id)a3 withContext:(id)a4;
- (uint64_t)removeObserver:(uint64_t)result;
- (uint64_t)removePreviewProvider:(uint64_t)result;
- (void)_dismissBanner:(uint64_t)a1;
- (void)_notifyDidBeginPreview:(void *)a3 forAction:;
- (void)_notifyDidEndPreview:(uint64_t)a1 forAction:(void *)a2 withResult:(void *)a3;
- (void)_notifyDidInvalidateExpansionOfPreview:(uint64_t)a1 forAction:(void *)a2 withResult:(void *)a3;
- (void)_presentBanner:(uint64_t)a1;
- (void)addPreviewProvider:(uint64_t)a1;
- (void)provideDiscreteNoActionInteractionFeedback;
@end

@implementation SBSystemActionPreviewCoordinator

- (id)initWithWindowScene:(void *)a3 activityManager:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    if (!v6)
    {
      [SBSystemActionPreviewCoordinator initWithWindowScene:? activityManager:?];
    }

    if (!v7)
    {
      [SBSystemActionPreviewCoordinator initWithWindowScene:? activityManager:?];
    }

    v10.receiver = a1;
    v10.super_class = SBSystemActionPreviewCoordinator;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 8, a2);
      objc_storeStrong(a1 + 7, a3);
    }
  }

  return a1;
}

- (id)previewContextForAction:(id)a3
{
  v3 = a3;
  if ([SBSystemActionSceneElementProvider providesSceneElementForSystemAction:v3])
  {
    v4 = [SBSystemActionSceneElementProvider previewContextForSystemAction:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)showPreviewForAction:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBSystemActionPreviewCoordinator *)&self->super.isa _showPreviewForAction:v6 withContext:v7];
  [(SBSystemActionPreviewCoordinator *)self _notifyDidBeginPreview:v8 forAction:v6];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__SBSystemActionPreviewCoordinator_showPreviewForAction_withContext___block_invoke;
  v15[3] = &unk_2783BF4F0;
  objc_copyWeak(&v17, &location);
  v9 = v6;
  v16 = v9;
  [v8 addExpansionInvalidationBlock:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__SBSystemActionPreviewCoordinator_showPreviewForAction_withContext___block_invoke_2;
  v12[3] = &unk_2783BF4F0;
  objc_copyWeak(&v14, &location);
  v10 = v9;
  v13 = v10;
  [v8 addInvalidationBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v8;
}

- (id)_showPreviewForAction:(void *)a3 withContext:
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 windowScene];
    v60 = [v7 systemApertureController];

    v62 = [v5 configuredAction];
    v61 = [v62 identifier];
    if (SBSIsSystemApertureAvailable() && [SBSystemActionSceneElementProvider providesSceneElementForSystemAction:v5])
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v8 = [a1[3] objectEnumerator];
      v9 = [v8 countByEnumeratingWithState:&v87 objects:v95 count:16];
      if (v9)
      {
        v10 = *v88;
LABEL_6:
        v11 = 0;
        while (1)
        {
          if (*v88 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v87 + 1) + 8 * v11);
          if (([(SBSystemActionSceneElementProvider *)v12 providesElementForSystemAction:v5 withContext:v6]& 1) != 0)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v8 countByEnumeratingWithState:&v87 objects:v95 count:16];
            if (v9)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        v24 = v12;

        if (v24)
        {
          goto LABEL_30;
        }
      }

      else
      {
LABEL_12:
      }

      v24 = [[SBSystemActionSceneElementProvider alloc] initWithSystemAction:v5 systemApertureController:v60 context:v6];
      v25 = a1[3];
      if (!v25)
      {
        v26 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v28 = a1[3];
        v27 = (a1 + 3);
        *v27 = v26;

        v25 = *v27;
      }

      [v25 addObject:v24];
LABEL_30:
      a1 = [(SBSystemActionSceneElementProvider *)v24 previewForReason:?];
    }

    else
    {
      v13 = a1[1];
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke;
      v85[3] = &unk_2783BF518;
      v58 = v61;
      v86 = v58;
      v59 = [v13 bs_firstObjectPassingTest:v85];
      v14 = [v59 showPreviewForAction:v5 withContext:v6];
      v15 = v14;
      if (v14)
      {
        a1 = v14;
      }

      else
      {
        if (_os_feature_enabled_impl() && (SBSIsSystemApertureAvailable() & 1) == 0)
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v41 = [a1[5] keyEnumerator];
          v42 = [v41 countByEnumeratingWithState:&v81 objects:v94 count:16];
          if (v42)
          {
            v43 = *v82;
LABEL_40:
            v44 = 0;
            while (1)
            {
              if (*v82 != v43)
              {
                objc_enumerationMutation(v41);
              }

              v45 = *(*(&v81 + 1) + 8 * v44);
              v46 = [v45 systemAction];
              v47 = [v46 isEqual:v5];

              if (v47)
              {
                break;
              }

              if (v42 == ++v44)
              {
                v42 = [v41 countByEnumeratingWithState:&v81 objects:v94 count:16];
                if (v42)
                {
                  goto LABEL_40;
                }

                goto LABEL_46;
              }
            }

            v49 = v45;
            v48 = [a1[5] objectForKey:v49];

            v50 = v48;
            if (v49)
            {
              goto LABEL_51;
            }
          }

          else
          {
LABEL_46:

            v48 = 0;
          }

          v51 = [[SBSystemActionSimplePreviewPresentableViewController alloc] initWithSystemAction:v5];
          objc_initWeak(buf, a1);
          v52 = [SBSystemActionCompoundPreviewAssertion alloc];
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_2;
          v77[3] = &unk_2783BF540;
          objc_copyWeak(&v80, buf);
          v78 = v51;
          v79 = a1;
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_3;
          v75[3] = &unk_2783BF568;
          v49 = v78;
          v76 = v49;
          v50 = [(SBSystemActionCompoundPreviewAssertion *)v52 initWithIdentifier:v58 stateDidChangeBlock:v77 eventHandlingBlock:v75];

          v53 = a1[5];
          if (!v53)
          {
            v54 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v56 = a1[5];
            v55 = (a1 + 5);
            *v55 = v54;

            v53 = *v55;
          }

          [v53 setObject:v50 forKey:v49];

          objc_destroyWeak(&v80);
          objc_destroyWeak(buf);
LABEL_51:
          a1 = [(SBSystemActionCompoundPreviewAssertion *)v50 acquireForReason:?];
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v16 = [a1[4] keyEnumerator];
          v17 = [v16 countByEnumeratingWithState:&v71 objects:v93 count:16];
          if (v17)
          {
            v18 = *v72;
LABEL_19:
            v19 = 0;
            while (1)
            {
              if (*v72 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v71 + 1) + 8 * v19);
              v21 = [(SBSystemActionSimplePreviewElement *)v20 systemAction];
              v22 = [v21 isEqual:v5];

              if (v22)
              {
                break;
              }

              if (v17 == ++v19)
              {
                v17 = [v16 countByEnumeratingWithState:&v71 objects:v93 count:16];
                if (v17)
                {
                  goto LABEL_19;
                }

                goto LABEL_25;
              }
            }

            v29 = v20;
            v23 = [a1[4] objectForKey:v29];

            v30 = v23;
            if (v29)
            {
              goto LABEL_37;
            }
          }

          else
          {
LABEL_25:

            v23 = 0;
          }

          v31 = [v5 newSimplePreviewElement];
          v32 = SBLogSystemActionPreviewing();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v92 = v58;
            _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "Registering simple preview element for action with identifier: %@", buf, 0xCu);
          }

          v33 = [v60 registerElement:v31];
          objc_initWeak(buf, a1);
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_72;
          v68[3] = &unk_2783ABE60;
          objc_copyWeak(&v70, buf);
          v34 = v31;
          v69 = v34;
          [v33 addInvalidationBlock:v68];
          v35 = [SBSystemActionCompoundPreviewAssertion alloc];
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_2_74;
          v65[3] = &unk_2783BF590;
          v66 = v34;
          v36 = v33;
          v67 = v36;
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_3_78;
          v63[3] = &unk_2783BF568;
          v29 = v66;
          v64 = v29;
          v30 = [(SBSystemActionCompoundPreviewAssertion *)v35 initWithIdentifier:v58 stateDidChangeBlock:v65 eventHandlingBlock:v63];

          v37 = a1[4];
          if (!v37)
          {
            v38 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v40 = a1[4];
            v39 = (a1 + 4);
            *v39 = v38;

            v37 = *v39;
          }

          [v37 setObject:v30 forKey:v29];

          objc_destroyWeak(&v70);
          objc_destroyWeak(buf);

LABEL_37:
          a1 = [(SBSystemActionCompoundPreviewAssertion *)v30 acquireForReason:?];
        }

        v15 = 0;
      }

      v24 = v86;
    }
  }

  return a1;
}

void __69__SBSystemActionPreviewCoordinator_showPreviewForAction_withContext___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [SBSystemActionPreviewCoordinator _notifyDidInvalidateExpansionOfPreview:v5 forAction:*(a1 + 32) withResult:?];
  }
}

void __69__SBSystemActionPreviewCoordinator_showPreviewForAction_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [SBSystemActionPreviewCoordinator _notifyDidEndPreview:v5 forAction:*(a1 + 32) withResult:?];
  }
}

- (id)customSoundForPerformingAction:(id)a3
{
  v4 = [a3 configuredAction];
  v5 = [v4 identifier];

  previewProviders = self->_previewProviders;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SBSystemActionPreviewCoordinator_customSoundForPerformingAction___block_invoke;
  v11[3] = &unk_2783BF518;
  v12 = v5;
  v7 = v5;
  v8 = [(NSMutableSet *)previewProviders bs_firstObjectPassingTest:v11];
  v9 = [v8 soundForPerformingActionWithIdentifier:v7];

  return v9;
}

- (void)provideDiscreteNoActionInteractionFeedback
{
  v2 = [(SBSystemActionPreviewCoordinator *)self windowScene];
  v3 = [v2 systemApertureController];

  [v3 animateDiscreteAnimationStyle:2 toElement:0];
}

void __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [(SBSystemActionCompoundPreviewAssertion *)v12 state];
    if ((v4 & 1) != 0 && ([*(a1 + 32) isPopped] & 1) == 0)
    {
      v10 = [*(a1 + 32) isPresentableAppearingOrAppeared];
      if ((v4 & 0x100) != 0 && v10)
      {
        v11 = [*(a1 + 32) view];
        [v11 sb_setInflated];
      }

      [(SBSystemActionPreviewCoordinator *)WeakRetained _presentBanner:?];
    }

    else
    {
      v5 = [*(a1 + 32) view];
      [v5 sb_setDeflated];

      [(SBSystemActionPreviewCoordinator *)WeakRetained _dismissBanner:?];
    }

    v6 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 56);
    v8 = [v6 systemAction];
    v9 = [v8 hostBundleIdentifier];
    [v7 preventPresentableFromRevoke:v4 & 1 forBundleId:v9];
  }
}

- (void)_dismissBanner:(uint64_t)a1
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v3 = SBApp;
      v4 = a2;
      v5 = [v3 bannerManager];
      v6 = MEMORY[0x277CF0AC0];
      v7 = [v4 requesterIdentifier];
      v8 = [v6 identificationWithRequesterIdentifier:v7];
      v11 = *MEMORY[0x277D68068];
      v12[0] = MEMORY[0x277CBEC38];
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v10 = [v5 revokePresentablesWithIdentification:v8 reason:@"action preview banner dismissed" options:0 userInfo:v9 error:0];

      [*(a1 + 40) removeObjectForKey:v4];
    }
  }
}

void __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 1)
  {
    v8 = v5;
    v7 = [*(a1 + 32) view];
    [v7 sb_setDeflated];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v8 = v5;
    v6 = [*(a1 + 32) view];
    [v6 sb_stopInflating];

    [*(a1 + 32) setPopped:1];
  }

  v5 = v8;
LABEL_6:
}

void __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[4] removeObjectForKey:*(a1 + 32)];
    WeakRetained = v3;
  }
}

uint64_t __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_2_74(uint64_t a1, uint64_t a2)
{
  v3 = [(SBSystemActionCompoundPreviewAssertion *)a2 state];
  [*(a1 + 32) setPreviewing:v3 & 1];
  [*(a1 + 32) setUrgent:HIBYTE(v3) & 1];
  [*(a1 + 32) setExpanding:(v3 >> 8) & 1];
  [*(a1 + 32) setProminent:HIWORD(v3) & 1];
  result = [*(a1 + 40) isValid];
  if ((v3 & 1) == 0 && result)
  {
    v5 = *(a1 + 40);

    return [v5 invalidateWithReason:@"Compound previewing ended"];
  }

  return result;
}

uint64_t __70__SBSystemActionPreviewCoordinator__showPreviewForAction_withContext___block_invoke_3_78(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(result + 32) pop];
  }

  return result;
}

- (void)addPreviewProvider:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v7 = v3;
    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB58] set];
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;

      v4 = *(a1 + 8);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (uint64_t)removePreviewProvider:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_46(*(result + 8), a2);
  }

  return result;
}

- (uint64_t)removeObserver:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_46(*(result + 16), a2);
  }

  return result;
}

- (void)_notifyDidBeginPreview:(void *)a3 forAction:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [*(a1 + 16) copy];
    OUTLINED_FUNCTION_1_31();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [*(v13 + 8 * v12++) systemActionPreviewCoordinator:a1 didBeginPreview:v5 forAction:v6];
        }

        while (v10 != v12);
        OUTLINED_FUNCTION_1_31();
        v10 = [v7 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v10);
    }
  }
}

- (void)_notifyDidInvalidateExpansionOfPreview:(uint64_t)a1 forAction:(void *)a2 withResult:(void *)a3
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [*(a1 + 16) copy];
    OUTLINED_FUNCTION_1_31();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v17 = v9;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v7);
          }

          v9 = [OUTLINED_FUNCTION_2_34(v9 v10];
          ++v19;
        }

        while (v17 != v19);
        OUTLINED_FUNCTION_1_31();
        v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
        v17 = v9;
      }

      while (v9);
    }
  }
}

- (void)_notifyDidEndPreview:(uint64_t)a1 forAction:(void *)a2 withResult:(void *)a3
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [*(a1 + 16) copy];
    OUTLINED_FUNCTION_1_31();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v17 = v9;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v7);
          }

          v9 = [OUTLINED_FUNCTION_2_34(v9 v10];
          ++v19;
        }

        while (v17 != v19);
        OUTLINED_FUNCTION_1_31();
        v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
        v17 = v9;
      }

      while (v9);
    }
  }
}

- (void)_presentBanner:(uint64_t)a1
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 systemAction];
    v6 = [v5 hostBundleIdentifier];

    v7 = [*(a1 + 56) lastRedisplayableActivityForBundleId:v6];
    if (v7)
    {
      [*(a1 + 56) redisplayActivity:v7];
    }

    else if (([v4 isPresentableAppearingOrAppeared] & 1) == 0)
    {
      v8 = [SBApp bannerManager];
      if (!*(a1 + 48))
      {
        v9 = objc_opt_new();
        v10 = *(a1 + 48);
        *(a1 + 48) = v9;

        v11 = *(a1 + 48);
        v12 = +[SBSystemActionSimplePreviewPresentableViewController requesterIdentifier];
        [v8 registerAuthority:v11 forRequesterIdentifier:v12];
      }

      v13 = *MEMORY[0x277D68088];
      v15[0] = *MEMORY[0x277D68070];
      v15[1] = v13;
      v16[0] = &unk_283371C90;
      v16[1] = MEMORY[0x277CBEC38];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      [v8 postPresentable:v4 withOptions:1 userInfo:v14 error:0];
    }
  }
}

- (void)initWithWindowScene:(const char *)a1 activityManager:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"activityManager != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionPreviewCoordinator.m";
    v9 = 1024;
    v10 = 59;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithWindowScene:(const char *)a1 activityManager:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"windowScene != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionPreviewCoordinator.m";
    v9 = 1024;
    v10 = 58;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end