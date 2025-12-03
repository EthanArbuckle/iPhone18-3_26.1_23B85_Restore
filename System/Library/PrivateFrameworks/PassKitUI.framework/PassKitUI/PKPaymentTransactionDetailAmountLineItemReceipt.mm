@interface PKPaymentTransactionDetailAmountLineItemReceipt
- (NSString)value;
- (PKPaymentTransactionDetailAmountLineItemReceipt)initWithReceiptLineItem:(id)item;
- (UIImage)image;
@end

@implementation PKPaymentTransactionDetailAmountLineItemReceipt

- (PKPaymentTransactionDetailAmountLineItemReceipt)initWithReceiptLineItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionDetailAmountLineItemReceipt;
  v6 = [(PKPaymentTransactionDetailAmountLineItemReceipt *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineItem, item);
  }

  return v7;
}

- (NSString)value
{
  currencyAmount = [(PKTransactionReceiptLineItem *)self->_lineItem currencyAmount];
  formattedStringValue = [currencyAmount formattedStringValue];

  return formattedStringValue;
}

- (UIImage)image
{
  image = [(PKTransactionReceiptLineItem *)self->_lineItem image];
  if (image)
  {
    v3 = [MEMORY[0x1E69DCAB8] imageWithPKImage:image];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end