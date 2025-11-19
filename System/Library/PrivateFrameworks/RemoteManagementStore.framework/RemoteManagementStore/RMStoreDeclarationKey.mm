@interface RMStoreDeclarationKey
+ (BOOL)assetDifferencesOnlyForOldKey:(id)a3 newKey:(id)a4;
+ (id)newDeclarationKey:(id)a3;
+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)a3 reference:(id)a4;
+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)a3 store:(id)a4 declaration:(id)a5;
+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)a3 storeIdentifier:(id)a4 declarationIdentifier:(id)a5 declarationServerToken:(id)a6;
+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)a3 storeIdentifier:(id)a4 declarationIdentifier:(id)a5 declarationServerToken:(id)a6 assetKeys:(id)a7;
+ (id)newDeclarationKeyWithoutAssets:(id)a3;
+ (void)synchronizeOldKeys:(id)a3 newKeys:(id)a4 returningUnchangedKeys:(id *)a5 returningApplyKeys:(id *)a6 returningRemoveKeys:(id *)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (RMStoreDeclarationKey)initWithCoder:(id)a3;
- (RMStoreDeclarationKey)initWithDeclarationKey:(id)a3;
- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)a3 store:(id)a4 declaration:(id)a5 assets:(id)a6;
- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)a3 storeIdentifier:(id)a4 declarationIdentifier:(id)a5 declarationServerToken:(id)a6 assetKeys:(id)a7;
- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)a3 storeIdentifier:(id)a4 declarationIdentifier:(id)a5 declarationServerToken:(id)a6 assets:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)keyByReplacingSubscriberIdentifier:(id)a3;
- (unint64_t)hash;
- (void)_parseDeclarationKey:(id)a3 completionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMStoreDeclarationKey

+ (id)newDeclarationKey:(id)a3
{
  v3 = a3;
  v4 = [[RMStoreDeclarationKey alloc] initWithDeclarationKey:v3];

  return v4;
}

+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)a3 store:(id)a4 declaration:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[RMStoreDeclarationKey alloc] initWithSubscriberIdentifier:v9 store:v8 declaration:v7 assets:0];

  return v10;
}

+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)a3 reference:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 declaration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 assetReferences];
    if ([v8 count])
    {
      v22 = v5;
      v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v8;
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

            v15 = [*(*(&v23 + 1) + 8 * v14) identifier];
            v16 = [v6 assetWithIdentifier:v15];

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

      v5 = v22;
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
  v18 = [v6 store];
  v19 = [(RMStoreDeclarationKey *)v17 initWithSubscriberIdentifier:v5 store:v18 declaration:v7 assets:v9];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)a3 storeIdentifier:(id)a4 declarationIdentifier:(id)a5 declarationServerToken:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[RMStoreDeclarationKey alloc] initWithSubscriberIdentifier:v12 storeIdentifier:v11 declarationIdentifier:v10 declarationServerToken:v9 assets:0];

  return v13;
}

+ (id)newDeclarationKeyWithSubscriberIdentifier:(id)a3 storeIdentifier:(id)a4 declarationIdentifier:(id)a5 declarationServerToken:(id)a6 assetKeys:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[RMStoreDeclarationKey alloc] initWithSubscriberIdentifier:v15 storeIdentifier:v14 declarationIdentifier:v13 declarationServerToken:v12 assetKeys:v11];

  return v16;
}

+ (id)newDeclarationKeyWithoutAssets:(id)a3
{
  v3 = a3;
  v4 = [v3 subscriberIdentifier];
  v5 = [v3 storeIdentifier];
  v6 = [v3 declarationIdentifier];
  v7 = [v3 declarationServerToken];

  v8 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:v4 storeIdentifier:v5 declarationIdentifier:v6 declarationServerToken:v7];
  return v8;
}

- (RMStoreDeclarationKey)initWithDeclarationKey:(id)a3
{
  v5 = a3;
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
    [(RMStoreDeclarationKey *)v8 _parseDeclarationKey:v5 completionHandler:v18];
    if (*(v22 + 24) == 1)
    {
      objc_storeStrong(&v8->_key, a3);
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

- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)a3 store:(id)a4 declaration:(id)a5 assets:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a4 identifier];
  v14 = [v11 declarationIdentifier];
  v15 = [v11 declarationServerToken];

  v16 = [(RMStoreDeclarationKey *)self initWithSubscriberIdentifier:v12 storeIdentifier:v13 declarationIdentifier:v14 declarationServerToken:v15 assets:v10];
  return v16;
}

- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)a3 storeIdentifier:(id)a4 declarationIdentifier:(id)a5 declarationServerToken:(id)a6 assets:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v16 && [v16 count])
  {
    v28 = self;
    v29 = v13;
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

    v13 = v29;
    self = v28;
  }

  else
  {
    v18 = 0;
  }

  v25 = [(RMStoreDeclarationKey *)self initWithSubscriberIdentifier:v12 storeIdentifier:v13 declarationIdentifier:v14 declarationServerToken:v15 assetKeys:v18];

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (RMStoreDeclarationKey)initWithSubscriberIdentifier:(id)a3 storeIdentifier:(id)a4 declarationIdentifier:(id)a5 declarationServerToken:(id)a6 assetKeys:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v48 = a5;
  v15 = a6;
  v16 = a7;
  v53.receiver = self;
  v53.super_class = RMStoreDeclarationKey;
  v17 = [(RMStoreDeclarationKey *)&v53 init];
  v18 = v17;
  if (v17)
  {
    v46 = v14;
    v47 = v13;
    objc_storeStrong(&v17->_subscriberIdentifier, a3);
    objc_storeStrong(&v18->_storeIdentifier, a4);
    objc_storeStrong(&v18->_declarationIdentifier, a5);
    objc_storeStrong(&v18->_declarationServerToken, a6);
    v19 = MEMORY[0x277CCACA8];
    subscriberIdentifier = v18->_subscriberIdentifier;
    storeIdentifier = v18->_storeIdentifier;
    v22 = [(NSString *)v18->_declarationIdentifier dataUsingEncoding:4];
    v23 = [v22 base64EncodedStringWithOptions:0];

    v24 = [v19 stringWithFormat:@"%@/%@:%@", subscriberIdentifier, storeIdentifier, v23];
    keyWithoutServerToken = v18->_keyWithoutServerToken;
    v18->_keyWithoutServerToken = v24;

    if (v16 && [v16 count])
    {
      v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v27 = v16;
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

      objc_storeStrong(&v18->_declarationAssets, a7);
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

    v14 = v46;
    v13 = v47;
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

- (id)keyByReplacingSubscriberIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreDeclarationKey *)self storeIdentifier];
  v6 = [(RMStoreDeclarationKey *)self declarationIdentifier];
  v7 = [(RMStoreDeclarationKey *)self declarationServerToken];
  v8 = [(RMStoreDeclarationKey *)self declarationAssets];
  v9 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:v4 storeIdentifier:v5 declarationIdentifier:v6 declarationServerToken:v7 assetKeys:v8];

  return v9;
}

+ (BOOL)assetDifferencesOnlyForOldKey:(id)a3 newKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 keyWithoutServerToken];
  v8 = [v6 keyWithoutServerToken];
  if ([v7 isEqualToString:v8])
  {
    v9 = [v5 declarationServerToken];
    v10 = [v6 declarationServerToken];
    v11 = [v9 isEqualToString:v10];

    if (!v11)
    {
      LOBYTE(v21) = 0;
      goto LABEL_13;
    }

    v12 = MEMORY[0x277CBEB98];
    v13 = [v5 declarationAssets];
    v14 = v13;
    v15 = MEMORY[0x277CBEBF8];
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }

    v7 = [v12 setWithArray:v16];

    v17 = MEMORY[0x277CBEB98];
    v18 = [v6 declarationAssets];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    v8 = [v17 setWithArray:v20];

    v21 = [v7 isEqualToSet:v8] ^ 1;
  }

  else
  {
    LOBYTE(v21) = 0;
  }

LABEL_13:
  return v21;
}

+ (void)synchronizeOldKeys:(id)a3 newKeys:(id)a4 returningUnchangedKeys:(id *)a5 returningApplyKeys:(id *)a6 returningRemoveKeys:(id *)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
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
        v18 = [v17 keyWithoutServerToken];
        [v11 setObject:v17 forKeyedSubscript:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v14);
  }

  v19 = v9;
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
        v27 = [v26 keyWithoutServerToken];
        [v20 setObject:v26 forKeyedSubscript:v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v23);
  }

  v28 = MEMORY[0x277CBEB98];
  v50 = v20;
  v29 = [v20 allKeys];
  v30 = [v28 setWithArray:v29];

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
          v37 = [v36 keyWithoutServerToken];
          v38 = [v11 objectForKeyedSubscript:v37];
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
        v47 = [v46 keyWithoutServerToken];
        v48 = [v30 containsObject:v47];

        if (!v48 || ([v31 containsObject:v46] & 1) == 0 && (objc_msgSend(v56, "containsObject:", v46) & 1) == 0)
        {
          [v57 addObject:v46];
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v43);
  }

  *a5 = [v31 copy];
  *a6 = [v54 copy];
  *a7 = [v57 copy];

  v49 = *MEMORY[0x277D85DE8];
}

- (RMStoreDeclarationKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"declaration-key"];

  v6 = [(RMStoreDeclarationKey *)self initWithDeclarationKey:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreDeclarationKey *)self key];
  [v4 encodeObject:v5 forKey:@"declaration-key"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(RMStoreDeclarationKey *)self subscriberIdentifier];
  v7 = [(RMStoreDeclarationKey *)self storeIdentifier];
  v8 = [(RMStoreDeclarationKey *)self declarationIdentifier];
  v9 = [(RMStoreDeclarationKey *)self declarationServerToken];
  v10 = [v3 stringWithFormat:@"<%@: %p { subscriber = %@, store = %@, identifier = %@, serverToken = %@ }>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RMStoreDeclarationKey *)self key];
      v6 = [(RMStoreDeclarationKey *)v4 key];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(RMStoreDeclarationKey *)self key];
  v4 = [RMStoreDeclarationKey newDeclarationKey:v3];

  return v4;
}

- (void)_parseDeclarationKey:(id)a3 completionHandler:(id)a4
{
  v32 = a3;
  v5 = a4;
  v6 = [v32 rangeOfString:@"/"];
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
    v12 = [v32 substringToIndex:v6];
    v14 = [v32 substringFromIndex:v13 + 1];
    v15 = [v14 componentsSeparatedByString:@":"];
    if ([v15 count] == 2)
    {
      v11 = [v15 objectAtIndexedSubscript:0];
      v16 = [v15 objectAtIndexedSubscript:1];
      v17 = [v16 componentsSeparatedByString:@"$"];

      v30 = [v17 firstObject];
      v18 = [v30 componentsSeparatedByString:@"."];
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

  v5[2](v5, v8, v12, v11, v10, v9, v7);
}

@end