@interface VSScriptSecurityOrigin
- (BOOL)isEqual:(id)a3;
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
  v5 = [(VSScriptSecurityOrigin *)self scheme];
  v6 = [(VSScriptSecurityOrigin *)self host];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VSScriptSecurityOrigin port](self, "port")}];
  v8 = [v3 stringWithFormat:@"<%@ %@://%@:%@>", v4, v5, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(VSScriptSecurityOrigin *)self scheme];
  v4 = [v3 hash];

  v5 = [(VSScriptSecurityOrigin *)self host];
  v6 = [v5 hash] ^ v4;

  return v6 ^ [(VSScriptSecurityOrigin *)self port];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
      v12 = [(VSScriptSecurityOrigin *)self scheme];
      v13 = [v11 scheme];
      v14 = [v12 compare:v13 options:1];
      v15 = [(VSScriptSecurityOrigin *)self host];
      v16 = [v11 host];
      if (v14)
      {
        LOBYTE(v17) = 0;
      }

      else
      {
        v17 = [v15 compare:v16 options:1] == 0;
      }

      v19 = [(VSScriptSecurityOrigin *)self port];
      v18 = v19 == [v11 port] && v17;
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