@interface PKPeerPaymentRecurringPaymentDetailRowItem
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentRecurringPaymentDetailRowItem)initWithIdentifier:(id)a3 isEditable:(BOOL)a4 titleColor:(id)a5;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentRecurringPaymentDetailRowItem

- (PKPeerPaymentRecurringPaymentDetailRowItem)initWithIdentifier:(id)a3 isEditable:(BOOL)a4 titleColor:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentRecurringPaymentDetailRowItem;
  v11 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    v12->_isEditable = a4;
    objc_storeStrong(&v12->_titleColor, a5);
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_titleColor];
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
    if (PKEqualObjects() && self->_isEditable == v6[8])
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