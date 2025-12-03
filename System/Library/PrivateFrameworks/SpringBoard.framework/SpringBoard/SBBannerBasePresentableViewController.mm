@interface SBBannerBasePresentableViewController
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)addPresentableObserver:(id)observer;
- (void)removePresentableObserver:(id)observer;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
@end

@implementation SBBannerBasePresentableViewController

- (NSString)requestIdentifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBBannerBasePresentableViewController.m" lineNumber:21 description:@"subclasses must override!"];

  return 0;
}

- (NSString)requesterIdentifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBBannerBasePresentableViewController.m" lineNumber:26 description:@"subclasses must override!"];

  return 0;
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__SBBannerBasePresentableViewController_userInteractionWillBeginForBannerForPresentable___block_invoke;
  v6[3] = &unk_2783AD8E0;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(SBBannerBasePresentableViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionWillBeginForBannerForPresentable_ usingBlock:v6];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__SBBannerBasePresentableViewController_userInteractionDidEndForBannerForPresentable___block_invoke;
  v6[3] = &unk_2783AD8E0;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(SBBannerBasePresentableViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionDidEndForBannerForPresentable_ usingBlock:v6];
}

- (void)addPresentableObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removePresentableObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy && [(NSHashTable *)self->_observers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

@end