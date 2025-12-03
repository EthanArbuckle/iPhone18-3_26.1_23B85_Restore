@interface PKPaymentPassActionWidgetViewProvider
+ (id)passActionWidgetViewControllerWithViewModel:(id)model;
- (PKPaymentPassActionWidgetViewProvider)init;
@end

@implementation PKPaymentPassActionWidgetViewProvider

+ (id)passActionWidgetViewControllerWithViewModel:(id)model
{
  modelCopy = model;
  v4 = _s9PassKitUI07PaymentA24ActionWidgetViewProviderC04passefG10Controller9viewModelSo06UIViewJ0CAA0aefgL0C_tFZ_0(modelCopy);

  return v4;
}

- (PKPaymentPassActionWidgetViewProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaymentPassActionWidgetViewProvider();
  return [(PKPaymentPassActionWidgetViewProvider *)&v3 init];
}

@end