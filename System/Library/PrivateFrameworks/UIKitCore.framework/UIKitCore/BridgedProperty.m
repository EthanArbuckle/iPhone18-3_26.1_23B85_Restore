@interface BridgedProperty
- (BOOL)isInvalidated;
- (BOOL)isVelocityUsableForVFD;
- (UIView)view;
- (_TtC5UIKit15BridgedProperty)init;
- (id)transformer;
- (id)velocityTarget:(BOOL)a3;
- (void)invalidateAndStopImmediately:(BOOL)a3;
- (void)setIsVelocityUsableForVFD:(BOOL)a3;
- (void)setTransformer:(id)a3;
- (void)setVelocity:(id)a3 target:(BOOL)a4;
@end

@implementation BridgedProperty

- (void)setTransformer:(id)a3
{
  if (a3)
  {
    v3 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v4 = self;
  }

  sub_188A8ED08(v6);
}

- (void)setIsVelocityUsableForVFD:(BOOL)a3
{
  v3 = a3;
  v5 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 72);
  v8 = self;
  v7(v3, ObjectType, v5);
}

- (void)invalidateAndStopImmediately:(BOOL)a3
{
  v3 = a3;
  v5 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 32);
  v8 = self;
  v7(v3, ObjectType, v5);
}

- (BOOL)isInvalidated
{
  v3 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  v6 = self;
  v7 = v5(ObjectType, v3);

  return v7 & 1;
}

- (void)setVelocity:(id)a3 target:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  sub_18922BE00(v10, v4, ObjectType, v8);
  sub_188A3F5FC(v10, &qword_1EA934050);
}

- (id)velocityTarget:(BOOL)a3
{
  v3 = a3;
  v5 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v7 = self;
  sub_18922C168(v3, ObjectType, v5);

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
  v6 = self;
  v7 = v5(ObjectType, v3);

  return v7;
}

- (id)transformer
{
  v3 = *&self->property[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 40);
  v6 = self;
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
  v6 = self;
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