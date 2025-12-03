@interface RMStoreDeclarationKeyPair
+ (id)newDeclarationKeyPairWithNewKey:(id)key;
+ (id)newDeclarationKeyPairWithUpdateKey:(id)key replaceKey:(id)replaceKey;
- (BOOL)isEqual:(id)equal;
- (RMStoreDeclarationKeyPair)initWithNewKey:(id)key replaceKey:(id)replaceKey;
- (unint64_t)hash;
@end

@implementation RMStoreDeclarationKeyPair

+ (id)newDeclarationKeyPairWithNewKey:(id)key
{
  keyCopy = key;
  v4 = [[RMStoreDeclarationKeyPair alloc] initWithNewKey:keyCopy replaceKey:0];

  return v4;
}

+ (id)newDeclarationKeyPairWithUpdateKey:(id)key replaceKey:(id)replaceKey
{
  replaceKeyCopy = replaceKey;
  keyCopy = key;
  v7 = [[RMStoreDeclarationKeyPair alloc] initWithNewKey:keyCopy replaceKey:replaceKeyCopy];

  return v7;
}

- (RMStoreDeclarationKeyPair)initWithNewKey:(id)key replaceKey:(id)replaceKey
{
  keyCopy = key;
  replaceKeyCopy = replaceKey;
  v12.receiver = self;
  v12.super_class = RMStoreDeclarationKeyPair;
  v9 = [(RMStoreDeclarationKeyPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applyKey, key);
    objc_storeStrong(&v10->_replaceKey, replaceKey);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applyKey = [(RMStoreDeclarationKeyPair *)self applyKey];
      applyKey2 = [(RMStoreDeclarationKeyPair *)equalCopy applyKey];
      if ([applyKey isEqual:applyKey2])
      {
        replaceKey = [(RMStoreDeclarationKeyPair *)self replaceKey];
        v8 = replaceKey;
        if (replaceKey)
        {
          v9 = replaceKey;
        }

        else
        {
          v9 = &stru_287470728;
        }

        replaceKey2 = [(RMStoreDeclarationKeyPair *)equalCopy replaceKey];
        v11 = replaceKey2;
        if (replaceKey2)
        {
          v12 = replaceKey2;
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
  applyKey = [(RMStoreDeclarationKeyPair *)self applyKey];
  v4 = [applyKey hash];
  replaceKey = [(RMStoreDeclarationKeyPair *)self replaceKey];
  v6 = [replaceKey hash];

  return v6 ^ v4;
}

@end