@interface SBNotificationPresentableViewController
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)shouldAcquireWindowLevelAssertion;
- (BOOL)shouldDismissForReason:(id)reason outReason:(id *)outReason;
- (SBUIPresentableHomeGestureContext)homeGestureContext;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view;
- (void)longLookDidPresentForNotificationViewController:(id)controller;
- (void)longLookWillDismissForNotificationViewController:(id)controller;
- (void)longLookWillPresentForNotificationViewController:(id)controller;
@end

@implementation SBNotificationPresentableViewController

- (SBUIPresentableHomeGestureContext)homeGestureContext
{
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);

  return WeakRetained;
}

- (void)longLookWillPresentForNotificationViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SBNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v5 longLookWillPresentForNotificationViewController:controller];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  [WeakRetained setWantsHomeGesture:1];
}

- (void)longLookDidPresentForNotificationViewController:(id)controller
{
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = SBNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v21 longLookDidPresentForNotificationViewController:controllerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained platterBarSwipeAffordanceViewForParticipant:self];
    [v6 addObserver:self];
    containerViewForExpandedContent = [controllerCopy containerViewForExpandedContent];
    [containerViewForExpandedContent addSubview:v6];
    [containerViewForExpandedContent bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    CGRectGetWidth(v22);
    [v6 sizeThatFits:{width, height}];
    BSRectWithSize();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = v13;
    v24.origin.y = v15;
    v24.size.width = v17;
    v24.size.height = v19;
    [v6 setFrame:{v13, MaxY - CGRectGetHeight(v24), v17, v19}];
    [v6 setAutoresizingMask:10];
  }
}

- (void)longLookWillDismissForNotificationViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SBNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v5 longLookWillDismissForNotificationViewController:controller];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  [WeakRetained setWantsHomeGesture:0];
}

- (BOOL)handleHomeButtonPress
{
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    handleHomeButtonPress = [delegate handleHomeButtonPress];
  }

  else
  {
    handleHomeButtonPress = 0;
  }

  return handleHomeButtonPress;
}

- (BOOL)handleHomeButtonDoublePress
{
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    handleHomeButtonDoublePress = [delegate handleHomeButtonDoublePress];
  }

  else
  {
    handleHomeButtonDoublePress = 0;
  }

  return handleHomeButtonDoublePress;
}

- (BOOL)handleHomeButtonLongPress
{
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    handleHomeButtonLongPress = [delegate handleHomeButtonLongPress];
  }

  else
  {
    handleHomeButtonLongPress = 0;
  }

  return handleHomeButtonLongPress;
}

- (BOOL)handleLockButtonPress
{
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    handleLockButtonPress = [delegate handleLockButtonPress];
  }

  else
  {
    handleLockButtonPress = 0;
  }

  return handleLockButtonPress;
}

- (BOOL)handleVoiceCommandButtonPress
{
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    handleVoiceCommandButtonPress = [delegate handleVoiceCommandButtonPress];
  }

  else
  {
    handleVoiceCommandButtonPress = 0;
  }

  return handleVoiceCommandButtonPress;
}

- (BOOL)handleVolumeUpButtonPress
{
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    handleVolumeUpButtonPress = [delegate handleVolumeUpButtonPress];
  }

  else
  {
    handleVolumeUpButtonPress = 0;
  }

  return handleVolumeUpButtonPress;
}

- (BOOL)handleVolumeDownButtonPress
{
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    handleVolumeDownButtonPress = [delegate handleVolumeDownButtonPress];
  }

  else
  {
    handleVolumeDownButtonPress = 0;
  }

  return handleVolumeDownButtonPress;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate handleHeadsetButtonPress:pressCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldAcquireWindowLevelAssertion
{
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    shouldAcquireWindowLevelAssertion = [delegate shouldAcquireWindowLevelAssertion];
  }

  else
  {
    shouldAcquireWindowLevelAssertion = 0;
  }

  return shouldAcquireWindowLevelAssertion;
}

- (BOOL)shouldDismissForReason:(id)reason outReason:(id *)outReason
{
  reasonCopy = reason;
  delegate = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [delegate shouldDismissForReason:reasonCopy outReason:outReason];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view
{
  notificationViewController = [(NCNotificationPresentableViewController *)self notificationViewController];
  presentedExpandedPlatterViewController = [notificationViewController presentedExpandedPlatterViewController];

  if (objc_opt_respondsToSelector())
  {
    v4 = presentedExpandedPlatterViewController;
    dismisser = [v4 dismisser];
    [dismisser expandedPlatterPresentable:v4 requestsDismissalWithTrigger:2];
  }
}

@end