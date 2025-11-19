@interface WiFiUsageLQMWindowAnalysisJoin
- (id)addDimensionsTo:(id)a3;
@end

@implementation WiFiUsageLQMWindowAnalysisJoin

- (id)addDimensionsTo:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = WiFiUsageLQMWindowAnalysisJoin;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v7 addDimensionsTo:v4];
  [v4 setObject:self->_joinReason forKeyedSubscript:@"join_reason"];

  return v4;
}

@end