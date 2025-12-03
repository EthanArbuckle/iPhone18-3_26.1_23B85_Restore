@interface ICSRemoteUIWebViewControllerDelegate
- (void)remoteUIWebViewController:(id)controller dismissWithPayload:(id)payload;
@end

@implementation ICSRemoteUIWebViewControllerDelegate

- (void)remoteUIWebViewController:(id)controller dismissWithPayload:(id)payload
{
  if (payload)
  {
    controllerCopy = controller;

    swift_unknownObjectRetain();
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    controllerCopy2 = controller;
  }

  sub_2758C6BF4();

  sub_27586BF04(v7, &qword_280A0ED70, &qword_2759C6C60);
}

@end