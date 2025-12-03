@interface _UIDismissInteraction
- (UIView)view;
- (_UIDismissInteractionDelegate)delegate;
- (void)didMoveToView:(id)view;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setStyles:(unint64_t)styles;
- (void)willMoveToView:(id)view;
@end

@implementation _UIDismissInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setIsEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_188C86B14(enabled);
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188C86D34(view);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188C86F08(view);
}

- (_UIDismissInteractionDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setStyles:(unint64_t)styles
{
  *(self + OBJC_IVAR____UIDismissInteraction_styles) = styles;
  selfCopy = self;
  sub_188C8549C();
}

@end