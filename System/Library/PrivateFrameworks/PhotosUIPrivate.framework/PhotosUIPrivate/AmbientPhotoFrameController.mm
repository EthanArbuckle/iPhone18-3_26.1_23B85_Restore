@interface AmbientPhotoFrameController
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)openVisibleAssetInPhotosApp;
- (void)thermalStateDidChangeWithNotification:(id)notification;
@end

@implementation AmbientPhotoFrameController

- (void)thermalStateDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1B3790600();
}

- (void)openVisibleAssetInPhotosApp
{
  selfCopy = self;
  sub_1B3793024();
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  AmbientPhotoFrameController.collectTapToRadarDiagnostics(into:)(container);
  swift_unknownObjectRelease();
}

@end