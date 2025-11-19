@interface SMCloudKitFunctionSwift
- (_TtC13SafetyMonitor23SMCloudKitFunctionSwift)init;
- (void)requestSafetyCacheRecordFromZone:(id)a3 token:(id)a4 completion:(id)a5;
@end

@implementation SMCloudKitFunctionSwift

- (void)requestSafetyCacheRecordFromZone:(id)a3 token:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_2645D398C();
  v10 = v9;
  if (a4)
  {
    v11 = sub_2645D398C();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = self;
  sub_264570154(v8, v10, v11, a4, sub_2645718D8, v13);
}

- (_TtC13SafetyMonitor23SMCloudKitFunctionSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end