@interface PKDateAndTransactionCountPair
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation PKDateAndTransactionCountPair

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
    if (PKEqualObjects())
    {
      v7 = self->_transactionCount == v6->_transactionCount;
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

- (unint64_t)hash
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_date)
  {
    v4[0] = self->_date;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
    PKCombinedHash();
  }

  else
  {
    PKCombinedHash();
  }

  return PKIntegerHash();
}

@end