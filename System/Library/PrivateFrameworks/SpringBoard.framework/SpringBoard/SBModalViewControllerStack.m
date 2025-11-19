@interface SBModalViewControllerStack
- (NSArray)viewControllers;
- (SBModalViewControllerStack)initWithPresentingViewController:(id)a3;
- (SBModalViewControllerStackDelegate)delegate;
- (id)_popNextPendingTransition;
- (void)_addPendingTransition:(id)a3;
- (void)_addViewController:(id)a3 completion:(id)a4;
- (void)_noteDidDismissViewController:(id)a3;
- (void)_noteDidPresentViewController:(id)a3;
- (void)_noteWillDismissViewController:(id)a3 animated:(BOOL)a4;
- (void)_noteWillPresentViewController:(id)a3;
- (void)_performPendingTransitionIfNecessary;
- (void)_queuePendingTransition:(id)a3;
- (void)_removePendingTransition:(id)a3 forSuccess:(BOOL)a4;
- (void)_removeViewController:(id)a3 completion:(id)a4;
- (void)_setCurrentTransition:(id)a3;
- (void)addViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)removeViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)removeViewControllerAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation SBModalViewControllerStack

- (SBModalViewControllerStack)initWithPresentingViewController:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBModalViewControllerStack initWithPresentingViewController:];
  }

  v13.receiver = self;
  v13.super_class = SBModalViewControllerStack;
  v6 = [(SBModalViewControllerStack *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentingViewController, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingTransitions = v7->_pendingTransitions;
    v7->_pendingTransitions = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    viewControllerStack = v7->_viewControllerStack;
    v7->_viewControllerStack = v10;
  }

  return v7;
}

- (NSArray)viewControllers
{
  v2 = [(NSMutableArray *)self->_viewControllerStack copy];

  return v2;
}

- (void)removeViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBModalViewControllerStack *)self topViewController];
  [(SBModalViewControllerStack *)self removeViewController:v7 animated:v4 completion:v6];
}

- (void)_addPendingTransition:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_pendingTransitions addObject:?];
  }
}

- (void)_removePendingTransition:(id)a3 forSuccess:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6[4];
    v10 = v7;
    if (v8)
    {
      (*(v8 + 16))(v8, v4);
      v9 = v10[4];
      v10[4] = 0;
    }

    [(NSMutableArray *)self->_pendingTransitions removeObject:v10];
    v7 = v10;
  }
}

- (id)_popNextPendingTransition
{
  v3 = [(NSMutableArray *)self->_pendingTransitions firstObject];
  if (v3)
  {
    [(NSMutableArray *)self->_pendingTransitions removeObjectAtIndex:0];
  }

  return v3;
}

- (void)_setCurrentTransition:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  currentTransition = self->_currentTransition;
  p_currentTransition = &self->_currentTransition;
  if (currentTransition != v5)
  {
    objc_storeStrong(p_currentTransition, a3);
    v8 = SBLogAlertItemStack();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Set new current transition: %@", &v9, 0xCu);
    }
  }
}

- (void)_queuePendingTransition:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v7 = 0;
LABEL_4:
    [(NSMutableArray *)self->_viewControllerStack removeObject:v7];
    [(NSMutableArray *)self->_viewControllerStack addObject:v7];
    goto LABEL_8;
  }

  v7 = *(v5 + 1);
  v8 = v6[2];
  if (v8 != 1)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (([(NSMutableArray *)self->_viewControllerStack containsObject:v7]& 1) == 0)
  {
    [(SBModalViewControllerStack *)a2 _queuePendingTransition:v7];
  }

  [(NSMutableArray *)self->_viewControllerStack removeObject:v7];
