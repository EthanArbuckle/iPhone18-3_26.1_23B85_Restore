@interface SQLiteBooleanPredicate
+ (id)falsePredicate;
+ (id)truePredicate;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation SQLiteBooleanPredicate

+ (id)truePredicate
{
  v2 = objc_alloc_init(objc_opt_class());
  v2[8] = 1;

  return v2;
}

+ (id)falsePredicate
{
  v2 = objc_alloc_init(objc_opt_class());
  v2[8] = 0;

  return v2;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_BOOLeanValue)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  [v3 appendFormat:@"BOOLeanValue: %@; ", v5];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SQLiteBooleanPredicate;
  if ([(SQLitePredicate *)&v7 isEqual:v4])
  {
    v5 = self->_BOOLeanValue == v4[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end