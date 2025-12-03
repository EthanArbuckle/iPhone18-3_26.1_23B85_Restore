@interface RMStoreDeclarationKey
+ (BOOL)assetDifferencesOnlyForOldKey:(id)key newKey:(id)newKey;
+ (id)newDeclarationKey:(id)key;
+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)identifier reference:(id)reference;
+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)identifier store:(id)store declaration:(id)declaration;
+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token;
+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token assetKeys:(id)keys;
+ (id)newDeclarationKeyWithoutAssets:(id)assets;
+ (void)synchronizeOldKeys:(id)keys newKeys:(id)newKeys returningUnchangedKeys:(id *)unchangedKeys returningApplyKeys:(id *)applyKeys returningRemoveKeys:(id *)removeKeys;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (RMStoreDeclarationKey)initWithCoder:(id)coder;
- (RMStoreDeclarationKey)initWithDeclarationKey:(id)key;
- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)identifier store:(id)store declaration:(id)declaration assets:(id)assets;
- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token assetKeys:(id)keys;
- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token assets:(id)assets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)keyByReplacingSubscriberIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)_parseDeclarationKey:(id)key completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMStoreDeclarationKey

+ (id)newDeclarationKey:(id)key
{
  keyCopy = key;
  v4 = [[RMStoreDeclarationKey alloc] initWithDeclarationKey:keyCopy];

  return v4;
}

+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)identifier store:(id)store declaration:(id)declaration
{
  declarationCopy = declaration;
  storeCopy = store;
  identifierCopy = identifier;
  v10 = [[RMStoreDeclarationKey alloc] initWithSubscriberIdentifier:identifierCopy store:storeCopy declaration:declarationCopy assets:0];

  return v10;
}

