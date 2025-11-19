@interface PaymentRequestViewInterface
- (_TtC9PassKitUI27PaymentRequestViewInterface)init;
- (id)serviceDelegate;
- (void)invalidate;
- (void)setServiceDelegate:(id)a3;
@end

@implementation PaymentRequestViewInterface

- (id)serviceDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setServiceDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_serviceDelegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)invalidate
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 32);
  v7 = self;
  v6(v4, v5);
}

- (_TtC9PassKitUI27PaymentRequestViewInterface)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end