@interface PKPaymentOfferInstallmentPlanSelectionModel
+ (id)initForPostPurchaseInstallmentsWithPaymentOffersController:(id)a3 criteria:(id)a4 pass:(id)a5 fromPushNotification:(BOOL)a6;
- (PKPaymentOfferInstallmentPlanSelectionModel)init;
- (void)startWithCompletionHandler:(id)a3 viewChangedHandler:(id)a4;
@end

@implementation PKPaymentOfferInstallmentPlanSelectionModel

+ (id)initForPostPurchaseInstallmentsWithPaymentOffersController:(id)a3 criteria:(id)a4 pass:(id)a5 fromPushNotification:(BOOL)a6
{
  v14 = a5;
  v15 = !a6 | 0xC0;
  v8 = objc_allocWithZone(swift_getObjCClassMetadata());
  v9 = a3;
  v10 = a4;
  v11 = v14;
  v12 = sub_1BD8D1EE0(&v14, a3, a4);

  return v12;
}

- (void)startWithCompletionHandler:(id)a3 viewChangedHandler:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(swift_allocObject() + 16) = v7;
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  v9 = self;
  sub_1BE04B584();

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BD8D386C;
  *(v10 + 24) = v8;
  sub_1BE048964();
  sub_1BD8C1B80(0, 1, sub_1BD8D4FF0, v10);
}

- (PKPaymentOfferInstallmentPlanSelectionModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end