@interface LaunchWarningDB
- (BOOL)setupSchema;
- (_TtC3mis15LaunchWarningDB)init;
- (_TtC3mis15LaunchWarningDB)initWithDatabaseURL:(id)a3;
- (void)setupPermissions;
@end

@implementation LaunchWarningDB

- (_TtC3mis15LaunchWarningDB)initWithDatabaseURL:(id)a3
{
  v4 = sub_1B9DD2728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  v9 = sub_1B9DD26C8();
  v10 = type metadata accessor for LaunchWarningDB();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(SQLDB *)&v13 initWithDatabaseURL:v9];

  (*(v5 + 8))(v8, v4);
  return v11;
}

- (BOOL)setupSchema
{
  v2 = self;
  v3 = sub_1B9DA89E4();

  return v3 & 1;
}

- (void)setupPermissions
{
  v3 = sub_1B9DD2728();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  v9 = [(SQLDB *)v8 dbURL];
  sub_1B9DD26E8();

  sub_1B9DD26F8();
  (*(v4 + 8))(v7, v3);
  v10 = sub_1B9DD29D8();

  sub_1B9DD1A74((v10 + 32));
}

- (_TtC3mis15LaunchWarningDB)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end