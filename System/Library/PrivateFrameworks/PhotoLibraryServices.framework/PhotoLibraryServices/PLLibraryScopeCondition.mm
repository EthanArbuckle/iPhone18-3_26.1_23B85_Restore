@interface PLLibraryScopeCondition
+ (id)conditionWithSingleQueries:(id)queries criteria:(unsigned __int8)criteria;
+ (void)_abortIfCalledOnBaseClass;
- (PLLibraryScopeCondition)initWithCriteria:(unsigned __int8)criteria;
- (id)conditionQuery;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)query;
- (unsigned)type;
@end

@implementation PLLibraryScopeCondition

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = PLLibraryScopeCondition;
  v4 = [(PLLibraryScopeCondition *)&v12 description];
  type = [(PLLibraryScopeCondition *)self type];
  v6 = @"Date Range";
  if (type != 1)
  {
    v6 = @"Unknown";
  }

  if (type == 2)
  {
    v6 = @"Person";
  }

  v7 = v6;
  criteria = [(PLLibraryScopeCondition *)self criteria];
  v9 = @"Exclusive";
  if (criteria != 2)
  {
    v9 = @"Unknown";
  }

  if (criteria == 1)
  {
    v9 = @"Inclusive";
  }

  v10 = [v3 stringWithFormat:@"%@ - %@, %@", v4, v7, v9];

  return v10;
}

- (id)conditionQuery
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)query
{
  conditionQuery = [(PLLibraryScopeCondition *)self conditionQuery];
  if ([(PLLibraryScopeCondition *)self criteria]== 1)
  {
    v4 = conditionQuery;
  }

  else
  {
    v4 = [MEMORY[0x1E69BF2C0] notQuery:conditionQuery];
  }

  v5 = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  conditionQuery = [(PLLibraryScopeCondition *)self conditionQuery];
  singleQueries = [conditionQuery singleQueries];
  v7 = [v4 conditionWithSingleQueries:singleQueries criteria:{-[PLLibraryScopeCondition criteria](self, "criteria")}];

  return v7;
}

- (PLLibraryScopeCondition)initWithCriteria:(unsigned __int8)criteria
{
  [objc_opt_class() _abortIfCalledOnBaseClass];
  v6.receiver = self;
  v6.super_class = PLLibraryScopeCondition;
  result = [(PLLibraryScopeCondition *)&v6 init];
  if (result)
  {
    result->_criteria = criteria;
  }

  return result;
}

- (unsigned)type
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)conditionWithSingleQueries:(id)queries criteria:(unsigned __int8)criteria
{
  queriesCopy = queries;
  selfCopy = self;
  v7 = PLAbstractMethodException();
  objc_exception_throw(v7);
}

+ (void)_abortIfCalledOnBaseClass
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    selfCopy = self;
    v5 = PLAbstractMethodException();
    objc_exception_throw(v5);
  }
}

@end