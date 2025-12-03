@interface RBTargetsHostedDomainRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)description;
@end

@implementation RBTargetsHostedDomainRestriction

- (id)_init
{
  v6.receiver = self;
  v6.super_class = RBTargetsHostedDomainRestriction;
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
  if (domainRestrictionForDictionary_withError__onceToken_293 != -1)
  {
    +[RBTargetsHostedDomainRestriction domainRestrictionForDictionary:withError:];
  }

  v5 = domainRestrictionForDictionary_withError__singleton_292;

  return v5;
}

uint64_t __77__RBTargetsHostedDomainRestriction_domainRestrictionForDictionary_withError___block_invoke()
{
  domainRestrictionForDictionary_withError__singleton_292 = [[RBTargetsHostedDomainRestriction alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  v22[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  targetProcess = [contextCopy targetProcess];
  identity = [targetProcess identity];
  hostIdentifier = [identity hostIdentifier];
  v10 = [hostIdentifier pid];
  originatorProcess = [contextCopy originatorProcess];

  rbs_pid = [originatorProcess rbs_pid];
  if (error && v10 != rbs_pid)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D47050];
    v15 = *MEMORY[0x277CCA470];
    v22[0] = @"Target not hosted by originator";
    v16 = *MEMORY[0x277D47048];
    v21[0] = v15;
    v21[1] = v16;
    v17 = [(RBTargetsHostedDomainRestriction *)self description];
    v22[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    *error = [v13 errorWithDomain:v14 code:3 userInfo:v18];
  }

  result = v10 == rbs_pid;
  v20 = *MEMORY[0x277D85DE8];
  return result;
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