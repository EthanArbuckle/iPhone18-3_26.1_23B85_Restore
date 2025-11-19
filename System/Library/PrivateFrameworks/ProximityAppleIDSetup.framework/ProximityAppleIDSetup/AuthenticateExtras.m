@interface AuthenticateExtras
- (_TtC21ProximityAppleIDSetupP33_6B22B88DD3ECBED0D0354FC242B14C8118AuthenticateExtras)init;
- (void)fetchExtrasWithCompletion:(id)a3;
@end

@implementation AuthenticateExtras

- (void)fetchExtrasWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC21ProximityAppleIDSetupP33_6B22B88DD3ECBED0D0354FC242B14C8118AuthenticateExtras_anisetteDataProvider);
  v6 = v4[2];
  swift_unknownObjectRetain();
  v6(v4, v5, 0);
  _Block_release(v4);

  swift_unknownObjectRelease();
}

- (_TtC21ProximityAppleIDSetupP33_6B22B88DD3ECBED0D0354FC242B14C8118AuthenticateExtras)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end