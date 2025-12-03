@interface SUUIStatefulError
- (BOOL)isEqual:(id)equal;
- (BOOL)isIntrinsicallyEquivalentToError:(id)error withStatefulDescriptor:(id)descriptor download:(id)download;
- (BOOL)isNonBlockingErrorForStatefulDescriptor:(id)descriptor download:(id)download;
- (BOOL)shouldEnableUpdateOptionsWithStatefulDescriptor:(id)descriptor download:(id)download;
- (SUUIErrorTraits)traits;
- (id)bodyTokenWithStatefulDescriptor:(id)descriptor download:(id)download;
- (id)headingTokenWithStatefulDescriptor:(id)descriptor download:(id)download;
- (id)initFromError:(id)error;
@end

@implementation SUUIStatefulError

- (id)initFromError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v4 = selfCopy;
  domain = [location[0] domain];
  code = [location[0] code];
  userInfo = [location[0] userInfo];
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = SUUIStatefulError;
  selfCopy = [(SUUIStatefulError *)&v9 initWithDomain:domain code:code userInfo:?];
  v8 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](userInfo);
  MEMORY[0x277D82BD8](domain);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (BOOL)isIntrinsicallyEquivalentToError:(id)error withStatefulDescriptor:(id)descriptor download:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v23 = 0;
  objc_storeStrong(&v23, descriptor);
  v22 = 0;
  objc_storeStrong(&v22, download);
  if (location[0])
  {
    domain = [(SUUIStatefulError *)selfCopy domain];
    domain2 = [location[0] domain];
    v11 = 1;
    if ([domain isEqualToString:?])
    {
      code = [(SUUIStatefulError *)selfCopy code];
      v11 = code != [location[0] code];
    }

    MEMORY[0x277D82BD8](domain2);
    MEMORY[0x277D82BD8](domain);
    if (v11)
    {
      v26 = 0;
      v21 = 1;
    }

    else
    {
      v20 = [(SUUIStatefulError *)selfCopy headingTokenWithStatefulDescriptor:v23 download:v22];
      v18 = 0;
      v7 = 0;
      if (!v20)
      {
        v19 = [location[0] headingTokenWithStatefulDescriptor:v23 download:v22];
        v18 = 1;
        v7 = v19 == 0;
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](v19);
      }

      if (v7)
      {
        v26 = 0;
        v21 = 1;
      }

      else
      {
        v17 = [(SUUIStatefulError *)selfCopy bodyTokenWithStatefulDescriptor:v23 download:v22];
        v15 = 0;
        LOBYTE(v6) = 0;
        if (v17)
        {
          v16 = [location[0] bodyTokenWithStatefulDescriptor:v23 download:v22];
          v15 = 1;
          v6 = [v17 isEqual:?] ^ 1;
        }

        if (v15)
        {
          MEMORY[0x277D82BD8](v16);
        }

        if (v6)
        {
          v26 = 0;
        }

        else
        {
          v14 = [(SUUIStatefulError *)selfCopy shouldEnableUpdateOptionsWithStatefulDescriptor:v23 download:v22];
          v26 = v14 == [(SUUIStatefulError *)selfCopy shouldEnableUpdateOptionsWithStatefulDescriptor:v23 download:v22];
        }

        v21 = 1;
        objc_storeStrong(&v17, 0);
      }

      objc_storeStrong(&v20, 0);
    }
  }

  else
  {
    v26 = 0;
    v21 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v26;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
  {
    v9 = 1;
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x277D82BE0](location[0]);
      v4.receiver = selfCopy;
      v4.super_class = SUUIStatefulError;
      v9 = [(SUUIStatefulError *)&v4 isEqual:v5];
      v6 = 1;
      objc_storeStrong(&v5, 0);
    }

    else
    {
      v9 = 0;
      v6 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (SUUIErrorTraits)traits
{
  v5 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v3 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v6 = [v3 stringWithFormat:@"You must override %@ in a subclass", v7];
  v8 = [v5 exceptionWithName:v4 reason:? userInfo:?];
  v2 = v8;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_exception_throw(v8);
}

- (BOOL)isNonBlockingErrorForStatefulDescriptor:(id)descriptor download:(id)download
{
  selfCopy = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, descriptor);
  v12 = 0;
  objc_storeStrong(&v12, download);
  v8 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v6 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(v14);
  v9 = [v6 stringWithFormat:@"You must override %@ in a subclass", v10];
  v11 = [v8 exceptionWithName:v7 reason:? userInfo:?];
  v4 = v11;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_exception_throw(v11);
}

- (id)headingTokenWithStatefulDescriptor:(id)descriptor download:(id)download
{
  selfCopy = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, descriptor);
  v12 = 0;
  objc_storeStrong(&v12, download);
  v8 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v6 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(v14);
  v9 = [v6 stringWithFormat:@"You must override %@ in a subclass", v10];
  v11 = [v8 exceptionWithName:v7 reason:? userInfo:?];
  v4 = v11;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_exception_throw(v11);
}

- (id)bodyTokenWithStatefulDescriptor:(id)descriptor download:(id)download
{
  selfCopy = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, descriptor);
  v12 = 0;
  objc_storeStrong(&v12, download);
  v8 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v6 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(v14);
  v9 = [v6 stringWithFormat:@"You must override %@ in a subclass", v10];
  v11 = [v8 exceptionWithName:v7 reason:? userInfo:?];
  v4 = v11;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_exception_throw(v11);
}

- (BOOL)shouldEnableUpdateOptionsWithStatefulDescriptor:(id)descriptor download:(id)download
{
  selfCopy = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, descriptor);
  v12 = 0;
  objc_storeStrong(&v12, download);
  v8 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v6 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(v14);
  v9 = [v6 stringWithFormat:@"You must override %@ in a subclass", v10];
  v11 = [v8 exceptionWithName:v7 reason:? userInfo:?];
  v4 = v11;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_exception_throw(v11);
}

@end