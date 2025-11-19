@interface _PPSSQLiteComparisonPredicateIfNull
- (BOOL)isEqual:(id)a3;
- (_PPSSQLiteComparisonPredicateIfNull)initWithProperty:(id)a3 ifPropertyIsNullValue:(id)a4 value:(id)a5 comparisonType:(int64_t)a6;
- (id)description;
- (id)sqlForEntity:(id)a3;
- (unint64_t)hash;
@end

@implementation _PPSSQLiteComparisonPredicateIfNull

- (_PPSSQLiteComparisonPredicateIfNull)initWithProperty:(id)a3 ifPropertyIsNullValue:(id)a4 value:(id)a5 comparisonType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = _PPSSQLiteComparisonPredicateIfNull;
  v13 = [(PPSSQLiteComparisonPredicate *)&v17 initWithProperty:v10 value:v12 comparisonType:a6];
  if (v13)
  {
    if ([v11 conformsToProtocol:&unk_2870198A8])
    {
      v14 = [v11 copy];
    }

    else
    {
      v14 = v11;
    }

    ifPropertyIsNullValue = v13->_ifPropertyIsNullValue;
    v13->_ifPropertyIsNullValue = v14;
  }

  return v13;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = _PPSSQLiteComparisonPredicateIfNull;
  v3 = [(PPSSQLiteComparisonPredicate *)&v7 hash];
  v4 = [(_PPSSQLiteComparisonPredicateIfNull *)self ifPropertyIsNullValue];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _PPSSQLiteComparisonPredicateIfNull;
  if ([(PPSSQLiteComparisonPredicate *)&v8 isEqual:v4])
  {
    ifPropertyIsNullValue = self->_ifPropertyIsNullValue;
    if (ifPropertyIsNullValue == v4[4])
    {
      v6 = 1;
    }

    else
    {
      v6 = [ifPropertyIsNullValue isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sqlForEntity:(id)a3
{
  v4 = a3;
  v5 = [(PPSSQLitePropertyPredicate *)self property];
  v6 = [v4 disambiguatedSQLForProperty:v5 shouldEscape:1];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(PPSSQLiteComparisonPredicate *)self _comparisonTypeString];
  v9 = [v7 stringWithFormat:@"(IFNULL(%@, ?) %@ ?)", v6, v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PPSSQLitePropertyPredicate *)self property];
  ifPropertyIsNullValue = self->_ifPropertyIsNullValue;
  v6 = [(PPSSQLiteComparisonPredicate *)self _comparisonTypeString];
  v7 = [(PPSSQLiteComparisonPredicate *)self value];
  v8 = [v3 stringWithFormat:@"'(%@, %@)' %@ %@", v4, ifPropertyIsNullValue, v6, v7];

  return v8;
}

@end