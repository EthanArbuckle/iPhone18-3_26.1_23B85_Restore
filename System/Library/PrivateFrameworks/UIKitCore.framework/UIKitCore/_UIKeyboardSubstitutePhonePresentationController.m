@interface _UIKeyboardSubstitutePhonePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)_containerViewLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation _UIKeyboardSubstitutePhonePresentationController

- (_TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_18912F590(v5, a4);
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_18912FB20();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_189130AB0(a3);
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_189130E0C();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_189131918(a3);
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
  v3 = [(UIPresentationController *)v2 containerView];
  if (v3)
  {
    v4 = v3;
    [(UIView *)v3 bounds];
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
  v14 = *(&v2->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_preferredHeight);

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
  v2 = self;
  sub_189131FC4();
}

@end