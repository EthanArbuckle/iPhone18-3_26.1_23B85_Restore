@interface SFAutoFillOneTimeCodeEmbeddedDomainPair
- (BOOL)isEqual:(id)a3;
- (SFAutoFillOneTimeCodeEmbeddedDomainPair)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAutoFillOneTimeCodeEmbeddedDomainPair

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)v5 domain];
      v7 = [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)self domain];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)v5 strict];
        v9 = v8 ^ [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)self strict]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  domain = self->_domain;
  v5 = a3;
  [v5 encodeObject:domain forKey:@"domain"];
  [v5 encodeBool:self->_strict forKey:@"strict"];
}

- (SFAutoFillOneTimeCodeEmbeddedDomainPair)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFAutoFillOneTimeCodeEmbeddedDomainPair;
  v5 = [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v6;

    v5->_strict = [v4 decodeBoolForKey:@"strict"];
    v8 = v5;
  }

  return v5;
}

@end