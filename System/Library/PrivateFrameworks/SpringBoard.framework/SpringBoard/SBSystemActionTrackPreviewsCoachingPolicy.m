@interface SBSystemActionTrackPreviewsCoachingPolicy
- (BOOL)wantsCoachingDismissedForAction:(id)a3;
- (BOOL)wantsCoachingPresentedForAction:(id)a3;
- (SBSystemActionTrackPreviewsCoachingPolicy)init;
- (uint64_t)_trackedPreviewCount;
- (void)noteDidBeginPreview:(id)a3 forAction:(id)a4;
- (void)noteDidEndPreview:(id)a3 forAction:(id)a4;
- (void)noteDidInvalidateExpansionOfPreview:(id)a3 forAction:(id)a4 withResult:(unint64_t)a5;
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
    v4 = [v3 coachingSettings];
    v5 = [v4 trackPreviewsPolicySettings];
    settings = v2->_settings;
    v2->_settings = v5;
  }

  return v2;
}

- (void)noteDidBeginPreview:(id)a3 forAction:(id)a4
{
  v11 = a3;
  v6 = a4;
  trackedPreviewsByAction = self->_trackedPreviewsByAction;
  if (!trackedPreviewsByAction)
  {
    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v9 = self->_trackedPreviewsByAction;
    self->_trackedPreviewsByAction = v8;

    trackedPreviewsByAction = self->_trackedPreviewsByAction;
  }

  v10 = [(NSMapTable *)trackedPreviewsByAction objectForKey:v6];
  if (!v10)
  {
    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMapTable *)self->_trackedPreviewsByAction setObject:v10 forKey:v6];
  }

  [v10 addObject:v11];
}

- (void)noteDidInvalidateExpansionOfPreview:(id)a3 forAction:(id)a4 withResult:(unint64_t)a5
{
  if (!a5)
  {
    [(NSMapTable *)self->_trackedPreviewsByAction removeObjectForKey:a4];
    if (![(NSMapTable *)self->_trackedPreviewsByAction count])
    {
      trackedPreviewsByAction = self->_trackedPreviewsByAction;
      self->_trackedPreviewsByAction = 0;
    }
  }
}

- (void)noteDidEndPreview:(id)a3 forAction:(id)a4
{
  v12 = a4;
  trackedPreviewsByAction = self->_trackedPreviewsByAction;
  v7 = a3;
  v8 = [(NSMapTable *)trackedPreviewsByAction objectForKey:v12];
  [v8 removeObject:v7];

  v9 = [v8 allObjects];
  v10 = [v9 count];

  if (!v10)
  {
    [(NSMapTable *)self->_trackedPreviewsByAction removeObjectForKey:v12];
  }

  if (![(NSMapTable *)self->_trackedPreviewsByAction count])
  {
    v11 = self->_trackedPreviewsByAction;
    self->_trackedPreviewsByAction = 0;
  }
}

- (BOOL)wantsCoachingPresentedForAction:(id)a3
{
  v4 = a3;
  v5 = [(SBSystemActionTrackPreviewsCoachingPolicy *)self _trackedPreviewCount];
  if (v5)
  {
    v6 = SBSystemActionCoachingPolicyWantsCoachingPresented(v4, v5, [(SBSystemActionTrackPreviewsCoachingPolicySettings *)self->_settings presentationThresholdForActionsWithStatefulPreviews], [(SBSystemActionTrackPreviewsCoachingPolicySettings *)self->_settings presentationThresholdForActionsWithStatelessPreviews]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)wantsCoachingDismissedForAction:(id)a3
{
  v3 = [(NSMapTable *)self->_trackedPreviewsByAction objectForKey:a3];
  v4 = [v3 count] == 0;

  return v4;
}

- (uint64_t)_trackedPreviewCount
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 16);
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

        v8 = [*(a1 + 16) objectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
        v9 = [v8 allObjects];
        v5 += [v9 count];
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