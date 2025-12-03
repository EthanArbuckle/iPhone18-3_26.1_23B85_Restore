@interface UIView.HybridPropertyAnimator
- (_TtCE5UIKitCSo6UIView22HybridPropertyAnimator)init;
- (void)_continueAnimationWithStartingVelocity:(double)velocity;
- (void)addAnimations:(id)animations;
- (void)addAnimations:(id)animations delayFactor:(double)factor;
- (void)addCompletion:(id)completion;
- (void)addInProcessProgressAnimations:(id)animations;
- (void)addInProcessProgressKeyframeWithRelativeStartTime:(double)time relativeDuration:(double)duration animations:(id)animations;
- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(double)factor;
- (void)finishAnimationAtPosition:(int64_t)position;
- (void)pauseAnimation;
- (void)setFractionComplete:(double)complete;
- (void)startAnimation;
- (void)stopAnimation:(BOOL)animation;
@end

@implementation UIView.HybridPropertyAnimator

- (void)setFractionComplete:(double)complete
{
  selfCopy = self;
  sub_1891FD8A8(complete);
}

- (void)startAnimation
{
  selfCopy = self;
  sub_1891FD740();
}

- (void)pauseAnimation
{
  selfCopy = self;
  sub_1891FCF18();
}

- (void)stopAnimation:(BOOL)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_1891FD934(animationCopy);
}

- (void)finishAnimationAtPosition:(int64_t)position
{
  selfCopy = self;
  sub_1891FDA30(position);
}

- (void)addAnimations:(id)animations
{
  v4 = _Block_copy(animations);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator);
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = sub_188EB2CC4;
  v8[4] = v5;
  v11[4] = sub_189202330;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188A4A8F0;
  v11[3] = &block_descriptor_160_0;
  v9 = _Block_copy(v11);
  selfCopy = self;

  [v6 addAnimations:v9 delayFactor:0.0];
  _Block_release(v9);
}

- (void)addAnimations:(id)animations delayFactor:(double)factor
{
  v6 = _Block_copy(animations);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator);
  v9 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = sub_188A4AA04;
  v10[4] = v7;
  v13[4] = sub_188E3FD4C;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_188A4A8F0;
  v13[3] = &block_descriptor_141_3;
  v11 = _Block_copy(v13);
  selfCopy = self;

  [v8 addAnimations:v11 delayFactor:factor];
  _Block_release(v11);
}

- (void)addCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_188B17584;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionHandlers;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  selfCopy = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.isa + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_188E4CEBC(0, *(v8 + 2) + 1, 1, v8);
    *(&self->super.isa + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_188E4CEBC((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = (v8 + 16 * v12);
  v13[4] = sub_1892021DC;
  v13[5] = v6;
  *(&self->super.isa + v7) = v8;
  swift_endAccess();
}

- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(double)factor
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1892020C8();
  swift_unknownObjectRelease();
}

- (void)_continueAnimationWithStartingVelocity:(double)velocity
{
  selfCopy = self;
  sub_1891FF87C(velocity);
}

- (void)addInProcessProgressAnimations:(id)animations
{
  v4 = _Block_copy(animations);
  _Block_copy(v4);
  selfCopy = self;
  sub_189201AB0(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)addInProcessProgressKeyframeWithRelativeStartTime:(double)time relativeDuration:(double)duration animations:(id)animations
{
  v8 = _Block_copy(animations);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  sub_1891FFAC0(sub_188A4AA04, v9, time, duration);
}

- (_TtCE5UIKitCSo6UIView22HybridPropertyAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end