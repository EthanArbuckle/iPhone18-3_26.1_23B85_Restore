@interface TTRCloudKitNetworkActivityMonitor
- (_TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor)init;
- (void)cloudKitNetworkActivityDidChange:(id)change;
@end

@implementation TTRCloudKitNetworkActivityMonitor

- (void)cloudKitNetworkActivityDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  TTRCloudKitNetworkActivityMonitor.cloudKitNetworkActivityDidChange(_:)(changeCopy);
}

- (_TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end