+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)identifier reference:(id)reference
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  referenceCopy = reference;
  declaration = [referenceCopy declaration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetReferences = [declaration assetReferences];
    if ([assetReferences count])
    {
      v22 = identifierCopy;
      v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(assetReferences, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = assetReferences;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            identifier = [*(*(&v23 + 1) + 8 * v14) identifier];
            v16 = [referenceCopy assetWithIdentifier:identifier];

            if (v16)
            {
              [v9 addObject:v16];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      identifierCopy = v22;
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

  v17 = [RMStoreDeclarationKey alloc];
  store = [referenceCopy store];
  v19 = [(RMStoreDeclarationKey *)v17 initWithSubscriberIdentifier:identifierCopy store:store declaration:declaration assets:v9];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token
{
  tokenCopy = token;
  declarationIdentifierCopy = declarationIdentifier;
  storeIdentifierCopy = storeIdentifier;
  identifierCopy = identifier;
  v13 = [[RMStoreDeclarationKey alloc] initWithSubscriberIdentifier:identifierCopy storeIdentifier:storeIdentifierCopy declarationIdentifier:declarationIdentifierCopy declarationServerToken:tokenCopy assets:0];

  return v13;
}

+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token assetKeys:(id)keys
{
  keysCopy = keys;
  tokenCopy = token;
  declarationIdentifierCopy = declarationIdentifier;
  storeIdentifierCopy = storeIdentifier;
  identifierCopy = identifier;
  v16 = [[RMStoreDeclarationKey alloc] initWithSubscriberIdentifier:identifierCopy storeIdentifier:storeIdentifierCopy declarationIdentifier:declarationIdentifierCopy declarationServerToken:tokenCopy assetKeys:keysCopy];

  return v16;
}

+ (id)newDeclarationKeyWithoutAssets:(id)assets
{
  assetsCopy = assets;
  subscriberIdentifier = [assetsCopy subscriberIdentifier];
  storeIdentifier = [assetsCopy storeIdentifier];
  declarationIdentifier = [assetsCopy declarationIdentifier];
  declarationServerToken = [assetsCopy declarationServerToken];

  v8 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:subscriberIdentifier storeIdentifier:storeIdentifier declarationIdentifier:declarationIdentifier declarationServerToken:declarationServerToken];
  return v8;
}

- (RMStoreDeclarationKey)initWithDeclarationKey:(id)key
{
  keyCopy = key;
  v25.receiver = self;
  v25.super_class = RMStoreDeclarationKey;
  v6 = [(RMStoreDeclarationKey *)&v25 init];
  v7 = v6;
  if (v6)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__RMStoreDeclarationKey_initWithDeclarationKey___block_invoke;
    v18[3] = &unk_279B05E98;
    v20 = &v21;
    v8 = v6;
    v19 = v8;
    [(RMStoreDeclarationKey *)v8 _parseDeclarationKey:keyCopy completionHandler:v18];
    if (*(v22 + 24) == 1)
    {
      objc_storeStrong(&v8->_key, key);
      v9 = MEMORY[0x277CCACA8];
      subscriberIdentifier = v8->_subscriberIdentifier;
      storeIdentifier = v8->_storeIdentifier;
      v12 = v8->_declarationIdentifier;
      v13 = [(NSString *)v12 dataUsingEncoding:4];
      v14 = [v13 base64EncodedStringWithOptions:0];

      v15 = [v9 stringWithFormat:@"%@/%@:%@", subscriberIdentifier, storeIdentifier, v14];
      keyWithoutServerToken = v8->_keyWithoutServerToken;
      v8->_keyWithoutServerToken = v15;
    }

    _Block_object_dispose(&v21, 8);
  }

  return v7;
}

void __48__RMStoreDeclarationKey_initWithDeclarationKey___block_invoke(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v18 = *(a1 + 32);
  v19 = *(v18 + 24);
  *(v18 + 24) = v13;
  v31 = v13;

  v20 = *(a1 + 32);
  v21 = *(v20 + 32);
  *(v20 + 32) = v14;
  v22 = v14;

  v23 = *(a1 + 32);
  v24 = *(v23 + 40);
  *(v23 + 40) = v15;
  v25 = v15;

  v26 = *(a1 + 32);
  v27 = *(v26 + 48);
  *(v26 + 48) = v16;
  v28 = v16;

  v29 = *(a1 + 32);
  v30 = *(v29 + 56);
  *(v29 + 56) = v17;
}

- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)identifier store:(id)store declaration:(id)declaration assets:(id)assets
{
  assetsCopy = assets;
  declarationCopy = declaration;
  identifierCopy = identifier;
  identifier = [store identifier];
  declarationIdentifier = [declarationCopy declarationIdentifier];
  declarationServerToken = [declarationCopy declarationServerToken];

  v16 = [(RMStoreDeclarationKey *)self initWithSubscriberIdentifier:identifierCopy storeIdentifier:identifier declarationIdentifier:declarationIdentifier declarationServerToken:declarationServerToken assets:assetsCopy];
  return v16;
}

- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token assets:(id)assets
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storeIdentifierCopy = storeIdentifier;
  declarationIdentifierCopy = declarationIdentifier;
  tokenCopy = token;
  assetsCopy = assets;
  v17 = assetsCopy;
  if (assetsCopy && [assetsCopy count])
  {
    selfCopy = self;
    v29 = storeIdentifierCopy;
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [RMStoreAssetKey newAssetKeyWithAsset:*(*(&v30 + 1) + 8 * i)];
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v21);
    }

    storeIdentifierCopy = v29;
    self = selfCopy;
  }

  else
  {
    v18 = 0;
  }

  v25 = [(RMStoreDeclarationKey *)self initWithSubscriberIdentifier:identifierCopy storeIdentifier:storeIdentifierCopy declarationIdentifier:declarationIdentifierCopy declarationServerToken:tokenCopy assetKeys:v18];

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token assetKeys:(id)keys
{
  v55 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storeIdentifierCopy = storeIdentifier;
  declarationIdentifierCopy = declarationIdentifier;
  tokenCopy = token;
  keysCopy = keys;
  v53.receiver = self;
  v53.super_class = RMStoreDeclarationKey;
  v17 = [(RMStoreDeclarationKey *)&v53 init];
  v18 = v17;
  if (v17)
  {
    v46 = storeIdentifierCopy;
    v47 = identifierCopy;
    objc_storeStrong(&v17->_subscriberIdentifier, identifier);
    objc_storeStrong(&v18->_storeIdentifier, storeIdentifier);
    objc_storeStrong(&v18->_declarationIdentifier, declarationIdentifier);
    objc_storeStrong(&v18->_declarationServerToken, token);
    v19 = MEMORY[0x277CCACA8];
    subscriberIdentifier = v18->_subscriberIdentifier;
    storeIdentifier = v18->_storeIdentifier;
    v22 = [(NSString *)v18->_declarationIdentifier dataUsingEncoding:4];
    v23 = [v22 base64EncodedStringWithOptions:0];

    v24 = [v19 stringWithFormat:@"%@/%@:%@", subscriberIdentifier, storeIdentifier, v23];
    keyWithoutServerToken = v18->_keyWithoutServerToken;
    v18->_keyWithoutServerToken = v24;

    if (keysCopy && [keysCopy count])
    {
      v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(keysCopy, "count")}];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v27 = keysCopy;
      v28 = [v27 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v50;
        do
        {
          v31 = 0;
          do
          {
            if (*v50 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [*(*(&v49 + 1) + 8 * v31) key];
            [v26 addObject:v32];

            ++v31;
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v29);
      }

      objc_storeStrong(&v18->_declarationAssets, keys);
      v33 = MEMORY[0x277CCACA8];
      v34 = v18->_keyWithoutServerToken;
      v35 = [(NSString *)v18->_declarationServerToken dataUsingEncoding:4];
      v36 = [v35 base64EncodedStringWithOptions:0];

      v37 = [v26 componentsJoinedByString:@"$"];
      v38 = [v33 stringWithFormat:@"%@.%@$%@", v34, v36, v37];
      key = v18->_key;
      v18->_key = v38;
    }

    else
    {
      v40 = MEMORY[0x277CCACA8];
      v41 = v18->_keyWithoutServerToken;
      v42 = [(NSString *)v18->_declarationServerToken dataUsingEncoding:4];
      v26 = [v42 base64EncodedStringWithOptions:0];

      v43 = [v40 stringWithFormat:@"%@.%@", v41, v26];
      v36 = v18->_key;
      v18->_key = v43;
    }

    storeIdentifierCopy = v46;
    identifierCopy = v47;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)isValid
{
  v2 = [(RMStoreDeclarationKey *)self key];
  v3 = v2 != 0;

  return v3;
}

- (id)keyByReplacingSubscriberIdentifier:(id)identifier
{
  identifierCopy = identifier;
  storeIdentifier = [(RMStoreDeclarationKey *)self storeIdentifier];
  declarationIdentifier = [(RMStoreDeclarationKey *)self declarationIdentifier];
  declarationServerToken = [(RMStoreDeclarationKey *)self declarationServerToken];
  declarationAssets = [(RMStoreDeclarationKey *)self declarationAssets];
  v9 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:identifierCopy storeIdentifier:storeIdentifier declarationIdentifier:declarationIdentifier declarationServerToken:declarationServerToken assetKeys:declarationAssets];

  return v9;
}

