@interface WebViewFlowControllerProvider
- (_TtC14iCloudSettings29WebViewFlowControllerProvider)init;
- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
@end

@implementation WebViewFlowControllerProvider

- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_2759575A4(a5);
}

- (_TtC14iCloudSettings29WebViewFlowControllerProvider)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_webViewController) = 0;
  *&self->webViewController[OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_flowCompletionDelegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for WebViewFlowControllerProvider();
  return [(WebViewFlowControllerProvider *)&v4 init];
}

@end