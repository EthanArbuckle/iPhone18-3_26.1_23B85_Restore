@interface SearchUIAnimator
+ (id)animateWith:(id)with animations:(id)animations completion:(id)completion;
+ (void)animateWithLayer:(id)layer with:(id)with key:(id)key animations:(id)animations delegate:(id)delegate;
- (_TtC8SearchUI16SearchUIAnimator)init;
@end

@implementation SearchUIAnimator

+ (void)animateWithLayer:(id)layer with:(id)with key:(id)key animations:(id)animations delegate:(id)delegate
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3748);
  v11 = sub_1DA25F324();
  v12 = type metadata accessor for SearchUIGroupedLayerAnimation();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC8SearchUI29SearchUIGroupedLayerAnimation_animations] = v11;
  v18.receiver = v13;
  v18.super_class = v12;
  layerCopy = layer;
  swift_unknownObjectRetain();
  keyCopy = key;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  v17 = sub_1DA23B074(with);
  [v17 setDelegate_];
  [layerCopy addAnimation:v17 forKey:keyCopy];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

+ (id)animateWith:(id)with animations:(id)animations completion:(id)completion
{
  v6 = _Block_copy(animations);
  v7 = _Block_copy(completion);
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