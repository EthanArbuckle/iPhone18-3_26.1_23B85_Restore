@interface AppAdView
- (id)metricsActivityForAdLockupView:(id)a3 toPerformActionOfOffer:(id)a4 inState:(id)a5;
- (id)metricsActivityForPresentingProductDetailsOfAdLockupView:(id)a3 inState:(id)a4;
- (id)presentingViewControllerForAdLockupView:(id)a3;
- (void)adLockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)adLockupView:(id)a3 didSelectOfferWithState:(id)a4;
- (void)adLockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6;
- (void)adLockupViewDidCancelScreenshotsFetchRequest:(id)a3;
- (void)adLockupViewDidFinishRequest:(id)a3;
- (void)adLockupViewDidFinishScreenshotsFetchRequest:(id)a3;
- (void)adLockupViewDidInvalidateIntrinsicContentSize:(id)a3;
- (void)adLockupViewDidSelectAdMarker:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AppAdView

- (id)presentingViewControllerForAdLockupView:(id)a3
{
  v3 = self;
  v4 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();

  return v4;
}

- (void)adLockupViewDidCancelScreenshotsFetchRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C1A12588(MEMORY[0x1E69E9440]);
}

- (void)adLockupViewDidFinishScreenshotsFetchRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C1A12588(MEMORY[0x1E69E9430]);
}

- (void)adLockupViewDidInvalidateIntrinsicContentSize:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C1A12588(MEMORY[0x1E69E9430]);
}

- (void)adLockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  _s17PromotedContentUI9AppAdViewC08adLockupF16DidFinishRequestyySo05ASCAdhF0CF_0();
}

- (void)adLockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1C1A12A08();
}

- (void)adLockupView:(id)a3 didSelectOfferWithState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1C1A12D40();
}

- (void)adLockupViewDidSelectAdMarker:(id)a3
{
  v4 = a3;
  v5 = self;
  _s17PromotedContentUI9AppAdViewC08adLockupf9DidSelectE6MarkeryySo05ASCAdhF0CF_0();
}

- (void)adLockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6
{
  v9 = _Block_copy(a6);
  _Block_copy(v9);
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = self;
  sub_1C1A14268(v11, v12, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (id)metricsActivityForPresentingProductDetailsOfAdLockupView:(id)a3 inState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s17PromotedContentUI9AppAdViewC42metricsActivityForPresentingProductDetails2of7inStateSo010ASCMetricsH0CSo011ASCAdLockupF0C_So06ASCAppO0atF_0();

  return v9;
}

- (id)metricsActivityForAdLockupView:(id)a3 toPerformActionOfOffer:(id)a4 inState:(id)a5
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  v6 = self;
  [objc_msgSend(v5 metricsHelper)];
  swift_unknownObjectRelease();
  v7 = sub_1C1A11B8C();

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  sub_1C198FB8C(0, &qword_1EDE63970);
  v7 = self;
  if (sub_1C19CF5B0())
  {
    v4 = 2;
  }

  else
  {
    v5 = [(AppAdView *)v7 traitCollection];
    v4 = [v5 userInterfaceStyle];
  }

  v6 = sub_1C1A3A138();
  [v6 setOverrideUserInterfaceStyle_];
}

@end