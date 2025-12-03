@interface PMExtensionCoordinator
- (_TtP8Settings20SettingsHostProtocol_)settingsHost;
- (void)setSettingsHost:(id)host;
- (void)willSelect:(id)select;
@end

@implementation PMExtensionCoordinator

- (_TtP8Settings20SettingsHostProtocol_)settingsHost
{
  swift_beginAccess();
  settingsHost = self->settingsHost;
  v4 = swift_unknownObjectRetain();

  return v4;
}

- (void)setSettingsHost:(id)host
{
  swift_beginAccess();
  settingsHost = self->settingsHost;
  self->settingsHost = host;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)willSelect:(id)select
{
  v3 = _Block_copy(select);
  v3[2]();

  _Block_release(v3);
}

@end