@interface _UITransitionOverlayView
- (_UITransitionOverlayView)initWithCoder:(id)a3;
- (_UITransitionOverlayView)initWithFrame:(CGRect)a3;
- (id)transitionCompletionBlock;
- (void)finishTransitionImmediately;
- (void)layoutSubviews;
- (void)setTransitionCompletionBlock:(id)a3;
- (void)startTransition;
@end

@implementation _UITransitionOverlayView

- (id)transitionCompletionBlock
{
  v2 = (self + OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1890552D0;
    aBlock[3] = &block_descriptor_19_6;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTransitionCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_188B17584;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_188A55B8C(v7);
}

- (void)startTransition
{
  v2 = self;
  _UITransitionOverlayView.startTransition()();
}

- (void)finishTransitionImmediately
{
  v2 = self;
  _sSo24_UITransitionOverlayViewC5UIKitE27finishTransitionImmediatelyyyF_0();
}

- (_UITransitionOverlayView)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____UITransitionOverlayView_state) = 0;
  v3 = (self + OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock);
  *v3 = 0;
  v3[1] = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UITransitionOverlayView;
  v2 = self;
  [(UIView *)&v5 layoutSubviews];
  v3 = *(v2 + OBJC_IVAR____UITransitionOverlayView_snapshot);
  [(UIView *)v2 bounds:v5.receiver];
  [v3 setFrame_];
  v4 = *(v2 + OBJC_IVAR____UITransitionOverlayView_backdrop);
  [(UIView *)v2 bounds];
  [v4 setFrame_];
}

- (_UITransitionOverlayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end