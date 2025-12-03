@interface PKSpendingSummaryChartBarConfiguration
- (PKSpendingSummaryChartBarConfiguration)initWithSummary:(id)summary;
- (double)totalValue;
- (double)valueForSegmentAtIndex:(int64_t)index;
- (id)_categoryAtIndex:(int64_t)index;
- (id)colorForSegmentAtIndex:(int64_t)index;
- (void)_configureWithSummary:(id)summary;
@end

@implementation PKSpendingSummaryChartBarConfiguration

- (PKSpendingSummaryChartBarConfiguration)initWithSummary:(id)summary
{
  summaryCopy = summary;
  v9.receiver = self;
  v9.super_class = PKSpendingSummaryChartBarConfiguration;
  v6 = [(PKSpendingSummaryChartBarConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_summary, summary);
    [(PKSpendingSummaryChartBarConfiguration *)v7 _configureWithSummary:summaryCopy];
  }

  return v7;
}

- (void)_configureWithSummary:(id)summary
{
  orderedSpendingCategories = [summary orderedSpendingCategories];
  v4 = [orderedSpendingCategories sortedArrayUsingComparator:&__block_literal_global_184];
  orderedCategories = self->_orderedCategories;
  self->_orderedCategories = v4;
}

uint64_t __64__PKSpendingSummaryChartBarConfiguration__configureWithSummary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = MerchantCategoryOrderIndex([a2 merchantCategory]);
  v6 = [v4 merchantCategory];

  v7 = MerchantCategoryOrderIndex(v6);
  if (v5 < v7)
  {
    return -1;
  }

  else
  {
    return v5 > v7;
  }
}

- (double)totalValue
{
  totalSpending = [(PKSpendingSummary *)self->_summary totalSpending];
  amount = [totalSpending amount];
  [amount doubleValue];
  v5 = v4;

  return v5;
}

- (double)valueForSegmentAtIndex:(int64_t)index
{
  v3 = [(PKSpendingSummaryChartBarConfiguration *)self _categoryAtIndex:index];
  totalAmount = [v3 totalAmount];
  amount = [totalAmount amount];
  [amount doubleValue];
  v6 = 0.0;
  if (v7 >= 0.0)
  {
    totalAmount2 = [v3 totalAmount];
    amount2 = [totalAmount2 amount];
    [amount2 doubleValue];
    v6 = v10;
  }

  return v6;
}

- (id)colorForSegmentAtIndex:(int64_t)index
{
  v3 = [(PKSpendingSummaryChartBarConfiguration *)self _categoryAtIndex:index];
  [v3 merchantCategory];
  v4 = PKBrightColorForMerchantCategory();

  return v4;
}

- (id)_categoryAtIndex:(int64_t)index
{
  if ([(PKSpendingSummaryChartBarConfiguration *)self numberOfSegments]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_orderedCategories objectAtIndex:index];
  }

  return v5;
}

@end