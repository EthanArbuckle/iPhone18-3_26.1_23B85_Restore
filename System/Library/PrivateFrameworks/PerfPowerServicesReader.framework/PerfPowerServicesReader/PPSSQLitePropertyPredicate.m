@interface PPSSQLitePropertyPredicate
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation PPSSQLitePropertyPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PPSSQLitePropertyPredicate;
  v3 = [(PPSSQLitePredicate *)&v7 hash];
  v4 = [(PPSSQLitePropertyPredicate *)self property];
  v5 = [v4 hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PPSSQLitePropertyPredicate;
  if ([(PPSSQLitePredicate *)&v11 isEqual:v4])
  {
    v5 = [(PPSSQLitePropertyPredicate *)self property];
    v6 = [v4 property];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(PPSSQLitePropertyPredicate *)self property];
      v8 = [v4 property];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end