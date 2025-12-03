@interface MarketingPurchaseCoordinator
- (_TtC9SeymourUI28MarketingPurchaseCoordinator)init;
- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation MarketingPurchaseCoordinator

- (_TtC9SeymourUI28MarketingPurchaseCoordinator)init
{
  swift_unknownObjectWeakInit();
  *&self->bag[OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MarketingPurchaseCoordinator();
  return [(MarketingPurchaseCoordinator *)&v4 init];
}

- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_20C0BCB14(requestCopy, sub_20C0BCEF4, v9, &unk_282306A28, sub_20C0BCED8, &block_descriptor_50_0);
}

- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_20C0BCB14(requestCopy, sub_20C0BCDF4, v9, &unk_282306988, sub_20C0BCE64, &block_descriptor_37_2);
}

- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_20C0BCB14(requestCopy, sub_20C0BCEF4, v9, &unk_2823068C0, sub_20C0BCE10, &block_descriptor_182);
}

@end