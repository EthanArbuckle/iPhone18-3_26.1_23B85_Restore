@interface NCSimpleAnimator
- (NCSimpleAnimator)init;
- (void)animateByRetargetingType:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateUsingSpringBehavior:(id)behavior tracking:(BOOL)tracking type:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateUsingSpringWithTension:(double)tension friction:(double)friction interactive:(BOOL)interactive type:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateWithDecomposedAnimations:(id)animations completion:(id)completion;
- (void)performAnimationType:(unint64_t)type withoutAnimation:(id)animation;
@end

@implementation NCSimpleAnimator

- (void)animateUsingSpringWithTension:(double)tension friction:(double)friction interactive:(BOOL)interactive type:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v13 = _Block_copy(animations);
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  if (v14)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v14 = sub_21E914104;
  }

  else
  {
    v16 = 0;
  }

  selfCopy = self;
  sub_21E792A60(interactive, sub_21E79E1A4, v15, v14, v16, tension, friction);
  sub_21E792E48(v14);
}

- (void)performAnimationType:(unint64_t)type withoutAnimation:(id)animation
{
  v4 = _Block_copy(animation);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = objc_opt_self();
  v8[4] = sub_21E79E1A4;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21E792C28;
  v8[3] = &block_descriptor_211;
  v7 = _Block_copy(v8);

  [v6 _performWithoutRetargetingAnimations_];

  _Block_release(v7);
}

- (void)animateByRetargetingType:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v7 = _Block_copy(animations);
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  if (v8)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v8 = sub_21E914104;
  }

  else
  {
    v10 = 0;
  }

  selfCopy = self;
  sub_21E913A70(sub_21E79E1A4, v9, v8, v10);
  sub_21E792E48(v8);
}

- (void)animateUsingSpringBehavior:(id)behavior tracking:(BOOL)tracking type:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v11 = _Block_copy(animations);
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v12 = sub_21E914104;
  }

  else
  {
    v14 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21E913BE8(behavior, tracking, sub_21E79E1A4, v13, v12, v14);
  sub_21E792E48(v12);
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
  sub_21E913D78(v6, v5, v7);
  sub_21E792E48(v5);
}

- (NCSimpleAnimator)init
{
  v3.receiver = self;
  v3.super_class = NCSimpleAnimator;
  return [(NCSimpleAnimator *)&v3 init];
}

@end