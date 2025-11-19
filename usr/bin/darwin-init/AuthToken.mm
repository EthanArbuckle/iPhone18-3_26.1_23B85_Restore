@interface AuthToken
- (_TtC16KnoxClientPublic9AuthToken)init;
@end

@implementation AuthToken

- (_TtC16KnoxClientPublic9AuthToken)init
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder) = 0;
  Date.init()();
  (*(v4 + 32))(self + OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate, v6, v3);
  v7 = type metadata accessor for AuthToken();
  v9.receiver = self;
  v9.super_class = v7;
  return [(AuthToken *)&v9 init];
}

@end