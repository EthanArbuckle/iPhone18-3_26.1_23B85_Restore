@interface PKRewardsSummaryChartBarConfiguration
- (PKRewardsSummaryChartBarConfiguration)initWithSummary:(id)summary;
- (double)totalValue;
- (double)valueForSegmentAtIndex:(int64_t)index;
- (id)_valueAtIndex:(int64_t)index;
- (id)colorForSegmentAtIndex:(int64_t)index;
- (unint64_t)_rewardsTierForIndex:(int64_t)index;
@end

@implementation PKRewardsSummaryChartBarConfiguration

- (PKRewardsSummaryChartBarConfiguration)initWithSummary:(id)summary
{
  v16[4] = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  v15.receiver = self;
  v15.super_class = PKRewardsSummaryChartBarConfiguration;
  v6 = [(PKRewardsSummaryChartBarConfiguration *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_summary, summary);
    onePercentTotal = [summaryCopy onePercentTotal];
    v16[0] = onePercentTotal;
    twoPercentTotal = [summaryCopy twoPercentTotal];
    v16[1] = twoPercentTotal;
    threePercentTotal = [summaryCopy threePercentTotal];
    v16[2] = threePercentTotal;
    specialTotal = [summaryCopy specialTotal];
    v16[3] = specialTotal;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
    tierAmounts = v7->_tierAmounts;
    v7->_tierAmounts = v12;
  }

  return v7;
}

- (double)totalValue
{
  totalAmount = [(PKAccountRewardsTierSummary *)self->_summary totalAmount];
  [totalAmount doubleValue];
  v4 = v3;

  return v4;
}

- (double)valueForSegmentAtIndex:(int64_t)index
{
  v3 = [(PKRewardsSummaryChartBarConfiguration *)self _valueAtIndex:index];
  [v3 doubleValue];
  v4 = 0.0;
  if (v5 >= 0.0)
  {
    [v3 doubleValue];
    v4 = v6;
  }

  return v4;
}

- (id)colorForSegmentAtIndex:(int64_t)index
{
  v3 = [(PKRewardsSummaryChartBarConfiguration *)self _rewardsTierForIndex:index];

  return PKColorForRewardsTier(v3);
}

- (id)_valueAtIndex:(int64_t)index
{
  if ([(PKRewardsSummaryChartBarConfiguration *)self numberOfSegments]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_tierAmounts objectAtIndex:index];
  }

  return v5;
}

- (unint64_t)_rewardsTierForIndex:(int64_t)index
{
  if (index < 4)
  {
    return index + 1;
  }

  else
  {
    return 0;
  }
}

@end