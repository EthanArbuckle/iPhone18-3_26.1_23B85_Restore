@interface SBSystemActionTrackPreviewsCoachingPolicy
- (BOOL)wantsCoachingDismissedForAction:(id)action;
- (BOOL)wantsCoachingPresentedForAction:(id)action;
- (SBSystemActionTrackPreviewsCoachingPolicy)init;
- (uint64_t)_trackedPreviewCount;
- (void)noteDidBeginPreview:(id)preview forAction:(id)action;
- (void)noteDidEndPreview:(id)preview forAction:(id)action;
- (void)noteDidInvalidateExpansionOfPreview:(id)preview forAction:(id)action withResult:(unint64_t)result;
@end

@implementation SBSystemActionTrackPreviewsCoachingPolicy

- (SBSystemActionTrackPreviewsCoachingPolicy)init
{
  v8.receiver = self;
  v8.super_class = SBSystemActionTrackPreviewsCoachingPolicy;
  v2 = [(SBSystemActionTrackPreviewsCoachingPolicy *)&v8 init];
  if (v2)
  {
    v3 = +[SBSystemActionDomain rootSettings];
    coachingSettings = [v3 coachingSettings];
    trackPreviewsPolicySettings = [coachingSettings trackPreviewsPolicySettings];
    settings = v2->_settings;
    v2->_settings = trackPreviewsPolicySettings;
  }

  return v2;
}

- (void)noteDidBeginPreview:(id)preview forAction:(id)action
{
  previewCopy = preview;
  actionCopy = action;
  trackedPreviewsByAction = self->_trackedPreviewsByAction;
  if (!trackedPreviewsByAction)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v9 = self->_trackedPreviewsByAction;
    self->_trackedPreviewsByAction = weakToStrongObjectsMapTable;

    trackedPreviewsByAction = self->_trackedPreviewsByAction;
  }

  weakObjectsHashTable = [(NSMapTable *)trackedPreviewsByAction objectForKey:actionCopy];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMapTable *)self->_trackedPreviewsByAction setObject:weakObjectsHashTable forKey:actionCopy];
  }

  [weakObjectsHashTable addObject:previewCopy];
}

- (void)noteDidInvalidateExpansionOfPreview:(id)preview forAction:(id)action withResult:(unint64_t)result
{
  if (!result)
  {
    [(NSMapTable *)self->_trackedPreviewsByAction removeObjectForKey:action];
    if (![(NSMapTable *)self->_trackedPreviewsByAction count])
    {
      trackedPreviewsByAction = self->_trackedPreviewsByAction;
      self->_trackedPreviewsByAction = 0;
    }
  }
}

- (void)noteDidEndPreview:(id)preview forAction:(id)action
{
  actionCopy = action;
  trackedPreviewsByAction = self->_trackedPreviewsByAction;
  previewCopy = preview;
  v8 = [(NSMapTable *)trackedPreviewsByAction objectForKey:actionCopy];
  [v8 removeObject:previewCopy];

  allObjects = [v8 allObjects];
  v10 = [allObjects count];

  if (!v10)
  {
    [(NSMapTable *)self->_trackedPreviewsByAction removeObjectForKey:actionCopy];
  }

  if (![(NSMapTable *)self->_trackedPreviewsByAction count])
  {
    v11 = self->_trackedPreviewsByAction;
    self->_trackedPreviewsByAction = 0;
  }
}

- (BOOL)wantsCoachingPresentedForAction:(id)action
{
  actionCopy = action;
  _trackedPreviewCount = [(SBSystemActionTrackPreviewsCoachingPolicy *)self _trackedPreviewCount];
  if (_trackedPreviewCount)
  {
    v6 = SBSystemActionCoachingPolicyWantsCoachingPresented(actionCopy, _trackedPreviewCount, [(SBSystemActionTrackPreviewsCoachingPolicySettings *)self->_settings presentationThresholdForActionsWithStatefulPreviews], [(SBSystemActionTrackPreviewsCoachingPolicySettings *)self->_settings presentationThresholdForActionsWithStatelessPreviews]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)wantsCoachingDismissedForAction:(id)action
{
  v3 = [(NSMapTable *)self->_trackedPreviewsByAction objectForKey:action];
  v4 = [v3 count] == 0;

  return v4;
}

- (uint64_t)_trackedPreviewCount
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(self + 16);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(self + 16) objectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
        allObjects = [v8 allObjects];
        v5 += [allObjects count];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end