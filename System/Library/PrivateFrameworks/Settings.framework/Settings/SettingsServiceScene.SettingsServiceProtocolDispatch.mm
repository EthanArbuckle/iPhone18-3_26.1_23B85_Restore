@interface SettingsServiceScene.SettingsServiceProtocolDispatch
- (_TtP8Settings27SettingsHostServiceProvider_)serviceHost;
- (void)filterSearchAnchorsForSidebarItem:(id)item suggestedAnchors:(id)anchors reply:(id)reply;
- (void)openURL:(id)l;
@end

@implementation SettingsServiceScene.SettingsServiceProtocolDispatch

- (_TtP8Settings27SettingsHostServiceProvider_)serviceHost
{
  serviceHost = [*self->target serviceHost];

  return serviceHost;
}

- (void)openURL:(id)l
{
  lCopy = l;

  sub_21CE27DF8(lCopy);
}

- (void)filterSearchAnchorsForSidebarItem:(id)item suggestedAnchors:(id)anchors reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = sub_21CE6CC50();
  v9 = v8;
  v10 = sub_21CE6CD40();
  _Block_copy(v6);

  sub_21CE2921C(v7, v9, v10, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end