@interface PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_date];
  [array safelyAddObject:self->_maximumDate];
  [array safelyAddObject:self->_minimumDate];
  v6.receiver = self;
  v6.super_class = PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem;
  [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v6 hash];
  v4 = PKCombinedHash();

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
    v9.super_class = PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem;
    if ([(PKPeerPaymentRecurringPaymentDetailRowItem *)&v9 isEqual:v6]&& PKEqualObjects() && PKEqualObjects())
    {
      v7 = PKEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end