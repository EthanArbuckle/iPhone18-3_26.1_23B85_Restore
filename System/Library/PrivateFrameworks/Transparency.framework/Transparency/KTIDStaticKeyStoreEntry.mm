@interface KTIDStaticKeyStoreEntry
- (KTIDStaticKeyStoreEntry)init;
- (KTIDStaticKeyStoreEntry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setMappings:(id)mappings;
@end

@implementation KTIDStaticKeyStoreEntry

- (KTIDStaticKeyStoreEntry)init
{
  v6.receiver = self;
  v6.super_class = KTIDStaticKeyStoreEntry;
  v2 = [(KTIDStaticKeyStoreEntry *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(KTIDStaticKeyStoreEntry *)v2 setHandles:dictionary];

    v4 = v2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[KTIDStaticKeyStoreEntry allocWithZone:](KTIDStaticKeyStoreEntry init];
  contactIdentifier = [(KTIDStaticKeyStoreEntry *)self contactIdentifier];
  v7 = [contactIdentifier copyWithZone:zone];
  [(KTIDStaticKeyStoreEntry *)v5 setContactIdentifier:v7];

  contactExternalURI = [(KTIDStaticKeyStoreEntry *)self contactExternalURI];
  v9 = [contactExternalURI copyWithZone:zone];
  [(KTIDStaticKeyStoreEntry *)v5 setContactExternalURI:v9];

  handles = [(KTIDStaticKeyStoreEntry *)self handles];
  v11 = [handles copyWithZone:zone];
  [(KTIDStaticKeyStoreEntry *)v5 setHandles:v11];

  publicKeyID = [(KTIDStaticKeyStoreEntry *)self publicKeyID];
  v13 = [publicKeyID copyWithZone:zone];
  [(KTIDStaticKeyStoreEntry *)v5 setPublicKeyID:v13];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contactIdentifier = [(KTIDStaticKeyStoreEntry *)self contactIdentifier];
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];

  contactExternalURI = [(KTIDStaticKeyStoreEntry *)self contactExternalURI];
  [coderCopy encodeObject:contactExternalURI forKey:@"contactExternalURI"];

  publicKeyID = [(KTIDStaticKeyStoreEntry *)self publicKeyID];
  [coderCopy encodeObject:publicKeyID forKey:@"publicKeyID"];

  handles = [(KTIDStaticKeyStoreEntry *)self handles];
  [coderCopy encodeObject:handles forKey:@"handles"];
}

- (KTIDStaticKeyStoreEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(KTIDStaticKeyStoreEntry);
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyID"];
    [(KTIDStaticKeyStoreEntry *)v5 setPublicKeyID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    [(KTIDStaticKeyStoreEntry *)v5 setContactIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactExternalURI"];
    [(KTIDStaticKeyStoreEntry *)v5 setContactExternalURI:v8];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"handles"];
    v14 = [v13 mutableCopy];
    [(KTIDStaticKeyStoreEntry *)v5 setHandles:v14];

    v15 = v5;
  }

  return v5;
}

- (void)setMappings:(id)mappings
{
  v36 = *MEMORY[0x1E69E9840];
  mappingsCopy = mappings;
  v5 = MEMORY[0x1E695DFA8];
  handles = [(KTIDStaticKeyStoreEntry *)self handles];
  allKeys = [handles allKeys];
  v8 = [v5 setWithArray:allKeys];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = mappingsCopy;
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
        handles2 = [(KTIDStaticKeyStoreEntry *)self handles];
        v16 = [handles2 objectForKeyedSubscript:v14];

        if (!v16)
        {
          v16 = objc_alloc_init(KTIDStaticKeyStoreHandle);
          [(KTIDStaticKeyStoreHandle *)v16 setHandle:v14];
          [(KTIDStaticKeyStoreHandle *)v16 setValid:0];
          handles3 = [(KTIDStaticKeyStoreEntry *)self handles];
          [handles3 setObject:v16 forKeyedSubscript:v14];
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
        handles4 = [(KTIDStaticKeyStoreEntry *)self handles];
        [handles4 setObject:0 forKeyedSubscript:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end