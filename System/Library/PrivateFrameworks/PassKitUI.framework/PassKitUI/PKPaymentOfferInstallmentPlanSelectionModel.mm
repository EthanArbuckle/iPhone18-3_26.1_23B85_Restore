@interface PKPaymentOfferInstallmentPlanSelectionModel
+ (id)initForPostPurchaseInstallmentsWithPaymentOffersController:(id)controller criteria:(id)criteria pass:(id)pass fromPushNotification:(BOOL)notification;
- (PKPaymentOfferInstallmentPlanSelectionModel)init;
- (void)startWithCompletionHandler:(id)handler viewChangedHandler:(id)changedHandler;
@end

@implementation PKPaymentOfferInstallmentPlanSelectionModel

+ (id)initForPostPurchaseInstallmentsWithPaymentOffersController:(id)controller criteria:(id)criteria pass:(id)pass fromPushNotification:(BOOL)notification
{
  passCopy = pass;
  v15 = !notification | 0xC0;
  v8 = objc_allocWithZone(swift_getObjCClassMetadata());
  controllerCopy = controller;
  criteriaCopy = criteria;
  v11 = passCopy;
  v12 = sub_1BD8D1EE0(&passCopy, controller, criteria);

  return v12;
}

- (void)startWithCompletionHandler:(id)handler viewChangedHandler:(id)changedHandler
{
  v6 = _Block_copy(handler);
  v7 = _Block_copy(changedHandler);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(swift_allocObject() + 16) = v7;
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  selfCopy = self;
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