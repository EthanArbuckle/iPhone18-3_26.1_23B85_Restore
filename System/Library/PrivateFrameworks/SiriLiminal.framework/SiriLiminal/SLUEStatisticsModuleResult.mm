@interface SLUEStatisticsModuleResult
- (SLUEStatisticsModuleResult)initWithScore:(float)a3;
@end

@implementation SLUEStatisticsModuleResult

- (SLUEStatisticsModuleResult)initWithScore:(float)a3
{
  v5.receiver = self;
  v5.super_class = SLUEStatisticsModuleResult;
  result = [(SLUEStatisticsModuleResult *)&v5 init];
  if (result)
  {
    result->_score = a3;
  }

  return result;
}

@end