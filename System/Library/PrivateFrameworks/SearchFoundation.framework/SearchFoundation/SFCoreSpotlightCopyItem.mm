@interface SFCoreSpotlightCopyItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCoreSpotlightCopyItem)initWithCoder:(id)a3;
- (SFCoreSpotlightCopyItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCoreSpotlightCopyItem

- (SFCoreSpotlightCopyItem)initWithProtobuf:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = SFCoreSpotlightCopyItem;
  v5 = [(SFCoreSpotlightCopyItem *)&v35 init];
  if (v5)
  {
    v6 = [v4 dataProviderTypeIdentifiers];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v4 dataProviderTypeIdentifiers];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (*(*(&v31 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v10);
    }

    [(SFCoreSpotlightCopyItem *)v5 setDataProviderTypeIdentifiers:v7];
    v13 = [v4 fileProviderTypeIdentifiers];
    if (v13)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v14 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = [v4 fileProviderTypeIdentifiers];
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (*(*(&v27 + 1) + 8 * j))
          {
            [v14 addObject:?];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v17);
    }

    [(SFCoreSpotlightCopyItem *)v5 setFileProviderTypeIdentifiers:v14];
    v20 = [v4 applicationBundleIdentifier];

    if (v20)
    {
      v21 = [v4 applicationBundleIdentifier];
      [(SFCoreSpotlightCopyItem *)v5 setApplicationBundleIdentifier:v21];
    }

    v22 = [v4 coreSpotlightIdentifier];

    if (v22)
    {
      v23 = [v4 coreSpotlightIdentifier];
      [(SFCoreSpotlightCopyItem *)v5 setCoreSpotlightIdentifier:v23];
    }

    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = SFCoreSpotlightCopyItem;
  v3 = [(SFCopyItem *)&v13 hash];
  v4 = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  v5 = [v4 hash];
  v6 = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  v9 = v7 ^ [v8 hash];
  v10 = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
  v11 = v9 ^ [v10 hash];

  return v11 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFCoreSpotlightCopyItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v42.receiver = self;
      v42.super_class = SFCoreSpotlightCopyItem;
      if ([(SFCopyItem *)&v42 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
        v8 = [(SFCoreSpotlightCopyItem *)v6 dataProviderTypeIdentifiers];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_38:

          goto LABEL_39;
        }

        v9 = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
        if (v9)
        {
          v10 = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
          v3 = [(SFCoreSpotlightCopyItem *)v6 dataProviderTypeIdentifiers];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_36;
          }

          v41 = v10;
        }

        v12 = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
        v13 = [(SFCoreSpotlightCopyItem *)v6 fileProviderTypeIdentifiers];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_35;
        }

        v15 = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
        v40 = v15;
        if (v15)
        {
          v16 = v15;
          v35 = v14;
          v17 = v12;
          v18 = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
          v37 = [(SFCoreSpotlightCopyItem *)v6 fileProviderTypeIdentifiers];
          v38 = v18;
          if (![v18 isEqual:?])
          {
            v11 = 0;
            v12 = v17;
            v14 = v35;
            goto LABEL_33;
          }

          v39 = v3;
          v12 = v17;
          v14 = v35;
        }

        else
        {
          v39 = v3;
        }

        v19 = [(SFCoreSpotlightCopyItem *)self applicationBundleIdentifier];
        v20 = [(SFCoreSpotlightCopyItem *)v6 applicationBundleIdentifier];
        if ((v19 != 0) == (v20 == 0))
        {

          v11 = 0;
          v3 = v39;
          v16 = v40;
          if (!v40)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v33 = v20;
        v34 = v19;
        [(SFCoreSpotlightCopyItem *)self applicationBundleIdentifier];
        v36 = v16 = v40;
        if (!v36 || (-[SFCoreSpotlightCopyItem applicationBundleIdentifier](self, "applicationBundleIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), -[SFCoreSpotlightCopyItem applicationBundleIdentifier](v6, "applicationBundleIdentifier"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
        {
          v22 = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
          v23 = [(SFCoreSpotlightCopyItem *)v6 coreSpotlightIdentifier];
          if ((v22 != 0) == (v23 == 0))
          {

            v11 = 0;
            v16 = v40;
          }

          else
          {
            v29 = v22;
            v30 = v23;
            v24 = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
            v16 = v40;
            if (v24)
            {
              v28 = v24;
              v27 = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
              v25 = [(SFCoreSpotlightCopyItem *)v6 coreSpotlightIdentifier];
              v11 = [v27 isEqual:?];
            }

            else
            {

              v11 = 1;
            }
          }

          v3 = v39;
          if (!v36)
          {
LABEL_32:

            if (!v16)
            {
LABEL_34:

LABEL_35:
              v10 = v41;
              if (!v9)
              {
LABEL_37:

                goto LABEL_38;
              }

LABEL_36:

              goto LABEL_37;
            }

LABEL_33:

            goto LABEL_34;
          }
        }

        else
        {
          v11 = 0;
          v3 = v39;
        }

        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_39:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = SFCoreSpotlightCopyItem;
  v4 = [(SFCopyItem *)&v14 copyWithZone:a3];
  v5 = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  v6 = [v5 copy];
  [v4 setDataProviderTypeIdentifiers:v6];

  v7 = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  v8 = [v7 copy];
  [v4 setFileProviderTypeIdentifiers:v8];

  v9 = [(SFCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  v10 = [v9 copy];
  [v4 setApplicationBundleIdentifier:v10];

  v11 = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
  v12 = [v11 copy];
  [v4 setCoreSpotlightIdentifier:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCoreSpotlightCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBCoreSpotlightCopyItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCoreSpotlightCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBCoreSpotlightCopyItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCoreSpotlightCopyItem alloc] initWithFacade:self];
  v5 = [(_SFPBCoreSpotlightCopyItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCoreSpotlightCopyItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCoreSpotlightCopyItem alloc] initWithData:v5];
  v7 = [(SFCoreSpotlightCopyItem *)self initWithProtobuf:v6];

  return v7;
}

@end