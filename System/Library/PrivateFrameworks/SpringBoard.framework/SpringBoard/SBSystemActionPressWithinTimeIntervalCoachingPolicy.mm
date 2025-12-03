@interface SBSystemActionPressWithinTimeIntervalCoachingPolicy
- (BOOL)wantsCoachingDismissedForAction:(id)action;
- (BOOL)wantsCoachingPresentedForAction:(id)action;
- (SBSystemActionPressWithinTimeIntervalCoachingPolicy)init;
- (void)_reset;
- (void)noteDidBeginPreview:(id)preview forAction:(id)action;
- (void)noteDidEndPreview:(id)preview forAction:(id)action;
- (void)noteDidInvalidateExpansionOfPreview:(id)preview forAction:(id)action withResult:(unint64_t)result;
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
    coachingSettings = [v3 coachingSettings];
    pressWithinTimeIntervalPolicySettings = [coachingSettings pressWithinTimeIntervalPolicySettings];
    settings = v2->_settings;
    v2->_settings = pressWithinTimeIntervalPolicySettings;
  }

  return v2;
}

- (void)noteDidBeginPreview:(id)preview forAction:(id)action
{
  previewCopy = preview;
  actionCopy = action;
  countedActions = self->_countedActions;
  if (!countedActions)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA940]);
    v10 = self->_countedActions;
    self->_countedActions = v9;

    countedActions = self->_countedActions;
  }

  [(NSCountedSet *)countedActions addObject:actionCopy];
  latestPreviewsByAction = self->_latestPreviewsByAction;
  if (!latestPreviewsByAction)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    v13 = self->_latestPreviewsByAction;
    self->_latestPreviewsByAction = weakToWeakObjectsMapTable;

    latestPreviewsByAction = self->_latestPreviewsByAction;
  }

  [(NSMapTable *)latestPreviewsByAction setObject:previewCopy forKey:actionCopy];
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

- (void)noteDidInvalidateExpansionOfPreview:(id)preview forAction:(id)action withResult:(unint64_t)result
{
  actionCopy = action;
  if (!result)
  {
    v10 = actionCopy;
    v8 = [(NSCountedSet *)self->_countedActions countForObject:actionCopy];
    actionCopy = v10;
    if (v8)
    {
      v9 = v8;
      do
      {
        [(NSCountedSet *)self->_countedActions removeObject:v10];
        actionCopy = v10;
        --v9;
      }

      while (v9);
    }
  }
}

- (void)noteDidEndPreview:(id)preview forAction:(id)action
{
  actionCopy = action;
  latestPreviewsByAction = self->_latestPreviewsByAction;
  previewCopy = preview;
  v8 = [(NSMapTable *)latestPreviewsByAction objectForKey:actionCopy];

  if (v8 == previewCopy)
  {
    [(NSMapTable *)self->_latestPreviewsByAction removeObjectForKey:actionCopy];
  }
}

- (BOOL)wantsCoachingPresentedForAction:(id)action
{
  actionCopy = action;
  v5 = [(NSCountedSet *)self->_countedActions countForObject:actionCopy];
  if (v5)
  {
    v6 = SBSystemActionCoachingPolicyWantsCoachingPresented(actionCopy, v5, [(SBSystemActionPressWithinTimeIntervalCoachingPolicySettings *)self->_settings presentationThresholdForActionsWithStatefulPreviews], [(SBSystemActionPressWithinTimeIntervalCoachingPolicySettings *)self->_settings presentationThresholdForActionsWithStatelessPreviews]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)wantsCoachingDismissedForAction:(id)action
{
  v3 = [(NSMapTable *)self->_latestPreviewsByAction objectForKey:action];
  v4 = v3 == 0;

  return v4;
}

- (void)_reset
{
  if (self)
  {
    [*(self + 32) invalidate];
    v2 = *(self + 32);
    *(self + 32) = 0;

    v3 = *(self + 16);
    *(self + 16) = 0;

    v4 = *(self + 24);
    *(self + 24) = 0;
  }
}

@end