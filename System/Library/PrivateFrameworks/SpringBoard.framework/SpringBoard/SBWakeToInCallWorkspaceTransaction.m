@interface SBWakeToInCallWorkspaceTransaction
- (void)_begin;
@end

@implementation SBWakeToInCallWorkspaceTransaction

- (void)_begin
{
  v33 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = SBWakeToInCallWorkspaceTransaction;
  [(SBWakeToInCallWorkspaceTransaction *)&v31 _begin];
  [(SBWakeToInCallWorkspaceTransaction *)self addMilestone:@"_SBWakeToInCallWorkspaceTransactionMilestonePresentation"];
  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  v24 = [v3 workspace];
  v4 = [v24 inCallPresentationManager];
  v25 = v3;
  [v3 applicationContext];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = v30 = 0u;
  v5 = [v23 entities];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v27 + 1) + 8 * v9) deviceApplicationSceneEntity];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 sceneHandle];
          v13 = [v12 sceneIdentifier];
          v14 = [v4 _sessionForSceneWithIdentifier:v13];

          if (v14)
          {

            v17 = v14;
            v16 = v17;
            goto LABEL_13;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v4 _lastPresentationSession];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
LABEL_13:
    v19 = v24;
    v18 = v25;
    v20 = v23;
    v21 = [SBInCallTransientOverlayPresentationWorkspaceTransaction alloc];
    v22 = [(SBInCallTransientOverlayPresentationWorkspaceTransaction *)v21 initWithTransitionRequest:v25 sourcePresentationSession:v16 analyticsSource:*MEMORY[0x277D67ED8]];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __44__SBWakeToInCallWorkspaceTransaction__begin__block_invoke;
    v26[3] = &unk_2783A9398;
    v26[4] = self;
    [(SBInCallTransientOverlayPresentationWorkspaceTransaction *)v22 setCompletionBlock:v26];
    [(SBWakeToInCallWorkspaceTransaction *)self addChildTransaction:v22 withSchedulingPolicy:0];
  }

  else
  {
    [(SBWakeToInCallWorkspaceTransaction *)self removeMilestone:@"_SBWakeToInCallWorkspaceTransactionMilestonePresentation"];
    v19 = v24;
    v18 = v25;
    v20 = v23;
  }
}

@end