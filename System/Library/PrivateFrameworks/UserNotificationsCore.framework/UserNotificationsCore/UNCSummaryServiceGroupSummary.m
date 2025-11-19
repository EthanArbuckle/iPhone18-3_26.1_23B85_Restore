@interface UNCSummaryServiceGroupSummary
- (UNCSummaryServiceGroupSummary)initWithSpotlightIdentifier:(id)a3 threadSummary:(id)a4;
@end

@implementation UNCSummaryServiceGroupSummary

- (UNCSummaryServiceGroupSummary)initWithSpotlightIdentifier:(id)a3 threadSummary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UNCSummaryServiceGroupSummary;
  v8 = [(UNCSummaryServiceGroupSummary *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    spotlightIdentifier = v8->_spotlightIdentifier;
    v8->_spotlightIdentifier = v9;

    v11 = [v7 copy];
    threadSummary = v8->_threadSummary;
    v8->_threadSummary = v11;
  }

  return v8;
}

@end