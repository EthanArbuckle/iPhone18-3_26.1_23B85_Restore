@interface RMStoreDeclarationKeyPair
+ (id)newDeclarationKeyPairWithNewKey:(id)a3;
+ (id)newDeclarationKeyPairWithUpdateKey:(id)a3 replaceKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RMStoreDeclarationKeyPair)initWithNewKey:(id)a3 replaceKey:(id)a4;
- (unint64_t)hash;
@end

@implementation RMStoreDeclarationKeyPair

+ (id)newDeclarationKeyPairWithNewKey:(id)a3
{
  v3 = a3;
  v4 = [[RMStoreDeclarationKeyPair alloc] initWithNewKey:v3 replaceKey:0];

  return v4;
}

+ (id)newDeclarationKeyPairWithUpdateKey:(id)a3 replaceKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RMStoreDeclarationKeyPair alloc] initWithNewKey:v6 replaceKey:v5];

  return v7;
}

- (RMStoreDeclarationKeyPair)initWithNewKey:(id)a3 replaceKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RMStoreDeclarationKeyPair;
  v9 = [(RMStoreDeclarationKeyPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applyKey, a3);
    objc_storeStrong(&v10->_replaceKey, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RMStoreDeclarationKeyPair *)self applyKey];
      v6 = [(RMStoreDeclarationKeyPair *)v4 applyKey];
      if ([v5 isEqual:v6])
      {
        v7 = [(RMStoreDeclarationKeyPair *)self replaceKey];
        v8 = v7;
        if (v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = &stru_287470728;
        }

        v10 = [(RMStoreDeclarationKeyPair *)v4 replaceKey];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &stru_287470728;
        }

        v13 = [(__CFString *)v9 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(RMStoreDeclarationKeyPair *)self applyKey];
  v4 = [v3 hash];
  v5 = [(RMStoreDeclarationKeyPair *)self replaceKey];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end