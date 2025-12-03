@interface SiriCoreSQLiteQueryCriterion
+ (id)andQueryCriterionWithSubcriteria:(id)subcriteria;
+ (id)andQueryCriterionWithSubcriteriaProvider:(id)provider;
+ (id)betweenQueryCriterionWithColumnName:(id)name fromValue:(id)value toValue:(id)toValue negation:(BOOL)negation;
+ (id)equalToQueryCriterionWithColumnName:(id)name value:(id)value;
+ (id)greaterThanOrEqualToQueryCriterionWithColumnName:(id)name value:(id)value;
+ (id)greaterThanQueryCriterionWithColumnName:(id)name value:(id)value;
+ (id)inQueryCriterionWithColumnName:(id)name values:(id)values negation:(BOOL)negation;
+ (id)isNullQueryCriterionWithColumnName:(id)name negation:(BOOL)negation;
+ (id)isQueryCriterionWithColumnName:(id)name value:(id)value negation:(BOOL)negation;
+ (id)lessThanOrEqualToQueryCriterionWithColumnName:(id)name value:(id)value;
+ (id)lessThanQueryCriterionWithColumnName:(id)name value:(id)value;
+ (id)likeQueryCriterionWithColumnName:(id)name value:(id)value negation:(BOOL)negation;
+ (id)notEqualToQueryCriterionWithColumnName:(id)name value:(id)value;
+ (id)orQueryCriterionWithSubcriteria:(id)subcriteria;
+ (id)orQueryCriterionWithSubcriteriaProvider:(id)provider;
- (SiriCoreSQLiteQueryCriterion)initWithColumnName:(id)name comparisonOperator:(int64_t)operator logicalOperator:(int64_t)logicalOperator value:(id)value values:(id)values subcriteria:(id)subcriteria;
- (SiriCoreSQLiteQueryCriterion)initWithColumnName:(id)name comparisonOperator:(int64_t)operator logicalOperator:(int64_t)logicalOperator value:(id)value values:(id)values subcriteriaProvider:(id)provider;
@end

@implementation SiriCoreSQLiteQueryCriterion

- (SiriCoreSQLiteQueryCriterion)initWithColumnName:(id)name comparisonOperator:(int64_t)operator logicalOperator:(int64_t)logicalOperator value:(id)value values:(id)values subcriteriaProvider:(id)provider
{
  nameCopy = name;
  valueCopy = value;
  valuesCopy = values;
  if (provider)
  {
    provider = (*(provider + 2))(provider);
  }

  v17 = [(SiriCoreSQLiteQueryCriterion *)self initWithColumnName:nameCopy comparisonOperator:operator logicalOperator:logicalOperator value:valueCopy values:valuesCopy subcriteria:provider];

  return v17;
}

- (SiriCoreSQLiteQueryCriterion)initWithColumnName:(id)name comparisonOperator:(int64_t)operator logicalOperator:(int64_t)logicalOperator value:(id)value values:(id)values subcriteria:(id)subcriteria
{
  nameCopy = name;
  valueCopy = value;
  valuesCopy = values;
  subcriteriaCopy = subcriteria;
  v28.receiver = self;
  v28.super_class = SiriCoreSQLiteQueryCriterion;
  v18 = [(SiriCoreSQLiteQueryCriterion *)&v28 init];
  if (v18)
  {
    v19 = [nameCopy copy];
    columnName = v18->_columnName;
    v18->_columnName = v19;

    v18->_comparisonOperator = operator;
    v18->_logicalOperator = logicalOperator;
    v21 = [valueCopy copy];
    value = v18->_value;
    v18->_value = v21;

    v23 = [valuesCopy copy];
    values = v18->_values;
    v18->_values = v23;

    v25 = [subcriteriaCopy copy];
    subcriteria = v18->_subcriteria;
    v18->_subcriteria = v25;
  }

  return v18;
}

