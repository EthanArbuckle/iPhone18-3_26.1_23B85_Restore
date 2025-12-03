@interface TCCDCodeIdentity
+ (id)shortStringForAuthority:(int64_t)authority;
- (NSString)verifierDescription;
- (TCCDAccessIdentity)accessIdentity;
- (TCCDCodeIdentity)initWithAccessIdentity:(id)identity;
- (TCCDCodeIdentity)initWithIdentifier:(id)identifier authority:(int64_t)authority displayNamePolicyIdentifier:(int64_t)policyIdentifier verifierType:(int64_t)type verifierData:(id)data;
- (id)description;
@end

@implementation TCCDCodeIdentity

+ (id)shortStringForAuthority:(int64_t)authority
{
  if (authority > 2)
  {
    return @"<Unknown>";
  }

  else
  {
    return *(&off_1000A5BF8 + authority);
  }
}

- (TCCDCodeIdentity)initWithIdentifier:(id)identifier authority:(int64_t)authority displayNamePolicyIdentifier:(int64_t)policyIdentifier verifierType:(int64_t)type verifierData:(id)data
{
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = TCCDCodeIdentity;
  v13 = [(TCCDIdentity *)&v16 initWithIdentifier:identifier type:0];
  v14 = v13;
  if (v13)
  {
    [(TCCDCodeIdentity *)v13 setIdentifierAuthority:authority];
    if ([(TCCDCodeIdentity *)v14 identifierAuthority]== 2)
    {
      [(TCCDCodeIdentity *)v14 setDisplayNamePolicyIdentifier:policyIdentifier];
    }

    [(TCCDCodeIdentity *)v14 setVerifierType:type];
    [(TCCDCodeIdentity *)v14 setVerifierData:dataCopy];
  }

  return v14;
}

- (TCCDCodeIdentity)initWithAccessIdentity:(id)identity
{
  identityCopy = identity;
  client_type = [identityCopy client_type];
  identifier = [identityCopy identifier];
  policy_id = [identityCopy policy_id];
  v9 = -[TCCDCodeIdentity initWithIdentifier:authority:displayNamePolicyIdentifier:verifierType:verifierData:](self, "initWithIdentifier:authority:displayNamePolicyIdentifier:verifierType:verifierData:", identifier, client_type, [policy_id unsignedLongLongValue], 0, 0);

  if (v9)
  {
    objc_storeStrong(&v9->_resolvedAccessIdentity, identity);
  }

  return v9;
}

- (TCCDAccessIdentity)accessIdentity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  resolvedAccessIdentity = selfCopy->_resolvedAccessIdentity;
  if (!resolvedAccessIdentity)
  {
    v4 = [TCCDAccessIdentity alloc];
    identifier = [(TCCDIdentity *)selfCopy identifier];
    v6 = [(TCCDAccessIdentity *)v4 initWithIdentifier:identifier type:[(TCCDCodeIdentity *)selfCopy identifierAuthority] executableURL:0 SDKVersion:0 platformType:0];
    v7 = selfCopy->_resolvedAccessIdentity;
    selfCopy->_resolvedAccessIdentity = v6;

    resolvedAccessIdentity = selfCopy->_resolvedAccessIdentity;
  }

  v8 = resolvedAccessIdentity;
  objc_sync_exit(selfCopy);

  return v8;
}

- (NSString)verifierDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_verifierDescription)
  {
    if ([(TCCDCodeIdentity *)selfCopy verifierType])
    {
      v3 = [NSString stringWithFormat:@"Unexpected verifier tyype (%ld) on iOS", [(TCCDCodeIdentity *)selfCopy verifierType]];
    }

    else
    {
      v3 = @"None";
    }

    verifierDescription = selfCopy->_verifierDescription;
    selfCopy->_verifierDescription = &v3->isa;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_verifierDescription;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [TCCDCodeIdentity shortStringForAuthority:[(TCCDCodeIdentity *)self identifierAuthority]];
  identifier = [(TCCDIdentity *)self identifier];
  [v3 appendFormat:@"%@:%@", v4, identifier];

  if ([(TCCDCodeIdentity *)self verifierType])
  {
    verifierDescription = [(TCCDCodeIdentity *)self verifierDescription];
    [v3 appendFormat:@", V:'%@'", verifierDescription];
  }

  if ([(TCCDCodeIdentity *)self identifierAuthority]== 2)
  {
    [v3 appendFormat:@", ID:%lld", -[TCCDCodeIdentity displayNamePolicyIdentifier](self, "displayNamePolicyIdentifier")];
  }

  v7 = [v3 copy];

  return v7;
}

@end