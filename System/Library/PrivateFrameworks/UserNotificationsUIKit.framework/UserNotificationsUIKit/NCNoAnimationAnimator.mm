@interface NCNoAnimationAnimator
- (NCNoAnimationAnimator)init;
- (void)animateByRetargetingType:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateUsingSpringBehavior:(id)behavior tracking:(BOOL)tracking type:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateUsingSpringWithTension:(double)tension friction:(double)friction interactive:(BOOL)interactive type:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateWithDecomposedAnimations:(id)animations completion:(id)completion;
- (void)performAnimationType:(unint64_t)type withoutAnimation:(id)animation;
@end

@implementation NCNoAnimationAnimator

- (void)performAnimationType:(unint64_t)type withoutAnimation:(id)animation
{
  v4 = _Block_copy(animation);
  v4[2]();

  _Block_release(v4);
}

- (void)animateByRetargetingType:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v6 = _Block_copy(animations);
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v8 = sub_21E914104;
  }

  else
  {
    v8 = 0;
  }

  v6[2](v6);
  _Block_release(v6);
  if (v7)
  {

    v8(1, 0);
    sub_21E792E48(v8);

    sub_21E792E48(v8);
  }
}

- (void)animateUsingSpringBehavior:(id)behavior tracking:(BOOL)tracking type:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v8 = _Block_copy(animations);
  v9 = _Block_copy(completion);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v10 = sub_21E914104;
  }

  else
  {
    v10 = 0;
  }

  v8[2](v8);
  _Block_release(v8);
  if (v9)
  {

    v10(1, 0);
    sub_21E792E48(v10);

    sub_21E792E48(v10);
  }
}

- (void)animateUsingSpringWithTension:(double)tension friction:(double)friction interactive:(BOOL)interactive type:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v9 = _Block_copy(animations);
  v10 = _Block_copy(completion);
  if (v10)
  {
    *(swift_allocObject() + 16) = v10;
    v11 = sub_21E914104;
  }

  else
  {
    v11 = 0;
  }

  v9[2](v9);
  _Block_release(v9);
  if (v10)
  {

    v11(1, 0);
    sub_21E792E48(v11);

    sub_21E792E48(v11);
  }
}

- (void)animateWithDecomposedAnimations:(id)animations completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for NCDecomposedAnimation(v5);
  v6 = sub_21E92A528();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_21E799850;
  }

  selfCopy = self;
  sub_21E913F14(v6);
  sub_21E792E48(v5);
}

- (NCNoAnimationAnimator)init
{
  v3.receiver = self;
  v3.super_class = NCNoAnimationAnimator;
  return [(NCNoAnimationAnimator *)&v3 init];
}

@end