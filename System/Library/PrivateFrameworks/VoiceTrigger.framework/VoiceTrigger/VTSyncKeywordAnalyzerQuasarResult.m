@interface VTSyncKeywordAnalyzerQuasarResult
- (VTSyncKeywordAnalyzerQuasarResult)initWithConfidence:(double)a3;
@end

@implementation VTSyncKeywordAnalyzerQuasarResult

- (VTSyncKeywordAnalyzerQuasarResult)initWithConfidence:(double)a3
{
  v5.receiver = self;
  v5.super_class = VTSyncKeywordAnalyzerQuasarResult;
  result = [(VTSyncKeywordAnalyzerQuasarResult *)&v5 init];
  if (result)
  {
    result->_triggerConfidence = a3;
  }

  return result;
}

@end