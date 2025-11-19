@interface SBBannerAuthority
- (BNConsideringDelegate)delegate;
- (BOOL)_shouldDropPresentableDuringScreenSharing:(id)a3 userInfo:(id)a4;
- (BOOL)_shouldDropPresentablesDuringScreenSharing;
- (SBBannerAuthority)init;
- (int64_t)_mediatedDecisionFromDecisions:(id)a3 defaultDecision:(int64_t)a4;
- (int64_t)shouldMorphToPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5 stateChange:(id *)a6;
- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)a3 withPresentable:(id)a4;
- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4;
- (int64_t)shouldPostPresentable:(id)a3 userInfo:(id)a4 reason:(id *)a5;
- (int64_t)shouldPresentPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5;
- (void)_configureSinksIfNecessary;
- (void)bannerAuthority:(id)a3 mayChangeDecisionForResponsiblePresentable:(id)a4;
- (void)registerAuthority:(id)a3 forRequesterIdentifier:(id)a4;
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

- (void)registerAuthority:(id)a3 forRequesterIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6)
  {
    requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
    if (!requesterIDsToAuthorities)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_requesterIDsToAuthorities;
      self->_requesterIDsToAuthorities = v8;

      requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
    }

    [(NSMutableDictionary *)requesterIDsToAuthorities setObject:v10 forKey:v6];
    if (objc_opt_respondsToSelector())
    {
      [v10 setDelegate:self];
    }
  }
}

