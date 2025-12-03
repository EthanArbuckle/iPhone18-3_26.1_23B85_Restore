@interface SBTransientOverlayDefaultTransitionContextProvider
- (void)completeTransition:(BOOL)transition;
- (void)performAlongsideTransitions;
- (void)transitionAlongsideUsingBlock:(id)block completion:(id)completion;
@end

@implementation SBTransientOverlayDefaultTransitionContextProvider

- (void)completeTransition:(BOOL)transition
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_didPerformAlongsideTransitions)
  {
    [(SBTransientOverlayDefaultTransitionContextProvider *)a2 completeTransition:?];
  }

  if (self->_isCompleted)
  {
    [(SBTransientOverlayDefaultTransitionContextProvider *)a2 completeTransition:?];
  }

  self->_isCompleted = 1;
  self->_transitionCompletedSuccessfully = transition;
  v6 = [(NSMutableArray *)self->_transitionCompletionBlocks copy];
  transitionCompletionBlocks = self->_transitionCompletionBlocks;
  self->_transitionCompletionBlocks = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * i) + 16))(*(*(&v13 + 1) + 8 * i));
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)performAlongsideTransitions
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBTransientOverlayDefaultTransitionContextProvider.m" lineNumber:38 description:{@"%@ may only be called once.", v4}];
}

- (void)transitionAlongsideUsingBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  if (self->_didPerformAlongsideTransitions)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else if (blockCopy)
  {
    transitionBlocks = self->_transitionBlocks;
    if (!transitionBlocks)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->_transitionBlocks;
      self->_transitionBlocks = v8;

      transitionBlocks = self->_transitionBlocks;
    }

    v10 = MEMORY[0x223D6F7F0](blockCopy);
    [(NSMutableArray *)transitionBlocks addObject:v10];
  }

  if (self->_isCompleted)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, self->_transitionCompletedSuccessfully);
    }
  }

  else if (completionCopy)
  {
    transitionCompletionBlocks = self->_transitionCompletionBlocks;
    if (!transitionCompletionBlocks)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = self->_transitionCompletionBlocks;
      self->_transitionCompletionBlocks = v12;

      transitionCompletionBlocks = self->_transitionCompletionBlocks;
    }

    v14 = MEMORY[0x223D6F7F0](completionCopy);
    [(NSMutableArray *)transitionCompletionBlocks addObject:v14];
  }
}

- (void)completeTransition:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTransientOverlayDefaultTransitionContextProvider.m" lineNumber:24 description:@"-performAlongsideTransitions must be called before completing the transition."];
}

- (void)completeTransition:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"SBTransientOverlayDefaultTransitionContextProvider.m" lineNumber:25 description:{@"%@ may only be called once.", v4}];
}

@end