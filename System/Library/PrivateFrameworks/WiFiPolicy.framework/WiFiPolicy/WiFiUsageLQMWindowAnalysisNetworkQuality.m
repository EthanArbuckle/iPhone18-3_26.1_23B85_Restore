@interface WiFiUsageLQMWindowAnalysisNetworkQuality
- (id)addDimensionsTo:(id)a3;
@end

@implementation WiFiUsageLQMWindowAnalysisNetworkQuality

- (id)addDimensionsTo:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = WiFiUsageLQMWindowAnalysisNetworkQuality;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v7 addDimensionsTo:v4];
  [v4 addEntriesFromDictionary:self->_networkQualityEventFields];

  return v4;
}

@end