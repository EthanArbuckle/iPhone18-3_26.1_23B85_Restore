@interface SFAutoFillOneTimeCodeEmbeddedDomainPair
- (BOOL)isEqual:(id)equal;
- (SFAutoFillOneTimeCodeEmbeddedDomainPair)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAutoFillOneTimeCodeEmbeddedDomainPair

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      domain = [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)v5 domain];
      domain2 = [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)self domain];
      if ([domain isEqualToString:domain2])
      {
        strict = [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)v5 strict];
        v9 = strict ^ [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)self strict]^ 1;
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

- (void)encodeWithCoder:(id)coder
{
  domain = self->_domain;
  coderCopy = coder;
  [coderCopy encodeObject:domain forKey:@"domain"];
  [coderCopy encodeBool:self->_strict forKey:@"strict"];
}

- (SFAutoFillOneTimeCodeEmbeddedDomainPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SFAutoFillOneTimeCodeEmbeddedDomainPair;
  v5 = [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v6;

    v5->_strict = [coderCopy decodeBoolForKey:@"strict"];
    v8 = v5;
  }

  return v5;
}

@end