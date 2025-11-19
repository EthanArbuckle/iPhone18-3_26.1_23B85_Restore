@interface SSSQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)a3;
+ (id)isNullPredicateWithProperty:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
@end

@implementation SSSQLiteNullPredicate

+ (id)isNotNullPredicateWithProperty:(id)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 0;
  *(v4 + 1) = [a3 copy];

  return v4;
}

+ (id)isNullPredicateWithProperty:(id)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 1;
  *(v4 + 1) = [a3 copy];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v8.receiver = self;
  v8.super_class = SSSQLiteNullPredicate;
  v5 = [(SSSQLitePropertyPredicate *)&v8 isEqual:?];
  if (v5)
  {
    v6 = [(SSSQLiteNullPredicate *)self matchesNull];
    LOBYTE(v5) = v6 ^ [a3 matchesNull] ^ 1;
  }

  return v5;
}

- (id)SQLForEntityClass:(Class)a3
{
  v4 = [(objc_class *)a3 disambiguatedSQLForProperty:[(SSSQLitePropertyPredicate *)self property]];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(SSSQLiteNullPredicate *)self matchesNull];
  v7 = @"IS NOT NULL";
  if (v6)
  {
    v7 = @"IS NULL";
  }

  return [v5 stringWithFormat:@"%@ %@", v4, v7];
}

@end