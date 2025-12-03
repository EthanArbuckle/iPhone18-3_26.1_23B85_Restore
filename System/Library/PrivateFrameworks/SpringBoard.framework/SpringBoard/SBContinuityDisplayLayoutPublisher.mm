@interface SBContinuityDisplayLayoutPublisher
- (FBSDisplayLayout)currentLayout;
- (SBContinuityDisplayLayoutPublisher)initWithCoordinator:(id)coordinator;
- (id)addElement:(id)element;
- (id)transitionAssertionWithReason:(id)reason;
- (int64_t)backlightLevel;
- (int64_t)interfaceOrientation;
- (void)_removeElementForKey:(id)key;
- (void)_removeTransitionForKey:(id)key;
- (void)activate;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)flush;
- (void)invalidate;
- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition;
- (void)removeObserver:(id)observer;
- (void)setBacklightLevel:(int64_t)level;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setInterfaceOrientation:(int64_t)orientation;
@end

@implementation SBContinuityDisplayLayoutPublisher

- (SBContinuityDisplayLayoutPublisher)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v23.receiver = self;
  v23.super_class = SBContinuityDisplayLayoutPublisher;
  v6 = [(SBContinuityDisplayLayoutPublisher *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, coordinator);
    rootPublisher = [coordinatorCopy rootPublisher];
    rootPublisher = v7->_rootPublisher;
    v7->_rootPublisher = rootPublisher;

    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    elementsPendingActivation = v7->_elementsPendingActivation;
    v7->_elementsPendingActivation = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeElements = v7->_activeElements;
    v7->_activeElements = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transitionsPendingActivation = v7->_transitionsPendingActivation;
    v7->_transitionsPendingActivation = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeTransitions = v7->_activeTransitions;
    v7->_activeTransitions = v18;

    v20 = objc_alloc_init(MEMORY[0x277D0ACF8]);
    emptyLayout = v7->_emptyLayout;
    v7->_emptyLayout = v20;

    v7->_pendedBacklightLevel = [(FBSDisplayLayout *)v7->_emptyLayout displayBacklightLevel];
    v7->_pendedInterfaceOrientation = [(FBSDisplayLayout *)v7->_emptyLayout interfaceOrientation];
  }

  return v7;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"publisher was not invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBContinuityDisplayLayoutPublisher.m";
    v16 = 1024;
    v17 = 60;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8 = configurationCopy;
  if (self->_displayConfiguration)
  {
    [(SBContinuityDisplayLayoutPublisher *)a2 setDisplayConfiguration:?];
    configurationCopy = v8;
  }

  v6 = [configurationCopy copy];
  displayConfiguration = self->_displayConfiguration;
  self->_displayConfiguration = v6;
}

- (FBSDisplayLayout)currentLayout
{
  if (self->_activated)
  {
    if (self->_invalidated)
    {
      v3 = SBLogContinuitySession();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        [SBContinuityDisplayLayoutPublisher currentLayout];
      }

      currentLayout = 0;
    }

    else
    {
      currentLayout = [(FBSDisplayLayoutPublisher *)self->_rootPublisher currentLayout];
    }
  }

  else
  {
    v5 = SBLogContinuitySession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBContinuityDisplayLayoutPublisher currentLayout];
    }

    currentLayout = self->_emptyLayout;
  }

  return currentLayout;
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    if (self->_invalidated)
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = BSInterfaceOrientationDescription();
        v10 = 138543362;
        v11 = v6;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring setting interface orientation on display layout publisher to %{public}@ because it is invalid", &v10, 0xCu);
      }
    }

    else
    {
      rootPublisher = self->_rootPublisher;

      [(FBSDisplayLayoutPublisher *)rootPublisher setInterfaceOrientation:?];
    }
  }

  else
  {
    v7 = SBLogContinuitySession();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = BSInterfaceOrientationDescription();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Pending setting interface orientation on display layout publisher to %{public}@ because it is not activated", &v10, 0xCu);
    }

    self->_pendedInterfaceOrientation = orientation;
  }
}

- (int64_t)interfaceOrientation
{
  if (!self->_activated)
  {
    return self->_pendedInterfaceOrientation;
  }

  if (self->_invalidated)
  {
    emptyLayout = self->_emptyLayout;
  }

  else
  {
    emptyLayout = self->_rootPublisher;
  }

  return [(FBSDisplayLayout *)emptyLayout interfaceOrientation];
}

- (void)setBacklightLevel:(int64_t)level
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    if (self->_invalidated)
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        levelCopy2 = level;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring setting backlight level display layout publisher to %ld because it is invalid", &v8, 0xCu);
      }
    }

    else
    {
      rootPublisher = self->_rootPublisher;

      [(FBSDisplayLayoutPublisher *)rootPublisher setBacklightLevel:?];
    }
  }

  else
  {
    v6 = SBLogContinuitySession();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      levelCopy2 = level;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Pending setting backlight level on display layout publisher to %ld because it is not activated", &v8, 0xCu);
    }

    self->_pendedBacklightLevel = level;
  }
}

