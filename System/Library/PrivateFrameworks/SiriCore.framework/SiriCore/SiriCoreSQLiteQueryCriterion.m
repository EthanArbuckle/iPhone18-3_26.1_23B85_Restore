@interface SiriCoreSQLiteQueryCriterion
+ (id)andQueryCriterionWithSubcriteria:(id)a3;
+ (id)andQueryCriterionWithSubcriteriaProvider:(id)a3;
+ (id)betweenQueryCriterionWithColumnName:(id)a3 fromValue:(id)a4 toValue:(id)a5 negation:(BOOL)a6;
+ (id)equalToQueryCriterionWithColumnName:(id)a3 value:(id)a4;
+ (id)greaterThanOrEqualToQueryCriterionWithColumnName:(id)a3 value:(id)a4;
+ (id)greaterThanQueryCriterionWithColumnName:(id)a3 value:(id)a4;
+ (id)inQueryCriterionWithColumnName:(id)a3 values:(id)a4 negation:(BOOL)a5;
+ (id)isNullQueryCriterionWithColumnName:(id)a3 negation:(BOOL)a4;
+ (id)isQueryCriterionWithColumnName:(id)a3 value:(id)a4 negation:(BOOL)a5;
+ (id)lessThanOrEqualToQueryCriterionWithColumnName:(id)a3 value:(id)a4;
+ (id)lessThanQueryCriterionWithColumnName:(id)a3 value:(id)a4;
+ (id)likeQueryCriterionWithColumnName:(id)a3 value:(id)a4 negation:(BOOL)a5;
+ (id)notEqualToQueryCriterionWithColumnName:(id)a3 value:(id)a4;
+ (id)orQueryCriterionWithSubcriteria:(id)a3;
+ (id)orQueryCriterionWithSubcriteriaProvider:(id)a3;
- (SiriCoreSQLiteQueryCriterion)initWithColumnName:(id)a3 comparisonOperator:(int64_t)a4 logicalOperator:(int64_t)a5 value:(id)a6 values:(id)a7 subcriteria:(id)a8;
- (SiriCoreSQLiteQueryCriterion)initWithColumnName:(id)a3 comparisonOperator:(int64_t)a4 logicalOperator:(int64_t)a5 value:(id)a6 values:(id)a7 subcriteriaProvider:(id)a8;
@end

@implementation SiriCoreSQLiteQueryCriterion

- (SiriCoreSQLiteQueryCriterion)initWithColumnName:(id)a3 comparisonOperator:(int64_t)a4 logicalOperator:(int64_t)a5 value:(id)a6 values:(id)a7 subcriteriaProvider:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  if (a8)
  {
    a8 = (*(a8 + 2))(a8);
  }

  v17 = [(SiriCoreSQLiteQueryCriterion *)self initWithColumnName:v14 comparisonOperator:a4 logicalOperator:a5 value:v15 values:v16 subcriteria:a8];

  return v17;
}

- (SiriCoreSQLiteQueryCriterion)initWithColumnName:(id)a3 comparisonOperator:(int64_t)a4 logicalOperator:(int64_t)a5 value:(id)a6 values:(id)a7 subcriteria:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = SiriCoreSQLiteQueryCriterion;
  v18 = [(SiriCoreSQLiteQueryCriterion *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    columnName = v18->_columnName;
    v18->_columnName = v19;

    v18->_comparisonOperator = a4;
    v18->_logicalOperator = a5;
    v21 = [v15 copy];
    value = v18->_value;
    v18->_value = v21;

    v23 = [v16 copy];
    values = v18->_values;
    v18->_values = v23;

    v25 = [v17 copy];
    subcriteria = v18->_subcriteria;
    v18->_subcriteria = v25;
  }

  return v18;
}

