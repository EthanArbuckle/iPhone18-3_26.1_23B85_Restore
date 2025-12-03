@interface PMSharingGroupsProviderMain.GroupUpdateHandler
- (_TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler)init;
- (void)groupProviderReceivedUpdates:(id)updates;
@end

@implementation PMSharingGroupsProviderMain.GroupUpdateHandler

- (void)groupProviderReceivedUpdates:(id)updates
{
  updatesCopy = updates;
  selfCopy = self;
  sub_21C6F1834(updatesCopy);
}

- (_TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end