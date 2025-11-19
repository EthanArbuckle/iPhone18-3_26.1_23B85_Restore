@interface PKPaymentPassActionWidgetViewProvider
+ (id)passActionWidgetViewControllerWithViewModel:(id)a3;
- (PKPaymentPassActionWidgetViewProvider)init;
@end

@implementation PKPaymentPassActionWidgetViewProvider

+ (id)passActionWidgetViewControllerWithViewModel:(id)a3
{
  v3 = a3;
  v4 = _s9PassKitUI07PaymentA24ActionWidgetViewProviderC04passefG10Controller9viewModelSo06UIViewJ0CAA0aefgL0C_tFZ_0(v3);

  return v4;
}

- (PKPaymentPassActionWidgetViewProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaymentPassActionWidgetViewProvider();
  return [(PKPaymentPassActionWidgetViewProvider *)&v3 init];
}

@end