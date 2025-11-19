@interface PKPeerPaymentRecurringPaymentDateDetailRowItem
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentRecurringPaymentDateDetailRowItem

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_date];
  v6.receiver = self;
  v6.super_class = PKPeerPaymentRecurringPaymentDateDetailRowItem;
  [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v6 hash];
  PKCombinedHash();
  v4 = PKIntegerHash();

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
    v9.super_class = PKPeerPaymentRecurringPaymentDateDetailRowItem;
    v7 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v9 isEqual:v6]&& PKEqualObjects() && PKEqualObjects() && self->_isSelected == v6[40];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end