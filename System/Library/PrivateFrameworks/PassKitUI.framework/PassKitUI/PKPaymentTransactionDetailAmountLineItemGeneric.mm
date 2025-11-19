@interface PKPaymentTransactionDetailAmountLineItemGeneric
- (PKPaymentTransactionDetailAmountLineItemGeneric)initWithLabel:(id)a3 value:(id)a4;
@end

@implementation PKPaymentTransactionDetailAmountLineItemGeneric

- (PKPaymentTransactionDetailAmountLineItemGeneric)initWithLabel:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PKPaymentTransactionDetailAmountLineItemGeneric;
  v8 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    label = v8->_label;
    v8->_label = v9;

    v11 = [v7 copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

@end