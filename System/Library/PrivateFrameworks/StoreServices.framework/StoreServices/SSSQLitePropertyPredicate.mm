@interface SSSQLitePropertyPredicate
- (BOOL)isEqual:(id)equal;
- (id)SQLJoinClausesForEntityClass:(Class)class;
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

- (BOOL)isEqual:(id)equal
{
  v8.receiver = self;
  v8.super_class = SSSQLitePropertyPredicate;
  v5 = [(SSSQLitePredicate *)&v8 isEqual:?];
  if (v5)
  {
    property = [(SSSQLitePropertyPredicate *)self property];
    if (property == [equal property])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = -[NSString isEqual:](-[SSSQLitePropertyPredicate property](self, "property"), "isEqual:", [equal property]);
    }
  }

  return v5;
}

- (id)SQLJoinClausesForEntityClass:(Class)class
{
  result = [(objc_class *)class joinClauseForProperty:self->_property];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DFD8];

    return [v5 setWithObject:v4];
  }

  return result;
}

@end