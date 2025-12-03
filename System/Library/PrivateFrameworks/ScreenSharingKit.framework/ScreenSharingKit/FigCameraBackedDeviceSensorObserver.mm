@interface FigCameraBackedDeviceSensorObserver
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end;
- (void)dealloc;
@end

@implementation FigCameraBackedDeviceSensorObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder);
  selfCopy = self;
  [v2 stop];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for FigCameraBackedDeviceSensorObserver();
  [(FigCameraBackedDeviceSensorObserver *)&v4 dealloc];
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin
{
  viewfinderCopy = viewfinder;
  beginCopy = begin;
  selfCopy = self;
  sub_2649DB1D4(begin);
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end
{
  viewfinderCopy = viewfinder;
  endCopy = end;
  selfCopy = self;
  sub_2649DB4B8(end);
}

@end