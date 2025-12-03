@interface _UIKeyboardSubstitutePadPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)animateTransition:(id)transition;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation _UIKeyboardSubstitutePadPresentationController

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_189132DE0();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_189133164(end);
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_189133444();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_189133720(end);
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
  sub_189133A88();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (_TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v7 = sub_18913544C(controllerCopy, viewController);

  return v7;
}

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18913464C(transition);
  swift_unknownObjectRelease();
}

@end