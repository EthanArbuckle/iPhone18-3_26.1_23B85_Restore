@interface NCHighFrameRateAnimator
- (NCAnimator)animator;
- (NCHighFrameRateAnimator)init;
- (NCHighFrameRateAnimator)initWithAnimator:(id)animator;
- (void)animateByRetargetingType:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateUsingSpringBehavior:(id)behavior tracking:(BOOL)tracking type:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateUsingSpringWithTension:(double)tension friction:(double)friction interactive:(BOOL)interactive type:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateWithDecomposedAnimations:(id)animations completion:(id)completion;
- (void)performAnimationType:(unint64_t)type withoutAnimation:(id)animation;
- (void)setAnimator:(id)animator;
@end

@implementation NCHighFrameRateAnimator

- (NCHighFrameRateAnimator)initWithAnimator:(id)animator
{
  *(&self->super.isa + OBJC_IVAR___NCHighFrameRateAnimator_animator) = animator;
  v4.receiver = self;
  v4.super_class = NCHighFrameRateAnimator;
  swift_unknownObjectRetain();
  return [(NCHighFrameRateAnimator *)&v4 init];
}

- (void)animateUsingSpringWithTension:(double)tension friction:(double)friction interactive:(BOOL)interactive type:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v14 = _Block_copy(animations);
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  if (v15)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    v15 = sub_21E914104;
  }

  else
  {
    v17 = 0;
  }

  selfCopy = self;
  sub_21E7921FC(interactive, type, sub_21E79E1A4, v16, v15, v17, tension, friction);
  sub_21E792E48(v15);
}

- (NCAnimator)animator
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setAnimator:(id)animator
{
  *(&self->super.isa + OBJC_IVAR___NCHighFrameRateAnimator_animator) = animator;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)performAnimationType:(unint64_t)type withoutAnimation:(id)animation
{
  v6 = _Block_copy(animation);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  animator = [(NCHighFrameRateAnimator *)selfCopy animator];
  v11[4] = sub_21E79E1A4;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21E792C28;
  v11[3] = &block_descriptor_112_0;
  v10 = _Block_copy(v11);

  [(NCAnimator *)animator performAnimationType:type withoutAnimation:v10];

  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (void)animateByRetargetingType:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v8 = _Block_copy(animations);
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v9 = sub_21E914104;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  sub_21E912A74(type, sub_21E79E1A4, v10, v9, v11);
  sub_21E792E48(v9);
}

- (void)animateUsingSpringBehavior:(id)behavior tracking:(BOOL)tracking type:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v12 = _Block_copy(animations);
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v13 = sub_21E914104;
  }

  else
  {
    v15 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21E912DB8(behavior, tracking, type, sub_21E79E1A4, v14, v13, v15);
  sub_21E792E48(v13);
  swift_unknownObjectRelease();
}

- (void)animateWithDecomposedAnimations:(id)animations completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for NCDecomposedAnimation(v5);
  v6 = sub_21E92A528();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_21E914104;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_21E913130(v6, v5, v7);
  sub_21E792E48(v5);
}

- (NCHighFrameRateAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end