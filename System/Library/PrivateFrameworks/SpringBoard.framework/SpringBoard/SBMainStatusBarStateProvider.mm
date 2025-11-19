@interface SBMainStatusBarStateProvider
+ (id)sharedInstance;
- (BOOL)_shouldPostForVisitedItem:(int)a3 withUpdates:(BOOL)a4 toAggregatorData:(id *)a5 lastPost:(id *)a6;
- (BOOL)contentAssertionsWantTimeEnabledAnimated:(BOOL *)a3 duration:(double *)a4;
- (SBMainStatusBarStateProvider)init;
- (id)_identifierForStateAggregator:(id)a3;
- (void)_composePostDataFromAggregatorData:(id *)a3;
- (void)_enableTime:(BOOL)a3 crossfade:(BOOL)a4 crossfadeDuration:(double)a5 immediately:(BOOL)a6;
- (void)_updateDisabledItems;
- (void)acquireContentAssertion:(id)a3;
- (void)dealloc;
- (void)disableDataUpdateAnimationsForRequestor:(id)a3;
- (void)disableStatusBarItem:(int)a3 requestor:(id)a4;
- (void)enableStatusBarItem:(int)a3 requestor:(id)a4;
- (void)forceUpdateLocalStatusBarData;
- (void)relinquishContentAssertion:(id)a3;
- (void)statusBarStateAggregatorDidRequestImmediateUpdates:(id)a3;
- (void)statusBarStateAggregatorDidStopRequestingImmediateUpdates:(id)a3;
- (void)statusBarStateProvider:(id)a3 didPostStatusBarData:(id *)a4 withActions:(int)a5;
- (void)stopDisablingDataUpdateAnimationsForRequestor:(id)a3;
- (void)updateTimeEnabledImmediately:(BOOL)a3;
@end

@implementation SBMainStatusBarStateProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_57 != -1)
  {
    +[SBMainStatusBarStateProvider sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_28;

  return v3;
}

uint64_t __46__SBMainStatusBarStateProvider_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBMainStatusBarStateProvider);
  v1 = sharedInstance___sharedInstance_28;
  sharedInstance___sharedInstance_28 = v0;

  return kdebug_trace();
}

- (SBMainStatusBarStateProvider)init
{
  v7.receiver = self;
  v7.super_class = SBMainStatusBarStateProvider;
  v2 = [(SBStatusBarStateProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_timeEnabled = 1;
    [(SBStatusBarStateProvider *)v2 addStatusBarStateObserver:v2];
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    contentAssertions = v3->_contentAssertions;
    v3->_contentAssertions = v4;
  }

  return v3;
}

- (void)acquireContentAssertion:(id)a3
{
  [(NSHashTable *)self->_contentAssertions addObject:a3];

  [(SBMainStatusBarStateProvider *)self updateTimeEnabled];
}

- (void)relinquishContentAssertion:(id)a3
{
  [(NSHashTable *)self->_contentAssertions removeObject:a3];

  [(SBMainStatusBarStateProvider *)self updateTimeEnabled];
}

- (BOOL)contentAssertionsWantTimeEnabledAnimated:(BOOL *)a3 duration:(double *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_contentAssertions;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 dateAndTimeVisible] & 1) == 0)
        {
          *a3 = [v11 animated];
          [v11 duration];
          v12 = 0;
          *a4 = v13;
          goto LABEL_11;
        }
      }

      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (void)dealloc
{
  [(SBStatusBarStateProvider *)self removeStatusBarStateObserver:self];
  v3.receiver = self;
  v3.super_class = SBMainStatusBarStateProvider;
  [(SBStatusBarStateProvider *)&v3 dealloc];
}

- (void)disableStatusBarItem:(int)a3 requestor:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  v8 = v7;
  v13 = v7;
  if (v4 >= 0x2E)
  {
    [(SBMainStatusBarStateProvider *)a2 disableStatusBarItem:v4 requestor:?];
    v8 = v13;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  [SBMainStatusBarStateProvider disableStatusBarItem:a2 requestor:self];
  v8 = v13;
LABEL_3:
  itemDisabledRequests = self->_itemDisabledRequests;
  v10 = self->_itemDisabledRequests[v4];
  if (!v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:1];
    v12 = itemDisabledRequests[v4];
    itemDisabledRequests[v4] = v11;

    v8 = v13;
    v10 = itemDisabledRequests[v4];
  }

  [(NSCountedSet *)v10 addObject:v8];
  [(SBMainStatusBarStateProvider *)self _updateDisabledItems];
}

