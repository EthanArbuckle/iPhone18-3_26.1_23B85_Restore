@interface SBSystemActionPressWithinTimeIntervalCoachingPolicy
- (BOOL)wantsCoachingDismissedForAction:(id)a3;
- (BOOL)wantsCoachingPresentedForAction:(id)a3;
- (SBSystemActionPressWithinTimeIntervalCoachingPolicy)init;
- (void)_reset;
- (void)noteDidBeginPreview:(id)a3 forAction:(id)a4;
- (void)noteDidEndPreview:(id)a3 forAction:(id)a4;
- (void)noteDidInvalidateExpansionOfPreview:(id)a3 forAction:(id)a4 withResult:(unint64_t)a5;
@end

@implementation SBSystemActionPressWithinTimeIntervalCoachingPolicy

- (SBSystemActionPressWithinTimeIntervalCoachingPolicy)init
{
  v8.receiver = self;
  v8.super_class = SBSystemActionPressWithinTimeIntervalCoachingPolicy;
  v2 = [(SBSystemActionPressWithinTimeIntervalCoachingPolicy *)&v8 init];
  if (v2)
  {
    v3 = +[SBSystemActionDomain rootSettings];
    v4 = [v3 coachingSettings];
    v5 = [v4 pressWithinTimeIntervalPolicySettings];
    settings = v2->_settings;
    v2->_settings = v5;
  }

  return v2;
}

- (void)noteDidBeginPreview:(id)a3 forAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  countedActions = self->_countedActions;
  if (!countedActions)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA940]);
    v10 = self->_countedActions;
    self->_countedActions = v9;

    countedActions = self->_countedActions;
  }

  [(NSCountedSet *)countedActions addObject:v7];
  latestPreviewsByAction = self->_latestPreviewsByAction;
  if (!latestPreviewsByAction)
  {
    v12 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    v13 = self->_latestPreviewsByAction;
    self->_latestPreviewsByAction = v12;

    latestPreviewsByAction = self->_latestPreviewsByAction;
  }

  [(NSMapTable *)latestPreviewsByAction setObject:v6 forKey:v7];
  [(NSTimer *)self->_resetTimer invalidate];
  objc_initWeak(&location, self);
  v14 = MEMORY[0x277CBEBB8];
  [(SBSystemActionPressWithinTimeIntervalCoachingPolicySettings *)self->_settings timeInterval];
  v16 = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__SBSystemActionPressWithinTimeIntervalCoachingPolicy_noteDidBeginPreview_forAction___block_invoke;
  v19[3] = &unk_2783AA438;
  objc_copyWeak(&v20, &location);
  v17 = [v14 scheduledTimerWithTimeInterval:0 repeats:v19 block:v16];
  resetTimer = self->_resetTimer;
  self->_resetTimer = v17;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __85__SBSystemActionPressWithinTimeIntervalCoachingPolicy_noteDidBeginPreview_forAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(SBSystemActionPressWithinTimeIntervalCoachingPolicy *)WeakRetained _reset];
    WeakRetained = v2;
  }
}

- (void)noteDidInvalidateExpansionOfPreview:(id)a3 forAction:(id)a4 withResult:(unint64_t)a5
{
  v7 = a4;
  if (!a5)
  {
    v10 = v7;
    v8 = [(NSCountedSet *)self->_countedActions countForObject:v7];
    v7 = v10;
    if (v8)
    {
      v9 = v8;
      do
      {
        [(NSCountedSet *)self->_countedActions removeObject:v10];
        v7 = v10;
        --v9;
      }

      while (v9);
    }
  }
}

- (void)noteDidEndPreview:(id)a3 forAction:(id)a4
{
  v9 = a4;
  latestPreviewsByAction = self->_latestPreviewsByAction;
  v7 = a3;
  v8 = [(NSMapTable *)latestPreviewsByAction objectForKey:v9];

  if (v8 == v7)
  {
    [(NSMapTable *)self->_latestPreviewsByAction removeObjectForKey:v9];
  }
}

- (BOOL)wantsCoachingPresentedForAction:(id)a3
{
  v4 = a3;
  v5 = [(NSCountedSet *)self->_countedActions countForObject:v4];
  if (v5)
  {
    v6 = SBSystemActionCoachingPolicyWantsCoachingPresented(v4, v5, [(SBSystemActionPressWithinTimeIntervalCoachingPolicySettings *)self->_settings presentationThresholdForActionsWithStatefulPreviews], [(SBSystemActionPressWithinTimeIntervalCoachingPolicySettings *)self->_settings presentationThresholdForActionsWithStatelessPreviews]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)wantsCoachingDismissedForAction:(id)a3
{
  v3 = [(NSMapTable *)self->_latestPreviewsByAction objectForKey:a3];
  v4 = v3 == 0;

  return v4;
}

- (void)_reset
{
  if (a1)
  {
    [*(a1 + 32) invalidate];
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;

    v3 = *(a1 + 16);
    *(a1 + 16) = 0;

    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

@end