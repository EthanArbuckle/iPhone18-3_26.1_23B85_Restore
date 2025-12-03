@interface BridgedProperty
- (BOOL)isInvalidated;
- (BOOL)isVelocityUsableForVFD;
- (UIView)view;
- (_TtC5UIKit15BridgedProperty)init;
- (id)transformer;
- (id)velocityTarget:(BOOL)target;
- (void)invalidateAndStopImmediately:(BOOL)immediately;
- (void)setIsVelocityUsableForVFD:(BOOL)d;
- (void)setTransformer:(id)transformer;
- (void)setVelocity:(id)velocity target:(BOOL)target;
@end

@implementation BridgedProperty

- (void)setTransformer:(id)transformer
{
  if (transformer)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_188A8ED08(v6);
}

- (void)setIsVelocityUsableForVFD:(BOOL)d
{
  dCopy = d;
  v5 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 72);
  selfCopy = self;
  v7(dCopy, ObjectType, v5);
}

- (void)invalidateAndStopImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v5 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 32);
  selfCopy = self;
  v7(immediatelyCopy, ObjectType, v5);
}

- (BOOL)isInvalidated
{
  v3 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  selfCopy = self;
  v7 = v5(ObjectType, v3);

  return v7 & 1;
}

- (void)setVelocity:(id)velocity target:(BOOL)target
{
  targetCopy = target;
  if (velocity)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  sub_18922BE00(v10, targetCopy, ObjectType, v8);
  sub_188A3F5FC(v10, &qword_1EA934050);
}

- (id)velocityTarget:(BOOL)target
{
  targetCopy = target;
  v5 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_18922C168(targetCopy, ObjectType, v5);

  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  v8 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v10);

  return v8;
}

- (UIView)view
{
  v3 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 136);
  selfCopy = self;
  v7 = v5(ObjectType, v3);

  return v7;
}

- (id)transformer
{
  v3 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 40);
  selfCopy = self;
  v7 = v5(ObjectType, v3);

  if (v7)
  {
    v9 = v7;
    _s29AnimatablePropertyTransformerCMa();
    v7 = sub_18A4A86A8();
  }

  return v7;
}

- (BOOL)isVelocityUsableForVFD
{
  v3 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 64);
  selfCopy = self;
  v7 = v5(ObjectType, v3);

  return v7 & 1;
}

- (_TtC5UIKit15BridgedProperty)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end