- (int64_t)backlightLevel
{
  if (!self->_activated)
  {
    return self->_pendedBacklightLevel;
  }

  if (self->_invalidated)
  {
    return [(FBSDisplayLayout *)self->_emptyLayout displayBacklightLevel];
  }

  return [(FBSDisplayLayoutPublisher *)self->_rootPublisher backlightLevel];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (id)addElement:(id)element
{
  v25 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  identifier = [elementCopy identifier];
  v9 = [v5 stringWithFormat:@"<%@:%p %@>", v7, elementCopy, identifier];

  if (self->_activated)
  {
    invalidated = self->_invalidated;
    v11 = SBLogContinuitySession();
    v12 = v11;
    if (invalidated)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = elementCopy;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Failed to add element %{public}@ to display layout publisher because it is invalid", buf, 0xCu);
      }

      v13 = [objc_alloc(MEMORY[0x277CF0CE8]) initWithIdentifier:@"com.apple.springBoard.continuity.layout.publisher.add-element" forReason:v9 invalidationBlock:&__block_literal_global_338];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SBContinuityDisplayLayoutPublisher addElement:];
      }

      v16 = [(FBSDisplayLayoutPublisher *)self->_rootPublisher addElement:elementCopy];
      [(NSMutableDictionary *)self->_activeElements setObject:v16 forKey:v9];
      v17 = objc_alloc(MEMORY[0x277CF0CE8]);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __49__SBContinuityDisplayLayoutPublisher_addElement___block_invoke_25;
      v19[3] = &unk_2783B18A8;
      v19[4] = self;
      v20 = v9;
      v13 = [v17 initWithIdentifier:@"com.apple.springBoard.continuity.layout.publisher.add-element" forReason:v20 invalidationBlock:v19];
    }
  }

  else
  {
    v14 = SBLogContinuitySession();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = elementCopy;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Pending activation of layout element %{public}@ to display layout publisher because the layout monitor is not activated yet", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_elementsPendingActivation setObject:elementCopy forKey:v9];
    v15 = objc_alloc(MEMORY[0x277CF0CE8]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__SBContinuityDisplayLayoutPublisher_addElement___block_invoke;
    v21[3] = &unk_2783B18A8;
    v21[4] = self;
    v22 = v9;
    v13 = [v15 initWithIdentifier:@"com.apple.springBoard.continuity.layout.publisher.add-element" forReason:v22 invalidationBlock:v21];
  }

  return v13;
}

- (id)transitionAssertionWithReason:(id)reason
{
  v28 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = MEMORY[0x277CCACA8];
  uUIDString = [uUID UUIDString];
  v8 = uUIDString;
  v9 = @"nil";
  if (reasonCopy)
  {
    v9 = reasonCopy;
  }

  v10 = [v6 stringWithFormat:@"<%@:%p (%@)>", uUIDString, uUID, v9];

  if (self->_activated)
  {
    if (self->_invalidated)
    {
      v11 = SBLogContinuitySession();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = reasonCopy;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Failed to start transition with reason %{public}@ for display layout publisher because it is invalid", buf, 0xCu);
      }

      v12 = objc_alloc(MEMORY[0x277CF0CE8]);
      if (reasonCopy)
      {
        v13 = reasonCopy;
      }

      else
      {
        v13 = @"<nil>";
      }

      v14 = [v12 initWithIdentifier:@"com.apple.springBoard.continuity.layout.publisher.transition" forReason:v13 invalidationBlock:&__block_literal_global_41_3];
    }

    else
    {
      v18 = [(FBSDisplayLayoutPublisher *)self->_rootPublisher transitionAssertionWithReason:reasonCopy];
      [(NSMutableDictionary *)self->_activeTransitions setObject:v18 forKey:v10];
      v19 = objc_alloc(MEMORY[0x277CF0CE8]);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __68__SBContinuityDisplayLayoutPublisher_transitionAssertionWithReason___block_invoke_2;
      v22[3] = &unk_2783B18A8;
      v22[4] = self;
      v23 = v10;
      v14 = [v19 initWithIdentifier:@"com.apple.springBoard.continuity.layout.publisher.transition" forReason:v23 invalidationBlock:v22];
    }
  }

  else
  {
    v15 = SBLogContinuitySession();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Pending transition with reason %{public}@ to display layout publisher because the layout monitor is not activated yet", buf, 0xCu);
    }

    transitionsPendingActivation = self->_transitionsPendingActivation;
    if (reasonCopy)
    {
      v17 = [(__CFString *)reasonCopy copy];
      [(NSMutableDictionary *)transitionsPendingActivation setObject:v17 forKey:v10];
    }

    else
    {
      [(NSMutableDictionary *)self->_transitionsPendingActivation setObject:@"__SBContinuityDisplayLayoutPublisherUnknownTransitionReason__" forKey:v10];
    }

    v20 = objc_alloc(MEMORY[0x277CF0CE8]);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__SBContinuityDisplayLayoutPublisher_transitionAssertionWithReason___block_invoke;
    v24[3] = &unk_2783B18A8;
    v24[4] = self;
    v25 = v10;
    v14 = [v20 initWithIdentifier:@"com.apple.springBoard.continuity.layout.publisher.transition" forReason:v25 invalidationBlock:v24];
  }

  return v14;
}

