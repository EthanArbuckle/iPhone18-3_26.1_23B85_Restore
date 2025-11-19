@interface NCHighFrameRateAnimator
- (NCAnimator)animator;
- (NCHighFrameRateAnimator)init;
- (NCHighFrameRateAnimator)initWithAnimator:(id)a3;
- (void)animateByRetargetingType:(unint64_t)a3 animations:(id)a4 completion:(id)a5;
- (void)animateUsingSpringBehavior:(id)a3 tracking:(BOOL)a4 type:(unint64_t)a5 animations:(id)a6 completion:(id)a7;
- (void)animateUsingSpringWithTension:(double)a3 friction:(double)a4 interactive:(BOOL)a5 type:(unint64_t)a6 animations:(id)a7 completion:(id)a8;
- (void)animateWithDecomposedAnimations:(id)a3 completion:(id)a4;
- (void)performAnimationType:(unint64_t)a3 withoutAnimation:(id)a4;
- (void)setAnimator:(id)a3;
@end

@implementation NCHighFrameRateAnimator

- (NCHighFrameRateAnimator)initWithAnimator:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___NCHighFrameRateAnimator_animator) = a3;
  v4.receiver = self;
  v4.super_class = NCHighFrameRateAnimator;
  swift_unknownObjectRetain();
  return [(NCHighFrameRateAnimator *)&v4 init];
}

- (void)animateUsingSpringWithTension:(double)a3 friction:(double)a4 interactive:(BOOL)a5 type:(unint64_t)a6 animations:(id)a7 completion:(id)a8
{
  v14 = _Block_copy(a7);
  v15 = _Block_copy(a8);
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

  v18 = self;
  sub_21E7921FC(a5, a6, sub_21E79E1A4, v16, v15, v17, a3, a4);
  sub_21E792E48(v15);
}

- (NCAnimator)animator
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setAnimator:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___NCHighFrameRateAnimator_animator) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)performAnimationType:(unint64_t)a3 withoutAnimation:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  v9 = [(NCHighFrameRateAnimator *)v8 animator];
  v11[4] = sub_21E79E1A4;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21E792C28;
  v11[3] = &block_descriptor_112_0;
  v10 = _Block_copy(v11);

  [(NCAnimator *)v9 performAnimationType:a3 withoutAnimation:v10];

  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (void)animateByRetargetingType:(unint64_t)a3 animations:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
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

  v12 = self;
  sub_21E912A74(a3, sub_21E79E1A4, v10, v9, v11);
  sub_21E792E48(v9);
}

- (void)animateUsingSpringBehavior:(id)a3 tracking:(BOOL)a4 type:(unint64_t)a5 animations:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a6);
  v13 = _Block_copy(a7);
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
  v16 = self;
  sub_21E912DB8(a3, a4, a5, sub_21E79E1A4, v14, v13, v15);
  sub_21E792E48(v13);
  swift_unknownObjectRelease();
}

- (void)animateWithDecomposedAnimations:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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

  v8 = self;
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