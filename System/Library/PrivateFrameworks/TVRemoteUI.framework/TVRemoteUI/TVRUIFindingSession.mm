@interface TVRUIFindingSession
- (BOOL)isFindingSessionActive;
- (TVRUIDevice)device;
- (TVRUIFindingSession)init;
- (id)startFindingSessionForDevice:(id)a3 dismissedHandler:(id)a4;
- (void)setDevice:(id)a3;
- (void)setFindingSessionPresentationController:(id)a3;
- (void)setFindingVC:(id)a3;
- (void)stopFindingSession;
@end

@implementation TVRUIFindingSession

- (void)setFindingVC:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingVC);
  *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingVC) = a3;
  v3 = a3;
}

- (void)setFindingSessionPresentationController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingSessionPresentationController);
  *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_findingSessionPresentationController) = a3;
  v3 = a3;
}

- (TVRUIDevice)device
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDevice:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___TVRUIFindingSession_device) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (BOOL)isFindingSessionActive
{
  v2 = self;
  v3 = [(TVRUIFindingSession *)v2 findingVC];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIViewController *)v3 isBeingPresented];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)startFindingSessionForDevice:(id)a3 dismissedHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  v9 = TVRUIFindingSession.start(for:dismissedHandler:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v7);
  swift_unknownObjectRelease();

  return v9;
}

- (void)stopFindingSession
{
  v2 = self;
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