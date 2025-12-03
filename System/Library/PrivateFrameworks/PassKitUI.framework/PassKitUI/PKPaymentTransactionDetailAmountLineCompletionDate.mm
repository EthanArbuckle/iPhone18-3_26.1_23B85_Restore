@interface PKPaymentTransactionDetailAmountLineCompletionDate
- (NSString)label;
- (PKPaymentTransactionDetailAmountLineCompletionDate)initWithDate:(id)date completed:(BOOL)completed;
@end

@implementation PKPaymentTransactionDetailAmountLineCompletionDate

- (PKPaymentTransactionDetailAmountLineCompletionDate)initWithDate:(id)date completed:(BOOL)completed
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = PKPaymentTransactionDetailAmountLineCompletionDate;
  v8 = [(PKPaymentTransactionDetailAmountLineCompletionDate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_completed = completed;
    objc_storeStrong(&v8->_date, date);
  }

  return v9;
}

- (NSString)label
{
  v2 = PKLocalizedFeatureString();

  return v2;
}

@end