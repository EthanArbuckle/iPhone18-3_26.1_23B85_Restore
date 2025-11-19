@interface SFRequestProductPageCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRequestProductPageCommand)initWithCoder:(id)a3;
- (SFRequestProductPageCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRequestProductPageCommand

- (SFRequestProductPageCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFRequestProductPageCommand;
  v5 = [(SFRequestProductPageCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 distributorBundleIdentifier];

    if (v6)
    {
      v7 = [v4 distributorBundleIdentifier];
      [(SFRequestProductPageCommand *)v5 setDistributorBundleIdentifier:v7];
    }

    if ([v4 itemIdentifier])
    {
      -[SFRequestProductPageCommand setItemIdentifier:](v5, "setItemIdentifier:", [v4 itemIdentifier]);
    }

    if ([v4 versionIdentifier])
    {
      -[SFRequestProductPageCommand setVersionIdentifier:](v5, "setVersionIdentifier:", [v4 versionIdentifier]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFRequestProductPageCommand;
  v3 = [(SFCommand *)&v9 hash];
  v4 = [(SFRequestProductPageCommand *)self distributorBundleIdentifier];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFRequestProductPageCommand *)self itemIdentifier];
  v7 = v6 ^ [(SFRequestProductPageCommand *)self versionIdentifier];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFRequestProductPageCommand *)v6 isMemberOfClass:objc_opt_class()])
    {
      v15.receiver = self;
      v15.super_class = SFRequestProductPageCommand;
      if ([(SFCommand *)&v15 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFRequestProductPageCommand *)self distributorBundleIdentifier];
        v9 = [(SFRequestProductPageCommand *)v7 distributorBundleIdentifier];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_17:

          goto LABEL_18;
        }

        v10 = [(SFRequestProductPageCommand *)self distributorBundleIdentifier];
        if (!v10 || (-[SFRequestProductPageCommand distributorBundleIdentifier](self, "distributorBundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SFRequestProductPageCommand distributorBundleIdentifier](v7, "distributorBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFRequestProductPageCommand *)self itemIdentifier];
          if (v12 == [(SFRequestProductPageCommand *)v7 itemIdentifier])
          {
            v13 = [(SFRequestProductPageCommand *)self versionIdentifier];
            v11 = v13 == [(SFRequestProductPageCommand *)v7 versionIdentifier];
            if (!v10)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v11 = 0;
            if (!v10)
            {
LABEL_16:

              goto LABEL_17;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFRequestProductPageCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFRequestProductPageCommand *)self distributorBundleIdentifier];
  v6 = [v5 copy];
  [v4 setDistributorBundleIdentifier:v6];

  [v4 setItemIdentifier:{-[SFRequestProductPageCommand itemIdentifier](self, "itemIdentifier")}];
  [v4 setVersionIdentifier:{-[SFRequestProductPageCommand versionIdentifier](self, "versionIdentifier")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRequestProductPageCommand alloc] initWithFacade:self];
  v3 = [(_SFPBRequestProductPageCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRequestProductPageCommand alloc] initWithFacade:self];
  v3 = [(_SFPBRequestProductPageCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFRequestProductPageCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFRequestProductPageCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFRequestProductPageCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 distributorBundleIdentifier];
    [(SFRequestProductPageCommand *)v5 setDistributorBundleIdentifier:v9];

    [(SFRequestProductPageCommand *)v5 setItemIdentifier:[(SFCommand *)v8 itemIdentifier]];
    [(SFRequestProductPageCommand *)v5 setVersionIdentifier:[(SFCommand *)v8 versionIdentifier]];
    v10 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v10];

    v11 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v11];

    v12 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v12];

    v13 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v13];
  }

  return v5;
}

@end