@interface SettingsService
- (_TtP8Settings27SettingsHostServiceProvider_)serviceHost;
- (void)filterSearchAnchorsForSidebarItem:(id)a3 suggestedAnchors:(id)a4 reply:(id)a5;
- (void)openURL:(id)a3;
- (void)setServiceHost:(id)a3;
@end

@implementation SettingsService

- (_TtP8Settings27SettingsHostServiceProvider_)serviceHost
{
  swift_beginAccess();
  serviceHost = self->serviceHost;
  v4 = swift_unknownObjectRetain();

  return v4;
}

- (void)setServiceHost:(id)a3
{
  swift_beginAccess();
  serviceHost = self->serviceHost;
  self->serviceHost = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)filterSearchAnchorsForSidebarItem:(id)a3 suggestedAnchors:(id)a4 reply:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = sub_21CE6CC50();
  v8 = v7;
  v9 = sub_21CE6CD40();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;

  sub_21CE26B8C(v6, v8, v9, sub_21CE27B80, v10);
}

- (void)openURL:(id)a3
{
  v3 = a3;

  sub_21CE27234(v3);
}

@end