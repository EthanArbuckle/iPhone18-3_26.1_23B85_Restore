@interface SpringBoardUIServicesBackedSceneInteractor
- (_TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor)init;
- (void)continuitySession:(id)session didUpdateContinuitySessionStep:(unint64_t)step reasons:(id)reasons;
- (void)continuitySession:(id)session didUpdateCurrentInterfaceOrientation:(int64_t)orientation supportedInterfaceOrientations:(unint64_t)orientations;
@end

@implementation SpringBoardUIServicesBackedSceneInteractor

- (_TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)continuitySession:(id)session didUpdateContinuitySessionStep:(unint64_t)step reasons:(id)reasons
{
  v8 = sub_264B41414();
  sessionCopy = session;
  selfCopy = self;
  sub_264A8047C(sessionCopy, step, v8);
}

- (void)continuitySession:(id)session didUpdateCurrentInterfaceOrientation:(int64_t)orientation supportedInterfaceOrientations:(unint64_t)orientations
{
  sessionCopy = session;
  selfCopy = self;
  sub_264A80CBC(sessionCopy, orientation, orientations);
}

@end