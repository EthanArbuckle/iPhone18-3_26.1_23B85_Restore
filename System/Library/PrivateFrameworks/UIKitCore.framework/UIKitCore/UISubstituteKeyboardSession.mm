@interface UISubstituteKeyboardSession
+ (id)sharedSession;
- (BOOL)isPresented;
- (BOOL)isPresenting;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)cancel;
- (void)dimmingViewWasTapped:(id)a3;
- (void)firstResponderDidChange:(id)a3;
- (void)hideForResponder:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)showForResponder:(id)a3 sender:(id)a4;
- (void)updateUserInterfaceStyle;
@end

@implementation UISubstituteKeyboardSession

- (void)cancel
{
  v1 = a1;
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

- (void)showForResponder:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_18912D960();

  sub_188A553EC(v10);
}

- (void)hideForResponder:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v9 = self;
    v8 = [v6 isEqual_];

    if (v8)
    {
      sub_18912DD44();
    }
  }
}

- (void)updateUserInterfaceStyle
{
  v2 = self;
  sub_18912E2A8();
}

- (void)firstResponderDidChange:(id)a3
{
  v4 = sub_18A4A2458();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  v8 = self;
  sub_18912E5A0();

  (*(v5 + 8))(v7, v4);
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = qword_1EA931F08;
  v6 = self;
  if (v5 != -1)
  {
    swift_once();
  }

  if (byte_1EA93DCB0 == 1)
  {
    v7 = *(&v6->super.isa + OBJC_IVAR___UISubstituteKeyboardSession_animationController);
    swift_unknownObjectRetain();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = qword_1EA931F08;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  if (byte_1EA93DCB0 == 1)
  {
    v5 = *(&v4->super.isa + OBJC_IVAR___UISubstituteKeyboardSession_animationController);
    swift_unknownObjectRetain();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1891351D0(v8, a4);
  v13 = v12;

  return v12;
}

- (void)dimmingViewWasTapped:(id)a3
{
  v3 = self;
  sub_18912DD44();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18912F374(v4);
}

@end