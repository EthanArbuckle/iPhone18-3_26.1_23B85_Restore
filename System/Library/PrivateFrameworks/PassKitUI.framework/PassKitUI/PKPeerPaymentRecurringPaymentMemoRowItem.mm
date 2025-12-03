@interface PKPeerPaymentRecurringPaymentMemoRowItem
- (BOOL)hasIcon;
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentRecurringPaymentMemoRowItem)initWithIdentifier:(id)identifier isEditable:(BOOL)editable titleColor:(id)color;
- (unint64_t)hash;
- (void)setMemo:(id)memo;
@end

@implementation PKPeerPaymentRecurringPaymentMemoRowItem

- (PKPeerPaymentRecurringPaymentMemoRowItem)initWithIdentifier:(id)identifier isEditable:(BOOL)editable titleColor:(id)color
{
  v9.receiver = self;
  v9.super_class = PKPeerPaymentRecurringPaymentMemoRowItem;
  v5 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v9 initWithIdentifier:identifier isEditable:editable titleColor:color];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
    memo = v5->_memo;
    v5->_memo = v6;
  }

  return v5;
}

- (void)setMemo:(id)memo
{
  memoCopy = memo;
  v7 = memoCopy;
  if (memoCopy)
  {
    v5 = memoCopy;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
  }

  memo = self->_memo;
  self->_memo = v5;
}

- (BOOL)hasIcon
{
  emoji = [(PKPeerPaymentRecurringPaymentMemo *)self->_memo emoji];
  if ([emoji length])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(PKPeerPaymentRecurringPaymentMemo *)self->_memo color]!= 0;
  }

  return v4;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_memo];
  [array safelyAddObject:self->_suggestedText];
  v6.receiver = self;
  v6.super_class = PKPeerPaymentRecurringPaymentMemoRowItem;
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
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v14.receiver = self;
    v14.super_class = PKPeerPaymentRecurringPaymentMemoRowItem;
    if ([(PKPeerPaymentRecurringPaymentDetailRowItem *)&v14 isEqual:v6]&& PKEqualObjects())
    {
      suggestedText = self->_suggestedText;
      v8 = v6->_suggestedText;
      v9 = suggestedText;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [(NSString *)v9 isEqualToString:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end