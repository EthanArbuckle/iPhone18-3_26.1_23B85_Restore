@interface SBPlatterHomeGestureManager
- (SBPlatterHomeGestureManager)initWithDelegate:(id)a3;
- (SBPlatterHomeGestureManagerDelegate)delegate;
- (id)_allParticipants;
- (id)_homeGestureContextForParticipant:(id)a3 creatingIfNecessary:(BOOL)a4 withWindowScene:(id)a5;
- (id)_participantForHomeGestureContext:(id)a3;
- (id)gestureRecognizerPriorityAssertionForBannerManagerHomeGestureContext:(id)a3;
- (id)keyboardHomeAffordanceAssertionForBannerManagerHomeGestureContext:(id)a3;
- (id)registerParticipant:(id)a3 windowScene:(id)a4;
- (void)_removeHomeGestureContextForParticipant:(id)a3;
- (void)bannerManagerHomeGestureContext:(id)a3 homeGestureOwnershipDidChange:(BOOL)a4;
- (void)unregisterParticipant:(id)a3;
- (void)wantsHomeGestureDidChangeForBannerManagerHomeGestureContext:(id)a3;
@end

@implementation SBPlatterHomeGestureManager

- (id)_allParticipants
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v2->_participantsToHomeGestureContexts;
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

  objc_sync_exit(v2);

  return v3;
}

- (SBPlatterHomeGestureManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBPlatterHomeGestureManager;
  v5 = [(SBPlatterHomeGestureManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (id)registerParticipant:(id)a3 windowScene:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SBPlatterHomeGestureManager registerParticipant:a2 windowScene:self];
  }

  v9 = SBLogBanners();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Platter home gesture manager asked to register participant: %{public}@", &v12, 0xCu);
  }

  v10 = [(SBPlatterHomeGestureManager *)self _homeGestureContextForParticipant:v7 creatingIfNecessary:1 withWindowScene:v8];

  return v10;
}

- (void)unregisterParticipant:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = SBLogBanners();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Platter home gesture manager asked to unregister participant: %{public}@", &v7, 0xCu);
    }

    v6 = [(SBPlatterHomeGestureManager *)self _homeGestureContextForParticipant:v4 creatingIfNecessary:0 withWindowScene:0];
    [v6 becomeActiveAffordanceIfPossible:0];
    [(SBPlatterHomeGestureManager *)self _removeHomeGestureContextForParticipant:v4];
  }
}

- (void)bannerManagerHomeGestureContext:(id)a3 homeGestureOwnershipDidChange:(BOOL)a4
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [(SBPlatterHomeGestureManager *)self _participantForHomeGestureContext:v7];
    [WeakRetained platterHomeGestureManager:self participantOwningHomeGestureDidChange:v6];
  }
}

- (void)wantsHomeGestureDidChangeForBannerManagerHomeGestureContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();
  v7 = [(SBPlatterHomeGestureManager *)self _allParticipants];
  v8 = v7;
  if (v6)
  {
    [WeakRetained platterHomeGestureManager:self orderedParticipants:v7];
  }

  else
  {
    [v7 allObjects];
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

- (id)keyboardHomeAffordanceAssertionForBannerManagerHomeGestureContext:(id)a3
{
  v4 = [(SBPlatterHomeGestureManager *)self _participantForHomeGestureContext:a3];
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

- (id)gestureRecognizerPriorityAssertionForBannerManagerHomeGestureContext:(id)a3
{
  v4 = [(SBPlatterHomeGestureManager *)self _participantForHomeGestureContext:a3];
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

- (id)_homeGestureContextForParticipant:(id)a3 creatingIfNecessary:(BOOL)a4 withWindowScene:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMapTable *)v10->_participantsToHomeGestureContexts objectForKey:v8];
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = !v6;
  }

  if (!v12)
  {
    if (!v10->_participantsToHomeGestureContexts)
    {
      v13 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      participantsToHomeGestureContexts = v10->_participantsToHomeGestureContexts;
      v10->_participantsToHomeGestureContexts = v13;
    }

    WeakRetained = objc_loadWeakRetained(&v10->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v16 = [WeakRetained platterHomeGestureManager:v10 zStackParticipantIdentifierForParticipant:v8];
      if (v16 < 0)
      {
        v17 = SBLogBanners();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [SBPlatterHomeGestureManager _homeGestureContextForParticipant:v8 creatingIfNecessary:v17 withWindowScene:?];
        }

        v11 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0;
    }

    v11 = [[SBPlatterHomeGestureContext alloc] initWithParticipant:v8 participantIdentifier:v16 windowScene:v9];
    [(SBPlatterHomeGestureContext *)v11 setDelegate:v10];
    [(NSMapTable *)v10->_participantsToHomeGestureContexts setObject:v11 forKey:v8];
LABEL_16:
  }

  objc_sync_exit(v10);

LABEL_18:

  return v11;
}

- (id)_participantForHomeGestureContext:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5->_participantsToHomeGestureContexts;
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
          v11 = [(NSMapTable *)v5->_participantsToHomeGestureContexts objectForKey:v10, v14];
          v12 = v11 == v4;

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

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removeHomeGestureContextForParticipant:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSMapTable *)v5->_participantsToHomeGestureContexts removeObjectForKey:v7];
    if (![(NSMapTable *)v5->_participantsToHomeGestureContexts count])
    {
      participantsToHomeGestureContexts = v5->_participantsToHomeGestureContexts;
      v5->_participantsToHomeGestureContexts = 0;
    }

    objc_sync_exit(v5);

    v4 = v7;
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