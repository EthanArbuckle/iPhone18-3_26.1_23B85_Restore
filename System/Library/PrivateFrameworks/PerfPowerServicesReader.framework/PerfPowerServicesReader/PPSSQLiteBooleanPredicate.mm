@interface PPSSQLiteBooleanPredicate
+ (id)falsePredicate;
+ (id)truePredicate;
- (BOOL)isEqual:(id)a3;
- (id)sqlForEntity:(id)a3;
@end

@implementation PPSSQLiteBooleanPredicate

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PPSSQLiteBooleanPredicate;
  if ([(PPSSQLitePredicate *)&v8 isEqual:v4])
  {
    v5 = [(PPSSQLiteBooleanPredicate *)self BOOLeanValue];
    v6 = v5 ^ [v4 BOOLeanValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)sqlForEntity:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%d)", -[PPSSQLiteBooleanPredicate BOOLeanValue](self, "BOOLeanValue", a3)];

  return v3;
}

@end