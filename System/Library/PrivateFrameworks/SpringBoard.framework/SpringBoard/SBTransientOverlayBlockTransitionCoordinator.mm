@interface SBTransientOverlayBlockTransitionCoordinator
- (void)finalizeTransitionWithContextProvider:(id)provider;
- (void)startTransitionWithContextProvider:(id)provider;
@end

@implementation SBTransientOverlayBlockTransitionCoordinator

- (void)startTransitionWithContextProvider:(id)provider
{
  providerCopy = provider;
  p_startTransitionHandler = &self->_startTransitionHandler;
  startTransitionHandler = self->_startTransitionHandler;
  v9 = providerCopy;
  if (!startTransitionHandler)
  {
    [(SBTransientOverlayBlockTransitionCoordinator *)a2 startTransitionWithContextProvider:&self->_startTransitionHandler, &v10];
    startTransitionHandler = v10;
  }

  startTransitionHandler[2]();
  v8 = *p_startTransitionHandler;
  *p_startTransitionHandler = 0;
}

- (void)finalizeTransitionWithContextProvider:(id)provider
{
  finalizeTransitionHandler = self->_finalizeTransitionHandler;
  if (finalizeTransitionHandler)
  {
    finalizeTransitionHandler[2](finalizeTransitionHandler, provider);
    v5 = self->_finalizeTransitionHandler;
    self->_finalizeTransitionHandler = 0;
  }
}

- (void)startTransitionWithContextProvider:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBTransientOverlayBlockTransitionCoordinator.m" lineNumber:16 description:@"startTransitionHandler must be non-null when the transition starts."];

  *a4 = *a3;
}

@end