@interface RBTargetsSelfDomainRestriction
+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4;
- (BOOL)allowsContext:(id)a3 withError:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)description;
@end

@implementation RBTargetsSelfDomainRestriction

- (id)_init
{
  v6.receiver = self;
  v6.super_class = RBTargetsSelfDomainRestriction;
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
  if (domainRestrictionForDictionary_withError__onceToken != -1)
  {
    +[RBTargetsSelfDomainRestriction domainRestrictionForDictionary:withError:];
  }

  v5 = domainRestrictionForDictionary_withError__singleton;

  return v5;
}

uint64_t __75__RBTargetsSelfDomainRestriction_domainRestrictionForDictionary_withError___block_invoke()
{
  domainRestrictionForDictionary_withError__singleton = [[RBTargetsSelfDomainRestriction alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)allowsContext:(id)a3 withError:(id *)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 targetProcess];
  v8 = [v7 identity];
  v9 = [v6 originatorProcess];

  v10 = [v9 identity];
  v11 = [v8 isEqual:v10];

  if (a4 && (v11 & 1) == 0)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D47050];
    v14 = *MEMORY[0x277CCA470];
    v21[0] = @"Target isn't originator";
    v15 = *MEMORY[0x277D47048];
    v20[0] = v14;
    v20[1] = v15;
    v16 = [(RBTargetsSelfDomainRestriction *)self description];
    v21[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    *a4 = [v12 errorWithDomain:v13 code:3 userInfo:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
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