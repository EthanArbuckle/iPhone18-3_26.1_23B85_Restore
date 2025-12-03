@interface PKDashboardSpendingSummaryItem
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation PKDashboardSpendingSummaryItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  [v3 safelyAddObject:self->_spendingSummary];
  v4 = PKCombinedHash();

  return v4;
}

@end