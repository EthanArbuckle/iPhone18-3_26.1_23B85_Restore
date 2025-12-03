@interface WiFiUsageLQMWindowAnalysisNetworkQuality
- (id)addDimensionsTo:(id)to;
@end

@implementation WiFiUsageLQMWindowAnalysisNetworkQuality

- (id)addDimensionsTo:(id)to
{
  toCopy = to;
  v7.receiver = self;
  v7.super_class = WiFiUsageLQMWindowAnalysisNetworkQuality;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v7 addDimensionsTo:toCopy];
  [toCopy addEntriesFromDictionary:self->_networkQualityEventFields];

  return toCopy;
}

@end