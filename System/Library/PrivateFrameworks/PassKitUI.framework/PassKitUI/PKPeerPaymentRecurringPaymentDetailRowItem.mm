@interface PKPeerPaymentRecurringPaymentDetailRowItem
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentRecurringPaymentDetailRowItem)initWithIdentifier:(id)identifier isEditable:(BOOL)editable titleColor:(id)color;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentRecurringPaymentDetailRowItem

- (PKPeerPaymentRecurringPaymentDetailRowItem)initWithIdentifier:(id)identifier isEditable:(BOOL)editable titleColor:(id)color
{
  identifierCopy = identifier;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentRecurringPaymentDetailRowItem;
  v11 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    v12->_isEditable = editable;
    objc_storeStrong(&v12->_titleColor, color);
  }

  return v12;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_titleColor];
  PKCombinedHash();
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