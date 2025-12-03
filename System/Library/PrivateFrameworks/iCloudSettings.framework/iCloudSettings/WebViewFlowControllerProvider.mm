@interface WebViewFlowControllerProvider
- (_TtC14iCloudSettings29WebViewFlowControllerProvider)init;
- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
@end

@implementation WebViewFlowControllerProvider

- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_2759575A4(error);
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