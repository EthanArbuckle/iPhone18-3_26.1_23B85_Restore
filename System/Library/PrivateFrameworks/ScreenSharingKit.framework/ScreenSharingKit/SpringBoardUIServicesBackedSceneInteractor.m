@interface SpringBoardUIServicesBackedSceneInteractor
- (_TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor)init;
- (void)continuitySession:(id)a3 didUpdateContinuitySessionStep:(unint64_t)a4 reasons:(id)a5;
- (void)continuitySession:(id)a3 didUpdateCurrentInterfaceOrientation:(int64_t)a4 supportedInterfaceOrientations:(unint64_t)a5;
@end

@implementation SpringBoardUIServicesBackedSceneInteractor

- (_TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)continuitySession:(id)a3 didUpdateContinuitySessionStep:(unint64_t)a4 reasons:(id)a5
{
  v8 = sub_264B41414();
  v9 = a3;
  v10 = self;
  sub_264A8047C(v9, a4, v8);
}

- (void)continuitySession:(id)a3 didUpdateCurrentInterfaceOrientation:(int64_t)a4 supportedInterfaceOrientations:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_264A80CBC(v8, a4, a5);
}

@end