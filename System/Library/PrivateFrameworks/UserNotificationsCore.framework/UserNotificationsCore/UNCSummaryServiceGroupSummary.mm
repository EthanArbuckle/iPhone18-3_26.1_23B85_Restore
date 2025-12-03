@interface UNCSummaryServiceGroupSummary
- (UNCSummaryServiceGroupSummary)initWithSpotlightIdentifier:(id)identifier threadSummary:(id)summary;
@end

@implementation UNCSummaryServiceGroupSummary

- (UNCSummaryServiceGroupSummary)initWithSpotlightIdentifier:(id)identifier threadSummary:(id)summary
{
  identifierCopy = identifier;
  summaryCopy = summary;
  v14.receiver = self;
  v14.super_class = UNCSummaryServiceGroupSummary;
  v8 = [(UNCSummaryServiceGroupSummary *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    spotlightIdentifier = v8->_spotlightIdentifier;
    v8->_spotlightIdentifier = v9;

    v11 = [summaryCopy copy];
    threadSummary = v8->_threadSummary;
    v8->_threadSummary = v11;
  }

  return v8;
}

@end