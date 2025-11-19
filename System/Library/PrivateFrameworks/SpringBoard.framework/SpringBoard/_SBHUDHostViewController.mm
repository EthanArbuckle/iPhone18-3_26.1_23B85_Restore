@interface _SBHUDHostViewController
- (BOOL)isHUDBeingDismissed:(uint64_t)a1;
- (BOOL)isHUDBeingPresented:(uint64_t)a1;
- (NSString)description;
- (id)HUDController;
- (id)_buildTransitionContextToPresentHUD:(id)a3 dismissHUD:(id)a4 animated:(BOOL)a5 delegate:(id)a6 containerView:(id)a7 completion:(id)a8;
- (id)_transitionContextMatchingHUD:(id)a3 withinContainer:(id)a4;
- (id)delegate;
- (id)initWithHUDController:(id *)a1;
- (id)knownHUDForIdentifier:(id *)a1;
- (id)setDelegate:(id *)result;
- (uint64_t)numberOfActiveTransitions;
- (uint64_t)presentedHUDs;
- (uint64_t)presentingHUDs;
- (void)_executeDismissHUD:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_executePresentNewHUD:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_executeViewControllerTransitionContext:(id)a3;
- (void)dismissHUD:(uint64_t)a3 animated:(void *)a4 completion:;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)presentHUD:(uint64_t)a3 animated:(void *)a4 completion:;
- (void)reverseHUDDismissal:(uint64_t)a1;
- (void)reverseHUDPresentation:(uint64_t)a1;
- (void)transitionDidFinish:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _SBHUDHostViewController

- (void)dismissHUD:(uint64_t)a3 animated:(void *)a4 completion:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    if (!v7)
    {
      [_SBHUDHostViewController dismissHUD:animated:completion:];
    }

    v9 = SBLogHUD();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x223D6F7F0](v8);
      *buf = 138412802;
      v20 = v7;
      v21 = 1024;
      v22 = a3;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "dismissHUD:%@ animated:%{BOOL}d completion:%@", buf, 0x1Cu);
    }

    v11 = [a1 _transitionContextMatchingHUD:v7 withinContainer:a1[129]];
    if (v11)
    {
      v12 = SBLogHUD();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v7;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Already dismissing HUD %@; doing nothing.", buf, 0xCu);
      }
    }

    else
    {
      v12 = [a1 _transitionContextMatchingHUD:v7 withinContainer:a1[128]];
      if (v12)
      {
        [_SBHUDHostViewController dismissHUD:v7 animated:a1 completion:?];
      }

      else
      {
        v13 = [v7 HUDViewController];
        v14 = v13;
        if (a3 && [v13 definesAnimatedDismissal])
        {
          v15 = SBLogHUD();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v7;
            _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "HUD %@ is defines its own animated dismissal; executing and cleaning up state.", buf, 0xCu);
          }

          objc_initWeak(buf, v7);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __59___SBHUDHostViewController_dismissHUD_animated_completion___block_invoke;
          v16[3] = &unk_2783B08A8;
          objc_copyWeak(&v18, buf);
          v16[4] = a1;
          v17 = v8;
          [v14 dismissAnimatedWithCompletion:v16];

          objc_destroyWeak(&v18);
          objc_destroyWeak(buf);
        }

        else
        {
          [a1 _executeDismissHUD:v7 animated:a3 completion:v8];
        }
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = _SBHUDHostViewController;
  v7 = a4;
  [(_SBHUDHostViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79___SBHUDHostViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783B50F8;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [v7 animateAlongsideTransition:v8 completion:&__block_literal_global_333];
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  if (a3)
  {
    a3->var6 = 0;
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_presentedHUDs withName:@"presentedHUDs"];
  v5 = [v3 appendObject:self->_presentingHUDs withName:@"presentingHUDs"];
  v6 = [v3 appendObject:self->_executingDismissalHUDs withName:@"executingDismissalHUDs"];
  v7 = [v3 appendObject:self->_activeTransitionContexts withName:@"activeTransitionContexts"];
  v8 = [v3 appendObject:self->_presentingHUDsTransitionContexts withName:@"presentingHUDsTransitionContexts"];
  v9 = [v3 appendObject:self->_dismissingHUDsTransitionContexts withName:@"dismissingHUDsTransitionContexts"];
  v10 = [v3 appendUnsignedInteger:-[NSMutableSet count](self->_dismissingHUDsTransitionContexts withName:{"count") + -[NSMutableSet count](self->_presentingHUDsTransitionContexts, "count"), @"numberOfActiveTransitions"}];
  v11 = [v3 build];

  return v11;
}

- (void)transitionDidFinish:(id)a3
{
  p_presentingHUDsTransitionContexts = &self->_presentingHUDsTransitionContexts;
  v5 = a3;
  if (([(NSMutableSet *)*p_presentingHUDsTransitionContexts containsObject:?]& 1) != 0 || (p_presentingHUDsTransitionContexts = &self->_dismissingHUDsTransitionContexts, [(NSMutableSet *)self->_dismissingHUDsTransitionContexts containsObject:v5]))
  {
    [(NSMutableSet *)*p_presentingHUDsTransitionContexts removeObject:v5];
  }

  [(NSMutableArray *)self->_activeTransitionContexts removeObject:v5];
}

- (id)_transitionContextMatchingHUD:(id)a3 withinContainer:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 userInfo];

        if (v11 == v5)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_buildTransitionContextToPresentHUD:(id)a3 dismissHUD:(id)a4 animated:(BOOL)a5 delegate:(id)a6 containerView:(id)a7 completion:(id)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v39 = a8;
  if ((v14 != 0) == (v15 == 0))
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBHUDHostViewController _buildTransitionContextToPresentHUD:dismissHUD:animated:delegate:containerView:completion:];
    if (v17)
    {
      goto LABEL_3;
    }
  }

  [_SBHUDHostViewController _buildTransitionContextToPresentHUD:dismissHUD:animated:delegate:containerView:completion:];
