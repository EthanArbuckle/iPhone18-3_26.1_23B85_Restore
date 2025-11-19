@interface PLLibraryScopeCondition
+ (id)conditionWithSingleQueries:(id)a3 criteria:(unsigned __int8)a4;
+ (void)_abortIfCalledOnBaseClass;
- (PLLibraryScopeCondition)initWithCriteria:(unsigned __int8)a3;
- (id)conditionQuery;
- (id)copyWithZone:(_NSZone *)a3;
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
  v5 = [(PLLibraryScopeCondition *)self type];
  v6 = @"Date Range";
  if (v5 != 1)
  {
    v6 = @"Unknown";
  }

  if (v5 == 2)
  {
    v6 = @"Person";
  }

  v7 = v6;
  v8 = [(PLLibraryScopeCondition *)self criteria];
  v9 = @"Exclusive";
  if (v8 != 2)
  {
    v9 = @"Unknown";
  }

  if (v8 == 1)
  {
    v9 = @"Inclusive";
  }

  v10 = [v3 stringWithFormat:@"%@ - %@, %@", v4, v7, v9];

  return v10;
}

- (id)conditionQuery
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)query
{
  v3 = [(PLLibraryScopeCondition *)self conditionQuery];
  if ([(PLLibraryScopeCondition *)self criteria]== 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E69BF2C0] notQuery:v3];
  }

  v5 = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(PLLibraryScopeCondition *)self conditionQuery];
  v6 = [v5 singleQueries];
  v7 = [v4 conditionWithSingleQueries:v6 criteria:{-[PLLibraryScopeCondition criteria](self, "criteria")}];

  return v7;
}

- (PLLibraryScopeCondition)initWithCriteria:(unsigned __int8)a3
{
  [objc_opt_class() _abortIfCalledOnBaseClass];
  v6.receiver = self;
  v6.super_class = PLLibraryScopeCondition;
  result = [(PLLibraryScopeCondition *)&v6 init];
  if (result)
  {
    result->_criteria = a3;
  }

  return result;
}

- (unsigned)type
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)conditionWithSingleQueries:(id)a3 criteria:(unsigned __int8)a4
{
  v5 = a3;
  v6 = a1;
  v7 = PLAbstractMethodException();
  objc_exception_throw(v7);
}

+ (void)_abortIfCalledOnBaseClass
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = a1;
    v5 = PLAbstractMethodException();
    objc_exception_throw(v5);
  }
}

@end