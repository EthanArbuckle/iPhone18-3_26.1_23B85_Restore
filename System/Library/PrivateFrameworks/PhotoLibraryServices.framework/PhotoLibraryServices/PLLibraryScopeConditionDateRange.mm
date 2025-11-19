@interface PLLibraryScopeConditionDateRange
+ (id)conditionWithSingleQueries:(id)a3 criteria:(unsigned __int8)a4;
- (id)conditionQuery;
- (id)description;
@end

@implementation PLLibraryScopeConditionDateRange

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  v4 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PLLibraryScopeConditionDateRange;
  v5 = [(PLLibraryScopeCondition *)&v10 description];
  v6 = [v3 stringFromDate:self->_startDate];
  v7 = [v3 stringFromDate:self->_endDate];
  v8 = [v4 stringWithFormat:@"%@, Start date: %@, End date: %@", v5, v6, v7];

  return v8;
}

- (id)conditionQuery
{
  v3 = [objc_alloc(MEMORY[0x1E69BF2C0]) initWithConjunction:0];
  [v3 addDateRangeQueryKey:200 between:self->_startDate and:self->_endDate];
  v4 = [v3 query];

  return v4;
}

+ (id)conditionWithSingleQueries:(id)a3 criteria:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithCriteria:v4];
  v8 = [v6 firstObject];

  v9 = [v8 dateValue];
  [v7 setStartDate:v9];

  v10 = [v8 secondDateValue];
  [v7 setEndDate:v10];

  return v7;
}

@end