- (void)enableStatusBarItem:(int)a3 requestor:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  if (v4 >= 0x2E)
  {
    v9 = v7;
    [(SBMainStatusBarStateProvider *)a2 enableStatusBarItem:v4 requestor:?];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  [SBMainStatusBarStateProvider enableStatusBarItem:a2 requestor:self];
LABEL_3:
  v8 = self->_itemDisabledRequests[v4];
  if (v8)
  {
    [(NSCountedSet *)v8 removeObject:?];
    v8 = [(SBMainStatusBarStateProvider *)self _updateDisabledItems];
  }

  MEMORY[0x2821F9730](v8);
}

- (void)_updateDisabledItems
{
  [(SBStatusBarStateProvider *)self beginCoalescentBlock];
  for (i = 0; i != 46; ++i)
  {
    v4 = !i && self->_timeCloaked || (i & 0x3D) != 0xC && self->_allButBatteryCloaked || self->_telephonyAndBluetoothCloaked && ((i & 0x3D) == 4 || (i - 9) < 0x18 && ((0x9000C1u >> (i - 9)) & 1) != 0) || [(NSCountedSet *)self->_itemDisabledRequests[i] count]!= 0;
    if (self->_itemIsDisabled[i] != v4)
    {
      self->_itemIsDisabled[i] = v4;
      [(SBStatusBarStateProvider *)self updateStatusBarItem:i];
    }
  }

  [(SBStatusBarStateProvider *)self endCoalescentBlock];
}

- (void)updateTimeEnabledImmediately:(BOOL)a3
{
  v3 = a3;
  v7 = 0;
  v6 = 0.0;
  v5 = [(SBMainStatusBarStateProvider *)self contentAssertionsWantTimeEnabledAnimated:&v7 duration:&v6];
  [(SBMainStatusBarStateProvider *)self _enableTime:v5 crossfade:v7 crossfadeDuration:v3 immediately:v6];
}

- (void)_enableTime:(BOOL)a3 crossfade:(BOOL)a4 crossfadeDuration:(double)a5 immediately:(BOOL)a6
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (self->_timeEnabled != a3)
  {
    v6 = a6;
    v8 = a4;
    self->_timeEnabled = a3;
    self->_statusBarTimeRequiresUpdate = 1;
    [(SBStatusBarStateProvider *)self updateStatusBarItem:0];
    v10 = [SBApp statusBarForEmbeddedDisplay];
    v13 = &unk_283372350;
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_timeEnabled];
    v14[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v10 setEnabledCenterItems:v12 duration:a5];

    if (v6)
    {
      [v10 forceUpdateData:v8];
    }
  }
}

- (void)disableDataUpdateAnimationsForRequestor:(id)a3
{
  v4 = a3;
  dataUpdateAnimationsDisabledRequests = self->_dataUpdateAnimationsDisabledRequests;
  v8 = v4;
  if (!dataUpdateAnimationsDisabledRequests)
  {
    v6 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:1];
    v7 = self->_dataUpdateAnimationsDisabledRequests;
    self->_dataUpdateAnimationsDisabledRequests = v6;

    v4 = v8;
    dataUpdateAnimationsDisabledRequests = self->_dataUpdateAnimationsDisabledRequests;
  }

  [(NSCountedSet *)dataUpdateAnimationsDisabledRequests addObject:v4];
}

- (void)stopDisablingDataUpdateAnimationsForRequestor:(id)a3
{
  [(NSCountedSet *)self->_dataUpdateAnimationsDisabledRequests removeObject:a3];
  if (![(NSCountedSet *)self->_dataUpdateAnimationsDisabledRequests count])
  {
    dataUpdateAnimationsDisabledRequests = self->_dataUpdateAnimationsDisabledRequests;
    self->_dataUpdateAnimationsDisabledRequests = 0;
  }
}

