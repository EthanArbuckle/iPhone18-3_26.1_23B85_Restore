@interface HostedContentTextureProvider.HostingControllerRequest
- (void)hostingController:(id)controller didRenderFrame:(id)frame;
@end

@implementation HostedContentTextureProvider.HostingControllerRequest

- (void)hostingController:(id)controller didRenderFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;

  sub_1A4038A80(frameCopy);
}

@end