@interface RBTargetClientRestriction
+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4;
- (BOOL)allowsContext:(id)a3 withError:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)description;
@end

@implementation RBTargetClientRestriction

- (id)_init
{
  v6.receiver = self;
  v6.super_class = RBTargetClientRestriction;
  v2 = [(RBDomainRestriction *)&v6 _init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4
{
  if (domainRestrictionForDictionary_withError__onceToken_353 != -1)
  {
    +[RBTargetClientRestriction domainRestrictionForDictionary:withError:];
  }

  v5 = domainRestrictionForDictionary_withError__singleton_352;

  return v5;
}

uint64_t __70__RBTargetClientRestriction_domainRestrictionForDictionary_withError___block_invoke()
{
  domainRestrictionForDictionary_withError__singleton_352 = [[RBTargetClientRestriction alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)allowsContext:(id)a3 withError:(id *)a4
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = [v5 targetClientRestriction];
    v7 = [v6 allowsContext:v5 withError:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

- (id)description
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [objc_opt_class() description];
  v4 = [v2 initWithFormat:@"<%@|>", v3];

  return v4;
}

@end