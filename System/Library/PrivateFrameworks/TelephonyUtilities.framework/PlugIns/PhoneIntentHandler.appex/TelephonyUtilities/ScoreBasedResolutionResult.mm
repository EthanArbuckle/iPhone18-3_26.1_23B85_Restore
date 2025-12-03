@interface ScoreBasedResolutionResult
- (ScoreBasedResolutionResult)initWithType:(unint64_t)type resolvedEntities:(id)entities resolutionSummary:(id)summary;
@end

@implementation ScoreBasedResolutionResult

- (ScoreBasedResolutionResult)initWithType:(unint64_t)type resolvedEntities:(id)entities resolutionSummary:(id)summary
{
  entitiesCopy = entities;
  summaryCopy = summary;
  v17.receiver = self;
  v17.super_class = ScoreBasedResolutionResult;
  v10 = [(ScoreBasedResolutionResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_resolutionResultType = type;
    v12 = [entitiesCopy copy];
    resolvedEntities = v11->_resolvedEntities;
    v11->_resolvedEntities = v12;

    v14 = [summaryCopy copy];
    resolutionSummary = v11->_resolutionSummary;
    v11->_resolutionSummary = v14;
  }

  return v11;
}

@end