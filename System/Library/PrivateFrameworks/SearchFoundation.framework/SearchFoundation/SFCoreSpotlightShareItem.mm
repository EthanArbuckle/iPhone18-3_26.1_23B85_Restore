@interface SFCoreSpotlightShareItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCoreSpotlightShareItem)initWithCoder:(id)a3;
- (SFCoreSpotlightShareItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCoreSpotlightShareItem

- (SFCoreSpotlightShareItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFCoreSpotlightShareItem;
  v5 = [(SFCoreSpotlightShareItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 shareProviderTypeIdentifier];

    if (v6)
    {
      v7 = [v4 shareProviderTypeIdentifier];
      [(SFCoreSpotlightShareItem *)v5 setShareProviderTypeIdentifier:v7];
    }

    v8 = [v4 applicationBundleIdentifier];

    if (v8)
    {
      v9 = [v4 applicationBundleIdentifier];
      [(SFCoreSpotlightShareItem *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [v4 coreSpotlightIdentifier];

    if (v10)
    {
      v11 = [v4 coreSpotlightIdentifier];
      [(SFCoreSpotlightShareItem *)v5 setCoreSpotlightIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFCoreSpotlightShareItem;
  v3 = [(SFShareItem *)&v11 hash];
  v4 = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  v5 = [v4 hash];
  v6 = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v3;
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
    if ([(SFCoreSpotlightShareItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFCoreSpotlightShareItem;
      if ([(SFShareItem *)&v32 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
        v8 = [(SFCoreSpotlightShareItem *)v6 shareProviderTypeIdentifier];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        v9 = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
        if (v9)
        {
          v3 = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
          v10 = [(SFCoreSpotlightShareItem *)v6 shareProviderTypeIdentifier];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = v10;
        }

        v12 = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
        v13 = [(SFCoreSpotlightShareItem *)v6 applicationBundleIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        v15 = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
        if (v15)
        {
          v25 = v12;
          v16 = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
          v27 = [(SFCoreSpotlightShareItem *)v6 applicationBundleIdentifier];
          v28 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v12 = v25;
            goto LABEL_26;
          }

          v29 = v15;
          v30 = v3;
          v12 = v25;
        }

        else
        {
          v29 = 0;
          v30 = v3;
        }

        v17 = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
        v18 = [(SFCoreSpotlightShareItem *)v6 coreSpotlightIdentifier];
        if ((v17 != 0) == (v18 == 0))
        {

          v11 = 0;
          v15 = v29;
          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = v17;
          v26 = v18;
          v19 = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
          v15 = v29;
          if (v19)
          {
            v23 = v19;
            v22 = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
            v20 = [(SFCoreSpotlightShareItem *)v6 coreSpotlightIdentifier];
            v11 = [v22 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        v10 = v31;
        if (!v9)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFCoreSpotlightShareItem;
  v4 = [(SFShareItem *)&v12 copyWithZone:a3];
  v5 = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  v6 = [v5 copy];
  [v4 setShareProviderTypeIdentifier:v6];

  v7 = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
  v8 = [v7 copy];
  [v4 setApplicationBundleIdentifier:v8];

  v9 = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
  v10 = [v9 copy];
  [v4 setCoreSpotlightIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCoreSpotlightShareItem alloc] initWithFacade:self];
  v3 = [(_SFPBCoreSpotlightShareItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCoreSpotlightShareItem alloc] initWithFacade:self];
  v3 = [(_SFPBCoreSpotlightShareItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCoreSpotlightShareItem alloc] initWithFacade:self];
  v5 = [(_SFPBCoreSpotlightShareItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCoreSpotlightShareItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCoreSpotlightShareItem alloc] initWithData:v5];
  v7 = [(SFCoreSpotlightShareItem *)self initWithProtobuf:v6];

  return v7;
}

@end