- (void)forceUpdateLocalStatusBarData
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 0, 512);
  [(SBStatusBarStateProvider *)self getStatusBarData:v3];
  v2 = [SBApp statusBarForEmbeddedDisplay];
  [v2 forceUpdateToData:v3 animated:0];
}

- (BOOL)_shouldPostForVisitedItem:(int)a3 withUpdates:(BOOL)a4 toAggregatorData:(id *)a5 lastPost:(id *)a6
{
  if (a3)
  {
    if (a3 == 32)
    {
      killActivity = self->_killActivity;
      if ((*(a5 + 2272) & 4) != 0)
      {
        v12 = 0;
        self->_killActivity = 0;
      }

      else
      {
        v10 = +[SBLockScreenManager sharedInstance];
        if ([v10 isUILocked])
        {
          v11 = [SBApp userSessionController];
          self->_killActivity = [v11 isLoginSession] ^ 1;
        }

        else
        {
          self->_killActivity = 0;
        }

        v12 = self->_killActivity;
      }

      if (killActivity != v12)
      {
        a4 = 1;
      }
    }
  }

  else if (self->_statusBarTimeRequiresUpdate)
  {
    self->_statusBarTimeRequiresUpdate = 0;
    a4 = 1;
  }

  v13 = self->_itemIsDisabled[a3];
  if (v13 != self->_itemWasDisabled[a3])
  {
    self->_itemWasDisabled[a3] = v13;
    return 1;
  }

  return a4;
}

- (void)_composePostDataFromAggregatorData:(id *)a3
{
  if (self->_killActivity)
  {
    a3->var0[32] = 0;
  }

  v3 = 0;
  a3->var0[0] = self->_timeEnabled;
  do
  {
    if (self->_itemIsDisabled[v3])
    {
      a3->var0[v3] = 0;
    }

    ++v3;
  }

  while (v3 != 46);
}

- (void)statusBarStateAggregatorDidRequestImmediateUpdates:(id)a3
{
  v4 = [(SBMainStatusBarStateProvider *)self _identifierForStateAggregator:a3];
  [(SBMainStatusBarStateProvider *)self disableDataUpdateAnimationsForRequestor:v4];
}

- (void)statusBarStateAggregatorDidStopRequestingImmediateUpdates:(id)a3
{
  v4 = [(SBMainStatusBarStateProvider *)self _identifierForStateAggregator:a3];
  [(SBMainStatusBarStateProvider *)self stopDisablingDataUpdateAnimationsForRequestor:v4];
}

- (id)_identifierForStateAggregator:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [[v3 alloc] initWithFormat:@"<%@:%p>", objc_opt_class(), v4];

  return v5;
}

- (void)statusBarStateProvider:(id)a3 didPostStatusBarData:(id *)a4 withActions:(int)a5
{
  v5 = *&a5;
  if ([(NSCountedSet *)self->_dataUpdateAnimationsDisabledRequests count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __88__SBMainStatusBarStateProvider_statusBarStateProvider_didPostStatusBarData_withActions___block_invoke;
    v8[3] = &__block_descriptor_44_e5_v8__0l;
    v8[4] = a4;
    v9 = v5;
    [MEMORY[0x277D75D18] performWithoutAnimation:v8];
  }

  else
  {
    v7 = MEMORY[0x277D75A98];

    [v7 postStatusBarData:a4 withActions:v5];
  }
}

- (void)disableStatusBarItem:(uint64_t)a3 requestor:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBMainStatusBarStateProvider.m" lineNumber:141 description:{@"Invalid status bar item %d", a3}];
}

- (void)disableStatusBarItem:(uint64_t)a1 requestor:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainStatusBarStateProvider.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"requestor"}];
}

- (void)enableStatusBarItem:(uint64_t)a3 requestor:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBMainStatusBarStateProvider.m" lineNumber:153 description:{@"Invalid status bar item %d", a3}];
}

- (void)enableStatusBarItem:(uint64_t)a1 requestor:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainStatusBarStateProvider.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"requestor"}];
}

@end