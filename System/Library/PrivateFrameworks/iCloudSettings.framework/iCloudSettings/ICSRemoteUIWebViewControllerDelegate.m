@interface ICSRemoteUIWebViewControllerDelegate
- (void)remoteUIWebViewController:(id)a3 dismissWithPayload:(id)a4;
@end

@implementation ICSRemoteUIWebViewControllerDelegate

- (void)remoteUIWebViewController:(id)a3 dismissWithPayload:(id)a4
{
  if (a4)
  {
    v5 = a3;

    swift_unknownObjectRetain();
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v6 = a3;
  }

  sub_2758C6BF4();

  sub_27586BF04(v7, &qword_280A0ED70, &qword_2759C6C60);
}

@end