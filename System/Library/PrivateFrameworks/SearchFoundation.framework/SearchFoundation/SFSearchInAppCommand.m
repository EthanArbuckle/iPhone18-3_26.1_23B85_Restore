@interface SFSearchInAppCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSearchInAppCommand)initWithCoder:(id)a3;
- (SFSearchInAppCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSearchInAppCommand

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SFSearchInAppCommand;
  v3 = [(SFCommand *)&v10 hash];
  v4 = [(SFSearchInAppCommand *)self searchString];
  v5 = [v4 hash];
  v6 = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFSearchInAppCommand *)self searchInAppType];

  return v8 ^ v3;
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
    if ([(SFSearchInAppCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = SFSearchInAppCommand;
      if ([(SFCommand *)&v23 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFSearchInAppCommand *)self searchString];
        v8 = [(SFSearchInAppCommand *)v6 searchString];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v9 = [(SFSearchInAppCommand *)self searchString];
        if (v9)
        {
          v10 = [(SFSearchInAppCommand *)self searchString];
          v3 = [(SFSearchInAppCommand *)v6 searchString];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_23;
          }

          v22 = v10;
        }

        v12 = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
        v13 = [(SFSearchInAppCommand *)v6 applicationBundleIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_22;
        }

        v15 = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
        if (v15)
        {
          v19 = v3;
          v16 = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
          v20 = [(SFSearchInAppCommand *)v6 applicationBundleIdentifier];
          v21 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v3 = v19;
LABEL_20:

LABEL_21:
LABEL_22:
            v10 = v22;
            if (!v9)
            {
LABEL_24:

              goto LABEL_25;
            }

LABEL_23:

            goto LABEL_24;
          }

          v3 = v19;
        }

        v17 = [(SFSearchInAppCommand *)self searchInAppType];
        v11 = v17 == [(SFSearchInAppCommand *)v6 searchInAppType];
        if (!v15)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v11 = 0;
  }

LABEL_26:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFSearchInAppCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:a3];
  v5 = [(SFSearchInAppCommand *)self searchString];
  v6 = [v5 copy];
  [v4 setSearchString:v6];

  v7 = [(SFSearchInAppCommand *)self applicationBundleIdentifier];
  v8 = [v7 copy];
  [v4 setApplicationBundleIdentifier:v8];

  [v4 setSearchInAppType:{-[SFSearchInAppCommand searchInAppType](self, "searchInAppType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSearchInAppCommand alloc] initWithFacade:self];
  v3 = [(_SFPBSearchInAppCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSearchInAppCommand alloc] initWithFacade:self];
  v3 = [(_SFPBSearchInAppCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFSearchInAppCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFSearchInAppCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFSearchInAppCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 searchString];
    [(SFSearchInAppCommand *)v5 setSearchString:v9];

    v10 = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFSearchInAppCommand *)v5 setApplicationBundleIdentifier:v10];

    [(SFSearchInAppCommand *)v5 setSearchInAppType:[(SFCommand *)v8 searchInAppType]];
    v11 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v11];

    v12 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v12];

    v13 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v13];

    v14 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v14];
  }

  return v5;
}

- (SFSearchInAppCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFSearchInAppCommand;
  v5 = [(SFSearchInAppCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 searchString];

    if (v6)
    {
      v7 = [v4 searchString];
      [(SFSearchInAppCommand *)v5 setSearchString:v7];
    }

    v8 = [v4 applicationBundleIdentifier];

    if (v8)
    {
      v9 = [v4 applicationBundleIdentifier];
      [(SFSearchInAppCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    if ([v4 searchInAppType])
    {
      -[SFSearchInAppCommand setSearchInAppType:](v5, "setSearchInAppType:", [v4 searchInAppType]);
    }

    v10 = v5;
  }

  return v5;
}

@end