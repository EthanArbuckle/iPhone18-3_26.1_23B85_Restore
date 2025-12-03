@interface VTSyncKeywordAnalyzerQuasarResult
- (VTSyncKeywordAnalyzerQuasarResult)initWithConfidence:(double)confidence;
@end

@implementation VTSyncKeywordAnalyzerQuasarResult

- (VTSyncKeywordAnalyzerQuasarResult)initWithConfidence:(double)confidence
{
  v5.receiver = self;
  v5.super_class = VTSyncKeywordAnalyzerQuasarResult;
  result = [(VTSyncKeywordAnalyzerQuasarResult *)&v5 init];
  if (result)
  {
    result->_triggerConfidence = confidence;
  }

  return result;
}

@end