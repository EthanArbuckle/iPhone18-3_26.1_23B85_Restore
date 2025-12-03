@interface _UITabCrossFadeTransition
+ (BOOL)isSupportedForTraits:(id)traits;
- (_UITabCrossFadeTransition)init;
- (_UITabCrossFadeTransition)initWithBackgroundColor:(id)color;
- (double)_customNavigationBarHidingDuration:(id)duration;
- (double)transitionDuration:(id)duration;
- (id)preemptWithContext:(id)context;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
- (void)willBeginAfterPreemptionWithContext:(id)context data:(id)data;
@end

@implementation _UITabCrossFadeTransition

- (_UITabCrossFadeTransition)initWithBackgroundColor:(id)color
{
  *(&self->super.isa + OBJC_IVAR____UITabCrossFadeTransition_wasPreempted) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____UITabCrossFadeTransition_backgroundColor) = color;
  v7.receiver = self;
  v7.super_class = _UITabCrossFadeTransition;
  colorCopy = color;
  return [(_UITabCrossFadeTransition *)&v7 init];
}

- (_UITabCrossFadeTransition)init
{
  *(&self->super.isa + OBJC_IVAR____UITabCrossFadeTransition_wasPreempted) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____UITabCrossFadeTransition_backgroundColor) = 0;
  v4.receiver = self;
  v4.super_class = _UITabCrossFadeTransition;
  return [(_UITabCrossFadeTransition *)&v4 init];
}

+ (BOOL)isSupportedForTraits:(id)traits
{
  traitsCopy = traits;
  if ([traitsCopy userInterfaceIdiom] == 6)
  {

    return 0;
  }

  else
  {
    userInterfaceIdiom = [traitsCopy userInterfaceIdiom];

    return userInterfaceIdiom != 5;
  }
}

- (double)_customNavigationBarHidingDuration:(id)duration
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18912AB1C(duration);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (double)transitionDuration:(id)duration
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_18912ABDC(duration);
  swift_unknownObjectRelease();

  return v6;
}

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_189129BBC(transition);
  swift_unknownObjectRelease();
}

- (void)animationEnded:(BOOL)ended
{
  selfCopy = self;
  sub_18912B844();
}

- (id)preemptWithContext:(id)context
{
  *(&self->super.isa + OBJC_IVAR____UITabCrossFadeTransition_wasPreempted) = 1;
  [context completeTransition_];

  return 0;
}

- (void)willBeginAfterPreemptionWithContext:(id)context data:(id)data
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(&v4);
}

@end