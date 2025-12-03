@interface LegacyUserTrustDB
- (BOOL)setupSchema;
- (_TtC3mis17LegacyUserTrustDB)init;
- (_TtC3mis17LegacyUserTrustDB)initWithDatabaseURL:(id)l;
- (void)setupPermissions;
@end

@implementation LegacyUserTrustDB

- (_TtC3mis17LegacyUserTrustDB)initWithDatabaseURL:(id)l
{
  v4 = sub_1B9DD2728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  v9 = sub_1B9DD26C8();
  v10 = type metadata accessor for LegacyUserTrustDB();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(SQLDB *)&v13 initWithDatabaseURL:v9];

  (*(v5 + 8))(v8, v4);
  return v11;
}

- (void)setupPermissions
{
  selfCopy = self;
  sub_1B9DA4BB8();
}

- (_TtC3mis17LegacyUserTrustDB)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)setupSchema
{
  selfCopy = self;
  v3 = sub_1B9DA7AE0();

  return v3 & 1;
}

@end