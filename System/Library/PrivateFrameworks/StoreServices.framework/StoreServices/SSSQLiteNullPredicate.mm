@interface SSSQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)property;
+ (id)isNullPredicateWithProperty:(id)property;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
@end

@implementation SSSQLiteNullPredicate

+ (id)isNotNullPredicateWithProperty:(id)property
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 0;
  *(v4 + 1) = [property copy];

  return v4;
}

+ (id)isNullPredicateWithProperty:(id)property
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 1;
  *(v4 + 1) = [property copy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v8.receiver = self;
  v8.super_class = SSSQLiteNullPredicate;
  v5 = [(SSSQLitePropertyPredicate *)&v8 isEqual:?];
  if (v5)
  {
    matchesNull = [(SSSQLiteNullPredicate *)self matchesNull];
    LOBYTE(v5) = matchesNull ^ [equal matchesNull] ^ 1;
  }

  return v5;
}

- (id)SQLForEntityClass:(Class)class
{
  v4 = [(objc_class *)class disambiguatedSQLForProperty:[(SSSQLitePropertyPredicate *)self property]];
  v5 = MEMORY[0x1E696AEC0];
  matchesNull = [(SSSQLiteNullPredicate *)self matchesNull];
  v7 = @"IS NOT NULL";
  if (matchesNull)
  {
    v7 = @"IS NULL";
  }

  return [v5 stringWithFormat:@"%@ %@", v4, v7];
}

@end