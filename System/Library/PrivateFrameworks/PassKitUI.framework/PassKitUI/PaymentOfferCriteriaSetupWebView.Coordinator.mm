@interface PaymentOfferCriteriaSetupWebView.Coordinator
- (_TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator)init;
- (void)webView:(WKWebView *)view requestMediaCapturePermissionForOrigin:(WKSecurityOrigin *)origin initiatedByFrame:(WKFrameInfo *)frame type:(int64_t)type decisionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
@end

@implementation PaymentOfferCriteriaSetupWebView.Coordinator

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;
  sub_1BD5272A8(actionCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)webView:(WKWebView *)view requestMediaCapturePermissionForOrigin:(WKSecurityOrigin *)origin initiatedByFrame:(WKFrameInfo *)frame type:(int64_t)type decisionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v26 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = view;
  v18[3] = origin;
  v18[4] = frame;
  v18[5] = type;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_1BE0528D4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1BE0DF250;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1BE107FA0;
  v21[5] = v20;
  viewCopy = view;
  originCopy = origin;
  frameCopy = frame;
  selfCopy = self;
  sub_1BD992D04(0, 0, v16, &unk_1BE0C7F30, v21);
}

- (_TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end