@interface PKPaymentTransactionDetailAmountLineItemReceipt
- (NSString)value;
- (PKPaymentTransactionDetailAmountLineItemReceipt)initWithReceiptLineItem:(id)a3;
- (UIImage)image;
@end

@implementation PKPaymentTransactionDetailAmountLineItemReceipt

- (PKPaymentTransactionDetailAmountLineItemReceipt)initWithReceiptLineItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionDetailAmountLineItemReceipt;
  v6 = [(PKPaymentTransactionDetailAmountLineItemReceipt *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineItem, a3);
  }

  return v7;
}

- (NSString)value
{
  v2 = [(PKTransactionReceiptLineItem *)self->_lineItem currencyAmount];
  v3 = [v2 formattedStringValue];

  return v3;
}

- (UIImage)image
{
  v2 = [(PKTransactionReceiptLineItem *)self->_lineItem image];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end