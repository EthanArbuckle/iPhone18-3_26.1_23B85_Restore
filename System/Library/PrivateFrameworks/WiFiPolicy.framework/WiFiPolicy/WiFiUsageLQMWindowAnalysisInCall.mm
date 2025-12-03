@interface WiFiUsageLQMWindowAnalysisInCall
- (id)addDimensionsTo:(id)to;
@end

@implementation WiFiUsageLQMWindowAnalysisInCall

- (id)addDimensionsTo:(id)to
{
  toCopy = to;
  v8.receiver = self;
  v8.super_class = WiFiUsageLQMWindowAnalysisInCall;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v8 addDimensionsTo:toCopy];
  [toCopy setObject:self->_status forKeyedSubscript:@"call_status"];
  if (![(NSString *)self->_status isEqualToString:@"Call Start"])
  {
    v6 = [WiFiUsageLQMTransformations getBinTimeIntervalUpTo12h:1 As:self->_duration];
    [toCopy setObject:v6 forKeyedSubscript:@"call_duration"];
  }

  return toCopy;
}

@end