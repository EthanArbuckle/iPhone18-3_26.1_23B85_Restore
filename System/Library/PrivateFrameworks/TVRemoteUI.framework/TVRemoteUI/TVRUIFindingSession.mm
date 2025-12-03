@interface TVRUIFindingSession
- (BOOL)isFindingSessionActive;
- (TVRUIDevice)device;
- (TVRUIFindingSession)init;
- (id)startFindingSessionForDevice:(id)device dismissedHandler:(id)handler;
- (void)setDevice:(id)device;
- (void)setFindingSessionPresentationController:(id)controller;
- (void)setFindingVC:(id)c;
- (void)stopFindingSession;
@end

@implementation TVRUIFindingSession

- (void)setFindingVC:(id)c
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingVC);
  *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingVC) = c;
  cCopy = c;
}

- (void)setFindingSessionPresentationController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingSessionPresentationController);
  *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingSessionPresentationController) = controller;
  controllerCopy = controller;
}

- (TVRUIDevice)device
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDevice:(id)device
{
  *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_device) = device;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (BOOL)isFindingSessionActive
{
  selfCopy = self;
  findingVC = [(TVRUIFindingSession *)selfCopy findingVC];
  if (findingVC)
  {
    v4 = findingVC;
    isBeingPresented = [(UIViewController *)findingVC isBeingPresented];
  }

  else
  {
    isBeingPresented = 0;
  }

  return isBeingPresented;
}

- (id)startFindingSessionForDevice:(id)device dismissedHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = TVRUIFindingSession.start(for:dismissedHandler:)(device, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v7);
  swift_unknownObjectRelease();

  return v9;
}

- (void)stopFindingSession
{
  selfCopy = self;
  TVRUIFindingSession.stop()();
}

- (TVRUIFindingSession)init
{
  *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingVC) = 0;
  *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingSessionPresentationController) = 0;
  *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_device) = 0;
  v3.receiver = self;
  v3.super_class = TVRUIFindingSession;
  return [(TVRUIFindingSession *)&v3 init];
}

@end