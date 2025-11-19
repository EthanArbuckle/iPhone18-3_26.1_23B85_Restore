@interface PPSSQLitePredicate
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation PPSSQLitePredicate

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  LOBYTE(v4) = v4 == objc_opt_class();

  return v4;
}

@end