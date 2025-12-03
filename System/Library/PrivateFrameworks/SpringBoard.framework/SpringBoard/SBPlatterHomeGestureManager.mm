@interface SBPlatterHomeGestureManager
- (SBPlatterHomeGestureManager)initWithDelegate:(id)delegate;
- (SBPlatterHomeGestureManagerDelegate)delegate;
- (id)_allParticipants;
- (id)_homeGestureContextForParticipant:(id)participant creatingIfNecessary:(BOOL)necessary withWindowScene:(id)scene;
- (id)_participantForHomeGestureContext:(id)context;
- (id)gestureRecognizerPriorityAssertionForBannerManagerHomeGestureContext:(id)context;
- (id)keyboardHomeAffordanceAssertionForBannerManagerHomeGestureContext:(id)context;
- (id)registerParticipant:(id)participant windowScene:(id)scene;
- (void)_removeHomeGestureContextForParticipant:(id)participant;
- (void)bannerManagerHomeGestureContext:(id)context homeGestureOwnershipDidChange:(BOOL)change;
- (void)unregisterParticipant:(id)participant;
- (void)wantsHomeGestureDidChangeForBannerManagerHomeGestureContext:(id)context;
@end

@implementation SBPlatterHomeGestureManager

- (id)_allParticipants
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = selfCopy->_participantsToHomeGestureContexts;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{*(*(&v9 + 1) + 8 * i), v9}];
      }

      v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (SBPlatterHomeGestureManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SBPlatterHomeGestureManager;
  v5 = [(SBPlatterHomeGestureManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (id)registerParticipant:(id)participant windowScene:(id)scene
{
  v14 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  sceneCopy = scene;
  if (!participantCopy)
  {
    [SBPlatterHomeGestureManager registerParticipant:a2 windowScene:self];
  }

  v9 = SBLogBanners();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = participantCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Platter home gesture manager asked to register participant: %{public}@", &v12, 0xCu);
  }

  v10 = [(SBPlatterHomeGestureManager *)self _homeGestureContextForParticipant:participantCopy creatingIfNecessary:1 withWindowScene:sceneCopy];

  return v10;
}

- (void)unregisterParticipant:(id)participant
{
  v9 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  if (participantCopy)
  {
    v5 = SBLogBanners();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = participantCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Platter home gesture manager asked to unregister participant: %{public}@", &v7, 0xCu);
    }

    v6 = [(SBPlatterHomeGestureManager *)self _homeGestureContextForParticipant:participantCopy creatingIfNecessary:0 withWindowScene:0];
    [v6 becomeActiveAffordanceIfPossible:0];
    [(SBPlatterHomeGestureManager *)self _removeHomeGestureContextForParticipant:participantCopy];
  }
}

- (void)bannerManagerHomeGestureContext:(id)context homeGestureOwnershipDidChange:(BOOL)change
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [(SBPlatterHomeGestureManager *)self _participantForHomeGestureContext:contextCopy];
    [WeakRetained platterHomeGestureManager:self participantOwningHomeGestureDidChange:v6];
  }
}

- (void)wantsHomeGestureDidChangeForBannerManagerHomeGestureContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();
  _allParticipants = [(SBPlatterHomeGestureManager *)self _allParticipants];
  v8 = _allParticipants;
  if (v6)
  {
    [WeakRetained platterHomeGestureManager:self orderedParticipants:_allParticipants];
  }

  else
  {
    [_allParticipants allObjects];
  }
  v9 = ;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [(SBPlatterHomeGestureManager *)self _homeGestureContextForParticipant:*(*(&v18 + 1) + 8 * i) creatingIfNecessary:0 withWindowScene:0, v18];
        v17 = v16;
        if (v13 || ![v16 wantsToBeActiveAffordance])
        {
          [v17 becomeActiveAffordanceIfPossible:0];
        }

        else
        {
          v13 = v17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  [v13 becomeActiveAffordanceIfPossible:1];
}

- (id)keyboardHomeAffordanceAssertionForBannerManagerHomeGestureContext:(id)context
{
  v4 = [(SBPlatterHomeGestureManager *)self _participantForHomeGestureContext:context];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained platterHomeGestureManager:self windowForParticipant:v4], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [SBKeyboardHomeAffordanceAssertion assertionForGestureWindow:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)gestureRecognizerPriorityAssertionForBannerManagerHomeGestureContext:(id)context
{
  v4 = [(SBPlatterHomeGestureManager *)self _participantForHomeGestureContext:context];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained platterHomeGestureManager:self gestureRecognizerPriorityAssertionForParticipant:v4 reason:@"home gesture context"];
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

  return v6;
}

- (id)_homeGestureContextForParticipant:(id)participant creatingIfNecessary:(BOOL)necessary withWindowScene:(id)scene
{
  necessaryCopy = necessary;
  participantCopy = participant;
  sceneCopy = scene;
  if (!participantCopy)
  {
    v11 = 0;
    goto LABEL_18;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMapTable *)selfCopy->_participantsToHomeGestureContexts objectForKey:participantCopy];
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = !necessaryCopy;
  }

  if (!v12)
  {
    if (!selfCopy->_participantsToHomeGestureContexts)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      participantsToHomeGestureContexts = selfCopy->_participantsToHomeGestureContexts;
      selfCopy->_participantsToHomeGestureContexts = weakToStrongObjectsMapTable;
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v16 = [WeakRetained platterHomeGestureManager:selfCopy zStackParticipantIdentifierForParticipant:participantCopy];
      if (v16 < 0)
      {
        v17 = SBLogBanners();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [SBPlatterHomeGestureManager _homeGestureContextForParticipant:participantCopy creatingIfNecessary:v17 withWindowScene:?];
        }

        v11 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0;
    }

    v11 = [[SBPlatterHomeGestureContext alloc] initWithParticipant:participantCopy participantIdentifier:v16 windowScene:sceneCopy];
    [(SBPlatterHomeGestureContext *)v11 setDelegate:selfCopy];
    [(NSMapTable *)selfCopy->_participantsToHomeGestureContexts setObject:v11 forKey:participantCopy];
LABEL_16:
  }

  objc_sync_exit(selfCopy);

LABEL_18:

  return v11;
}

- (id)_participantForHomeGestureContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = selfCopy->_participantsToHomeGestureContexts;
    v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(NSMapTable *)selfCopy->_participantsToHomeGestureContexts objectForKey:v10, v14];
          v12 = v11 == contextCopy;

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removeHomeGestureContextForParticipant:(id)participant
{
  participantCopy = participant;
  if (participantCopy)
  {
    v7 = participantCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMapTable *)selfCopy->_participantsToHomeGestureContexts removeObjectForKey:v7];
    if (![(NSMapTable *)selfCopy->_participantsToHomeGestureContexts count])
    {
      participantsToHomeGestureContexts = selfCopy->_participantsToHomeGestureContexts;
      selfCopy->_participantsToHomeGestureContexts = 0;
    }

    objc_sync_exit(selfCopy);

    participantCopy = v7;
  }
}

- (SBPlatterHomeGestureManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)registerParticipant:(uint64_t)a1 windowScene:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPlatterHomeGestureManager.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
}

- (void)_homeGestureContextForParticipant:(uint64_t)a1 creatingIfNecessary:(uint64_t)a2 withWindowScene:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Delegate (%{public}@) failed to return a home gesture participant ID for platter home gesture participant '%{public}@'", &v3, 0x16u);
}

@end