LABEL_8:
  currentTransition = self->_currentTransition;
  v10 = SBLogAlertItemStack();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!currentTransition)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "No current transition is on-going, but pending it for immediate execution.", buf, 2u);
    }

    if ([(NSMutableArray *)self->_pendingTransitions count])
    {
      [SBModalViewControllerStack _queuePendingTransition:];
    }

    goto LABEL_37;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "We have a current transition on-going; attempting to pend the next operation.", buf, 2u);
  }

  if (!v6 || v6[2] != 1)
  {
LABEL_37:
    [(SBModalViewControllerStack *)self _addPendingTransition:v6, v23];
    goto LABEL_38;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [(NSMutableArray *)self->_pendingTransitions copy];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v13)
  {

    goto LABEL_37;
  }

  v15 = v13;
  v16 = *v25;
  v17 = 1;
  *&v14 = 138412546;
  v23 = v14;
  do
  {
    v18 = 0;
    do
    {
      if (*v25 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v24 + 1) + 8 * v18);
      if (v19)
      {
        v20 = *(v19 + 8);
      }

      else
      {
        v20 = 0;
      }

      if (v20 == v6[1] && (!v19 || !*(v19 + 16)))
      {
        v21 = SBLogAlertItemStack();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = v23;
          v29 = v19;
          v30 = 2112;
          v31 = v6;
          _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "Found a previously queued activation for this view controller (%@), and this is a dismissal (%@), so removing both from the pending queue.", buf, 0x16u);
        }

        [(SBModalViewControllerStack *)self _removePendingTransition:v19 forSuccess:1];
        [_SBModalViewControllerStackTransition invokeCompletionIfNecessaryWithResult:v6];
        v17 = 0;
      }

      ++v18;
    }

    while (v15 != v18);
    v22 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    v15 = v22;
  }

  while (v22);

  if (v17)
  {
    goto LABEL_37;
  }

LABEL_38:
}

- (void)_performPendingTransitionIfNecessary
{
  v5 = [*a1 lastObject];
  v6 = [_SBModalViewControllerStackTransition transitionForViewController:v5 operation:0 animated:*(a2 + 24) completion:0];

  [a3 _queuePendingTransition:v6];
}

uint64_t __66__SBModalViewControllerStack__performPendingTransitionIfNecessary__block_invoke_39(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogAlertItemStack();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Finished processing add view controller: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __66__SBModalViewControllerStack__performPendingTransitionIfNecessary__block_invoke_40(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogAlertItemStack();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Finished processing remove view controller: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_addViewController:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (v6[2])
    {
      [SBModalViewControllerStack _addViewController:completion:];
    }

    v8 = self;
    v9 = v6[1];
  }

  else
  {
    v21 = self;
    v9 = 0;
  }

  v10 = v9;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__SBModalViewControllerStack__addViewController_completion___block_invoke;
  v24[3] = &unk_2783A8EB0;
  v11 = self;
  v25 = v11;
  v12 = v10;
  v26 = v12;
  v13 = v6;
  v27 = v13;
  v14 = v7;
  v28 = v14;
  v15 = MEMORY[0x223D6F7F0](v24);
  v16 = [(UIViewController *)v11->_presentingViewController presentedViewController];
  if (v16)
  {
    v17 = SBLogAlertItemStack();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v16 == v12)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_INFO, "Current view-controller is already presented, so we have nothing to do.", buf, 2u);
      }

      if (v14)
      {
        v14[2](v14);
      }
    }

    else
    {
      if (v18)
      {
        *buf = 138412546;
        v30 = v16;
        v31 = 2112;
        v32 = v12;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_INFO, "Need to dismiss current presented view controller (%@) in order to present ourself (%@)", buf, 0x16u);
      }

      v20 = [_SBModalViewControllerStackTransition transitionForViewController:v16 operation:1uLL animated:0 completion:0];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __60__SBModalViewControllerStack__addViewController_completion___block_invoke_45;
      v22[3] = &unk_2783A9348;
      v23 = v15;
      [(SBModalViewControllerStack *)v11 _removeViewController:v20 completion:v22];
    }
  }

  else
  {
    v19 = SBLogAlertItemStack();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "No current presented view controller, presenting straight away.", buf, 2u);
    }

    v15[2](v15);
  }
}

void __60__SBModalViewControllerStack__addViewController_completion___block_invoke_44(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v2 = *(a1 + 32);
  v3 = SBLogAlertItemStack();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Really finished presenting view controller: %@", &v6, 0xCu);
  }

  [v2 _noteDidPresentViewController:*(a1 + 40)];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)_removeViewController:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (v6[2] != 1)
    {
      [SBModalViewControllerStack _removeViewController:completion:];
    }

    v8 = v6[1];
  }

  else
  {
    [SBModalViewControllerStack _removeViewController:completion:];
    v8 = 0;
  }

  v9 = v8;
  v10 = [(UIViewController *)self->_presentingViewController presentedViewController];

  v11 = SBLogAlertItemStack();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10 == v9)
  {
    if (v12)
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "Really begin dismissing topmost view controller: %@", buf, 0xCu);
    }

    if (v6)
    {
      [(SBModalViewControllerStack *)self _noteWillDismissViewController:v9 animated:*(v6 + 24)];
      v13 = *(v6 + 24);
    }

    else
    {
      [(SBModalViewControllerStack *)self _noteWillDismissViewController:v9 animated:0];
      v13 = 0;
    }

    presentingViewController = self->_presentingViewController;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__SBModalViewControllerStack__removeViewController_completion___block_invoke;
    v15[3] = &unk_2783AA1E8;
    v16 = v9;
    v17 = self;
    v18 = v7;
    [(UIViewController *)presentingViewController dismissViewControllerAnimated:v13 & 1 completion:v15];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "There is no presented view-controller to dismiss.", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

