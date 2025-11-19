@interface NCNoAnimationAnimator
- (NCNoAnimationAnimator)init;
- (void)animateByRetargetingType:(unint64_t)a3 animations:(id)a4 completion:(id)a5;
- (void)animateUsingSpringBehavior:(id)a3 tracking:(BOOL)a4 type:(unint64_t)a5 animations:(id)a6 completion:(id)a7;
- (void)animateUsingSpringWithTension:(double)a3 friction:(double)a4 interactive:(BOOL)a5 type:(unint64_t)a6 animations:(id)a7 completion:(id)a8;
- (void)animateWithDecomposedAnimations:(id)a3 completion:(id)a4;
- (void)performAnimationType:(unint64_t)a3 withoutAnimation:(id)a4;
@end

@implementation NCNoAnimationAnimator

- (void)performAnimationType:(unint64_t)a3 withoutAnimation:(id)a4
{
  v4 = _Block_copy(a4);
  v4[2]();

  _Block_release(v4);
}

- (void)animateByRetargetingType:(unint64_t)a3 animations:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a4);
  v7 = _Block_copy(a5);
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

- (void)animateUsingSpringBehavior:(id)a3 tracking:(BOOL)a4 type:(unint64_t)a5 animations:(id)a6 completion:(id)a7
{
  v8 = _Block_copy(a6);
  v9 = _Block_copy(a7);
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

- (void)animateUsingSpringWithTension:(double)a3 friction:(double)a4 interactive:(BOOL)a5 type:(unint64_t)a6 animations:(id)a7 completion:(id)a8
{
  v9 = _Block_copy(a7);
  v10 = _Block_copy(a8);
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

- (void)animateWithDecomposedAnimations:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for NCDecomposedAnimation(v5);
  v6 = sub_21E92A528();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_21E799850;
  }

  v7 = self;
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