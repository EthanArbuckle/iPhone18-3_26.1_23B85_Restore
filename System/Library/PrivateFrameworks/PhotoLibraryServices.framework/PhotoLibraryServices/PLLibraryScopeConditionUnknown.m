@interface PLLibraryScopeConditionUnknown
+ (id)conditionWithSingleQueries:(id)a3 criteria:(unsigned __int8)a4;
- (id)conditionQuery;
@end

@implementation PLLibraryScopeConditionUnknown

+ (id)conditionWithSingleQueries:(id)a3 criteria:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithCriteria:v4];
  [v7 setUnknownSingleQueries:v6];

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