@interface ExtensionOrchestrator
- (_TtC23SAExtensionOrchestrator21ExtensionOrchestrator)init;
- (void)ingest:(id)ingest;
- (void)publish:(id)publish;
@end

@implementation ExtensionOrchestrator

- (void)ingest:(id)ingest
{
  v4 = _Block_copy(ingest);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100001978(sub_100002D28, v5);
}

- (void)publish:(id)publish
{
  v4 = _Block_copy(publish);
  _Block_copy(v4);
  selfCopy = self;
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