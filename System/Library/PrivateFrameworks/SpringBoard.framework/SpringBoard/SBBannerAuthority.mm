@interface SBBannerAuthority
- (BNConsideringDelegate)delegate;
- (BOOL)_shouldDropPresentableDuringScreenSharing:(id)sharing userInfo:(id)info;
- (BOOL)_shouldDropPresentablesDuringScreenSharing;
- (SBBannerAuthority)init;
- (int64_t)_mediatedDecisionFromDecisions:(id)decisions defaultDecision:(int64_t)decision;
- (int64_t)shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change;
- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)presentable withPresentable:(id)withPresentable;
- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable;
- (int64_t)shouldPostPresentable:(id)presentable userInfo:(id)info reason:(id *)reason;
- (int64_t)shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable;
- (void)_configureSinksIfNecessary;
- (void)bannerAuthority:(id)authority mayChangeDecisionForResponsiblePresentable:(id)presentable;
- (void)registerAuthority:(id)authority forRequesterIdentifier:(id)identifier;
@end

@implementation SBBannerAuthority

- (SBBannerAuthority)init
{
  v5.receiver = self;
  v5.super_class = SBBannerAuthority;
  v2 = [(SBBannerAuthority *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBBannerAuthority *)v2 _configureSinksIfNecessary];
  }

  return v3;
}

- (void)registerAuthority:(id)authority forRequesterIdentifier:(id)identifier
{
  authorityCopy = authority;
  identifierCopy = identifier;
  if (authorityCopy && identifierCopy)
  {
    requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
    if (!requesterIDsToAuthorities)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_requesterIDsToAuthorities;
      self->_requesterIDsToAuthorities = v8;

      requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
    }

    [(NSMutableDictionary *)requesterIDsToAuthorities setObject:authorityCopy forKey:identifierCopy];
    if (objc_opt_respondsToSelector())
    {
      [authorityCopy setDelegate:self];
    }
  }
}

- (int64_t)shouldPostPresentable:(id)presentable userInfo:(id)info reason:(id *)reason
{
  presentableCopy = presentable;
  infoCopy = info;
  if ([(SBBannerAuthority *)self _isScreenSharingActive]&& [(SBBannerAuthority *)self _shouldDropPresentablesDuringScreenSharing]&& [(SBBannerAuthority *)self _shouldDropPresentableDuringScreenSharing:presentableCopy userInfo:infoCopy])
  {
    if (reason)
    {
      *reason = @"Posting not permitted during screen sharing";
    }

    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable
{
  v34[2] = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  presentablesCopy = presentables;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [presentableCopy presentableType] == 1)
  {
    v10 = 1;
    v11 = presentablesCopy;
  }

  else
  {
    requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
    requesterIdentifier = [presentableCopy requesterIdentifier];
    v14 = [(NSMutableDictionary *)requesterIDsToAuthorities objectForKey:requesterIdentifier];

    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_269];
    v11 = [presentablesCopy filteredArrayUsingPredicate:v15];

    v16 = self->_requesterIDsToAuthorities;
    lastObject = [v11 lastObject];
    requesterIdentifier2 = [lastObject requesterIdentifier];
    v19 = [(NSMutableDictionary *)v16 objectForKey:requesterIdentifier2];

    if (v14)
    {
      v33 = 0;
      v20 = [v14 shouldPresentPresentable:presentableCopy withPresentedPresentables:v11 responsiblePresentable:&v33];
      v30 = v33;
    }

    else
    {
      v30 = 0;
      v20 = 0;
    }

    v31 = v14;
    responsiblePresentableCopy = responsiblePresentable;
    if (v19)
    {
      v32 = 0;
      v22 = [v19 shouldPresentPresentable:presentableCopy withPresentedPresentables:v11 responsiblePresentable:&v32];
      v23 = v32;
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:{v20, v20}];
    v34[0] = v24;
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
    v34[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v10 = [(SBBannerAuthority *)self _mediatedDecisionFromDecisions:v26 defaultDecision:1];

    if (responsiblePresentableCopy)
    {
      v27 = v23;
      if (v10 == v22 || (v27 = v30, v10 == v29))
      {
        *responsiblePresentableCopy = v27;
      }
    }
  }

  return v10;
}

BOOL __95__SBBannerAuthority_shouldPresentPresentable_withPresentedPresentables_responsiblePresentable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (objc_opt_respondsToSelector() & 1) == 0 || [v2 presentableType] != 1;

  return v3;
}

- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable
{
  v21[2] = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  withPresentableCopy = withPresentable;
  requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
  requesterIdentifier = [presentableCopy requesterIdentifier];
  v10 = [(NSMutableDictionary *)requesterIDsToAuthorities objectForKey:requesterIdentifier];

  v11 = self->_requesterIDsToAuthorities;
  requesterIdentifier2 = [withPresentableCopy requesterIdentifier];
  v13 = [(NSMutableDictionary *)v11 objectForKey:requesterIdentifier2];

  if (!v10)
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = [v10 shouldOverlapPresentable:presentableCopy withPresentable:withPresentableCopy];
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = [v13 shouldOverlapPresentable:presentableCopy withPresentable:withPresentableCopy];
LABEL_6:
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v21[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  v21[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v19 = [(SBBannerAuthority *)self _mediatedDecisionFromDecisions:v18 defaultDecision:1];

  return v19;
}

- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)presentable withPresentable:(id)withPresentable
{
  v21[2] = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  withPresentableCopy = withPresentable;
  requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
  requesterIdentifier = [presentableCopy requesterIdentifier];
  v10 = [(NSMutableDictionary *)requesterIDsToAuthorities objectForKey:requesterIdentifier];

  v11 = self->_requesterIDsToAuthorities;
  requesterIdentifier2 = [withPresentableCopy requesterIdentifier];
  v13 = [(NSMutableDictionary *)v11 objectForKey:requesterIdentifier2];

  if (objc_opt_respondsToSelector())
  {
    v14 = [v10 shouldNewTierBeAddedToTopForPresentable:presentableCopy withPresentable:withPresentableCopy];
  }

  else
  {
    v14 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v13 shouldNewTierBeAddedToTopForPresentable:presentableCopy withPresentable:withPresentableCopy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v21[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  v21[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v19 = [(SBBannerAuthority *)self _mediatedDecisionFromDecisions:v18 defaultDecision:1];

  return v19;
}

- (int64_t)shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change
{
  v48[2] = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  presentablesCopy = presentables;
  requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
  requesterIdentifier = [presentableCopy requesterIdentifier];
  v12 = [(NSMutableDictionary *)requesterIDsToAuthorities objectForKey:requesterIdentifier];

  v13 = self->_requesterIDsToAuthorities;
  lastObject = [presentablesCopy lastObject];
  requesterIdentifier2 = [lastObject requesterIdentifier];
  v16 = [(NSMutableDictionary *)v13 objectForKey:requesterIdentifier2];

  if (objc_opt_respondsToSelector())
  {
    v46 = 0;
    v47 = 0;
    v17 = [v12 shouldMorphToPresentable:presentableCopy withPresentedPresentables:presentablesCopy responsiblePresentable:&v47 stateChange:&v46];
    v18 = v47;
    v19 = v46;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v19 = MEMORY[0x277CBEC28];
  }

  v40 = v18;
  v42 = v12;
  v41 = v16;
  v39 = v19;
  if (objc_opt_respondsToSelector())
  {
    v44 = 0;
    v45 = 0;
    v20 = v16;
    v21 = presentableCopy;
    v22 = presentablesCopy;
    v23 = [v20 shouldMorphToPresentable:presentableCopy withPresentedPresentables:presentablesCopy responsiblePresentable:&v45 stateChange:&v44];
    v24 = v45;
    v25 = v44;
  }

  else
  {
    v22 = presentablesCopy;
    v21 = presentableCopy;
    v24 = 0;
    v23 = 0;
    v25 = MEMORY[0x277CBEC28];
  }

  v26 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
  v48[0] = v26;
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
  v48[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v29 = [(SBBannerAuthority *)self _mediatedDecisionFromDecisions:v28 defaultDecision:-1];

  if (v29 == v23)
  {
    changeCopy2 = change;
    v31 = v39;
    v32 = v40;
    if (responsiblePresentable)
    {
      v33 = v24;
      *responsiblePresentable = v24;
    }

    v34 = v25;
    if (!change)
    {
      goto LABEL_18;
    }

LABEL_17:
    *changeCopy2 = v34;
    goto LABEL_18;
  }

  v35 = v29 == v17;
  changeCopy2 = change;
  v31 = v39;
  v32 = v40;
  if (v35)
  {
    if (responsiblePresentable)
    {
      v36 = v40;
      *responsiblePresentable = v40;
    }

    v34 = v39;
    if (change)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v29;
}

- (void)bannerAuthority:(id)authority mayChangeDecisionForResponsiblePresentable:(id)presentable
{
  presentableCopy = presentable;
  requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
  authorityCopy = authority;
  allValues = [(NSMutableDictionary *)requesterIDsToAuthorities allValues];
  v9 = [allValues containsObject:authorityCopy];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerAuthority:self mayChangeDecisionForResponsiblePresentable:presentableCopy];
  }
}

- (int64_t)_mediatedDecisionFromDecisions:(id)decisions defaultDecision:(int64_t)decision
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  decisionsCopy = decisions;
  v6 = [decisionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
LABEL_15:

LABEL_16:
    decisionCopy = decision;
    goto LABEL_17;
  }

  v7 = v6;
  decisionCopy = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(decisionsCopy);
      }

      integerValue = [*(*(&v13 + 1) + 8 * i) integerValue];
      if (integerValue)
      {
        if (decisionCopy && decisionCopy != integerValue)
        {
          goto LABEL_15;
        }
      }

      else
      {
        integerValue = decisionCopy;
      }

      decisionCopy = integerValue;
    }

    v7 = [decisionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);

  if (!decisionCopy)
  {
    goto LABEL_16;
  }

LABEL_17:

  return decisionCopy;
}

- (void)_configureSinksIfNecessary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_sinks && !selfCopy->_isConfiguringSinks)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sinks = selfCopy->_sinks;
    selfCopy->_sinks = v3;

    Serial = BSDispatchQueueCreateSerial();
    biomeQueue = selfCopy->_biomeQueue;
    selfCopy->_biomeQueue = Serial;

    selfCopy->_isConfiguringSinks = 1;
    v7 = selfCopy->_biomeQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SBBannerAuthority__configureSinksIfNecessary__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = selfCopy;
    dispatch_async(v7, block);
  }

  objc_sync_exit(selfCopy);
}

