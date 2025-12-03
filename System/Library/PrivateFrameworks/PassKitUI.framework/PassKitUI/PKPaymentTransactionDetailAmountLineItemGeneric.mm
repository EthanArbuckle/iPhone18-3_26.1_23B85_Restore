@interface PKPaymentTransactionDetailAmountLineItemGeneric
- (PKPaymentTransactionDetailAmountLineItemGeneric)initWithLabel:(id)label value:(id)value;
@end

@implementation PKPaymentTransactionDetailAmountLineItemGeneric

- (PKPaymentTransactionDetailAmountLineItemGeneric)initWithLabel:(id)label value:(id)value
{
  labelCopy = label;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = PKPaymentTransactionDetailAmountLineItemGeneric;
  v8 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)&v14 init];
  if (v8)
  {
    v9 = [labelCopy copy];
    label = v8->_label;
    v8->_label = v9;

    v11 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

@end