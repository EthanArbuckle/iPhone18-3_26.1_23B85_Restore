@interface _SBHUDHostViewController
- (BOOL)isHUDBeingDismissed:(uint64_t)dismissed;
- (BOOL)isHUDBeingPresented:(uint64_t)presented;
- (NSString)description;
- (id)HUDController;
- (id)_buildTransitionContextToPresentHUD:(id)d dismissHUD:(id)uD animated:(BOOL)animated delegate:(id)delegate containerView:(id)view completion:(id)completion;
- (id)_transitionContextMatchingHUD:(id)d withinContainer:(id)container;
- (id)delegate;
- (id)initWithHUDController:(id *)controller;
- (id)knownHUDForIdentifier:(id *)identifier;
- (id)setDelegate:(id *)result;
- (uint64_t)numberOfActiveTransitions;
- (uint64_t)presentedHUDs;
- (uint64_t)presentingHUDs;
- (void)_executeDismissHUD:(id)d animated:(BOOL)animated completion:(id)completion;
- (void)_executePresentNewHUD:(id)d animated:(BOOL)animated completion:(id)completion;
- (void)_executeViewControllerTransitionContext:(id)context;
- (void)dismissHUD:(uint64_t)d animated:(void *)animated completion:;
- (void)getRotationContentSettings:(id *)settings forWindow:(id)window;
- (void)presentHUD:(uint64_t)d animated:(void *)animated completion:;
- (void)reverseHUDDismissal:(uint64_t)dismissal;
- (void)reverseHUDPresentation:(uint64_t)presentation;
- (void)transitionDidFinish:(id)finish;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _SBHUDHostViewController

- (void)dismissHUD:(uint64_t)d animated:(void *)animated completion:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  animatedCopy = animated;
  if (self)
  {
    if (!v7)
    {
      [_SBHUDHostViewController dismissHUD:animated:completion:];
    }

    v9 = SBLogHUD();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x223D6F7F0](animatedCopy);
      *buf = 138412802;
      v20 = v7;
      v21 = 1024;
      dCopy = d;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "dismissHUD:%@ animated:%{BOOL}d completion:%@", buf, 0x1Cu);
    }

    v11 = [self _transitionContextMatchingHUD:v7 withinContainer:self[129]];
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
      v12 = [self _transitionContextMatchingHUD:v7 withinContainer:self[128]];
      if (v12)
      {
        [_SBHUDHostViewController dismissHUD:v7 animated:self completion:?];
      }

      else
      {
        hUDViewController = [v7 HUDViewController];
        v14 = hUDViewController;
        if (d && [hUDViewController definesAnimatedDismissal])
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
          v16[4] = self;
          v17 = animatedCopy;
          [v14 dismissAnimatedWithCompletion:v16];

          objc_destroyWeak(&v18);
          objc_destroyWeak(buf);
        }

        else
        {
          [self _executeDismissHUD:v7 animated:d completion:animatedCopy];
        }
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = _SBHUDHostViewController;
  coordinatorCopy = coordinator;
  [(_SBHUDHostViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79___SBHUDHostViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783B50F8;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&__block_literal_global_333];
}

