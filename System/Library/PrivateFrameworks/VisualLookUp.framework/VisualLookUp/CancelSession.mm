@interface CancelSession
- (_TtC12VisualLookUp13CancelSession)init;
- (void)cancel;
@end

@implementation CancelSession

- (void)cancel
{
  v2 = self;
  sub_1D9B8806C();
}

- (_TtC12VisualLookUp13CancelSession)init
{
  sub_1D9C7B92C();
  *(&self->super.isa + OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12VisualLookUp13CancelSession_onCancels) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v4 = swift_allocObject();
  *(v4 + 4) = 0;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CancelSession();
  return [(CancelSession *)&v6 init];
}

@end