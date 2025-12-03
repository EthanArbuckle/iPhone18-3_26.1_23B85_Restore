@interface AVDismissalBehavior
- (_TtC12SeymourMedia19AVDismissalBehavior)init;
- (void)seymourBehaviorContext:(id)context didRecieveDoneButtonTapWithDismissalBlock:(id)block;
- (void)willMoveToContext:(id)context;
@end

@implementation AVDismissalBehavior

- (void)willMoveToContext:(id)context
{
  objc_opt_self();
  swift_dynamicCastObjCClass();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

- (void)seymourBehaviorContext:(id)context didRecieveDoneButtonTapWithDismissalBlock:(id)block
{
  v5 = _Block_copy(block);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self + OBJC_IVAR____TtC12SeymourMedia19AVDismissalBehavior_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_20C561EC4;
    *(v10 + 24) = v6;
    v11 = *(v8 + 8);
    selfCopy = self;

    v11(sub_20C561ED4, v10, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC12SeymourMedia19AVDismissalBehavior)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(&self->super._behaviorContext + OBJC_IVAR____TtC12SeymourMedia19AVDismissalBehavior_delegate) = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(AVDismissalBehavior *)&v5 init];
}

@end