+ (id)likeQueryCriterionWithColumnName:(id)a3 value:(id)a4 negation:(BOOL)a5
{
  if (a5)
  {
    v6 = 10;
  }

  else
  {
    v6 = 7;
  }

  v7 = a4;
  v8 = a3;
  v9 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v8 comparisonOperator:0 logicalOperator:v6 value:v7 values:0 subcriteria:0];

  return v9;
}

+ (id)isNullQueryCriterionWithColumnName:(id)a3 negation:(BOOL)a4
{
  if (a4)
  {
    v4 = 11;
  }

  else
  {
    v4 = 6;
  }

  v5 = a3;
  v6 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v5 comparisonOperator:0 logicalOperator:v4 value:0 values:0 subcriteria:0];

  return v6;
}

+ (id)isQueryCriterionWithColumnName:(id)a3 value:(id)a4 negation:(BOOL)a5
{
  if (a5)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v7 = a4;
  v8 = a3;
  v9 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v8 comparisonOperator:0 logicalOperator:v6 value:v7 values:0 subcriteria:0];

  return v9;
}

+ (id)inQueryCriterionWithColumnName:(id)a3 values:(id)a4 negation:(BOOL)a5
{
  if (a5)
  {
    v6 = 9;
  }

  else
  {
    v6 = 3;
  }

  v7 = a4;
  v8 = a3;
  v9 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v8 comparisonOperator:0 logicalOperator:v6 value:0 values:v7 subcriteria:0];

  return v9;
}

+ (id)betweenQueryCriterionWithColumnName:(id)a3 fromValue:(id)a4 toValue:(id)a5 negation:(BOOL)a6
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v8 = 8;
  }

  else
  {
    v8 = 2;
  }

  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [SiriCoreSQLiteQueryCriterion alloc];
  v17[0] = v10;
  v17[1] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v14 = [(SiriCoreSQLiteQueryCriterion *)v12 initWithColumnName:v11 comparisonOperator:0 logicalOperator:v8 value:0 values:v13 subcriteria:0];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)orQueryCriterionWithSubcriteriaProvider:(id)a3
{
  v3 = a3;
  v4 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:0 comparisonOperator:0 logicalOperator:12 value:0 values:0 subcriteriaProvider:v3];

  return v4;
}

+ (id)orQueryCriterionWithSubcriteria:(id)a3
{
  v3 = a3;
  v4 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:0 comparisonOperator:0 logicalOperator:12 value:0 values:0 subcriteria:v3];

  return v4;
}

+ (id)andQueryCriterionWithSubcriteriaProvider:(id)a3
{
  v3 = a3;
  v4 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:0 comparisonOperator:0 logicalOperator:1 value:0 values:0 subcriteriaProvider:v3];

  return v4;
}

+ (id)andQueryCriterionWithSubcriteria:(id)a3
{
  v3 = a3;
  v4 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:0 comparisonOperator:0 logicalOperator:1 value:0 values:0 subcriteria:v3];

  return v4;
}

+ (id)notEqualToQueryCriterionWithColumnName:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v6 comparisonOperator:6 logicalOperator:0 value:v5 values:0 subcriteria:0];

  return v7;
}

+ (id)lessThanOrEqualToQueryCriterionWithColumnName:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v6 comparisonOperator:5 logicalOperator:0 value:v5 values:0 subcriteria:0];

  return v7;
}

+ (id)lessThanQueryCriterionWithColumnName:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v6 comparisonOperator:4 logicalOperator:0 value:v5 values:0 subcriteria:0];

  return v7;
}

+ (id)greaterThanOrEqualToQueryCriterionWithColumnName:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v6 comparisonOperator:3 logicalOperator:0 value:v5 values:0 subcriteria:0];

  return v7;
}

+ (id)greaterThanQueryCriterionWithColumnName:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v6 comparisonOperator:2 logicalOperator:0 value:v5 values:0 subcriteria:0];

  return v7;
}

+ (id)equalToQueryCriterionWithColumnName:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:v6 comparisonOperator:1 logicalOperator:0 value:v5 values:0 subcriteria:0];

  return v7;
}

@end