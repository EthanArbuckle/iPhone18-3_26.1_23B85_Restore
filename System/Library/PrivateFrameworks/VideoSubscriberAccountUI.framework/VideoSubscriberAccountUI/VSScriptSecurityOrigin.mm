@interface VSScriptSecurityOrigin
- (BOOL)isEqual:(id)equal;
- (NSString)host;
- (NSString)scheme;
- (id)description;
- (unint64_t)hash;
@end

@implementation VSScriptSecurityOrigin

- (NSString)scheme
{
  v2 = self->_scheme;
  if (!v2)
  {
    v2 = &stru_2880B8BB0;
  }

  return v2;
}

- (NSString)host
{
  v2 = self->_host;
  if (!v2)
  {
    v2 = &stru_2880B8BB0;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = VSScriptSecurityOrigin;
  v4 = [(VSScriptSecurityOrigin *)&v10 description];
  scheme = [(VSScriptSecurityOrigin *)self scheme];
  host = [(VSScriptSecurityOrigin *)self host];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VSScriptSecurityOrigin port](self, "port")}];
  v8 = [v3 stringWithFormat:@"<%@ %@://%@:%@>", v4, scheme, host, v7];

  return v8;
}

- (unint64_t)hash
{
  scheme = [(VSScriptSecurityOrigin *)self scheme];
  v4 = [scheme hash];

  host = [(VSScriptSecurityOrigin *)self host];
  v6 = [host hash] ^ v4;

  return v6 ^ [(VSScriptSecurityOrigin *)self port];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = MEMORY[0x277CBEAD8];
        v8 = *MEMORY[0x277CBE660];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v7 raise:v8 format:{@"Unexpectedly, object was %@, instead of VSScriptSecurityOrigin.", v10}];
      }

      v11 = v6;
      scheme = [(VSScriptSecurityOrigin *)self scheme];
      scheme2 = [v11 scheme];
      v14 = [scheme compare:scheme2 options:1];
      host = [(VSScriptSecurityOrigin *)self host];
      host2 = [v11 host];
      if (v14)
      {
        LOBYTE(v17) = 0;
      }

      else
      {
        v17 = [host compare:host2 options:1] == 0;
      }

      port = [(VSScriptSecurityOrigin *)self port];
      v18 = port == [v11 port] && v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end