+ (BOOL)assetDifferencesOnlyForOldKey:(id)key newKey:(id)newKey
{
  keyCopy = key;
  newKeyCopy = newKey;
  keyWithoutServerToken = [keyCopy keyWithoutServerToken];
  keyWithoutServerToken2 = [newKeyCopy keyWithoutServerToken];
  if ([keyWithoutServerToken isEqualToString:keyWithoutServerToken2])
  {
    declarationServerToken = [keyCopy declarationServerToken];
    declarationServerToken2 = [newKeyCopy declarationServerToken];
    v11 = [declarationServerToken isEqualToString:declarationServerToken2];

    if (!v11)
    {
      LOBYTE(v21) = 0;
      goto LABEL_13;
    }

    v12 = MEMORY[0x277CBEB98];
    declarationAssets = [keyCopy declarationAssets];
    v14 = declarationAssets;
    v15 = MEMORY[0x277CBEBF8];
    if (declarationAssets)
    {
      v16 = declarationAssets;
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }

    keyWithoutServerToken = [v12 setWithArray:v16];

    v17 = MEMORY[0x277CBEB98];
    declarationAssets2 = [newKeyCopy declarationAssets];
    v19 = declarationAssets2;
    if (declarationAssets2)
    {
      v20 = declarationAssets2;
    }

    else
    {
      v20 = v15;
    }

    keyWithoutServerToken2 = [v17 setWithArray:v20];

    v21 = [keyWithoutServerToken isEqualToSet:keyWithoutServerToken2] ^ 1;
  }

  else
  {
    LOBYTE(v21) = 0;
  }

LABEL_13:
  return v21;
}

