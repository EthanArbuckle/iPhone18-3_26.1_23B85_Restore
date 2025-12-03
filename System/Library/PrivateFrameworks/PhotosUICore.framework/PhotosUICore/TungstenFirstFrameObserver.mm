@interface TungstenFirstFrameObserver
- (OS_dispatch_queue)hostingControllerObservationQueue;
- (void)hostingController:(id)controller didRenderFrame:(id)frame;
@end

@implementation TungstenFirstFrameObserver

- (OS_dispatch_queue)hostingControllerObservationQueue
{
  sub_1A3C52C70(0, &qword_1EB12B180);
  v2 = sub_1A524D474();

  return v2;
}

- (void)hostingController:(id)controller didRenderFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;

  sub_1A3EEF0B0(controllerCopy);
}

@end