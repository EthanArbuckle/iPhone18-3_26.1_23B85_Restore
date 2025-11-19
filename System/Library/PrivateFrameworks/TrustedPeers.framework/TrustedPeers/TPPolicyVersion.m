@interface TPPolicyVersion
- (BOOL)isEqual:(id)a3;
- (TPPolicyVersion)initWithCoder:(id)a3;
- (TPPolicyVersion)initWithVersion:(unint64_t)a3 hash:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPPolicyVersion

- (TPPolicyVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPPolicyVersion;
  v5 = [(TPPolicyVersion *)&v9 init];
  if (v5)
  {
    v5->_versionNumber = [v4 decodeInt64ForKey:@"policyVersion"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"policyHash"];
    policyHash = v5->_policyHash;
    v5->_policyHash = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(TPPolicyVersion *)self policyHash];
  [v5 encodeObject:v4 forKey:@"policyHash"];

  [v5 encodeInt64:-[TPPolicyVersion versionNumber](self forKey:{"versionNumber"), @"policyVersion"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TPPolicyVersion alloc];
  v5 = [(TPPolicyVersion *)self versionNumber];
  v6 = [(TPPolicyVersion *)self policyHash];
  v7 = [v6 copy];
  v8 = [(TPPolicyVersion *)v4 initWithVersion:v5 hash:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 versionNumber];
    if (v6 == [(TPPolicyVersion *)self versionNumber])
    {
      v7 = [v5 policyHash];
      v8 = [(TPPolicyVersion *)self policyHash];
      v9 = [v7 isEqualToString:v8];
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
  v4 = [(TPPolicyVersion *)self versionNumber];
  v5 = [(TPPolicyVersion *)self policyHash];
  v6 = [v3 stringWithFormat:@"<TPPolicyVersion: %llu, %@>", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(TPPolicyVersion *)self policyHash];
  v3 = [v2 hash];

  return v3;
}

- (TPPolicyVersion)initWithVersion:(unint64_t)a3 hash:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = TPPolicyVersion;
  v7 = [(TPPolicyVersion *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_versionNumber = a3;
    v9 = +[TPStringTable defaultTable];
    v10 = [v9 stringWithString:v6];
    policyHash = v8->_policyHash;
    v8->_policyHash = v10;
  }

  return v8;
}

@end