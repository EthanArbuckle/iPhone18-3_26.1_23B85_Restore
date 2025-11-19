@interface RemoteViewModel
- (_TtC26SensitiveContentAnalysisUI15RemoteViewModel)init;
@end

@implementation RemoteViewModel

- (_TtC26SensitiveContentAnalysisUI15RemoteViewModel)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15RemoteViewModel__connection;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15RemoteViewModel__remoteViewConfig;
  v8 = type metadata accessor for RemoteView.Config();
  v9 = *(*(v8 - 8) + 56);
  v9(self + v7, 1, 1, v8);
  v9(self + v7, 1, 1, v8);
  sub_1BC759A80();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(RemoteViewModel *)&v11 init];
}

@end