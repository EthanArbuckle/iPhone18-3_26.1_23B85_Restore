@interface _UIKeyboardSubstitutePadPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)animateTransition:(id)a3;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation _UIKeyboardSubstitutePadPresentationController

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_189132DE0();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_189133164(a3);
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_189133444();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_189133720(a3);
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
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

- (_TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_18913544C(v5, a4);

  return v7;
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18913464C(a3);
  swift_unknownObjectRelease();
}

@end