uint64_t __63__SBModalViewControllerStack__removeViewController_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v2 = SBLogAlertItemStack();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Really finished dismissing topmost view controller: %@", &v5, 0xCu);
  }

  [*(a1 + 40) _noteDidDismissViewController:*(a1 + 32)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_noteWillPresentViewController:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogAlertItemStack();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Calling out to delegate for willPresent: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modalViewControllerStack:self willPresentViewController:v4];
  }
}

- (void)_noteDidPresentViewController:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogAlertItemStack();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Calling out to delegate for didPresent: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modalViewControllerStack:self didPresentViewController:v4];
  }
}

- (void)_noteWillDismissViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = SBLogAlertItemStack();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Calling out to delegate for willDismiss: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modalViewControllerStack:self willDismissViewController:v6 animated:v4];
  }
}

- (void)_noteDidDismissViewController:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogAlertItemStack();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Calling out to delegate for didDismiss: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modalViewControllerStack:self didDismissViewController:v4];
  }
}

- (SBModalViewControllerStackDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  OUTLINED_FUNCTION_3_31();
  v10 = v9;
  v11 = v7;
  BSDispatchQueueAssertMain();
  if (!v10)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:v8 object:v5 file:@"SBModalViewControllerStack.m" lineNumber:102 description:@"View controller to add to the stack must be non-nil."];
  }

  v12 = SBLogAlertItemStack();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_47();
    OUTLINED_FUNCTION_4_15(&dword_21ED4E000, v13, v14, "Adding view controller to pending transition list for presentation (animated? %d): %@", v15, v16, v17, v18, v21);
  }

  v19 = [_SBModalViewControllerStackTransition transitionForViewController:v10 operation:0 animated:v6 completion:v11];

  [v5 _queuePendingTransition:v19];
  [v5 _performPendingTransitionIfNecessary];
}

- (void)removeViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  OUTLINED_FUNCTION_3_31();
  v10 = v9;
  v11 = v7;
  BSDispatchQueueAssertMain();
  if (!v10)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:v8 object:v5 file:@"SBModalViewControllerStack.m" lineNumber:112 description:@"View controller to remove from the stack must be non-nil."];
  }

  v12 = SBLogAlertItemStack();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_47();
    OUTLINED_FUNCTION_4_15(&dword_21ED4E000, v13, v14, "Adding view controller to pending transition list for dismissal (animated? %d): %@", v15, v16, v17, v18, v21);
  }

  v19 = [_SBModalViewControllerStackTransition transitionForViewController:v10 operation:1uLL animated:v6 completion:v11];

  [v5 _queuePendingTransition:v19];
  [v5 _performPendingTransitionIfNecessary];
}

void __66__SBModalViewControllerStack__performPendingTransitionIfNecessary__block_invoke(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2;
  [_SBModalViewControllerStackTransition invokeCompletionIfNecessaryWithResult:v3];
  [v4 _setCurrentTransition:0];
  [v4 _performPendingTransitionIfNecessary];
}

void __60__SBModalViewControllerStack__addViewController_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v2 = *(a1 + 32);
  v3 = SBLogAlertItemStack();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5 = v2[2];
    *buf = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Really begin presenting view controller: %@ (presentingVC = %@)", buf, 0x16u);
  }

  [v2 _noteWillPresentViewController:*(a1 + 40)];
  v6 = v2[2];
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SBModalViewControllerStack__addViewController_completion___block_invoke_44;
  v10[3] = &unk_2783AA1E8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  [v6 presentViewController:v8 animated:v9 & 1 completion:v10];
}

- (void)initWithPresentingViewController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"viewController" object:? file:? lineNumber:? description:?];
}

- (void)_queuePendingTransition:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBModalViewControllerStack.m" lineNumber:168 description:{@"View controller (%@) can't be removed from the modal stack when it doesn't already exist.", a3}];
}

- (void)_queuePendingTransition:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_addViewController:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_removeViewController:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end