@interface SBNotificationPresentableViewController
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)shouldAcquireWindowLevelAssertion;
- (BOOL)shouldDismissForReason:(id)a3 outReason:(id *)a4;
- (SBUIPresentableHomeGestureContext)homeGestureContext;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3;
- (void)longLookDidPresentForNotificationViewController:(id)a3;
- (void)longLookWillDismissForNotificationViewController:(id)a3;
- (void)longLookWillPresentForNotificationViewController:(id)a3;
@end

@implementation SBNotificationPresentableViewController

- (SBUIPresentableHomeGestureContext)homeGestureContext
{
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);

  return WeakRetained;
}

- (void)longLookWillPresentForNotificationViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v5 longLookWillPresentForNotificationViewController:a3];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  [WeakRetained setWantsHomeGesture:1];
}

- (void)longLookDidPresentForNotificationViewController:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v21 longLookDidPresentForNotificationViewController:v4];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained platterBarSwipeAffordanceViewForParticipant:self];
    [v6 addObserver:self];
    v7 = [v4 containerViewForExpandedContent];
    [v7 addSubview:v6];
    [v7 bounds];
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

- (void)longLookWillDismissForNotificationViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v5 longLookWillDismissForNotificationViewController:a3];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  [WeakRetained setWantsHomeGesture:0];
}

- (BOOL)handleHomeButtonPress
{
  v2 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 handleHomeButtonPress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)handleHomeButtonDoublePress
{
  v2 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 handleHomeButtonDoublePress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)handleHomeButtonLongPress
{
  v2 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 handleHomeButtonLongPress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)handleLockButtonPress
{
  v2 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 handleLockButtonPress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)handleVoiceCommandButtonPress
{
  v2 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 handleVoiceCommandButtonPress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)handleVolumeUpButtonPress
{
  v2 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 handleVolumeUpButtonPress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)handleVolumeDownButtonPress
{
  v2 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 handleVolumeDownButtonPress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 handleHeadsetButtonPress:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldAcquireWindowLevelAssertion
{
  v2 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldAcquireWindowLevelAssertion];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldDismissForReason:(id)a3 outReason:(id *)a4
{
  v6 = a3;
  v7 = [(NCNotificationPresentableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 shouldDismissForReason:v6 outReason:a4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3
{
  v3 = [(NCNotificationPresentableViewController *)self notificationViewController];
  v6 = [v3 presentedExpandedPlatterViewController];

  if (objc_opt_respondsToSelector())
  {
    v4 = v6;
    v5 = [v4 dismisser];
    [v5 expandedPlatterPresentable:v4 requestsDismissalWithTrigger:2];
  }
}

@end