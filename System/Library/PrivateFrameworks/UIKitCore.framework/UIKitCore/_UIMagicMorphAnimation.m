@interface _UIMagicMorphAnimation
- (BOOL)hasAnimationItems;
- (UIView)clientContainerView;
- (_UIMagicMorphAnimation)init;
- (id)destinationFor:(id)a3;
- (id)newInteractionAssertion;
- (void)animateWith:(id)a3 tracking:(BOOL)a4 animations:(id)a5 completion:(id)a6;
- (void)cancel;
- (void)geometryTrackingDisplayLinkDidFire:(id)a3;
- (void)morphTo:(id)a3 reparentWithoutAnimation:(BOOL)a4 alongsideAnimations:(id)a5 completion:(id)a6;
- (void)performCompletionsAsGroup:(id)a3;
@end

@implementation _UIMagicMorphAnimation

- (_UIMagicMorphAnimation)init
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(_UIGroupCompletion) init];
  v4 = objc_allocWithZone(ObjectType);
  v5 = sub_188C8C67C(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)geometryTrackingDisplayLinkDidFire:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188D849D4();
}

- (UIView)clientContainerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)hasAnimationItems
{
  v3 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

- (void)morphTo:(id)a3 reparentWithoutAnimation:(BOOL)a4 alongsideAnimations:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  v12 = v11;
  if (v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v10 = sub_188EB2CC4;
    if (v12)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v12 = sub_188EB2CC4;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = a3;
  v16 = self;
  sub_188F33DE8(v15, a4, v10, v13, v12, v14);
  sub_188A55B8C(v12);
  sub_188A55B8C(v10);
}

- (id)newInteractionAssertion
{
  v3 = objc_allocWithZone(type metadata accessor for _UIMagicMorphAnimation.InteractionAssertion());
  v4 = self;
  v5 = sub_188F36294(v4);

  return v5;
}

- (void)cancel
{
  v2 = self;
  sub_188F32950(1);
}

- (id)destinationFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_188F34174(v4);

  return v6;
}

- (void)animateWith:(id)a3 tracking:(BOOL)a4 animations:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  if (v11)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v11 = sub_188EB2CC4;
  }

  else
  {
    v13 = 0;
  }

  swift_unknownObjectRetain();
  v14 = self;
  sub_188F2E36C(a3, a4, sub_188A4AA04, v12, v11, v13);
  sub_188A55B8C(v11);
  swift_unknownObjectRelease();
}

- (void)performCompletionsAsGroup:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = OBJC_IVAR____UIMagicMorphAnimation_groupCompletion;
  v6 = *(self + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion);
  v8 = self;
  [v6 increment];
  v4[2](v4);
  _Block_release(v4);
  v7 = *(self + v5);
  [v7 complete];
}

@end