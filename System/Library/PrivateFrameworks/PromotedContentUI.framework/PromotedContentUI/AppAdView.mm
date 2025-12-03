@interface AppAdView
- (id)metricsActivityForAdLockupView:(id)view toPerformActionOfOffer:(id)offer inState:(id)state;
- (id)metricsActivityForPresentingProductDetailsOfAdLockupView:(id)view inState:(id)state;
- (id)presentingViewControllerForAdLockupView:(id)view;
- (void)adLockupView:(id)view didFailRequestWithError:(id)error;
- (void)adLockupView:(id)view didSelectOfferWithState:(id)state;
- (void)adLockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block;
- (void)adLockupViewDidCancelScreenshotsFetchRequest:(id)request;
- (void)adLockupViewDidFinishRequest:(id)request;
- (void)adLockupViewDidFinishScreenshotsFetchRequest:(id)request;
- (void)adLockupViewDidInvalidateIntrinsicContentSize:(id)size;
- (void)adLockupViewDidSelectAdMarker:(id)marker;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AppAdView

- (id)presentingViewControllerForAdLockupView:(id)view
{
  selfCopy = self;
  v4 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();

  return v4;
}

- (void)adLockupViewDidCancelScreenshotsFetchRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1C1A12588(MEMORY[0x1E69E9440]);
}

- (void)adLockupViewDidFinishScreenshotsFetchRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1C1A12588(MEMORY[0x1E69E9430]);
}

- (void)adLockupViewDidInvalidateIntrinsicContentSize:(id)size
{
  sizeCopy = size;
  selfCopy = self;
  sub_1C1A12588(MEMORY[0x1E69E9430]);
}

- (void)adLockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  _s17PromotedContentUI9AppAdViewC08adLockupF16DidFinishRequestyySo05ASCAdhF0CF_0();
}

- (void)adLockupView:(id)view didFailRequestWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  selfCopy = self;
  sub_1C1A12A08();
}

- (void)adLockupView:(id)view didSelectOfferWithState:(id)state
{
  viewCopy = view;
  stateCopy = state;
  selfCopy = self;
  sub_1C1A12D40();
}

- (void)adLockupViewDidSelectAdMarker:(id)marker
{
  markerCopy = marker;
  selfCopy = self;
  _s17PromotedContentUI9AppAdViewC08adLockupf9DidSelectE6MarkeryySo05ASCAdhF0CF_0();
}

- (void)adLockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block
{
  v9 = _Block_copy(block);
  _Block_copy(v9);
  viewCopy = view;
  swift_unknownObjectRetain();
  stateCopy = state;
  selfCopy = self;
  sub_1C1A14268(stateCopy, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (id)metricsActivityForPresentingProductDetailsOfAdLockupView:(id)view inState:(id)state
{
  viewCopy = view;
  stateCopy = state;
  selfCopy = self;
  v9 = _s17PromotedContentUI9AppAdViewC42metricsActivityForPresentingProductDetails2of7inStateSo010ASCMetricsH0CSo011ASCAdLockupF0C_So06ASCAppO0atF_0();

  return v9;
}

- (id)metricsActivityForAdLockupView:(id)view toPerformActionOfOffer:(id)offer inState:(id)state
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  selfCopy = self;
  [objc_msgSend(v5 metricsHelper)];
  swift_unknownObjectRelease();
  v7 = sub_1C1A11B8C();

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  sub_1C198FB8C(0, &qword_1EDE63970);
  selfCopy = self;
  if (sub_1C19CF5B0())
  {
    userInterfaceStyle = 2;
  }

  else
  {
    traitCollection = [(AppAdView *)selfCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  v6 = sub_1C1A3A138();
  [v6 setOverrideUserInterfaceStyle_];
}

@end