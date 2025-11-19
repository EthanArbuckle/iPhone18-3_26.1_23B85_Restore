@interface FigCameraBackedDeviceSensorObserver
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4;
- (void)dealloc;
@end

@implementation FigCameraBackedDeviceSensorObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder);
  v3 = self;
  [v2 stop];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for FigCameraBackedDeviceSensorObserver();
  [(FigCameraBackedDeviceSensorObserver *)&v4 dealloc];
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2649DB1D4(a4);
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2649DB4B8(a4);
}

@end