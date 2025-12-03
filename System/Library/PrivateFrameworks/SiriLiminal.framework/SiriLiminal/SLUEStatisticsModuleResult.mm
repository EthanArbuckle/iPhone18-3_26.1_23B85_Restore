@interface SLUEStatisticsModuleResult
- (SLUEStatisticsModuleResult)initWithScore:(float)score;
@end

@implementation SLUEStatisticsModuleResult

- (SLUEStatisticsModuleResult)initWithScore:(float)score
{
  v5.receiver = self;
  v5.super_class = SLUEStatisticsModuleResult;
  result = [(SLUEStatisticsModuleResult *)&v5 init];
  if (result)
  {
    result->_score = score;
  }

  return result;
}

@end