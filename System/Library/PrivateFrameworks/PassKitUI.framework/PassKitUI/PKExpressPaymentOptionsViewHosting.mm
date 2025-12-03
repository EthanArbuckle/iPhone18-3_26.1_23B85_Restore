@interface PKExpressPaymentOptionsViewHosting
+ (id)createExpressPaymentOptionsViewHostingControllerWithPass:(id)pass eligibleExpressUpgradeRequests:(id)requests currentExpressPassInfo:(id)info updateExpressStateHandler:(id)handler;
- (PKExpressPaymentOptionsViewHosting)init;
@end

@implementation PKExpressPaymentOptionsViewHosting

+ (id)createExpressPaymentOptionsViewHostingControllerWithPass:(id)pass eligibleExpressUpgradeRequests:(id)requests currentExpressPassInfo:(id)info updateExpressStateHandler:(id)handler
{
  v7 = _Block_copy(handler);
  sub_1BD0E5E8C(0, &qword_1EBD42660);
  v8 = sub_1BE052744();
  *(swift_allocObject() + 16) = v7;
  sub_1BD3421EC(pass, v8);

  sub_1BE051694();
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425D8));
  v10 = sub_1BE04F894();

  return v10;
}

- (PKExpressPaymentOptionsViewHosting)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExpressPaymentOptionsViewHosting();
  return [(PKExpressPaymentOptionsViewHosting *)&v3 init];
}

@end