LABEL_3:
  v18 = objc_opt_new();
  [v18 setContainerView:v17];
  [v18 setWantsAnimation:v11];
  v43 = v15;
  v19 = [v15 HUDViewController];
  v40 = v14;
  v20 = [v14 HUDViewController];
  v21 = [(_SBHUDHostViewController *)&self->super.super.super.super.isa HUDController];
  v22 = [v19 transitioningDelegate];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = [(_SBHUDHostViewController *)&self->super.super.super.super.isa HUDController];
  }

  v25 = v24;

  v26 = [v20 transitioningDelegate];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = [(_SBHUDHostViewController *)&self->super.super.super.super.isa HUDController];
  }

  v41 = v28;

  if (v19)
  {
    v42 = [v25 animationControllerForDismissedController:v19];
    if (!v42)
    {
      v42 = [v21 animationControllerForDismissedController:v19];
    }
  }

  else
  {
    v42 = 0;
  }

  v36 = v25;
  v38 = v21;
  if (v20 && (([v41 animationControllerForPresentedController:v20 presentingController:self sourceController:{self, v25, v21}], (v29 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v21, "animationControllerForPresentedController:presentingController:sourceController:", v20, self, self), (v29 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v30 = v29;
    v31 = objc_opt_self();
    v32 = SBSafeCast(v31, v30);
  }

  else
  {
    v30 = objc_opt_self();
    v32 = SBSafeCast(v30, v42);
  }

  [v18 setWantsAnimation:v11];
  if (v19)
  {
    v33 = [v19 view];
    [v18 setView:v33 forKey:*MEMORY[0x277D77238]];

    [v18 setViewController:v19 forKey:*MEMORY[0x277D77230]];
    [v17 bounds];
    [v18 setInitialFrame:v19 forViewController:?];
    [v17 bounds];
    [v18 setFinalFrame:v19 forViewController:?];
    [v19 willMoveToParentViewController:0];
    if (objc_opt_respondsToSelector())
    {
      [v16 hudViewController:self willDismissHUD:v43];
    }
  }

  if (v20)
  {
    [(_SBHUDHostViewController *)self addChildViewController:v20];
    v34 = [v20 view];
    [v18 setView:v34 forKey:*MEMORY[0x277D77248]];

    [v18 setViewController:v20 forKey:*MEMORY[0x277D77240]];
    [v17 bounds];
    [v18 setInitialFrame:v20 forViewController:?];
    [v17 bounds];
    [v18 setFinalFrame:v20 forViewController:?];
    [v20 didMoveToParentViewController:self];
    if (objc_opt_respondsToSelector())
    {
      [v16 hudViewController:self willPresentHUD:v40];
    }
  }

  if (v19)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __118___SBHUDHostViewController__buildTransitionContextToPresentHUD_dismissHUD_animated_delegate_containerView_completion___block_invoke;
    v49[3] = &unk_2783B5168;
    v50 = v19;
    v51 = v16;
    v52 = self;
    v53 = v43;
    [v32 addCompletion:v49];
  }

  if (v20)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __118___SBHUDHostViewController__buildTransitionContextToPresentHUD_dismissHUD_animated_delegate_containerView_completion___block_invoke_2;
    v44[3] = &unk_2783B5168;
    v45 = v20;
    v46 = self;
    v47 = v16;
    v48 = v40;
    [v32 addCompletion:v44];
  }

  [v32 addCompletion:{v39, v36}];
  [v18 setAnimator:v32];

  return v18;
}

