@interface DefaultDisplayTransformerRegistry
- (_TtC13ShellSceneKitP33_EE17DF9A05593657B985954F049B576633DefaultDisplayTransformerRegistry)init;
- (id)addTransformer:(id)a3 withIdentifier:(id)a4;
- (id)transformDisplayConfiguration:(id)a3;
@end

@implementation DefaultDisplayTransformerRegistry

- (id)addTransformer:(id)a3 withIdentifier:(id)a4
{
  sub_265FEC0E0();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_265FD7834(a3);
  swift_unknownObjectRelease();

  return v7;
}

- (id)transformDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_265FD75EC(v4);

  sub_265FCF0EC(0, &qword_28156BE10, 0x277D0ACE0);
  sub_265FD8364();
  v6 = sub_265FEC2D0();

  return v6;
}

- (_TtC13ShellSceneKitP33_EE17DF9A05593657B985954F049B576633DefaultDisplayTransformerRegistry)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13ShellSceneKitP33_EE17DF9A05593657B985954F049B576633DefaultDisplayTransformerRegistry_lockState;
  v5 = [objc_opt_self() hashTableWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055450, &qword_265FEF8F0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *(&self->super.isa + v4) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(DefaultDisplayTransformerRegistry *)&v8 init];
}

@end