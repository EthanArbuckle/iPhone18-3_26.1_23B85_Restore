@interface PKPaymentTransactionIconRequest
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (id)logoURL;
- (unint64_t)hash;
@end

@implementation PKPaymentTransactionIconRequest

- (id)logoURL
{
  transaction = self->_transaction;
  if (transaction)
  {
    v4 = [(PKPaymentTransaction *)transaction merchant];
    v5 = [v4 logoImageURL];
  }

  else
  {
    merchant = self->_merchant;
    if (merchant)
    {
      v5 = [(PKMerchant *)merchant logoImageURL];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (self->_size.width == v4[6] ? (v5 = self->_size.height == v4[7]) : (v5 = 0), v5))
  {
    v7 = *(v4 + 4);
    v8 = self->_cacheKey;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0;
      if (v8 && v9)
      {
        v6 = [(NSString *)v8 isEqualToString:v9];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  [(NSString *)self->_cacheKey hash];
  PKDoubleHash();

  return PKDoubleHash();
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end