- (void)getRotationContentSettings:(id *)settings forWindow:(id)window
{
  if (settings)
  {
    settings->var6 = 0;
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
  build = [v3 build];

  return build;
}

- (void)transitionDidFinish:(id)finish
{
  p_presentingHUDsTransitionContexts = &self->_presentingHUDsTransitionContexts;
  finishCopy = finish;
  if (([(NSMutableSet *)*p_presentingHUDsTransitionContexts containsObject:?]& 1) != 0 || (p_presentingHUDsTransitionContexts = &self->_dismissingHUDsTransitionContexts, [(NSMutableSet *)self->_dismissingHUDsTransitionContexts containsObject:finishCopy]))
  {
    [(NSMutableSet *)*p_presentingHUDsTransitionContexts removeObject:finishCopy];
  }

  [(NSMutableArray *)self->_activeTransitionContexts removeObject:finishCopy];
}

- (id)_transitionContextMatchingHUD:(id)d withinContainer:(id)container
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  containerCopy = container;
  v7 = [containerCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(containerCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        userInfo = [v10 userInfo];

        if (userInfo == dCopy)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [containerCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_buildTransitionContextToPresentHUD:(id)d dismissHUD:(id)uD animated:(BOOL)animated delegate:(id)delegate containerView:(id)view completion:(id)completion
{
  animatedCopy = animated;
  dCopy = d;
  uDCopy = uD;
  delegateCopy = delegate;
  viewCopy = view;
  completionCopy = completion;
  if ((dCopy != 0) == (uDCopy == 0))
  {
    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBHUDHostViewController _buildTransitionContextToPresentHUD:dismissHUD:animated:delegate:containerView:completion:];
    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  [_SBHUDHostViewController _buildTransitionContextToPresentHUD:dismissHUD:animated:delegate:containerView:completion:];
LABEL_3:
  v18 = objc_opt_new();
  [v18 setContainerView:viewCopy];
  [v18 setWantsAnimation:animatedCopy];
  v43 = uDCopy;
  hUDViewController = [uDCopy HUDViewController];
  v40 = dCopy;
  hUDViewController2 = [dCopy HUDViewController];
  hUDController = [(_SBHUDHostViewController *)&self->super.super.super.super.isa HUDController];
  transitioningDelegate = [hUDViewController transitioningDelegate];
  v23 = transitioningDelegate;
  if (transitioningDelegate)
  {
    hUDController2 = transitioningDelegate;
  }

  else
  {
    hUDController2 = [(_SBHUDHostViewController *)&self->super.super.super.super.isa HUDController];
  }

  v25 = hUDController2;

  transitioningDelegate2 = [hUDViewController2 transitioningDelegate];
  v27 = transitioningDelegate2;
  if (transitioningDelegate2)
  {
    hUDController3 = transitioningDelegate2;
  }

  else
  {
    hUDController3 = [(_SBHUDHostViewController *)&self->super.super.super.super.isa HUDController];
  }

  v41 = hUDController3;

  if (hUDViewController)
  {
    v42 = [v25 animationControllerForDismissedController:hUDViewController];
    if (!v42)
    {
      v42 = [hUDController animationControllerForDismissedController:hUDViewController];
    }
  }

  else
  {
    v42 = 0;
  }

  v36 = v25;
  v38 = hUDController;
  if (hUDViewController2 && (([v41 animationControllerForPresentedController:hUDViewController2 presentingController:self sourceController:{self, v25, hUDController}], (v29 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(hUDController, "animationControllerForPresentedController:presentingController:sourceController:", hUDViewController2, self, self), (v29 = objc_claimAutoreleasedReturnValue()) != 0)))
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

  [v18 setWantsAnimation:animatedCopy];
  if (hUDViewController)
  {
    view = [hUDViewController view];
    [v18 setView:view forKey:*MEMORY[0x277D77238]];

    [v18 setViewController:hUDViewController forKey:*MEMORY[0x277D77230]];
    [viewCopy bounds];
    [v18 setInitialFrame:hUDViewController forViewController:?];
    [viewCopy bounds];
    [v18 setFinalFrame:hUDViewController forViewController:?];
    [hUDViewController willMoveToParentViewController:0];
    if (objc_opt_respondsToSelector())
    {
      [delegateCopy hudViewController:self willDismissHUD:v43];
    }
  }

  if (hUDViewController2)
  {
    [(_SBHUDHostViewController *)self addChildViewController:hUDViewController2];
    view2 = [hUDViewController2 view];
    [v18 setView:view2 forKey:*MEMORY[0x277D77248]];

    [v18 setViewController:hUDViewController2 forKey:*MEMORY[0x277D77240]];
    [viewCopy bounds];
    [v18 setInitialFrame:hUDViewController2 forViewController:?];
    [viewCopy bounds];
    [v18 setFinalFrame:hUDViewController2 forViewController:?];
    [hUDViewController2 didMoveToParentViewController:self];
    if (objc_opt_respondsToSelector())
    {
      [delegateCopy hudViewController:self willPresentHUD:v40];
    }
  }

  if (hUDViewController)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __118___SBHUDHostViewController__buildTransitionContextToPresentHUD_dismissHUD_animated_delegate_containerView_completion___block_invoke;
    v49[3] = &unk_2783B5168;
    v50 = hUDViewController;
    v51 = delegateCopy;
    selfCopy = self;
    v53 = v43;
    [v32 addCompletion:v49];
  }

  if (hUDViewController2)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __118___SBHUDHostViewController__buildTransitionContextToPresentHUD_dismissHUD_animated_delegate_containerView_completion___block_invoke_2;
    v44[3] = &unk_2783B5168;
    v45 = hUDViewController2;
    selfCopy2 = self;
    v47 = delegateCopy;
    v48 = v40;
    [v32 addCompletion:v44];
  }

  [v32 addCompletion:{completionCopy, v36}];
  [v18 setAnimator:v32];

  return v18;
}

- (void)_executePresentNewHUD:(id)d animated:(BOOL)animated completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  delegate = [(_SBHUDHostViewController *)&self->super.super.super.super.isa delegate];
  view = [(_SBHUDHostViewController *)self view];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70___SBHUDHostViewController__executePresentNewHUD_animated_completion___block_invoke;
  v21[3] = &unk_2783B5190;
  v21[4] = self;
  v12 = dCopy;
  v22 = v12;
  v13 = completionCopy;
  v23 = v13;
  v14 = MEMORY[0x223D6F7F0](v21);
  if (animated)
  {
    [(NSMutableSet *)self->_presentingHUDs addObject:v12];
    v15 = [(_SBHUDHostViewController *)self _buildTransitionContextToPresentHUD:v12 dismissHUD:0 animated:1 delegate:delegate containerView:view completion:v14];
    [v15 setUserInfo:v12];
    [(NSMutableSet *)self->_presentingHUDsTransitionContexts addObject:v15];
    [(_SBHUDHostViewController *)self _executeViewControllerTransitionContext:v15];
  }

  else
  {
    hUDViewController = [v12 HUDViewController];
    if (objc_opt_respondsToSelector())
    {
      [delegate hudViewController:self willPresentHUD:v12];
    }

    [hUDViewController willMoveToParentViewController:self];
    [(_SBHUDHostViewController *)self addChildViewController:hUDViewController];
    v17 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70___SBHUDHostViewController__executePresentNewHUD_animated_completion___block_invoke_2;
    v18[3] = &unk_2783A92D8;
    v15 = hUDViewController;
    v19 = v15;
    selfCopy = self;
    [v17 performWithoutAnimation:v18];
    [v15 didMoveToParentViewController:self];
    if (objc_opt_respondsToSelector())
    {
      [delegate hudViewController:self didPresentHUD:v12];
    }

    v14[2](v14, 0);
  }
}

- (void)_executeViewControllerTransitionContext:(id)context
{
  activeTransitionContexts = self->_activeTransitionContexts;
  contextCopy = context;
  [(NSMutableArray *)activeTransitionContexts addObject:contextCopy];
  [contextCopy setDelegate:self];
  [contextCopy startTransition];
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

- (BOOL)isHUDBeingDismissed:(uint64_t)dismissed
{
  if (!dismissed)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_6();
  v2 = [v1 _transitionContextMatchingHUD:? withinContainer:?];
  v3 = v2 != 0;

  return v3;
}

- (void)reverseHUDDismissal:(uint64_t)dismissal
{
  if (dismissal)
  {
    OUTLINED_FUNCTION_4_6();
    v3 = [v1 _transitionContextMatchingHUD:? withinContainer:?];
    animator = [v3 animator];
    if ([OUTLINED_FUNCTION_2_15(1032) containsObject:?])
    {
      [OUTLINED_FUNCTION_2_15(1032) removeObject:?];
      [OUTLINED_FUNCTION_2_15(1024) addObject:?];
      [animator reverseAnimation];
    }
  }
}

- (void)presentHUD:(uint64_t)d animated:(void *)animated completion:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  animatedCopy = animated;
  if (self)
  {
    if (!v7)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_presentHUD_animated_completion_ object:self file:@"SBHUDController.m" lineNumber:841 description:{@"Invalid parameter not satisfying: %@", @"HUD"}];
    }

    v9 = SBLogHUD();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x223D6F7F0](animatedCopy);
      *buf = 138412802;
      v17 = v7;
      v18 = 1024;
      dCopy = d;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "presentHUD:%@ animated:%{BOOL}d completion:%@", buf, 0x1Cu);
    }

    v11 = [self _transitionContextMatchingHUD:v7 withinContainer:self[129]];
    if (v11)
    {
      v14 = SBLogHUD();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Reversing dismissal for HUD %@", buf, 0xCu);
      }

      [_SBHUDHostViewController reverseHUDDismissal:self];
    }

    else
    {
      v12 = [self _transitionContextMatchingHUD:v7 withinContainer:self[128]];
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
        [self _executePresentNewHUD:v7 animated:d completion:animatedCopy];
      }
    }
  }
}

