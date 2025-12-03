@interface PLLibraryScopeConditionDateRange
+ (id)conditionWithSingleQueries:(id)queries criteria:(unsigned __int8)criteria;
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
  query = [v3 query];

  return query;
}

+ (id)conditionWithSingleQueries:(id)queries criteria:(unsigned __int8)criteria
{
  criteriaCopy = criteria;
  queriesCopy = queries;
  v7 = [[self alloc] initWithCriteria:criteriaCopy];
  firstObject = [queriesCopy firstObject];

  dateValue = [firstObject dateValue];
  [v7 setStartDate:dateValue];

  secondDateValue = [firstObject secondDateValue];
  [v7 setEndDate:secondDateValue];

  return v7;
}

@end