@interface UISubstituteKeyboardSession
+ (id)sharedSession;
- (BOOL)isPresented;
- (BOOL)isPresenting;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)cancel;
- (void)dimmingViewWasTapped:(id)tapped;
- (void)firstResponderDidChange:(id)change;
- (void)hideForResponder:(id)responder;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showForResponder:(id)responder sender:(id)sender;
- (void)updateUserInterfaceStyle;
@end

@implementation UISubstituteKeyboardSession

- (void)cancel
{
  selfCopy = self;
  sub_18912DD44();
}

+ (id)sharedSession
{
  swift_getObjCClassMetadata();
  v2 = sub_18912E994();

  return v2;
}

- (BOOL)isPresented
{
  v2 = *(&self->super.isa + OBJC_IVAR___UISubstituteKeyboardSession_presentationController);
  if (v2)
  {
    LOBYTE(v2) = [v2 state] == 2;
  }

  return v2;
}

- (BOOL)isPresenting
{
  v2 = *(&self->super.isa + OBJC_IVAR___UISubstituteKeyboardSession_presentationController);
  if (v2)
  {
    LOBYTE(v2) = [v2 state] == 1;
  }

  return v2;
}

- (void)showForResponder:(id)responder sender:(id)sender
{
  if (sender)
  {
    responderCopy = responder;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    responderCopy2 = responder;
    selfCopy2 = self;
  }

  sub_18912D960();

  sub_188A553EC(v10);
}

- (void)hideForResponder:(id)responder
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    responderCopy = responder;
    selfCopy = self;
    isEqual_ = [v6 isEqual_];

    if (isEqual_)
    {
      sub_18912DD44();
    }
  }
}

- (void)updateUserInterfaceStyle
{
  selfCopy = self;
  sub_18912E2A8();
}

- (void)firstResponderDidChange:(id)change
{
  v4 = sub_18A4A2458();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  selfCopy = self;
  sub_18912E5A0();

  (*(v5 + 8))(v7, v4);
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = qword_1EA931F08;
  selfCopy = self;
  if (v5 != -1)
  {
    swift_once();
  }

  if (byte_1EA93DCB0 == 1)
  {
    v7 = *(&selfCopy->super.isa + OBJC_IVAR___UISubstituteKeyboardSession_animationController);
    swift_unknownObjectRetain();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = qword_1EA931F08;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  if (byte_1EA93DCB0 == 1)
  {
    v5 = *(&selfCopy->super.isa + OBJC_IVAR___UISubstituteKeyboardSession_animationController);
    swift_unknownObjectRetain();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  v12 = sub_1891351D0(controllerCopy, viewController);
  v13 = v12;

  return v12;
}

- (void)dimmingViewWasTapped:(id)tapped
{
  selfCopy = self;
  sub_18912DD44();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_18912F374(dismissCopy);
}

@end