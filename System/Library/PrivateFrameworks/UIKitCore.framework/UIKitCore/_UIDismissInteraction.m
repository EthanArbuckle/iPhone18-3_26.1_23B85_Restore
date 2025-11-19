@interface _UIDismissInteraction
- (UIView)view;
- (_UIDismissInteractionDelegate)delegate;
- (void)didMoveToView:(id)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)setStyles:(unint64_t)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIDismissInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setIsEnabled:(BOOL)a3
{
  v4 = self;
  sub_188C86B14(a3);
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188C86D34(a3);
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188C86F08(a3);
}

- (_UIDismissInteractionDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setStyles:(unint64_t)a3
{
  *(self + OBJC_IVAR____UIDismissInteraction_styles) = a3;
  v3 = self;
  sub_188C8549C();
}

@end