void __47__SBBannerAuthority__configureSinksIfNecessary__block_invoke(uint64_t a1)
{
  v2 = SBLogBanners();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Configuring screen sharing sink", buf, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.springboard.bannerauthority.screensharing" targetQueue:*(*(a1 + 32) + 24)];
  v4 = [MEMORY[0x277CF1B58] screenSharingStream];
  v5 = [v4 publisher];
  v6 = [v5 subscribeOn:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SBBannerAuthority__configureSinksIfNecessary__block_invoke_31;
  v8[3] = &unk_2783BD350;
  v8[4] = *(a1 + 32);
  v7 = [v6 sinkWithCompletion:&__block_literal_global_30_3 receiveInput:v8];

  [*(*(a1 + 32) + 16) setObject:v7 forKeyedSubscript:@"com.apple.springboard.bannerauthority.screensharing"];
  *(*(a1 + 32) + 32) = 0;
}

void __47__SBBannerAuthority__configureSinksIfNecessary__block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogBanners();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __47__SBBannerAuthority__configureSinksIfNecessary__block_invoke_27_cold_1(v2, v3);
  }
}

uint64_t __47__SBBannerAuthority__configureSinksIfNecessary__block_invoke_31(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a2 eventBody];
  v4 = [v3 isStart];

  v5 = SBLogBanners();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"not active";
    if (v4)
    {
      v6 = @"active";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Screen sharing is %{public}@", &v8, 0xCu);
  }

  return [*(a1 + 32) _setScreenSharingActive:v4];
}

- (BOOL)_shouldDropPresentablesDuringScreenSharing
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"SBAllowNotificationsDuringScreenSharing"];

  return v3 ^ 1;
}

- (BOOL)_shouldDropPresentableDuringScreenSharing:(id)sharing userInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  sharingCopy = sharing;
  v6 = [info objectForKey:*MEMORY[0x277D68088]];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  bOOLValue = [v10 BOOLValue];
  if (bOOLValue)
  {
    v12 = SBLogBanners();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = sharingCopy;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Based on user info key, shouldn't drop presentable while screen sharing: %{public}@", &v20, 0xCu);
    }
  }

  else
  {
    requesterIdentifier = [sharingCopy requesterIdentifier];
    if (BSEqualStrings())
    {
      requestIdentifier = [sharingCopy requestIdentifier];
      v15 = [requestIdentifier hasPrefix:@"com.apple.conversationController"];

      if (v15)
      {
        v12 = SBLogBanners();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [SBBannerAuthority _shouldDropPresentableDuringScreenSharing:sharingCopy userInfo:v12];
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    requesterIdentifier2 = [sharingCopy requesterIdentifier];
    v17 = BSEqualStrings();

    if (!v17)
    {
      v18 = 1;
      goto LABEL_18;
    }

    v12 = SBLogBanners();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SBBannerAuthority _shouldDropPresentableDuringScreenSharing:sharingCopy userInfo:v12];
    }
  }

LABEL_17:

  v18 = 0;
LABEL_18:

  return v18;
}

- (BNConsideringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __47__SBBannerAuthority__configureSinksIfNecessary__block_invoke_27_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Screen sharing sink completion was unexpectely invoked (error: %{public}@)", &v4, 0xCu);
}

- (void)_shouldDropPresentableDuringScreenSharing:(uint64_t)a1 userInfo:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Exempting Bluetooth Smart Routing presentable: %{public}@", &v2, 0xCu);
}

- (void)_shouldDropPresentableDuringScreenSharing:(uint64_t)a1 userInfo:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Exempting Expanse presentable: %{public}@", &v2, 0xCu);
}

@end