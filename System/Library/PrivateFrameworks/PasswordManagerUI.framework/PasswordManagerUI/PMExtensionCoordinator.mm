@interface PMExtensionCoordinator
- (_TtP8Settings20SettingsHostProtocol_)settingsHost;
- (void)setSettingsHost:(id)a3;
- (void)willSelect:(id)a3;
@end

@implementation PMExtensionCoordinator

- (_TtP8Settings20SettingsHostProtocol_)settingsHost
{
  swift_beginAccess();
  settingsHost = self->settingsHost;
  v4 = swift_unknownObjectRetain();

  return v4;
}

- (void)setSettingsHost:(id)a3
{
  swift_beginAccess();
  settingsHost = self->settingsHost;
  self->settingsHost = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)willSelect:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

@end