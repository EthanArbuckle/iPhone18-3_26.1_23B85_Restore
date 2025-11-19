@interface PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_date];
  [v3 safelyAddObject:self->_maximumDate];
  [v3 safelyAddObject:self->_minimumDate];
  v6.receiver = self;
  v6.super_class = PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem;
  [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v6 hash];
  v4 = PKCombinedHash();

  return v4;
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