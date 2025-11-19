@interface PKPeerPaymentRecurringPaymentMemoRowItem
- (BOOL)hasIcon;
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentRecurringPaymentMemoRowItem)initWithIdentifier:(id)a3 isEditable:(BOOL)a4 titleColor:(id)a5;
- (unint64_t)hash;
- (void)setMemo:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentMemoRowItem

- (PKPeerPaymentRecurringPaymentMemoRowItem)initWithIdentifier:(id)a3 isEditable:(BOOL)a4 titleColor:(id)a5
{
  v9.receiver = self;
  v9.super_class = PKPeerPaymentRecurringPaymentMemoRowItem;
  v5 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)&v9 initWithIdentifier:a3 isEditable:a4 titleColor:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
    memo = v5->_memo;
    v5->_memo = v6;
  }

  return v5;
}

- (void)setMemo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
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
  v3 = [(PKPeerPaymentRecurringPaymentMemo *)self->_memo emoji];
  if ([v3 length])
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_memo];
  [v3 safelyAddObject:self->_suggestedText];
  v6.receiver = self;
  v6.super_class = PKPeerPaymentRecurringPaymentMemoRowItem;
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
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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