+ (id)likeQueryCriterionWithColumnName:(id)name value:(id)value negation:(BOOL)negation
{
  if (negation)
  {
    v6 = 10;
  }

  else
  {
    v6 = 7;
  }

  valueCopy = value;
  nameCopy = name;
  v9 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:0 logicalOperator:v6 value:valueCopy values:0 subcriteria:0];

  return v9;
}

+ (id)isNullQueryCriterionWithColumnName:(id)name negation:(BOOL)negation
{
  if (negation)
  {
    v4 = 11;
  }

  else
  {
    v4 = 6;
  }

  nameCopy = name;
  v6 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:0 logicalOperator:v4 value:0 values:0 subcriteria:0];

  return v6;
}

+ (id)isQueryCriterionWithColumnName:(id)name value:(id)value negation:(BOOL)negation
{
  if (negation)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  valueCopy = value;
  nameCopy = name;
  v9 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:0 logicalOperator:v6 value:valueCopy values:0 subcriteria:0];

  return v9;
}

+ (id)inQueryCriterionWithColumnName:(id)name values:(id)values negation:(BOOL)negation
{
  if (negation)
  {
    v6 = 9;
  }

  else
  {
    v6 = 3;
  }

  valuesCopy = values;
  nameCopy = name;
  v9 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:0 logicalOperator:v6 value:0 values:valuesCopy subcriteria:0];

  return v9;
}

+ (id)betweenQueryCriterionWithColumnName:(id)name fromValue:(id)value toValue:(id)toValue negation:(BOOL)negation
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (negation)
  {
    v8 = 8;
  }

  else
  {
    v8 = 2;
  }

  toValueCopy = toValue;
  valueCopy = value;
  nameCopy = name;
  v12 = [SiriCoreSQLiteQueryCriterion alloc];
  v17[0] = valueCopy;
  v17[1] = toValueCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v14 = [(SiriCoreSQLiteQueryCriterion *)v12 initWithColumnName:nameCopy comparisonOperator:0 logicalOperator:v8 value:0 values:v13 subcriteria:0];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)orQueryCriterionWithSubcriteriaProvider:(id)provider
{
  providerCopy = provider;
  v4 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:0 comparisonOperator:0 logicalOperator:12 value:0 values:0 subcriteriaProvider:providerCopy];

  return v4;
}

+ (id)orQueryCriterionWithSubcriteria:(id)subcriteria
{
  subcriteriaCopy = subcriteria;
  v4 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:0 comparisonOperator:0 logicalOperator:12 value:0 values:0 subcriteria:subcriteriaCopy];

  return v4;
}

+ (id)andQueryCriterionWithSubcriteriaProvider:(id)provider
{
  providerCopy = provider;
  v4 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:0 comparisonOperator:0 logicalOperator:1 value:0 values:0 subcriteriaProvider:providerCopy];

  return v4;
}

+ (id)andQueryCriterionWithSubcriteria:(id)subcriteria
{
  subcriteriaCopy = subcriteria;
  v4 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:0 comparisonOperator:0 logicalOperator:1 value:0 values:0 subcriteria:subcriteriaCopy];

  return v4;
}

+ (id)notEqualToQueryCriterionWithColumnName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:6 logicalOperator:0 value:valueCopy values:0 subcriteria:0];

  return v7;
}

+ (id)lessThanOrEqualToQueryCriterionWithColumnName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:5 logicalOperator:0 value:valueCopy values:0 subcriteria:0];

  return v7;
}

+ (id)lessThanQueryCriterionWithColumnName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:4 logicalOperator:0 value:valueCopy values:0 subcriteria:0];

  return v7;
}

+ (id)greaterThanOrEqualToQueryCriterionWithColumnName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:3 logicalOperator:0 value:valueCopy values:0 subcriteria:0];

  return v7;
}

+ (id)greaterThanQueryCriterionWithColumnName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:2 logicalOperator:0 value:valueCopy values:0 subcriteria:0];

  return v7;
}

+ (id)equalToQueryCriterionWithColumnName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[SiriCoreSQLiteQueryCriterion alloc] initWithColumnName:nameCopy comparisonOperator:1 logicalOperator:0 value:valueCopy values:0 subcriteria:0];

  return v7;
}

@end