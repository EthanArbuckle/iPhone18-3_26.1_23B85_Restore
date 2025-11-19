@interface PaymentOfferCriteriaSetupWebView.Coordinator
- (_TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator)init;
- (void)webView:(WKWebView *)a3 requestMediaCapturePermissionForOrigin:(WKSecurityOrigin *)a4 initiatedByFrame:(WKFrameInfo *)a5 type:(int64_t)a6 decisionHandler:(id)a7;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
@end

@implementation PaymentOfferCriteriaSetupWebView.Coordinator

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1BD5272A8(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)webView:(WKWebView *)a3 requestMediaCapturePermissionForOrigin:(WKSecurityOrigin *)a4 initiatedByFrame:(WKFrameInfo *)a5 type:(int64_t)a6 decisionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
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
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = self;
  sub_1BD992D04(0, 0, v16, &unk_1BE0C7F30, v21);
}

- (_TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end