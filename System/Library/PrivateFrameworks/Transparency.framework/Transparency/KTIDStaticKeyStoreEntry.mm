@interface KTIDStaticKeyStoreEntry
- (KTIDStaticKeyStoreEntry)init;
- (KTIDStaticKeyStoreEntry)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMappings:(id)a3;
@end

@implementation KTIDStaticKeyStoreEntry

- (KTIDStaticKeyStoreEntry)init
{
  v6.receiver = self;
  v6.super_class = KTIDStaticKeyStoreEntry;
  v2 = [(KTIDStaticKeyStoreEntry *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [(KTIDStaticKeyStoreEntry *)v2 setHandles:v3];

    v4 = v2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[KTIDStaticKeyStoreEntry allocWithZone:](KTIDStaticKeyStoreEntry init];
  v6 = [(KTIDStaticKeyStoreEntry *)self contactIdentifier];
  v7 = [v6 copyWithZone:a3];
  [(KTIDStaticKeyStoreEntry *)v5 setContactIdentifier:v7];

  v8 = [(KTIDStaticKeyStoreEntry *)self contactExternalURI];
  v9 = [v8 copyWithZone:a3];
  [(KTIDStaticKeyStoreEntry *)v5 setContactExternalURI:v9];

  v10 = [(KTIDStaticKeyStoreEntry *)self handles];
  v11 = [v10 copyWithZone:a3];
  [(KTIDStaticKeyStoreEntry *)v5 setHandles:v11];

  v12 = [(KTIDStaticKeyStoreEntry *)self publicKeyID];
  v13 = [v12 copyWithZone:a3];
  [(KTIDStaticKeyStoreEntry *)v5 setPublicKeyID:v13];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KTIDStaticKeyStoreEntry *)self contactIdentifier];
  [v4 encodeObject:v5 forKey:@"contactIdentifier"];

  v6 = [(KTIDStaticKeyStoreEntry *)self contactExternalURI];
  [v4 encodeObject:v6 forKey:@"contactExternalURI"];

  v7 = [(KTIDStaticKeyStoreEntry *)self publicKeyID];
  [v4 encodeObject:v7 forKey:@"publicKeyID"];

  v8 = [(KTIDStaticKeyStoreEntry *)self handles];
  [v4 encodeObject:v8 forKey:@"handles"];
}

- (KTIDStaticKeyStoreEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(KTIDStaticKeyStoreEntry);
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyID"];
    [(KTIDStaticKeyStoreEntry *)v5 setPublicKeyID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    [(KTIDStaticKeyStoreEntry *)v5 setContactIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactExternalURI"];
    [(KTIDStaticKeyStoreEntry *)v5 setContactExternalURI:v8];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"handles"];
    v14 = [v13 mutableCopy];
    [(KTIDStaticKeyStoreEntry *)v5 setHandles:v14];

    v15 = v5;
  }

  return v5;
}

- (void)setMappings:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v6 = [(KTIDStaticKeyStoreEntry *)self handles];
  v7 = [v6 allKeys];
  v8 = [v5 setWithArray:v7];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        [v8 removeObject:v14];
        v15 = [(KTIDStaticKeyStoreEntry *)self handles];
        v16 = [v15 objectForKeyedSubscript:v14];

        if (!v16)
        {
          v16 = objc_alloc_init(KTIDStaticKeyStoreHandle);
          [(KTIDStaticKeyStoreHandle *)v16 setHandle:v14];
          [(KTIDStaticKeyStoreHandle *)v16 setValid:0];
          v17 = [(KTIDStaticKeyStoreEntry *)self handles];
          [v17 setObject:v16 forKeyedSubscript:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        v24 = [(KTIDStaticKeyStoreEntry *)self handles];
        [v24 setObject:0 forKeyedSubscript:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end