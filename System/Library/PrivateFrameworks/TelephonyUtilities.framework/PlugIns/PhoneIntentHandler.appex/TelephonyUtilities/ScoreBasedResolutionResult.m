@interface ScoreBasedResolutionResult
- (ScoreBasedResolutionResult)initWithType:(unint64_t)a3 resolvedEntities:(id)a4 resolutionSummary:(id)a5;
@end

@implementation ScoreBasedResolutionResult

- (ScoreBasedResolutionResult)initWithType:(unint64_t)a3 resolvedEntities:(id)a4 resolutionSummary:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = ScoreBasedResolutionResult;
  v10 = [(ScoreBasedResolutionResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_resolutionResultType = a3;
    v12 = [v8 copy];
    resolvedEntities = v11->_resolvedEntities;
    v11->_resolvedEntities = v12;

    v14 = [v9 copy];
    resolutionSummary = v11->_resolutionSummary;
    v11->_resolutionSummary = v14;
  }

  return v11;
}

@end