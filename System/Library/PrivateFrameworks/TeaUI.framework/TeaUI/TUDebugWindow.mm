@interface TUDebugWindow
- (UIViewController)rootViewController;
- (void)motionBegan:(int64_t)began withEvent:(id)event;
- (void)onWillEnterForeground:(id)foreground;
- (void)sendEvent:(id)event;
- (void)setRootViewController:(id)controller;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TUDebugWindow

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  DebugWindow.traitCollectionDidChange(_:)(v9);
}

- (void)setRootViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DebugWindow.rootViewController.setter();
}

- (UIViewController)rootViewController
{
  selfCopy = self;
  v3 = DebugWindow.rootViewController.getter();

  return v3;
}

- (void)onWillEnterForeground:(id)foreground
{
  v4 = sub_1D818E454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();
  selfCopy = self;
  sub_1D7E2942C();

  (*(v5 + 8))(v7, v4);
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  DebugWindow.sendEvent(_:)(eventCopy);
}

- (void)motionBegan:(int64_t)began withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v11.is_nil = selfCopy;
  v9 = selfCopy;
  v11.value.super.isa = event;
  DebugWindow.motionBegan(_:with:)(began, v11);
}

@end