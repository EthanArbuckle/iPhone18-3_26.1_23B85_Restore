@interface STStatusItemsStatusDomainStatusItemAttribution
- (BOOL)isEqual:(id)equal;
- (STStatusItemsStatusDomainStatusItemAttribution)initWithCoder:(id)coder;
- (STStatusItemsStatusDomainStatusItemAttribution)initWithStatusItemIdentifier:(id)identifier activityAttribution:(id)attribution;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusItemsStatusDomainStatusItemAttribution

- (STStatusItemsStatusDomainStatusItemAttribution)initWithStatusItemIdentifier:(id)identifier activityAttribution:(id)attribution
{
  identifierCopy = identifier;
  attributionCopy = attribution;
  v14.receiver = self;
  v14.super_class = STStatusItemsStatusDomainStatusItemAttribution;
  v8 = [(STStatusItemsStatusDomainStatusItemAttribution *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    statusItemIdentifier = v8->_statusItemIdentifier;
    v8->_statusItemIdentifier = v9;

    v11 = [attributionCopy copy];
    activityAttribution = v8->_activityAttribution;
    v8->_activityAttribution = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  statusItemIdentifier = [(STStatusItemsStatusDomainStatusItemAttribution *)self statusItemIdentifier];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__STStatusItemsStatusDomainStatusItemAttribution_isEqual___block_invoke;
  v18[3] = &unk_1E85DDD28;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendString:statusItemIdentifier counterpart:v18];

  activityAttribution = [(STStatusItemsStatusDomainStatusItemAttribution *)self activityAttribution];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __58__STStatusItemsStatusDomainStatusItemAttribution_isEqual___block_invoke_2;
  v16 = &unk_1E85DDCD8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:activityAttribution counterpart:&v13];

  LOBYTE(activityAttribution) = [v5 isEqual];
  return activityAttribution;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  statusItemIdentifier = [(STStatusItemsStatusDomainStatusItemAttribution *)self statusItemIdentifier];
  v5 = [builder appendString:statusItemIdentifier];

  activityAttribution = [(STStatusItemsStatusDomainStatusItemAttribution *)self activityAttribution];
  v7 = [builder appendObject:activityAttribution];

  v8 = [builder hash];
  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusItemsStatusDomainStatusItemAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsStatusDomainStatusItemAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsStatusDomainStatusItemAttribution *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

void __98__STStatusItemsStatusDomainStatusItemAttribution__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) statusItemIdentifier];
  v4 = STStatusItemIdentifierDescription(v3);
  [v2 appendString:v4 withName:@"statusItem"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) activityAttribution];
  v6 = [v5 appendObject:v7 withName:@"activityAttribution"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  statusItemIdentifier = [(STStatusItemsStatusDomainStatusItemAttribution *)self statusItemIdentifier];
  [coderCopy encodeObject:statusItemIdentifier forKey:@"statusItemIdentifier"];

  activityAttribution = [(STStatusItemsStatusDomainStatusItemAttribution *)self activityAttribution];
  [coderCopy encodeObject:activityAttribution forKey:@"activityAttribution"];
}

- (STStatusItemsStatusDomainStatusItemAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusItemIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STStatusItemsStatusDomainStatusItemAttribution *)self initWithStatusItemIdentifier:v5 activityAttribution:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end