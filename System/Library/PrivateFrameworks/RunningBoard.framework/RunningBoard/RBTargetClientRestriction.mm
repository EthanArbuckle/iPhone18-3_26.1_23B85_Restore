@interface RBTargetClientRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)description;
@end

@implementation RBTargetClientRestriction

- (id)_init
{
  v6.receiver = self;
  v6.super_class = RBTargetClientRestriction;
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

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  contextCopy = context;
  if (_os_feature_enabled_impl())
  {
    targetClientRestriction = [contextCopy targetClientRestriction];
    v7 = [targetClientRestriction allowsContext:contextCopy withError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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