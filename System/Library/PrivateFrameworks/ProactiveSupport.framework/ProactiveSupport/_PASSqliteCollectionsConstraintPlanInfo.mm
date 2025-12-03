@interface _PASSqliteCollectionsConstraintPlanInfo
- (_PASSqliteCollectionsConstraintPlanInfo)initWithEstimatedRows:(double)rows estimatedCost:(double)cost unique:(BOOL)unique omit:(BOOL)omit;
@end

@implementation _PASSqliteCollectionsConstraintPlanInfo

- (_PASSqliteCollectionsConstraintPlanInfo)initWithEstimatedRows:(double)rows estimatedCost:(double)cost unique:(BOOL)unique omit:(BOOL)omit
{
  v11.receiver = self;
  v11.super_class = _PASSqliteCollectionsConstraintPlanInfo;
  result = [(_PASSqliteCollectionsConstraintPlanInfo *)&v11 init];
  if (result)
  {
    result->_estimatedRows = rows;
    result->_estimatedCost = cost;
    result->_unique = unique;
    result->_omit = omit;
  }

  return result;
}

@end