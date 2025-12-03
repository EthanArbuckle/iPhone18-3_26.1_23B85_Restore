@interface _PPSSQLiteComparisonPredicateIfNull
- (BOOL)isEqual:(id)equal;
- (_PPSSQLiteComparisonPredicateIfNull)initWithProperty:(id)property ifPropertyIsNullValue:(id)value value:(id)a5 comparisonType:(int64_t)type;
- (id)description;
- (id)sqlForEntity:(id)entity;
- (unint64_t)hash;
@end

@implementation _PPSSQLiteComparisonPredicateIfNull

- (_PPSSQLiteComparisonPredicateIfNull)initWithProperty:(id)property ifPropertyIsNullValue:(id)value value:(id)a5 comparisonType:(int64_t)type
{
  propertyCopy = property;
  valueCopy = value;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = _PPSSQLiteComparisonPredicateIfNull;
  v13 = [(PPSSQLiteComparisonPredicate *)&v17 initWithProperty:propertyCopy value:v12 comparisonType:type];
  if (v13)
  {
    if ([valueCopy conformsToProtocol:&unk_2870198A8])
    {
      v14 = [valueCopy copy];
    }

    else
    {
      v14 = valueCopy;
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
  ifPropertyIsNullValue = [(_PPSSQLiteComparisonPredicateIfNull *)self ifPropertyIsNullValue];
  v5 = [ifPropertyIsNullValue hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _PPSSQLiteComparisonPredicateIfNull;
  if ([(PPSSQLiteComparisonPredicate *)&v8 isEqual:equalCopy])
  {
    ifPropertyIsNullValue = self->_ifPropertyIsNullValue;
    if (ifPropertyIsNullValue == equalCopy[4])
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

- (id)sqlForEntity:(id)entity
{
  entityCopy = entity;
  property = [(PPSSQLitePropertyPredicate *)self property];
  v6 = [entityCopy disambiguatedSQLForProperty:property shouldEscape:1];

  v7 = MEMORY[0x277CCACA8];
  _comparisonTypeString = [(PPSSQLiteComparisonPredicate *)self _comparisonTypeString];
  v9 = [v7 stringWithFormat:@"(IFNULL(%@, ?) %@ ?)", v6, _comparisonTypeString];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  property = [(PPSSQLitePropertyPredicate *)self property];
  ifPropertyIsNullValue = self->_ifPropertyIsNullValue;
  _comparisonTypeString = [(PPSSQLiteComparisonPredicate *)self _comparisonTypeString];
  value = [(PPSSQLiteComparisonPredicate *)self value];
  v8 = [v3 stringWithFormat:@"'(%@, %@)' %@ %@", property, ifPropertyIsNullValue, _comparisonTypeString, value];

  return v8;
}

@end