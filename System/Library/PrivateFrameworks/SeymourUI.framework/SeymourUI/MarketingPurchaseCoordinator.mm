@interface MarketingPurchaseCoordinator
- (_TtC9SeymourUI28MarketingPurchaseCoordinator)init;
- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5;
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

- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_20C0BCB14(v11, sub_20C0BCEF4, v9, &unk_282306A28, sub_20C0BCED8, &block_descriptor_50_0);
}

- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_20C0BCB14(v11, sub_20C0BCDF4, v9, &unk_282306988, sub_20C0BCE64, &block_descriptor_37_2);
}

- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_20C0BCB14(v11, sub_20C0BCEF4, v9, &unk_2823068C0, sub_20C0BCE10, &block_descriptor_182);
}

@end