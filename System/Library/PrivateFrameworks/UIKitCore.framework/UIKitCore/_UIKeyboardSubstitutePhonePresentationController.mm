@interface _UIKeyboardSubstitutePhonePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)_containerViewLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation _UIKeyboardSubstitutePhonePresentationController

- (_TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  return sub_18912F590(controllerCopy, viewController);
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_18912FB20();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_189130AB0(end);
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_189130E0C();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_189131918(end);
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
  containerView = [(UIPresentationController *)selfCopy containerView];
  if (containerView)
  {
    v4 = containerView;
    [(UIView *)containerView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
  }

  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  Height = CGRectGetHeight(v19);
  v14 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_preferredHeight);

  v15 = Height - v14;
  v16 = v6;
  v17 = v10;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

- (void)_containerViewLayoutSubviews
{
  selfCopy = self;
  sub_189131FC4();
}

@end