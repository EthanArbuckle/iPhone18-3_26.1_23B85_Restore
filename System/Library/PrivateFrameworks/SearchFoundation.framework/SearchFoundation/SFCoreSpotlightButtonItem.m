@interface SFCoreSpotlightButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCoreSpotlightButtonItem)initWithCoder:(id)a3;
- (SFCoreSpotlightButtonItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCoreSpotlightButtonItem

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFCoreSpotlightButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  v4 = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
  v5 = [v4 hash];
  v6 = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFButtonItem *)self uniqueId];

  return v10 ^ v3;
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
    if ([(SFCoreSpotlightButtonItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFCoreSpotlightButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
        v8 = [(SFCoreSpotlightButtonItem *)v6 actionItemTypes];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v9 = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
        if (v9)
        {
          v10 = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
          v3 = [(SFCoreSpotlightButtonItem *)v6 actionItemTypes];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = v10;
        }

        v12 = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
        v13 = [(SFCoreSpotlightButtonItem *)v6 applicationBundleIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        v15 = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
        if (v15)
        {
          v27 = v12;
          v16 = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
          v29 = [(SFCoreSpotlightButtonItem *)v6 applicationBundleIdentifier];
          v30 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v12 = v27;
            goto LABEL_29;
          }

          v31 = v15;
          v32 = v3;
          v12 = v27;
        }

        else
        {
          v31 = 0;
          v32 = v3;
        }

        v17 = [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
        v18 = [(SFCoreSpotlightButtonItem *)v6 coreSpotlightIdentifier];
        if ((v17 != 0) == (v18 == 0))
        {

          v11 = 0;
          v15 = v31;
          v3 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = v18;
        v26 = v17;
        [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
        v28 = v15 = v31;
        if (v28)
        {
          v19 = [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
          v23 = [(SFCoreSpotlightButtonItem *)v6 coreSpotlightIdentifier];
          v24 = v19;
          v20 = [v19 isEqual:?];
          v3 = v32;
          if (!v20)
          {
            v11 = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              v10 = v33;
              if (!v9)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          v3 = v32;
        }

        v21 = [(SFButtonItem *)self uniqueId];
        v11 = v21 == [(SFButtonItem *)v6 uniqueId];
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v11 = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFCoreSpotlightButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:a3];
  v5 = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
  v6 = [v5 copy];
  [v4 setActionItemTypes:v6];

  v7 = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  v8 = [v7 copy];
  [v4 setApplicationBundleIdentifier:v8];

  v9 = [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
  v10 = [v9 copy];
  [v4 setCoreSpotlightIdentifier:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCoreSpotlightButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBCoreSpotlightButtonItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCoreSpotlightButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBCoreSpotlightButtonItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCoreSpotlightButtonItem alloc] initWithFacade:self];
  v5 = [(_SFPBCoreSpotlightButtonItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCoreSpotlightButtonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCoreSpotlightButtonItem alloc] initWithData:v5];
  v7 = [(SFCoreSpotlightButtonItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFCoreSpotlightButtonItem)initWithProtobuf:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SFCoreSpotlightButtonItem;
  v5 = [(SFCoreSpotlightButtonItem *)&v24 init];
  if (v5)
  {
    v6 = [v4 actionItemTypes];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v4 actionItemTypes];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (*(*(&v20 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    [(SFCoreSpotlightButtonItem *)v5 setActionItemTypes:v7];
    v13 = [v4 applicationBundleIdentifier];

    if (v13)
    {
      v14 = [v4 applicationBundleIdentifier];
      [(SFCoreSpotlightButtonItem *)v5 setApplicationBundleIdentifier:v14];
    }

    v15 = [v4 coreSpotlightIdentifier];

    if (v15)
    {
      v16 = [v4 coreSpotlightIdentifier];
      [(SFCoreSpotlightButtonItem *)v5 setCoreSpotlightIdentifier:v16];
    }

    if ([v4 uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

@end