- (BOOL)isHUDBeingPresented:(uint64_t)presented
{
  if (!presented)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_6();
  v2 = [v1 _transitionContextMatchingHUD:? withinContainer:?];
  v3 = v2 != 0;

  return v3;
}

- (void)reverseHUDPresentation:(uint64_t)presentation
{
  if (presentation)
  {
    OUTLINED_FUNCTION_4_6();
    v3 = [v1 _transitionContextMatchingHUD:? withinContainer:?];
    animator = [v3 animator];
    if ([OUTLINED_FUNCTION_2_15(1024) containsObject:?])
    {
      [OUTLINED_FUNCTION_2_15(1032) addObject:?];
      [OUTLINED_FUNCTION_2_15(1024) removeObject:?];
      [animator reverseAnimation];
    }
  }
}

- (id)initWithHUDController:(id *)controller
{
  v3 = a2;
  v4 = v3;
  if (controller)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithHUDController_ object:controller file:@"SBHUDController.m" lineNumber:746 description:{@"Invalid parameter not satisfying: %@", @"HUDController"}];
    }

    v8.receiver = controller;
    v8.super_class = _SBHUDHostViewController;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    controller = v5;
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

  return controller;
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

- (id)knownHUDForIdentifier:(id *)identifier
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!identifier)
  {
    goto LABEL_31;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = identifier[125];
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
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:v3];

        if (v11)
        {
          identifier = v9;
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
  v14 = identifier[128];
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
    v14 = identifier[129];
    identifier = [v14 countByEnumeratingWithState:&v23 objects:v37 count:16];
    if (!identifier)
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

      if (identifier == ++v21)
      {
        identifier = [v14 countByEnumeratingWithState:&v23 objects:v37 count:16];
        if (identifier)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }
    }
  }

  identifier = [v19 userInfo];
