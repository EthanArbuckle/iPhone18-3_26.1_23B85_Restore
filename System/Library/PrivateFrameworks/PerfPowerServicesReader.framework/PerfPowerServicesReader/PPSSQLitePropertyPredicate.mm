@interface PPSSQLitePropertyPredicate
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation PPSSQLitePropertyPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PPSSQLitePropertyPredicate;
  v3 = [(PPSSQLitePredicate *)&v7 hash];
  property = [(PPSSQLitePropertyPredicate *)self property];
  v5 = [property hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = PPSSQLitePropertyPredicate;
  if ([(PPSSQLitePredicate *)&v11 isEqual:equalCopy])
  {
    property = [(PPSSQLitePropertyPredicate *)self property];
    property2 = [equalCopy property];
    if (property == property2)
    {
      v9 = 1;
    }

    else
    {
      property3 = [(PPSSQLitePropertyPredicate *)self property];
      property4 = [equalCopy property];
      v9 = [property3 isEqual:property4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end