- (void)_executePresentNewHUD:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(_SBHUDHostViewController *)&self->super.super.super.super.isa delegate];
  v11 = [(_SBHUDHostViewController *)self view];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70___SBHUDHostViewController__executePresentNewHUD_animated_completion___block_invoke;
  v21[3] = &unk_2783B5190;
  v21[4] = self;
  v12 = v8;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  v14 = MEMORY[0x223D6F7F0](v21);
  if (a4)
  {
    [(NSMutableSet *)self->_presentingHUDs addObject:v12];
    v15 = [(_SBHUDHostViewController *)self _buildTransitionContextToPresentHUD:v12 dismissHUD:0 animated:1 delegate:v10 containerView:v11 completion:v14];
    [v15 setUserInfo:v12];
    [(NSMutableSet *)self->_presentingHUDsTransitionContexts addObject:v15];
    [(_SBHUDHostViewController *)self _executeViewControllerTransitionContext:v15];
  }

  else
  {
    v16 = [v12 HUDViewController];
    if (objc_opt_respondsToSelector())
    {
      [v10 hudViewController:self willPresentHUD:v12];
    }

    [v16 willMoveToParentViewController:self];
    [(_SBHUDHostViewController *)self addChildViewController:v16];
    v17 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70___SBHUDHostViewController__executePresentNewHUD_animated_completion___block_invoke_2;
    v18[3] = &unk_2783A92D8;
    v15 = v16;
    v19 = v15;
    v20 = self;
    [v17 performWithoutAnimation:v18];
    [v15 didMoveToParentViewController:self];
    if (objc_opt_respondsToSelector())
    {
      [v10 hudViewController:self didPresentHUD:v12];
    }

    v14[2](v14, 0);
  }
}

- (void)_executeViewControllerTransitionContext:(id)a3
{
  activeTransitionContexts = self->_activeTransitionContexts;
  v5 = a3;
  [(NSMutableArray *)activeTransitionContexts addObject:v5];
  [v5 setDelegate:self];
  [v5 startTransition];
}

- (uint64_t)presentedHUDs
{
  if (result)
  {
    return *(result + 1000);
  }

  return result;
}

- (uint64_t)presentingHUDs
{
  if (result)
  {
    return *(result + 1008);
  }

  return result;
}

- (BOOL)isHUDBeingDismissed:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_6();
  v2 = [v1 _transitionContextMatchingHUD:? withinContainer:?];
  v3 = v2 != 0;

  return v3;
}

