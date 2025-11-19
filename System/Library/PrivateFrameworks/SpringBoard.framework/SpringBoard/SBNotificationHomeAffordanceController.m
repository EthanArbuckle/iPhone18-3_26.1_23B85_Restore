@interface SBNotificationHomeAffordanceController
+ (SBNotificationHomeAffordanceController)sharedInstance;
- (BSAnimationSettings)hideHomeAffordanceAnimationSettings;
- (BSAnimationSettings)unhideHomeAffordanceAnimationSettings;
- (SBScreenEdgePanGestureRecognizer)screenEdgePanGesture;
- (UIViewSpringAnimationBehaviorDescribing)settleHomeAffordanceAnimationBehaviorDescription;
- (void)registerClient:(id)a3 withZStackIdentifier:(int64_t)a4;
- (void)unregisterClient:(id)a3 withZStackIdentifier:(int64_t)a4;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBNotificationHomeAffordanceController

+ (SBNotificationHomeAffordanceController)sharedInstance
{
  if (sharedInstance_onceToken_59 != -1)
  {
    +[SBNotificationHomeAffordanceController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_29;

  return v3;
}

void __56__SBNotificationHomeAffordanceController_sharedInstance__block_invoke()
{
  if (SBHomeGestureEnabled())
  {
    v0 = objc_alloc_init(SBNotificationHomeAffordanceController);
  }

  else
  {
    v0 = 0;
  }

  v1 = sharedInstance___sharedInstance_29;
  sharedInstance___sharedInstance_29 = v0;
}

- (SBScreenEdgePanGestureRecognizer)screenEdgePanGesture
{
  screenEdgePanGesture = self->_screenEdgePanGesture;
  if (!screenEdgePanGesture)
  {
    v4 = [SBHomeGesturePanGestureRecognizer homeGesturePanGestureRecognizerWithTarget:0 action:0];
    v5 = self->_screenEdgePanGesture;
    self->_screenEdgePanGesture = v4;

    v6 = +[SBSystemGestureManager mainDisplayManager];
    [v6 addGestureRecognizer:self->_screenEdgePanGesture withType:5];
    [(UIScreenEdgePanGestureRecognizer *)self->_screenEdgePanGesture setEdges:4];
    [(SBHomeGesturePanGestureRecognizer *)self->_screenEdgePanGesture setEnabled:0];

    screenEdgePanGesture = self->_screenEdgePanGesture;
  }

  return screenEdgePanGesture;
}

- (BSAnimationSettings)hideHomeAffordanceAnimationSettings
{
  v2 = [MEMORY[0x277D65E80] rootSettings];
  v3 = [v2 hideForHomeGestureOwnershipAnimationSettings];
  v4 = [v3 BSAnimationSettings];

  return v4;
}

- (BSAnimationSettings)unhideHomeAffordanceAnimationSettings
{
  v2 = [MEMORY[0x277D65E80] rootSettings];
  v3 = [v2 unhideForHomeGestureOwnershipAnimationSettings];
  v4 = [v3 BSAnimationSettings];

  return v4;
}

- (UIViewSpringAnimationBehaviorDescribing)settleHomeAffordanceAnimationBehaviorDescription
{
  v2 = +[SBAppSwitcherDomain rootSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 alertBarSwipeDismissalSettings];

  return v4;
}

- (void)registerClient:(id)a3 withZStackIdentifier:(int64_t)a4
{
  v18 = a3;
  if (!v18)
  {
    [SBNotificationHomeAffordanceController registerClient:a2 withZStackIdentifier:self];
  }

  if (a4 != 14)
  {
    [(SBNotificationHomeAffordanceController *)a2 registerClient:a4 withZStackIdentifier:?];
  }

  clientsToZStackParticipants = self->_clientsToZStackParticipants;
  if (!clientsToZStackParticipants)
  {
    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v9 = self->_clientsToZStackParticipants;
    self->_clientsToZStackParticipants = v8;

    clientsToZStackParticipants = self->_clientsToZStackParticipants;
  }

  v10 = [(NSMapTable *)clientsToZStackParticipants keyEnumerator];
  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = v11;
    v11 = [v10 nextObject];

    if (!v11)
    {
      break;
    }

    v14 = [(NSMapTable *)self->_clientsToZStackParticipants objectForKey:v11];

    v12 = v14;
    if ([v14 identifier] == a4)
    {
      [(NSMapTable *)self->_clientsToZStackParticipants setObject:v14 forKey:v18];
      if (v14)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  v14 = v12;
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_13:
  v15 = [SBApp windowSceneManager];
  v16 = [v15 embeddedDisplayWindowScene];

  v17 = [v16 zStackResolver];
  v14 = [v17 acquireParticipantWithIdentifier:a4 delegate:self];

  if (v14)
  {
    [(NSMapTable *)self->_clientsToZStackParticipants setObject:v14 forKey:v18];
    if ([v14 ownsHomeGesture])
    {
      [(SBNotificationHomeAffordanceController *)self zStackParticipantDidChange:v14];
    }
  }

  else
  {
    [SBNotificationHomeAffordanceController registerClient:a2 withZStackIdentifier:self];
  }

LABEL_17:
}

- (void)unregisterClient:(id)a3 withZStackIdentifier:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    [SBNotificationHomeAffordanceController unregisterClient:a2 withZStackIdentifier:self];
  }

  if (a4 != 14)
  {
    [(SBNotificationHomeAffordanceController *)a2 unregisterClient:a4 withZStackIdentifier:?];
  }

  v7 = [(NSMapTable *)self->_clientsToZStackParticipants objectForKey:?];
  [v7 invalidate];
  [(NSMapTable *)self->_clientsToZStackParticipants removeObjectForKey:v8];
  if (![(NSMapTable *)self->_clientsToZStackParticipants count])
  {
    [(SBHomeGesturePanGestureRecognizer *)self->_screenEdgePanGesture setEnabled:0];
  }
}

- (void)zStackParticipantDidChange:(id)a3
{
  v12 = a3;
  v4 = [(NSMapTable *)self->_clientsToZStackParticipants keyEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    LOBYTE(v7) = 0;
    do
    {
      v8 = [(NSMapTable *)self->_clientsToZStackParticipants objectForKey:v6];
      v9 = v8;
      if (v7)
      {
        v7 = 1;
      }

      else
      {
        v7 = [v8 ownsHomeGesture];
      }

      if (v9 == v12)
      {
        [v6 zStackParticipantDidChange:v9];
      }

      v10 = [v4 nextObject];

      v6 = v10;
    }

    while (v10);
  }

  else
  {
    v7 = 0;
  }

  v11 = [(SBNotificationHomeAffordanceController *)self screenEdgePanGesture];
  [v11 setEnabled:v7];
}

- (void)registerClient:(uint64_t)a1 withZStackIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBNotificationHomeAffordanceController.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"client"}];
}

- (void)registerClient:(uint64_t)a3 withZStackIdentifier:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBNotificationHomeAffordanceController.m" lineNumber:66 description:{@"identifier out of range: %lu", a3}];
}

- (void)registerClient:(uint64_t)a1 withZStackIdentifier:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBNotificationHomeAffordanceController.m" lineNumber:87 description:@"Failed to receive a participant from the resolver"];
}

- (void)unregisterClient:(uint64_t)a1 withZStackIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBNotificationHomeAffordanceController.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"client"}];
}

- (void)unregisterClient:(uint64_t)a3 withZStackIdentifier:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBNotificationHomeAffordanceController.m" lineNumber:99 description:{@"identifier out of range: %lu", a3}];
}

@end