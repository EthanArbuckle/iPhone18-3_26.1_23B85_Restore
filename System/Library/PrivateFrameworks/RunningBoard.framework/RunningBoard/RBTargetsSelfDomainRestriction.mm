@interface RBTargetsSelfDomainRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)description;
@end

@implementation RBTargetsSelfDomainRestriction

- (id)_init
{
  v6.receiver = self;
  v6.super_class = RBTargetsSelfDomainRestriction;
  _init = [(RBDomainRestriction *)&v6 _init];
  v3 = _init;
  if (_init)
  {
    v4 = _init;
  }

  return v3;
}

+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error
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

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  v21[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  targetProcess = [contextCopy targetProcess];
  identity = [targetProcess identity];
  originatorProcess = [contextCopy originatorProcess];

  identity2 = [originatorProcess identity];
  v11 = [identity isEqual:identity2];

  if (error && (v11 & 1) == 0)
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
    *error = [v12 errorWithDomain:v13 code:3 userInfo:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
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