@interface LaunchWarningClientOperations
- (BOOL)setUserOverride:(BOOL)override forBundle:(id)bundle error:(id *)error;
- (_TtC3mis29LaunchWarningClientOperations)init;
- (id)checkForLaunchWarning:(id)warning error:(id *)error;
- (id)queryAppBundle:(id)bundle error:(id *)error;
- (id)queryExecutableURL:(id)l error:(id *)error;
@end

@implementation LaunchWarningClientOperations

- (id)queryExecutableURL:(id)l error:(id *)error
{
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  selfCopy = self;
  sub_1B9DAD7A0(v9);
  v12 = v11;
  (*(v6 + 8))(v9, v5);

  return v12;
}

- (id)queryAppBundle:(id)bundle error:(id *)error
{
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  selfCopy = self;
  v11 = sub_1B9DACEC4(v9);
  (*(v6 + 8))(v9, v5);

  return v11;
}

- (id)checkForLaunchWarning:(id)warning error:(id *)error
{
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9DD26E8();
  selfCopy = self;
  sub_1B9DADDBC(v9);
  v12 = v11;
  v14 = v13;
  (*(v6 + 8))(v9, v5);

  v15 = sub_1B9DD2778();
  sub_1B9D9D534(v12, v14);

  return v15;
}

- (BOOL)setUserOverride:(BOOL)override forBundle:(id)bundle error:(id *)error
{
  overrideCopy = override;
  v7 = sub_1B9DD2728();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  selfCopy = self;
  sub_1B9DAE2A0(overrideCopy, v11);
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