- (int64_t)shouldPostPresentable:(id)a3 userInfo:(id)a4 reason:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(SBBannerAuthority *)self _isScreenSharingActive]&& [(SBBannerAuthority *)self _shouldDropPresentablesDuringScreenSharing]&& [(SBBannerAuthority *)self _shouldDropPresentableDuringScreenSharing:v8 userInfo:v9])
  {
    if (a5)
    {
      *a5 = @"Posting not permitted during screen sharing";
    }

    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)shouldPresentPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5
{
  v34[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 presentableType] == 1)
  {
    v10 = 1;
    v11 = v9;
  }

  else
  {
    requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
    v13 = [v8 requesterIdentifier];
    v14 = [(NSMutableDictionary *)requesterIDsToAuthorities objectForKey:v13];

    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_269];
    v11 = [v9 filteredArrayUsingPredicate:v15];

    v16 = self->_requesterIDsToAuthorities;
    v17 = [v11 lastObject];
    v18 = [v17 requesterIdentifier];
    v19 = [(NSMutableDictionary *)v16 objectForKey:v18];

    if (v14)
    {
      v33 = 0;
      v20 = [v14 shouldPresentPresentable:v8 withPresentedPresentables:v11 responsiblePresentable:&v33];
      v30 = v33;
    }

    else
    {
      v30 = 0;
      v20 = 0;
    }

    v31 = v14;
    v21 = a5;
    if (v19)
    {
      v32 = 0;
      v22 = [v19 shouldPresentPresentable:v8 withPresentedPresentables:v11 responsiblePresentable:&v32];
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

    if (v21)
    {
      v27 = v23;
      if (v10 == v22 || (v27 = v30, v10 == v29))
      {
        *v21 = v27;
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

- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
  v9 = [v6 requesterIdentifier];
  v10 = [(NSMutableDictionary *)requesterIDsToAuthorities objectForKey:v9];

  v11 = self->_requesterIDsToAuthorities;
  v12 = [v7 requesterIdentifier];
  v13 = [(NSMutableDictionary *)v11 objectForKey:v12];

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

  v14 = [v10 shouldOverlapPresentable:v6 withPresentable:v7];
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = [v13 shouldOverlapPresentable:v6 withPresentable:v7];
LABEL_6:
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v21[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  v21[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v19 = [(SBBannerAuthority *)self _mediatedDecisionFromDecisions:v18 defaultDecision:1];

  return v19;
}

- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)a3 withPresentable:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
  v9 = [v6 requesterIdentifier];
  v10 = [(NSMutableDictionary *)requesterIDsToAuthorities objectForKey:v9];

  v11 = self->_requesterIDsToAuthorities;
  v12 = [v7 requesterIdentifier];
  v13 = [(NSMutableDictionary *)v11 objectForKey:v12];

  if (objc_opt_respondsToSelector())
  {
    v14 = [v10 shouldNewTierBeAddedToTopForPresentable:v6 withPresentable:v7];
  }

  else
  {
    v14 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v13 shouldNewTierBeAddedToTopForPresentable:v6 withPresentable:v7];
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

- (int64_t)shouldMorphToPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5 stateChange:(id *)a6
{
  v48[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
  v11 = [v8 requesterIdentifier];
  v12 = [(NSMutableDictionary *)requesterIDsToAuthorities objectForKey:v11];

  v13 = self->_requesterIDsToAuthorities;
  v14 = [v9 lastObject];
  v15 = [v14 requesterIdentifier];
  v16 = [(NSMutableDictionary *)v13 objectForKey:v15];

  if (objc_opt_respondsToSelector())
  {
    v46 = 0;
    v47 = 0;
    v17 = [v12 shouldMorphToPresentable:v8 withPresentedPresentables:v9 responsiblePresentable:&v47 stateChange:&v46];
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
    v21 = v8;
    v22 = v9;
    v23 = [v20 shouldMorphToPresentable:v8 withPresentedPresentables:v9 responsiblePresentable:&v45 stateChange:&v44];
    v24 = v45;
    v25 = v44;
  }

  else
  {
    v22 = v9;
    v21 = v8;
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
    v30 = a6;
    v31 = v39;
    v32 = v40;
    if (a5)
    {
      v33 = v24;
      *a5 = v24;
    }

    v34 = v25;
    if (!a6)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v30 = v34;
    goto LABEL_18;
  }

  v35 = v29 == v17;
  v30 = a6;
  v31 = v39;
  v32 = v40;
  if (v35)
  {
    if (a5)
    {
      v36 = v40;
      *a5 = v40;
    }

    v34 = v39;
    if (a6)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v29;
}

- (void)bannerAuthority:(id)a3 mayChangeDecisionForResponsiblePresentable:(id)a4
{
  v11 = a4;
  requesterIDsToAuthorities = self->_requesterIDsToAuthorities;
  v7 = a3;
  v8 = [(NSMutableDictionary *)requesterIDsToAuthorities allValues];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerAuthority:self mayChangeDecisionForResponsiblePresentable:v11];
  }
}

- (int64_t)_mediatedDecisionFromDecisions:(id)a3 defaultDecision:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
LABEL_15:

LABEL_16:
    v8 = a4;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [*(*(&v13 + 1) + 8 * i) integerValue];
      if (v11)
      {
        if (v8 && v8 != v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = v8;
      }

      v8 = v11;
    }

    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v8;
}

- (void)_configureSinksIfNecessary
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_sinks && !v2->_isConfiguringSinks)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sinks = v2->_sinks;
    v2->_sinks = v3;

    Serial = BSDispatchQueueCreateSerial();
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = Serial;

    v2->_isConfiguringSinks = 1;
    v7 = v2->_biomeQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SBBannerAuthority__configureSinksIfNecessary__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = v2;
    dispatch_async(v7, block);
  }

  objc_sync_exit(v2);
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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SBAllowNotificationsDuringScreenSharing"];

  return v3 ^ 1;
}

- (BOOL)_shouldDropPresentableDuringScreenSharing:(id)a3 userInfo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 objectForKey:*MEMORY[0x277D68088]];
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

  v11 = [v10 BOOLValue];
  if (v11)
  {
    v12 = SBLogBanners();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = v5;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Based on user info key, shouldn't drop presentable while screen sharing: %{public}@", &v20, 0xCu);
    }
  }

  else
  {
    v13 = [v5 requesterIdentifier];
    if (BSEqualStrings())
    {
      v14 = [v5 requestIdentifier];
      v15 = [v14 hasPrefix:@"com.apple.conversationController"];

      if (v15)
      {
        v12 = SBLogBanners();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [SBBannerAuthority _shouldDropPresentableDuringScreenSharing:v5 userInfo:v12];
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v16 = [v5 requesterIdentifier];
    v17 = BSEqualStrings();

    if (!v17)
    {
      v18 = 1;
      goto LABEL_18;
    }

    v12 = SBLogBanners();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SBBannerAuthority _shouldDropPresentableDuringScreenSharing:v5 userInfo:v12];
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