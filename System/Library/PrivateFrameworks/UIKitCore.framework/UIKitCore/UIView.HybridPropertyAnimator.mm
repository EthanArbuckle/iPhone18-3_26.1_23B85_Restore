@interface UIView.HybridPropertyAnimator
- (_TtCE5UIKitCSo6UIView22HybridPropertyAnimator)init;
- (void)_continueAnimationWithStartingVelocity:(double)a3;
- (void)addAnimations:(id)a3;
- (void)addAnimations:(id)a3 delayFactor:(double)a4;
- (void)addCompletion:(id)a3;
- (void)addInProcessProgressAnimations:(id)a3;
- (void)addInProcessProgressKeyframeWithRelativeStartTime:(double)a3 relativeDuration:(double)a4 animations:(id)a5;
- (void)continueAnimationWithTimingParameters:(id)a3 durationFactor:(double)a4;
- (void)finishAnimationAtPosition:(int64_t)a3;
- (void)pauseAnimation;
- (void)setFractionComplete:(double)a3;
- (void)startAnimation;
- (void)stopAnimation:(BOOL)a3;
@end

@implementation UIView.HybridPropertyAnimator

- (void)setFractionComplete:(double)a3
{
  v4 = self;
  sub_1891FD8A8(a3);
}

- (void)startAnimation
{
  v2 = self;
  sub_1891FD740();
}

- (void)pauseAnimation
{
  v2 = self;
  sub_1891FCF18();
}

- (void)stopAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1891FD934(v3);
}

- (void)finishAnimationAtPosition:(int64_t)a3
{
  v4 = self;
  sub_1891FDA30(a3);
}

- (void)addAnimations:(id)a3
{
  v4 = _Block_copy(a3);
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
  v10 = self;

  [v6 addAnimations:v9 delayFactor:0.0];
  _Block_release(v9);
}

- (void)addAnimations:(id)a3 delayFactor:(double)a4
{
  v6 = _Block_copy(a3);
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
  v12 = self;

  [v8 addAnimations:v11 delayFactor:a4];
  _Block_release(v11);
}

- (void)addCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_188B17584;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionHandlers;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  v9 = self;

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

- (void)continueAnimationWithTimingParameters:(id)a3 durationFactor:(double)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1892020C8();
  swift_unknownObjectRelease();
}

- (void)_continueAnimationWithStartingVelocity:(double)a3
{
  v4 = self;
  sub_1891FF87C(a3);
}

- (void)addInProcessProgressAnimations:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_189201AB0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)addInProcessProgressKeyframeWithRelativeStartTime:(double)a3 relativeDuration:(double)a4 animations:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  sub_1891FFAC0(sub_188A4AA04, v9, a3, a4);
}

- (_TtCE5UIKitCSo6UIView22HybridPropertyAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end