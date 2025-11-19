@interface SettingsServiceScene.SettingsServiceProtocolDispatch
- (_TtP8Settings27SettingsHostServiceProvider_)serviceHost;
- (void)filterSearchAnchorsForSidebarItem:(id)a3 suggestedAnchors:(id)a4 reply:(id)a5;
- (void)openURL:(id)a3;
@end

@implementation SettingsServiceScene.SettingsServiceProtocolDispatch

- (_TtP8Settings27SettingsHostServiceProvider_)serviceHost
{
  v2 = [*self->target serviceHost];

  return v2;
}

- (void)openURL:(id)a3
{
  v3 = a3;

  sub_21CE27DF8(v3);
}

- (void)filterSearchAnchorsForSidebarItem:(id)a3 suggestedAnchors:(id)a4 reply:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_21CE6CC50();
  v9 = v8;
  v10 = sub_21CE6CD40();
  _Block_copy(v6);

  sub_21CE2921C(v7, v9, v10, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end