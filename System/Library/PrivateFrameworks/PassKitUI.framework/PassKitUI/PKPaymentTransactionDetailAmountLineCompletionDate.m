@interface PKPaymentTransactionDetailAmountLineCompletionDate
- (NSString)label;
- (PKPaymentTransactionDetailAmountLineCompletionDate)initWithDate:(id)a3 completed:(BOOL)a4;
@end

@implementation PKPaymentTransactionDetailAmountLineCompletionDate

- (PKPaymentTransactionDetailAmountLineCompletionDate)initWithDate:(id)a3 completed:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentTransactionDetailAmountLineCompletionDate;
  v8 = [(PKPaymentTransactionDetailAmountLineCompletionDate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_completed = a4;
    objc_storeStrong(&v8->_date, a3);
  }

  return v9;
}

- (NSString)label
{
  v2 = PKLocalizedFeatureString();

  return v2;
}

@end