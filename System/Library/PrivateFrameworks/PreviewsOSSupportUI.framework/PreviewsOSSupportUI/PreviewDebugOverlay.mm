@interface PreviewDebugOverlay
- (_TtC19PreviewsOSSupportUI19PreviewDebugOverlay)init;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PreviewDebugOverlay

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = objc_opt_self();
  v7 = self;
  v6 = [v5 rootSettings];
  LOBYTE(v5) = [v6 showDebugUI];

  *(&v7->super.isa + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled) = v5;
  sub_25F511928();
}

- (_TtC19PreviewsOSSupportUI19PreviewDebugOverlay)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end