+ (void)synchronizeOldKeys:(id)keys newKeys:(id)newKeys returningUnchangedKeys:(id *)unchangedKeys returningApplyKeys:(id *)applyKeys returningRemoveKeys:(id *)removeKeys
{
  v73 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  newKeysCopy = newKeys;
  v10 = keysCopy;
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v67;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v67 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v66 + 1) + 8 * i);
        keyWithoutServerToken = [v17 keyWithoutServerToken];
        [v11 setObject:v17 forKeyedSubscript:keyWithoutServerToken];
      }

      v14 = [v12 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v14);
  }

  v19 = newKeysCopy;
  v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v67;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v67 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v66 + 1) + 8 * j);
        keyWithoutServerToken2 = [v26 keyWithoutServerToken];
        [v20 setObject:v26 forKeyedSubscript:keyWithoutServerToken2];
      }

      v23 = [v21 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v23);
  }

  v28 = MEMORY[0x277CBEB98];
  v50 = v20;
  allKeys = [v20 allKeys];
  v30 = [v28 setWithArray:allKeys];

  v31 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v21, "count")}];
  v54 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v21, "count")}];
  v56 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v12, "count")}];
  v57 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v12, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v21;
  v32 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v63;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v63 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v62 + 1) + 8 * k);
        if ([v12 containsObject:v36])
        {
          [v31 addObject:v36];
        }

        else
        {
          keyWithoutServerToken3 = [v36 keyWithoutServerToken];
          v38 = [v11 objectForKeyedSubscript:keyWithoutServerToken3];
          if (v38)
          {
            v39 = [RMStoreDeclarationKeyPair newDeclarationKeyPairWithUpdateKey:v36 replaceKey:v38];
            [v54 addObject:v39];

            [v56 addObject:v38];
          }

          else
          {
            v40 = [RMStoreDeclarationKeyPair newDeclarationKeyPairWithNewKey:v36];
            [v54 addObject:v40];
          }
        }
      }

      v33 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v33);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v41 = v12;
  v42 = [v41 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v59;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v58 + 1) + 8 * m);
        keyWithoutServerToken4 = [v46 keyWithoutServerToken];
        v48 = [v30 containsObject:keyWithoutServerToken4];

        if (!v48 || ([v31 containsObject:v46] & 1) == 0 && (objc_msgSend(v56, "containsObject:", v46) & 1) == 0)
        {
          [v57 addObject:v46];
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v43);
  }

  *unchangedKeys = [v31 copy];
  *applyKeys = [v54 copy];
  *removeKeys = [v57 copy];

  v49 = *MEMORY[0x277D85DE8];
}

- (RMStoreDeclarationKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"declaration-key"];

  v6 = [(RMStoreDeclarationKey *)self initWithDeclarationKey:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(RMStoreDeclarationKey *)self key];
  [coderCopy encodeObject:v5 forKey:@"declaration-key"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  subscriberIdentifier = [(RMStoreDeclarationKey *)self subscriberIdentifier];
  storeIdentifier = [(RMStoreDeclarationKey *)self storeIdentifier];
  declarationIdentifier = [(RMStoreDeclarationKey *)self declarationIdentifier];
  declarationServerToken = [(RMStoreDeclarationKey *)self declarationServerToken];
  v10 = [v3 stringWithFormat:@"<%@: %p { subscriber = %@, store = %@, identifier = %@, serverToken = %@ }>", v5, self, subscriberIdentifier, storeIdentifier, declarationIdentifier, declarationServerToken];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RMStoreDeclarationKey *)self key];
      v6 = [(RMStoreDeclarationKey *)equalCopy key];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(RMStoreDeclarationKey *)self key];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [(RMStoreDeclarationKey *)self key];
  v4 = [RMStoreDeclarationKey newDeclarationKey:v3];

  return v4;
}

- (void)_parseDeclarationKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v6 = [keyCopy rangeOfString:@"/"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
    v8 = 0;
    v9 = &stru_287470728;
    v10 = &stru_287470728;
    v11 = &stru_287470728;
    v12 = &stru_287470728;
  }

  else
  {
    v13 = v6;
    v12 = [keyCopy substringToIndex:v6];
    v14 = [keyCopy substringFromIndex:v13 + 1];
    v15 = [v14 componentsSeparatedByString:@":"];
    if ([v15 count] == 2)
    {
      v11 = [v15 objectAtIndexedSubscript:0];
      v16 = [v15 objectAtIndexedSubscript:1];
      v17 = [v16 componentsSeparatedByString:@"$"];

      firstObject = [v17 firstObject];
      v18 = [firstObject componentsSeparatedByString:@"."];
      v19 = [v18 count];
      v8 = v19 == 2;
      v31 = v19 == 2;
      v29 = v18;
      if (v19 == 2)
      {
        v27 = [v18 objectAtIndexedSubscript:0];
        v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v27 options:0];
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v20 encoding:4];

        v21 = [v18 objectAtIndexedSubscript:1];
        v22 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v21 options:0];
        v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v22 encoding:4];

        v8 = v31;
      }

      else
      {
        v9 = &stru_287470728;
        v10 = &stru_287470728;
      }

      if ([v17 count] < 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count") - 1}];
        if ([v17 count] >= 2)
        {
          v26 = v15;
          v28 = v12;
          v23 = 1;
          do
          {
            v24 = [v17 objectAtIndexedSubscript:v23];
            v25 = [RMStoreAssetKey newAssetKey:v24];
            [v7 addObject:v25];

            ++v23;
          }

          while (v23 < [v17 count]);
          v12 = v28;
          v15 = v26;
        }

        v8 = v31;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = &stru_287470728;
      v10 = &stru_287470728;
      v11 = &stru_287470728;
    }
  }

  handlerCopy[2](handlerCopy, v8, v12, v11, v10, v9, v7);
}

@end