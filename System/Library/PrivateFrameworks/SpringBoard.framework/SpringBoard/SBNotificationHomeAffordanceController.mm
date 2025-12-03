@interface SBNotificationHomeAffordanceController
+ (SBNotificationHomeAffordanceController)sharedInstance;
- (BSAnimationSettings)hideHomeAffordanceAnimationSettings;
- (BSAnimationSettings)unhideHomeAffordanceAnimationSettings;
- (SBScreenEdgePanGestureRecognizer)screenEdgePanGesture;
- (UIViewSpringAnimationBehaviorDescribing)settleHomeAffordanceAnimationBehaviorDescription;
- (void)registerClient:(id)client withZStackIdentifier:(int64_t)identifier;
- (void)unregisterClient:(id)client withZStackIdentifier:(int64_t)identifier;
- (void)zStackParticipantDidChange:(id)change;
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
  rootSettings = [MEMORY[0x277D65E80] rootSettings];
  hideForHomeGestureOwnershipAnimationSettings = [rootSettings hideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [hideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

  return bSAnimationSettings;
}

- (BSAnimationSettings)unhideHomeAffordanceAnimationSettings
{
  rootSettings = [MEMORY[0x277D65E80] rootSettings];
  unhideForHomeGestureOwnershipAnimationSettings = [rootSettings unhideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [unhideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

  return bSAnimationSettings;
}

- (UIViewSpringAnimationBehaviorDescribing)settleHomeAffordanceAnimationBehaviorDescription
{
  v2 = +[SBAppSwitcherDomain rootSettings];
  animationSettings = [v2 animationSettings];
  alertBarSwipeDismissalSettings = [animationSettings alertBarSwipeDismissalSettings];

  return alertBarSwipeDismissalSettings;
}

- (void)registerClient:(id)client withZStackIdentifier:(int64_t)identifier
{
  clientCopy = client;
  if (!clientCopy)
  {
    [SBNotificationHomeAffordanceController registerClient:a2 withZStackIdentifier:self];
  }

  if (identifier != 14)
  {
    [(SBNotificationHomeAffordanceController *)a2 registerClient:identifier withZStackIdentifier:?];
  }

  clientsToZStackParticipants = self->_clientsToZStackParticipants;
  if (!clientsToZStackParticipants)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v9 = self->_clientsToZStackParticipants;
    self->_clientsToZStackParticipants = weakToStrongObjectsMapTable;

    clientsToZStackParticipants = self->_clientsToZStackParticipants;
  }

  keyEnumerator = [(NSMapTable *)clientsToZStackParticipants keyEnumerator];
  nextObject = 0;
  v12 = 0;
  while (1)
  {
    v13 = nextObject;
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v14 = [(NSMapTable *)self->_clientsToZStackParticipants objectForKey:nextObject];

    v12 = v14;
    if ([v14 identifier] == identifier)
    {
      [(NSMapTable *)self->_clientsToZStackParticipants setObject:v14 forKey:clientCopy];
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
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  zStackResolver = [embeddedDisplayWindowScene zStackResolver];
  v14 = [zStackResolver acquireParticipantWithIdentifier:identifier delegate:self];

  if (v14)
  {
    [(NSMapTable *)self->_clientsToZStackParticipants setObject:v14 forKey:clientCopy];
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

- (void)unregisterClient:(id)client withZStackIdentifier:(int64_t)identifier
{
  clientCopy = client;
  if (!clientCopy)
  {
    [SBNotificationHomeAffordanceController unregisterClient:a2 withZStackIdentifier:self];
  }

  if (identifier != 14)
  {
    [(SBNotificationHomeAffordanceController *)a2 unregisterClient:identifier withZStackIdentifier:?];
  }

  v7 = [(NSMapTable *)self->_clientsToZStackParticipants objectForKey:?];
  [v7 invalidate];
  [(NSMapTable *)self->_clientsToZStackParticipants removeObjectForKey:clientCopy];
  if (![(NSMapTable *)self->_clientsToZStackParticipants count])
  {
    [(SBHomeGesturePanGestureRecognizer *)self->_screenEdgePanGesture setEnabled:0];
  }
}

- (void)zStackParticipantDidChange:(id)change
{
  changeCopy = change;
  keyEnumerator = [(NSMapTable *)self->_clientsToZStackParticipants keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    LOBYTE(ownsHomeGesture) = 0;
    do
    {
      v8 = [(NSMapTable *)self->_clientsToZStackParticipants objectForKey:v6];
      v9 = v8;
      if (ownsHomeGesture)
      {
        ownsHomeGesture = 1;
      }

      else
      {
        ownsHomeGesture = [v8 ownsHomeGesture];
      }

      if (v9 == changeCopy)
      {
        [v6 zStackParticipantDidChange:v9];
      }

      nextObject2 = [keyEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  else
  {
    ownsHomeGesture = 0;
  }

  screenEdgePanGesture = [(SBNotificationHomeAffordanceController *)self screenEdgePanGesture];
  [screenEdgePanGesture setEnabled:ownsHomeGesture];
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