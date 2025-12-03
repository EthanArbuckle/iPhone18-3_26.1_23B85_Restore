@interface TCCContext
+ (int64_t)checkTCCAccessWithoutLoadingTo:(int64_t)to for:(id)for;
- (_TtC9SEService10TCCContext)init;
- (int64_t)checkTCCAccessTo:(int64_t)to for:(id)for;
@end

@implementation TCCContext

+ (int64_t)checkTCCAccessWithoutLoadingTo:(int64_t)to for:(id)for
{
  v5 = sub_1C7C7D304();
  v7 = _s9SEService10TCCContextC28checkTCCAccessWithoutLoading2to3forAC0D0OAC10TCCServiceO_SStFZ_0(to, v5, v6);

  return v7;
}

- (int64_t)checkTCCAccessTo:(int64_t)to for:(id)for
{
  v6 = sub_1C7C7D304();
  v8 = v7;
  selfCopy = self;
  v10 = TCCContext.checkTCCAccess(to:for:)(to, v6, v8);

  return v10;
}

- (_TtC9SEService10TCCContext)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC9SEService10TCCContext_hceService) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9SEService10TCCContext_secService) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9SEService10TCCContext_paymentReaderService) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TCCContext *)&v5 init];
}

@end