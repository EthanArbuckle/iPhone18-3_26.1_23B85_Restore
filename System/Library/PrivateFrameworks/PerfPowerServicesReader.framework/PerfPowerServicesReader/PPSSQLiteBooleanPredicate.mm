@interface PPSSQLiteBooleanPredicate
+ (id)falsePredicate;
+ (id)truePredicate;
- (BOOL)isEqual:(id)equal;
- (id)sqlForEntity:(id)entity;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = PPSSQLiteBooleanPredicate;
  if ([(PPSSQLitePredicate *)&v8 isEqual:equalCopy])
  {
    bOOLeanValue = [(PPSSQLiteBooleanPredicate *)self BOOLeanValue];
    v6 = bOOLeanValue ^ [equalCopy BOOLeanValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)sqlForEntity:(id)entity
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%d)", -[PPSSQLiteBooleanPredicate BOOLeanValue](self, "BOOLeanValue", entity)];

  return v3;
}

@end