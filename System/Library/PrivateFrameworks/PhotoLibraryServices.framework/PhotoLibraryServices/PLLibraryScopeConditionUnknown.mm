@interface PLLibraryScopeConditionUnknown
+ (id)conditionWithSingleQueries:(id)queries criteria:(unsigned __int8)criteria;
- (id)conditionQuery;
@end

@implementation PLLibraryScopeConditionUnknown

+ (id)conditionWithSingleQueries:(id)queries criteria:(unsigned __int8)criteria
{
  criteriaCopy = criteria;
  queriesCopy = queries;
  v7 = [[self alloc] initWithCriteria:criteriaCopy];
  [v7 setUnknownSingleQueries:queriesCopy];

  return v7;
}

- (id)conditionQuery
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF2B8]);
  [v3 setConjunction:0];
  v4 = [(NSArray *)self->_unknownSingleQueries mutableCopy];
  [v3 setSingleQueries:v4];

  return v3;
}

@end