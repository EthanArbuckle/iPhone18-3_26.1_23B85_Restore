@interface AmbientPhotoFrameController
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)openVisibleAssetInPhotosApp;
- (void)thermalStateDidChangeWithNotification:(id)a3;
@end

@implementation AmbientPhotoFrameController

- (void)thermalStateDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3790600();
}

- (void)openVisibleAssetInPhotosApp
{
  v2 = self;
  sub_1B3793024();
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  AmbientPhotoFrameController.collectTapToRadarDiagnostics(into:)(a3);
  swift_unknownObjectRelease();
}

@end