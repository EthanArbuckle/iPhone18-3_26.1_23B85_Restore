@interface WiFiUsageLQMWindowAnalysisJoin
- (id)addDimensionsTo:(id)to;
@end

@implementation WiFiUsageLQMWindowAnalysisJoin

- (id)addDimensionsTo:(id)to
{
  toCopy = to;
  v7.receiver = self;
  v7.super_class = WiFiUsageLQMWindowAnalysisJoin;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v7 addDimensionsTo:toCopy];
  [toCopy setObject:self->_joinReason forKeyedSubscript:@"join_reason"];

  return toCopy;
}

@end