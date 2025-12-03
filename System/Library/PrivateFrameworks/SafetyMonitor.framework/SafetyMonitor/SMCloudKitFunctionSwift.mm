@interface SMCloudKitFunctionSwift
- (_TtC13SafetyMonitor23SMCloudKitFunctionSwift)init;
- (void)requestSafetyCacheRecordFromZone:(id)zone token:(id)token completion:(id)completion;
@end

@implementation SMCloudKitFunctionSwift

- (void)requestSafetyCacheRecordFromZone:(id)zone token:(id)token completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2645D398C();
  v10 = v9;
  if (token)
  {
    v11 = sub_2645D398C();
    token = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  selfCopy = self;
  sub_264570154(v8, v10, v11, token, sub_2645718D8, v13);
}

- (_TtC13SafetyMonitor23SMCloudKitFunctionSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end