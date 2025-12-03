@interface MADAutoSetSchedulerTriggered
- (MADAutoSetSchedulerTriggered)initWithCoder:(id)coder;
- (id)copy;
- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier withSchedulerPolicy:(id)policy;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoSetSchedulerTriggered

- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier withSchedulerPolicy:(id)policy
{
  nameCopy = name;
  identifierCopy = identifier;
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = MADAutoSetSchedulerTriggered;
  v12 = [(MADAutoSetSchedulerTriggered *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_clientDomainName, name);
    objc_storeStrong(p_isa + 2, identifier);
    objc_storeStrong(p_isa + 3, policy);
  }

  return p_isa;
}

- (MADAutoSetSchedulerTriggered)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MADAutoSetSchedulerTriggered;
  v5 = [(MADAutoSetSchedulerTriggered *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schedulerPolicy"];
    schedulerPolicy = v5->_schedulerPolicy;
    v5->_schedulerPolicy = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MADAutoSetSchedulerTriggered *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MADAutoSetSchedulerTriggered *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"asetSetIdentifier"];

  schedulerPolicy = [(MADAutoSetSchedulerTriggered *)self schedulerPolicy];
  [coderCopy encodeObject:schedulerPolicy forKey:@"schedulerPolicy"];
}

- (id)copy
{
  v3 = [MADAutoSetSchedulerTriggered alloc];
  clientDomainName = [(MADAutoSetSchedulerTriggered *)self clientDomainName];
  assetSetIdentifier = [(MADAutoSetSchedulerTriggered *)self assetSetIdentifier];
  schedulerPolicy = [(MADAutoSetSchedulerTriggered *)self schedulerPolicy];
  v7 = [schedulerPolicy copy];
  v8 = [(MADAutoSetSchedulerTriggered *)v3 initForClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier withSchedulerPolicy:v7];

  return v8;
}

- (id)summary
{
  clientDomainName = [(MADAutoSetSchedulerTriggered *)self clientDomainName];
  assetSetIdentifier = [(MADAutoSetSchedulerTriggered *)self assetSetIdentifier];
  schedulerPolicy = [(MADAutoSetSchedulerTriggered *)self schedulerPolicy];
  v6 = @"Y";
  if (!schedulerPolicy)
  {
    v6 = @"N";
  }

  v7 = [NSString stringWithFormat:@"[clientDomain:%@|setIdentifier:%@|schedulerPolicy:%@", clientDomainName, assetSetIdentifier, v6];

  return v7;
}

@end