- (void)reverseHUDDismissal:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_4_6();
    v3 = [v1 _transitionContextMatchingHUD:? withinContainer:?];
    v2 = [v3 animator];
    if ([OUTLINED_FUNCTION_2_15(1032) containsObject:?])
    {
      [OUTLINED_FUNCTION_2_15(1032) removeObject:?];
      [OUTLINED_FUNCTION_2_15(1024) addObject:?];
      [v2 reverseAnimation];
    }
  }
}

- (void)presentHUD:(uint64_t)a3 animated:(void *)a4 completion:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    if (!v7)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:sel_presentHUD_animated_completion_ object:a1 file:@"SBHUDController.m" lineNumber:841 description:{@"Invalid parameter not satisfying: %@", @"HUD"}];
    }

    v9 = SBLogHUD();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x223D6F7F0](v8);
      *buf = 138412802;
      v17 = v7;
      v18 = 1024;
      v19 = a3;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "presentHUD:%@ animated:%{BOOL}d completion:%@", buf, 0x1Cu);
    }

    v11 = [a1 _transitionContextMatchingHUD:v7 withinContainer:a1[129]];
    if (v11)
    {
      v14 = SBLogHUD();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Reversing dismissal for HUD %@", buf, 0xCu);
      }

      [_SBHUDHostViewController reverseHUDDismissal:a1];
    }

    else
    {
      v12 = [a1 _transitionContextMatchingHUD:v7 withinContainer:a1[128]];
      if (v12)
      {
        v13 = SBLogHUD();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v7;
          _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Already presenting HUD %@; doing nothing.", buf, 0xCu);
        }
      }

      else
      {
        [a1 _executePresentNewHUD:v7 animated:a3 completion:v8];
      }
    }
  }
}

- (BOOL)isHUDBeingPresented:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_6();
  v2 = [v1 _transitionContextMatchingHUD:? withinContainer:?];
  v3 = v2 != 0;

  return v3;
}

- (void)reverseHUDPresentation:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_4_6();
    v3 = [v1 _transitionContextMatchingHUD:? withinContainer:?];
    v2 = [v3 animator];
    if ([OUTLINED_FUNCTION_2_15(1024) containsObject:?])
    {
      [OUTLINED_FUNCTION_2_15(1032) addObject:?];
      [OUTLINED_FUNCTION_2_15(1024) removeObject:?];
      [v2 reverseAnimation];
    }
  }
}

- (id)initWithHUDController:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:sel_initWithHUDController_ object:a1 file:@"SBHUDController.m" lineNumber:746 description:{@"Invalid parameter not satisfying: %@", @"HUDController"}];
    }

    v8.receiver = a1;
    v8.super_class = _SBHUDHostViewController;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeWeak(v5 + 130, v4);
      OUTLINED_FUNCTION_3_13(objc_alloc_init(MEMORY[0x277CBEB58]), 1000);
      OUTLINED_FUNCTION_3_13(objc_alloc_init(MEMORY[0x277CBEB58]), 1008);
      OUTLINED_FUNCTION_3_13(objc_alloc_init(MEMORY[0x277CBEB58]), 1016);
      OUTLINED_FUNCTION_3_13(objc_alloc_init(MEMORY[0x277CBEB18]), 992);
      OUTLINED_FUNCTION_3_13(objc_alloc_init(MEMORY[0x277CBEB58]), 1024);
      OUTLINED_FUNCTION_3_13(objc_alloc_init(MEMORY[0x277CBEB58]), 1032);
    }
  }

  return a1;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 131, a2);
  }

  return result;
}

- (uint64_t)numberOfActiveTransitions
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 1024) count];
    return [*(v1 + 1032) count] + v2;
  }

  return result;
}

