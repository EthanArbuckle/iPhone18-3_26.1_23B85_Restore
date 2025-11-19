@interface SSSQLitePropertyPredicate
- (BOOL)isEqual:(id)a3;
- (id)SQLJoinClausesForEntityClass:(Class)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SSSQLitePropertyPredicate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSQLitePropertyPredicate;
  [(SSSQLitePropertyPredicate *)&v3 dealloc];
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SSSQLitePropertyPredicate;
  v3 = [(SSSQLitePredicate *)&v5 hash];
  return v3 + [(NSString *)[(SSSQLitePropertyPredicate *)self property] hash];
}

- (BOOL)isEqual:(id)a3
{
  v8.receiver = self;
  v8.super_class = SSSQLitePropertyPredicate;
  v5 = [(SSSQLitePredicate *)&v8 isEqual:?];
  if (v5)
  {
    v6 = [(SSSQLitePropertyPredicate *)self property];
    if (v6 == [a3 property])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = -[NSString isEqual:](-[SSSQLitePropertyPredicate property](self, "property"), "isEqual:", [a3 property]);
    }
  }

  return v5;
}

- (id)SQLJoinClausesForEntityClass:(Class)a3
{
  result = [(objc_class *)a3 joinClauseForProperty:self->_property];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DFD8];

    return [v5 setWithObject:v4];
  }

  return result;
}

@end