@interface SQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)a3;
+ (id)isNullPredicateWithProperty:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
@end

@implementation SQLiteNullPredicate

+ (id)isNotNullPredicateWithProperty:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 0;
  v5 = [v3 copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

+ (id)isNullPredicateWithProperty:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 1;
  v5 = [v3 copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"property: %@; ", self->super._property];
  if (self->_matchesNull)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  [v3 appendFormat:@"matchesNull: %@; ", v4];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SQLiteNullPredicate;
  if ([(SQLitePropertyPredicate *)&v7 isEqual:v4])
  {
    v5 = self->_matchesNull == v4[16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)SQLForEntityClass:(Class)a3
{
  v4 = [(objc_class *)a3 disambiguatedSQLForProperty:self->super._property];
  if (self->_matchesNull)
  {
    v5 = @"IS NULL";
  }

  else
  {
    v5 = @"IS NOT NULL";
  }

  v6 = [NSString stringWithFormat:@"(%@ %@)", v4, v5];

  return v6;
}

@end