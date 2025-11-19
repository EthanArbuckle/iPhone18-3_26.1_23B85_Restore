@interface ExtensionOrchestrator
- (_TtC23SAExtensionOrchestrator21ExtensionOrchestrator)init;
- (void)ingest:(id)a3;
- (void)publish:(id)a3;
@end

@implementation ExtensionOrchestrator

- (void)ingest:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100001978(sub_100002D28, v5);
}

- (void)publish:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100002B20(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC23SAExtensionOrchestrator21ExtensionOrchestrator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end