- (void)flush
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_activated && !self->_invalidated)
  {
    rootPublisher = self->_rootPublisher;

    [(FBSDisplayLayoutPublisher *)rootPublisher flush];
  }

  else
  {
    v3 = SBLogContinuitySession();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_invalidated)
      {
        v4 = @"invalid";
      }

      else
      {
        v4 = @"not activated";
      }

      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Failed to flush display layout publisher because it is %{public}@", &v6, 0xCu);
    }
  }
}

- (void)invalidate
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  self->_invalidated = 1;
  [(FBSDisplayLayoutPublisher *)self->_rootPublisher removeObserver:self];
  v3 = [(FBSDisplayLayoutPublisher *)self->_rootPublisher transitionAssertionWithReason:@"invalidating continuity publisher"];
  [(FBSDisplayLayoutPublisher *)self->_rootPublisher setDisplayConfiguration:0];
  [(FBSDisplayLayoutPublisher *)self->_rootPublisher setBacklightLevel:[(FBSDisplayLayout *)self->_emptyLayout displayBacklightLevel]];
  [(FBSDisplayLayoutPublisher *)self->_rootPublisher setInterfaceOrientation:[(FBSDisplayLayout *)self->_emptyLayout interfaceOrientation]];
  [(NSMutableDictionary *)self->_elementsPendingActivation removeAllObjects];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [(NSMutableDictionary *)self->_activeElements allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [(NSMutableDictionary *)self->_activeElements objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v8)];
        [v9 invalidate];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_activeElements removeAllObjects];
  [(NSMutableDictionary *)self->_transitionsPendingActivation removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_activeTransitions allKeys];
  v11 = [allKeys2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(allKeys2);
        }

        v15 = [(NSMutableDictionary *)self->_activeTransitions objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v14)];
        [v15 invalidate];

        ++v14;
      }

      while (v12 != v14);
      v12 = [allKeys2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  [(NSMutableDictionary *)self->_activeTransitions removeAllObjects];
  [(BSInvalidatable *)self->_coordinatorActivation invalidate];
  [v3 invalidate];
  rootPublisher = self->_rootPublisher;
  currentLayout = [(SBContinuityDisplayLayoutPublisher *)self currentLayout];
  [(SBContinuityDisplayLayoutPublisher *)self publisher:rootPublisher didUpdateLayout:currentLayout withTransition:0];
}

- (void)activate
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"attempted double activation of %@", self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"SBContinuityDisplayLayoutPublisher.m";
    v16 = 1024;
    v17 = 263;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_removeElementForKey:(id)key
{
  keyCopy = key;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(NSMutableDictionary *)self->_elementsPendingActivation objectForKey:keyCopy];
  if (v5)
  {
    v6 = SBLogContinuitySession();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SBContinuityDisplayLayoutPublisher _removeElementForKey:];
    }
  }

  [(NSMutableDictionary *)self->_elementsPendingActivation removeObjectForKey:keyCopy];
  v7 = [(NSMutableDictionary *)self->_activeElements objectForKey:keyCopy];
  [v7 invalidate];
  [(NSMutableDictionary *)self->_activeElements removeObjectForKey:keyCopy];
}

- (void)_removeTransitionForKey:(id)key
{
  keyCopy = key;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(NSMutableDictionary *)self->_transitionsPendingActivation objectForKey:keyCopy];
  if (v5)
  {
    v6 = SBLogContinuitySession();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SBContinuityDisplayLayoutPublisher *)v5 _removeTransitionForKey:v6];
    }
  }

  [(NSMutableDictionary *)self->_transitionsPendingActivation removeObjectForKey:keyCopy];
  v7 = [(NSMutableDictionary *)self->_activeTransitions objectForKey:keyCopy];
  [v7 invalidate];
  [(NSMutableDictionary *)self->_activeTransitions removeObjectForKey:keyCopy];
}

- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition
{
  v21 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  layoutCopy = layout;
  transitionCopy = transition;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_observers;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) publisher:publisherCopy didUpdateLayout:layoutCopy withTransition:{transitionCopy, v16}];
      }

      while (v13 != v15);
      v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)setDisplayConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuityDisplayLayoutPublisher.m" lineNumber:64 description:@"Alreadying tracking a display configuration"];
}

- (void)_removeTransitionForKey:(__CFString *)a1 .cold.1(__CFString *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [(__CFString *)a1 isEqualToString:@"__SBContinuityDisplayLayoutPublisherUnknownTransitionReason__"];
  v5 = @"nil";
  if (!v4)
  {
    v5 = a1;
  }

  v6 = 138412290;
  v7 = v5;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Finished pended transition for reason %@", &v6, 0xCu);
}

@end