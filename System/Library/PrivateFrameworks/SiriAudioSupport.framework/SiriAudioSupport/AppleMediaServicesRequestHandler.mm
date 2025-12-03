@interface AppleMediaServicesRequestHandler
- (_TtC16SiriAudioSupportP33_803E311218F114B89697FFF1DFF8ED2632AppleMediaServicesRequestHandler)init;
- (void)handleAuthenticateRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion;
- (void)handleDialogRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion;
- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation AppleMediaServicesRequestHandler

- (void)handleAuthenticateRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  requestCopy = request;
  purchaseCopy = purchase;
  queueCopy = queue;
  selfCopy = self;
  sub_266331CAC(requestCopy, sub_26633282C, v11, "AppleMediaServicesProvider#purchaseItem handle authenticateRequest", &block_descriptor_28_0);
}

- (void)handleDialogRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  requestCopy = request;
  purchaseCopy = purchase;
  queueCopy = queue;
  selfCopy = self;
  sub_2663317E0(requestCopy, sub_2663324DC, v11);
}

- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_266331A64(v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_266331CAC(requestCopy, sub_26633282C, v9, "AppleMediaServicesProvider#purchaseItem purchase handle authenticateRequest", &block_descriptor_10);
}

- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_266331F3C(requestCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC16SiriAudioSupportP33_803E311218F114B89697FFF1DFF8ED2632AppleMediaServicesRequestHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppleMediaServicesRequestHandler();
  return [(AppleMediaServicesRequestHandler *)&v3 init];
}

@end