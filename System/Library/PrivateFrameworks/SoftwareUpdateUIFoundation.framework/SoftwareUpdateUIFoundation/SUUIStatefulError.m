@interface SUUIStatefulError
- (BOOL)isEqual:(id)a3;
- (BOOL)isIntrinsicallyEquivalentToError:(id)a3 withStatefulDescriptor:(id)a4 download:(id)a5;
- (BOOL)isNonBlockingErrorForStatefulDescriptor:(id)a3 download:(id)a4;
- (BOOL)shouldEnableUpdateOptionsWithStatefulDescriptor:(id)a3 download:(id)a4;
- (SUUIErrorTraits)traits;
- (id)bodyTokenWithStatefulDescriptor:(id)a3 download:(id)a4;
- (id)headingTokenWithStatefulDescriptor:(id)a3 download:(id)a4;
- (id)initFromError:(id)a3;
@end

@implementation SUUIStatefulError

- (id)initFromError:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v11;
  v7 = [location[0] domain];
  v5 = [location[0] code];
  v6 = [location[0] userInfo];
  v11 = 0;
  v9.receiver = v4;
  v9.super_class = SUUIStatefulError;
  v11 = [(SUUIStatefulError *)&v9 initWithDomain:v7 code:v5 userInfo:?];
  v8 = MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v8;
}

- (BOOL)isIntrinsicallyEquivalentToError:(id)a3 withStatefulDescriptor:(id)a4 download:(id)a5
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  if (location[0])
  {
    v9 = [(SUUIStatefulError *)v25 domain];
    v10 = [location[0] domain];
    v11 = 1;
    if ([v9 isEqualToString:?])
    {
      v8 = [(SUUIStatefulError *)v25 code];
      v11 = v8 != [location[0] code];
    }

    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v9);
    if (v11)
    {
      v26 = 0;
      v21 = 1;
    }

    else
    {
      v20 = [(SUUIStatefulError *)v25 headingTokenWithStatefulDescriptor:v23 download:v22];
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
        v17 = [(SUUIStatefulError *)v25 bodyTokenWithStatefulDescriptor:v23 download:v22];
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
          v14 = [(SUUIStatefulError *)v25 shouldEnableUpdateOptionsWithStatefulDescriptor:v23 download:v22];
          v26 = v14 == [(SUUIStatefulError *)v25 shouldEnableUpdateOptionsWithStatefulDescriptor:v23 download:v22];
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

- (BOOL)isEqual:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v8 == location[0])
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
      v4.receiver = v8;
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

- (BOOL)isNonBlockingErrorForStatefulDescriptor:(id)a3 download:(id)a4
{
  v15 = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
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

- (id)headingTokenWithStatefulDescriptor:(id)a3 download:(id)a4
{
  v15 = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
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

- (id)bodyTokenWithStatefulDescriptor:(id)a3 download:(id)a4
{
  v15 = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
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

- (BOOL)shouldEnableUpdateOptionsWithStatefulDescriptor:(id)a3 download:(id)a4
{
  v15 = self;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
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