@interface PKTransactionHistoryHeaderItem
- (BOOL)isEqual:(id)equal;
- (PKTransactionHistoryHeaderItem)initWithType:(unint64_t)type;
@end

@implementation PKTransactionHistoryHeaderItem

- (PKTransactionHistoryHeaderItem)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryHeaderItem;
  result = [(PKTransactionHistoryHeaderItem *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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