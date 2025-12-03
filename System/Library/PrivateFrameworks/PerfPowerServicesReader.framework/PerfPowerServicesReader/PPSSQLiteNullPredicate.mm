@interface PPSSQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)property;
+ (id)isNullPredicateWithProperty:(id)property;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)sqlForEntity:(id)entity;
@end

@implementation PPSSQLiteNullPredicate

+ (id)isNotNullPredicateWithProperty:(id)property
{
  propertyCopy = property;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [propertyCopy copy];
  v6 = v4[1];
  v4[1] = v5;

  *(v4 + 16) = 0;

  return v4;
}

+ (id)isNullPredicateWithProperty:(id)property
{
  propertyCopy = property;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [propertyCopy copy];
  v6 = v4[1];
  v4[1] = v5;

  *(v4 + 16) = 1;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = PPSSQLiteNullPredicate;
  if ([(PPSSQLitePropertyPredicate *)&v8 isEqual:equalCopy])
  {
    matchesNull = [(PPSSQLiteNullPredicate *)self matchesNull];
    v6 = matchesNull ^ [equalCopy matchesNull] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)sqlForEntity:(id)entity
{
  entityCopy = entity;
  property = [(PPSSQLitePropertyPredicate *)self property];
  v6 = [entityCopy disambiguatedSQLForProperty:property shouldEscape:1];

  v7 = MEMORY[0x277CCACA8];
  matchesNull = [(PPSSQLiteNullPredicate *)self matchesNull];
  v9 = @"IS NOT NULL";
  if (matchesNull)
  {
    v9 = @"IS NULL";
  }

  v10 = [v7 stringWithFormat:@"(%@ %@)", v6, v9];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  property = [(PPSSQLitePropertyPredicate *)self property];
  v5 = property;
  if (self->_matchesNull)
  {
    v6 = "";
  }

  else
  {
    v6 = "NOT ";
  }

  v7 = [v3 stringWithFormat:@"'%@' IS %sNULL", property, v6];

  return v7;
}

@end