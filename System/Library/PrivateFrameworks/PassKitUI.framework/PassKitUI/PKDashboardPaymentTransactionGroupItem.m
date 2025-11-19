@interface PKDashboardPaymentTransactionGroupItem
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation PKDashboardPaymentTransactionGroupItem

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_group];
  v4 = PKCombinedHash();

  return v4;
}

@end