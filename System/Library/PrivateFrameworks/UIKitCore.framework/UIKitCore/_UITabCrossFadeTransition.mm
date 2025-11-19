@interface _UITabCrossFadeTransition
+ (BOOL)isSupportedForTraits:(id)a3;
- (_UITabCrossFadeTransition)init;
- (_UITabCrossFadeTransition)initWithBackgroundColor:(id)a3;
- (double)_customNavigationBarHidingDuration:(id)a3;
- (double)transitionDuration:(id)a3;
- (id)preemptWithContext:(id)a3;
- (void)animateTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
- (void)willBeginAfterPreemptionWithContext:(id)a3 data:(id)a4;
@end

@implementation _UITabCrossFadeTransition

- (_UITabCrossFadeTransition)initWithBackgroundColor:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____UITabCrossFadeTransition_wasPreempted) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____UITabCrossFadeTransition_backgroundColor) = a3;
  v7.receiver = self;
  v7.super_class = _UITabCrossFadeTransition;
  v5 = a3;
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

+ (BOOL)isSupportedForTraits:(id)a3
{
  v3 = a3;
  if ([v3 userInterfaceIdiom] == 6)
  {

    return 0;
  }

  else
  {
    v5 = [v3 userInterfaceIdiom];

    return v5 != 5;
  }
}

- (double)_customNavigationBarHidingDuration:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18912AB1C(a3);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (double)transitionDuration:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_18912ABDC(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_189129BBC(a3);
  swift_unknownObjectRelease();
}

- (void)animationEnded:(BOOL)a3
{
  v3 = self;
  sub_18912B844();
}

- (id)preemptWithContext:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____UITabCrossFadeTransition_wasPreempted) = 1;
  [a3 completeTransition_];

  return 0;
}

- (void)willBeginAfterPreemptionWithContext:(id)a3 data:(id)a4
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(&v4);
}

@end