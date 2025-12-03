@interface SQLitePropertyPredicate
- (BOOL)isEqual:(id)equal;
- (id)SQLJoinClausesForEntityClass:(Class)class;
- (unint64_t)hash;
@end

@implementation SQLitePropertyPredicate

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SQLitePropertyPredicate;
  v3 = [(SQLitePredicate *)&v5 hash];
  return v3 + [(NSString *)self->_property hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = SQLitePropertyPredicate;
  if ([(SQLitePredicate *)&v8 isEqual:equalCopy])
  {
    property = self->_property;
    if (property == equalCopy[1])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSString *)property isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)SQLJoinClausesForEntityClass:(Class)class
{
  v5 = objc_alloc_init(NSMutableSet);
  [(objc_class *)class addJoinClausesForProperty:self->_property toJoins:v5];

  return v5;
}

@end