@interface WiFiUsageLQMWindowAnalysisInCall
- (id)addDimensionsTo:(id)a3;
@end

@implementation WiFiUsageLQMWindowAnalysisInCall

- (id)addDimensionsTo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WiFiUsageLQMWindowAnalysisInCall;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v8 addDimensionsTo:v4];
  [v4 setObject:self->_status forKeyedSubscript:@"call_status"];
  if (![(NSString *)self->_status isEqualToString:@"Call Start"])
  {
    v6 = [WiFiUsageLQMTransformations getBinTimeIntervalUpTo12h:1 As:self->_duration];
    [v4 setObject:v6 forKeyedSubscript:@"call_duration"];
  }

  return v4;
}

@end