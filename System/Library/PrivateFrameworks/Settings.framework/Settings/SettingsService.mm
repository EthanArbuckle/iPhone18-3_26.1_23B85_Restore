@interface SettingsService
- (_TtP8Settings27SettingsHostServiceProvider_)serviceHost;
- (void)filterSearchAnchorsForSidebarItem:(id)item suggestedAnchors:(id)anchors reply:(id)reply;
- (void)openURL:(id)l;
- (void)setServiceHost:(id)host;
@end

@implementation SettingsService

- (_TtP8Settings27SettingsHostServiceProvider_)serviceHost
{
  swift_beginAccess();
  serviceHost = self->serviceHost;
  v4 = swift_unknownObjectRetain();

  return v4;
}

- (void)setServiceHost:(id)host
{
  swift_beginAccess();
  serviceHost = self->serviceHost;
  self->serviceHost = host;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)filterSearchAnchorsForSidebarItem:(id)item suggestedAnchors:(id)anchors reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_21CE6CC50();
  v8 = v7;
  v9 = sub_21CE6CD40();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;

  sub_21CE26B8C(v6, v8, v9, sub_21CE27B80, v10);
}

- (void)openURL:(id)l
{
  lCopy = l;

  sub_21CE27234(lCopy);
}

@end