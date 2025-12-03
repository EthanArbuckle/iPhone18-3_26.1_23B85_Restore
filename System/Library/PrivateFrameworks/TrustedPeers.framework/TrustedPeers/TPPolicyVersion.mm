@interface TPPolicyVersion
- (BOOL)isEqual:(id)equal;
- (TPPolicyVersion)initWithCoder:(id)coder;
- (TPPolicyVersion)initWithVersion:(unint64_t)version hash:(id)hash;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPPolicyVersion

- (TPPolicyVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TPPolicyVersion;
  v5 = [(TPPolicyVersion *)&v9 init];
  if (v5)
  {
    v5->_versionNumber = [coderCopy decodeInt64ForKey:@"policyVersion"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"policyHash"];
    policyHash = v5->_policyHash;
    v5->_policyHash = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  policyHash = [(TPPolicyVersion *)self policyHash];
  [coderCopy encodeObject:policyHash forKey:@"policyHash"];

  [coderCopy encodeInt64:-[TPPolicyVersion versionNumber](self forKey:{"versionNumber"), @"policyVersion"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TPPolicyVersion alloc];
  versionNumber = [(TPPolicyVersion *)self versionNumber];
  policyHash = [(TPPolicyVersion *)self policyHash];
  v7 = [policyHash copy];
  v8 = [(TPPolicyVersion *)v4 initWithVersion:versionNumber hash:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    versionNumber = [v5 versionNumber];
    if (versionNumber == [(TPPolicyVersion *)self versionNumber])
    {
      policyHash = [v5 policyHash];
      policyHash2 = [(TPPolicyVersion *)self policyHash];
      v9 = [policyHash isEqualToString:policyHash2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  versionNumber = [(TPPolicyVersion *)self versionNumber];
  policyHash = [(TPPolicyVersion *)self policyHash];
  v6 = [v3 stringWithFormat:@"<TPPolicyVersion: %llu, %@>", versionNumber, policyHash];

  return v6;
}

- (unint64_t)hash
{
  policyHash = [(TPPolicyVersion *)self policyHash];
  v3 = [policyHash hash];

  return v3;
}

- (TPPolicyVersion)initWithVersion:(unint64_t)version hash:(id)hash
{
  hashCopy = hash;
  v13.receiver = self;
  v13.super_class = TPPolicyVersion;
  v7 = [(TPPolicyVersion *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_versionNumber = version;
    v9 = +[TPStringTable defaultTable];
    v10 = [v9 stringWithString:hashCopy];
    policyHash = v8->_policyHash;
    v8->_policyHash = v10;
  }

  return v8;
}

@end