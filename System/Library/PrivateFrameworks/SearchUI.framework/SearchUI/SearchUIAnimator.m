@interface SearchUIAnimator
+ (id)animateWith:(id)a3 animations:(id)a4 completion:(id)a5;
+ (void)animateWithLayer:(id)a3 with:(id)a4 key:(id)a5 animations:(id)a6 delegate:(id)a7;
- (_TtC8SearchUI16SearchUIAnimator)init;
@end

@implementation SearchUIAnimator

+ (void)animateWithLayer:(id)a3 with:(id)a4 key:(id)a5 animations:(id)a6 delegate:(id)a7
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3748);
  v11 = sub_1DA25F324();
  v12 = type metadata accessor for SearchUIGroupedLayerAnimation();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC8SearchUI29SearchUIGroupedLayerAnimation_animations] = v11;
  v18.receiver = v13;
  v18.super_class = v12;
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a5;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  v17 = sub_1DA23B074(a4);
  [v17 setDelegate_];
  [v14 addAnimation:v17 forKey:v15];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

+ (id)animateWith:(id)a3 animations:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a4);
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_1DA23C1D4;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_unknownObjectRetain();
  v11 = _s8SearchUI0A10UIAnimatorC7animate4with10animations10completionSo22UIViewPropertyAnimatorCAA0A19UIAnimationSettings_p_yycySbcSgtFZ_0(v10, sub_1DA23C1B4, v8, v7, v9);
  sub_1DA23C1C4(v7);
  swift_unknownObjectRelease();

  return v11;
}

- (_TtC8SearchUI16SearchUIAnimator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUIAnimator();
  return [(SearchUIAnimator *)&v3 init];
}

@end