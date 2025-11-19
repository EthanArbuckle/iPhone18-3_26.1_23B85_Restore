@interface LaunchWarningClientOperations
- (BOOL)setUserOverride:(BOOL)a3 forBundle:(id)a4 error:(id *)a5;
- (_TtC3mis29LaunchWarningClientOperations)init;
- (id)checkForLaunchWarning:(id)a3 error:(id *)a4;
- (id)queryAppBundle:(id)a3 error:(id *)a4;
- (id)queryExecutableURL:(id)a3 error:(id *)a4;
@end

@implementation LaunchWarningClientOperations

- (id)queryExecutableURL:(id)a3 error:(id *)a4
{
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  v10 = self;
  sub_1B9DAD7A0(v9);
  v12 = v11;
  (*(v6 + 8))(v9, v5);

  return v12;
}

- (id)queryAppBundle:(id)a3 error:(id *)a4
{
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  v10 = self;
  v11 = sub_1B9DACEC4(v9);
  (*(v6 + 8))(v9, v5);

  return v11;
}

- (id)checkForLaunchWarning:(id)a3 error:(id *)a4
{
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9DD26E8();
  v10 = self;
  sub_1B9DADDBC(v9);
  v12 = v11;
  v14 = v13;
  (*(v6 + 8))(v9, v5);

  v15 = sub_1B9DD2778();
  sub_1B9D9D534(v12, v14);

  return v15;
}

- (BOOL)setUserOverride:(BOOL)a3 forBundle:(id)a4 error:(id *)a5
{
  v5 = a3;
  v7 = sub_1B9DD2728();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  v12 = self;
  sub_1B9DAE2A0(v5, v11);
  (*(v8 + 8))(v11, v7);

  return 1;
}

- (_TtC3mis29LaunchWarningClientOperations)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LaunchWarningClientOperations();
  return [(LaunchWarningClientOperations *)&v3 init];
}

@end