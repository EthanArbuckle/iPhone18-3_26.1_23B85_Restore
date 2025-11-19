@interface PKTransactionHistoryHeaderItem
- (BOOL)isEqual:(id)a3;
- (PKTransactionHistoryHeaderItem)initWithType:(unint64_t)a3;
@end

@implementation PKTransactionHistoryHeaderItem

- (PKTransactionHistoryHeaderItem)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryHeaderItem;
  result = [(PKTransactionHistoryHeaderItem *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = self->_type == v6->_type && PKEqualObjects() && self->_showDetailedPropertyLocation == v6->_showDetailedPropertyLocation && PKEqualObjects() && PKEqualObjects() && self->_category == v6->_category && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && self->_historyCount == v6->_historyCount && self->_transactionType == v6->_transactionType && PKEqualObjects() && self->_featureIdentifier == v6->_featureIdentifier;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end