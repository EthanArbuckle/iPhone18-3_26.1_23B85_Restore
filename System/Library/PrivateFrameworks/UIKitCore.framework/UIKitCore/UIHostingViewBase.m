@interface UIHostingViewBase
- (_TtC5UIKit17UIHostingViewBase)init;
- (void)didEndSnapshotSession;
- (void)sceneDidActivate;
- (void)sceneDidBecomeKey;
- (void)sceneDidBeginResize;
- (void)sceneDidEndResize;
- (void)sceneDidResignKey;
- (void)sceneWillDeactivate;
- (void)sceneWillEnterForeground;
- (void)willBeginSnapshotSession;
- (void)windowDidMoveToSceneWithNotification:(id)a3;
@end

@implementation UIHostingViewBase

- (void)sceneWillEnterForeground
{
  v2 = self;
  UIHostingViewBase.updateSceneActivationState()();
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
  swift_beginAccess();
  *(&v2->super.isa + v3) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = v2;
  sub_188BA94B8(sub_188C48560, v4);

  v6 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  *(&v5->super.isa + v6) = 0;
  UIHostingViewBase.requestUpdateForFidelity()();
}

- (void)sceneDidActivate
{
  v1 = a1;
  UIHostingViewBase.updateSceneActivationState()();
  v2 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  v1[v2] = 0;
  UIHostingViewBase.requestUpdateForFidelity()();
}

- (void)sceneWillDeactivate
{
  v2 = self;
  UIHostingViewBase.updateSceneActivationState()();
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  *(&v2->super.isa + v3) = 1;
}

- (_TtC5UIKit17UIHostingViewBase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)windowDidMoveToSceneWithNotification:(id)a3
{
  v4 = sub_18A4A2458();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  v8 = self;
  sub_188AFFD0C();

  (*(v5 + 8))(v7, v4);
}

- (void)sceneDidBeginResize
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isResizingWindow;
  swift_beginAccess();
  *(&self->super.isa + v3) = 1;
}

- (void)sceneDidEndResize
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isResizingWindow;
  swift_beginAccess();
  *(&self->super.isa + v3) = 0;
}

- (void)sceneDidBecomeKey
{
  v3 = self + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 40);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)sceneDidResignKey
{
  v3 = self + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 48);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)willBeginSnapshotSession
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots;
  swift_beginAccess();
  *(&self->super.isa + v3) = 1;
}

- (void)didEndSnapshotSession
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots;
  swift_beginAccess();
  *(&self->super.isa + v3) = 0;
}

@end