- (id)knownHUDForIdentifier:(id *)a1
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_31;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = a1[125];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          a1 = v9;
          goto LABEL_30;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = MEMORY[0x277CCAC30];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __50___SBHUDHostViewController_knownHUDForIdentifier___block_invoke;
  v31[3] = &unk_2783B5140;
  v32 = v3;
  v13 = [v12 predicateWithBlock:v31];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = a1[128];
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
LABEL_12:
    v18 = 0;
    while (1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v27 + 1) + 8 * v18);
      if ([v13 evaluateWithObject:v19])
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v27 objects:v38 count:16];
        if (v16)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = a1[129];
    a1 = [v14 countByEnumeratingWithState:&v23 objects:v37 count:16];
    if (!a1)
    {
      goto LABEL_29;
    }

    v20 = *v24;
LABEL_20:
    v21 = 0;
    while (1)
    {
      if (*v24 != v20)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v23 + 1) + 8 * v21);
      if ([v13 evaluateWithObject:{v19, v23}])
      {
        break;
      }

      if (a1 == ++v21)
      {
        a1 = [v14 countByEnumeratingWithState:&v23 objects:v37 count:16];
        if (a1)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }
    }
  }

  a1 = [v19 userInfo];
LABEL_29:

  v4 = v32;
LABEL_30:

LABEL_31:

  return a1;
}

- (id)HUDController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 130);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 131);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_executeDismissHUD:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(_SBHUDHostViewController *)&self->super.super.super.super.isa delegate];
  v11 = [(_SBHUDHostViewController *)self view];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67___SBHUDHostViewController__executeDismissHUD_animated_completion___block_invoke;
  v23[3] = &unk_2783B5190;
  v23[4] = self;
  v12 = v8;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v14 = MEMORY[0x223D6F7F0](v23);
  if (a4)
  {
    v15 = [(_SBHUDHostViewController *)self _buildTransitionContextToPresentHUD:0 dismissHUD:v12 animated:1 delegate:v10 containerView:v11 completion:v14];
    [v15 setUserInfo:v12];
    [(NSMutableSet *)self->_dismissingHUDsTransitionContexts addObject:v15];
    [(_SBHUDHostViewController *)self _executeViewControllerTransitionContext:v15];
LABEL_9:

    goto LABEL_10;
  }

  if (([(NSMutableSet *)self->_executingDismissalHUDs containsObject:v12]& 1) == 0)
  {
    [(NSMutableSet *)self->_executingDismissalHUDs addObject:v12];
    v16 = [v12 HUDViewController];
    if (objc_opt_respondsToSelector())
    {
      [v10 hudViewController:self willDismissHUD:v12];
    }

    [v16 bs_beginAppearanceTransition:0 animated:0];
    [v16 willMoveToParentViewController:0];
    v17 = MEMORY[0x277D75D18];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __67___SBHUDHostViewController__executeDismissHUD_animated_completion___block_invoke_2;
    v21 = &unk_2783A8C18;
    v15 = v16;
    v22 = v15;
    [v17 performWithoutAnimation:&v18];
    [(_SBHUDHostViewController *)self removeChildViewController:v15, v18, v19, v20, v21];
    [v15 didMoveToParentViewController:0];
    [v15 bs_endAppearanceTransition];
    if (objc_opt_respondsToSelector())
    {
      [v10 hudViewController:self didDismissHUD:v12];
    }

    v14[2](v14, 0);
    [(NSMutableSet *)self->_executingDismissalHUDs removeObject:v12];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)dismissHUD:animated:completion:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"HUD" object:? file:? lineNumber:? description:?];
}

- (void)dismissHUD:(uint64_t)a1 animated:(uint64_t)a2 completion:.cold.2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = SBLogHUD();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "HUD %@ is presenting; reversing presenting...", &v5, 0xCu);
  }

  [_SBHUDHostViewController reverseHUDPresentation:a2];
}

- (void)_buildTransitionContextToPresentHUD:dismissHUD:animated:delegate:containerView:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"(dismissalHUD && !presentationHUD) || (!dismissalHUD && presentationHUD)" object:? file:? lineNumber:? description:?];
}

- (void)_buildTransitionContextToPresentHUD:dismissHUD:animated:delegate:containerView:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"containerView" object:? file:? lineNumber:? description:?];
}

@end