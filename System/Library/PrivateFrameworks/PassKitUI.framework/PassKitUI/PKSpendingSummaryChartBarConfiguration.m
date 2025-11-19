@interface PKSpendingSummaryChartBarConfiguration
- (PKSpendingSummaryChartBarConfiguration)initWithSummary:(id)a3;
- (double)totalValue;
- (double)valueForSegmentAtIndex:(int64_t)a3;
- (id)_categoryAtIndex:(int64_t)a3;
- (id)colorForSegmentAtIndex:(int64_t)a3;
- (void)_configureWithSummary:(id)a3;
@end

@implementation PKSpendingSummaryChartBarConfiguration

- (PKSpendingSummaryChartBarConfiguration)initWithSummary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKSpendingSummaryChartBarConfiguration;
  v6 = [(PKSpendingSummaryChartBarConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_summary, a3);
    [(PKSpendingSummaryChartBarConfiguration *)v7 _configureWithSummary:v5];
  }

  return v7;
}

- (void)_configureWithSummary:(id)a3
{
  v6 = [a3 orderedSpendingCategories];
  v4 = [v6 sortedArrayUsingComparator:&__block_literal_global_184];
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
  v2 = [(PKSpendingSummary *)self->_summary totalSpending];
  v3 = [v2 amount];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)valueForSegmentAtIndex:(int64_t)a3
{
  v3 = [(PKSpendingSummaryChartBarConfiguration *)self _categoryAtIndex:a3];
  v4 = [v3 totalAmount];
  v5 = [v4 amount];
  [v5 doubleValue];
  v6 = 0.0;
  if (v7 >= 0.0)
  {
    v8 = [v3 totalAmount];
    v9 = [v8 amount];
    [v9 doubleValue];
    v6 = v10;
  }

  return v6;
}

- (id)colorForSegmentAtIndex:(int64_t)a3
{
  v3 = [(PKSpendingSummaryChartBarConfiguration *)self _categoryAtIndex:a3];
  [v3 merchantCategory];
  v4 = PKBrightColorForMerchantCategory();

  return v4;
}

- (id)_categoryAtIndex:(int64_t)a3
{
  if ([(PKSpendingSummaryChartBarConfiguration *)self numberOfSegments]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_orderedCategories objectAtIndex:a3];
  }

  return v5;
}

@end