LABEL_29:

  v4 = v32;
LABEL_30:

LABEL_31:

  return identifier;
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

- (void)_executeDismissHUD:(id)d animated:(BOOL)animated completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  delegate = [(_SBHUDHostViewController *)&self->super.super.super.super.isa delegate];
  view = [(_SBHUDHostViewController *)self view];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67___SBHUDHostViewController__executeDismissHUD_animated_completion___block_invoke;
  v23[3] = &unk_2783B5190;
  v23[4] = self;
  v12 = dCopy;
  v24 = v12;
  v13 = completionCopy;
  v25 = v13;
  v14 = MEMORY[0x223D6F7F0](v23);
  if (animated)
  {
    v15 = [(_SBHUDHostViewController *)self _buildTransitionContextToPresentHUD:0 dismissHUD:v12 animated:1 delegate:delegate containerView:view completion:v14];
    [v15 setUserInfo:v12];
    [(NSMutableSet *)self->_dismissingHUDsTransitionContexts addObject:v15];
    [(_SBHUDHostViewController *)self _executeViewControllerTransitionContext:v15];
LABEL_9:

    goto LABEL_10;
  }

  if (([(NSMutableSet *)self->_executingDismissalHUDs containsObject:v12]& 1) == 0)
  {
    [(NSMutableSet *)self->_executingDismissalHUDs addObject:v12];
    hUDViewController = [v12 HUDViewController];
    if (objc_opt_respondsToSelector())
    {
      [delegate hudViewController:self willDismissHUD:v12];
    }

    [hUDViewController bs_beginAppearanceTransition:0 animated:0];
    [hUDViewController willMoveToParentViewController:0];
    v17 = MEMORY[0x277D75D18];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __67___SBHUDHostViewController__executeDismissHUD_animated_completion___block_invoke_2;
    v21 = &unk_2783A8C18;
    v15 = hUDViewController;
    v22 = v15;
    [v17 performWithoutAnimation:&v18];
    [(_SBHUDHostViewController *)self removeChildViewController:v15, v18, v19, v20, v21];
    [v15 didMoveToParentViewController:0];
    [v15 bs_endAppearanceTransition];
    if (objc_opt_respondsToSelector())
    {
      [delegate hudViewController:self didDismissHUD:v12];
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