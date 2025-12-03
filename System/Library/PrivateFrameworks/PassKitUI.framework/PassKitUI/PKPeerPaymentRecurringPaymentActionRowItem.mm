@interface PKPeerPaymentRecurringPaymentActionRowItem
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentRecurringPaymentActionRowItem

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_title];
  v6.receiver = self;
  v6.super_class = PKPeerPaymentRecurringPaymentActionRowItem;
  [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v6 hash];
  PKCombinedHash();
  PKIntegerHash();
  v4 = PKIntegerHash();

  return v4;
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
    v9.receiver = self;
    v9.super_class = PKPeerPaymentRecurringPaymentActionRowItem;
    v7 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v9 isEqual:v6]&& PKEqualObjects() && self->_actionInProgress == v6->_actionInProgress && self->_action == v6->_action;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end