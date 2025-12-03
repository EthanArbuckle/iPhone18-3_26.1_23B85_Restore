@interface PKPaymentTransactionIconRequest
- (BOOL)isEqual:(id)equal;
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
    merchant = [(PKPaymentTransaction *)transaction merchant];
    logoImageURL = [merchant logoImageURL];
  }

  else
  {
    merchant = self->_merchant;
    if (merchant)
    {
      logoImageURL = [(PKMerchant *)merchant logoImageURL];
    }

    else
    {
      logoImageURL = 0;
    }
  }

  return logoImageURL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (self->_size.width == equalCopy[6] ? (v5 = self->_size.height == equalCopy[7]) : (v5 = 0), v5))
  {
    v7 = *(equalCopy + 4);
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