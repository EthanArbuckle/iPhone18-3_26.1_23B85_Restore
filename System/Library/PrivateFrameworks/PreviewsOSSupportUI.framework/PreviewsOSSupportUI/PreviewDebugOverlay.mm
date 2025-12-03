@interface PreviewDebugOverlay
- (_TtC19PreviewsOSSupportUI19PreviewDebugOverlay)init;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PreviewDebugOverlay

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v5 = objc_opt_self();
  selfCopy = self;
  rootSettings = [v5 rootSettings];
  LOBYTE(v5) = [rootSettings showDebugUI];

  *(&selfCopy->super.isa + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled) = v5;
  sub_25F511928();
}

- (_TtC19PreviewsOSSupportUI19PreviewDebugOverlay)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end