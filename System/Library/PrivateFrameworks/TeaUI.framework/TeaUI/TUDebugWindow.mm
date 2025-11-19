@interface TUDebugWindow
- (UIViewController)rootViewController;
- (void)motionBegan:(int64_t)a3 withEvent:(id)a4;
- (void)onWillEnterForeground:(id)a3;
- (void)sendEvent:(id)a3;
- (void)setRootViewController:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TUDebugWindow

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DebugWindow.traitCollectionDidChange(_:)(v9);
}

- (void)setRootViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  DebugWindow.rootViewController.setter();
}

- (UIViewController)rootViewController
{
  v2 = self;
  v3 = DebugWindow.rootViewController.getter();

  return v3;
}

- (void)onWillEnterForeground:(id)a3
{
  v4 = sub_1D818E454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();
  v8 = self;
  sub_1D7E2942C();

  (*(v5 + 8))(v7, v4);
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  DebugWindow.sendEvent(_:)(v4);
}

- (void)motionBegan:(int64_t)a3 withEvent:(id)a4
{
  v7 = a4;
  v8 = self;
  v11.is_nil = v8;
  v9 = v8;
  v11.value.super.isa = a4;
  DebugWindow.motionBegan(_:with:)(a3, v11);
}

@end