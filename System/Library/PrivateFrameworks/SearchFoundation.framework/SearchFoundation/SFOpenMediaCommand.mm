@interface SFOpenMediaCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenMediaCommand)initWithCoder:(id)a3;
- (SFOpenMediaCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFOpenMediaCommand

- (SFOpenMediaCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFOpenMediaCommand;
  v5 = [(SFOpenMediaCommand *)&v14 init];
  if (v5)
  {
    v6 = [v4 mediaMetadata];

    if (v6)
    {
      v7 = [SFMediaMetadata alloc];
      v8 = [v4 mediaMetadata];
      v9 = [(SFMediaMetadata *)v7 initWithProtobuf:v8];
      [(SFOpenMediaCommand *)v5 setMediaMetadata:v9];
    }

    v10 = [v4 clientSelectedBundleIdentifier];

    if (v10)
    {
      v11 = [v4 clientSelectedBundleIdentifier];
      [(SFOpenMediaCommand *)v5 setClientSelectedBundleIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFOpenMediaCommand;
  v3 = [(SFCommand *)&v9 hash];
  v4 = [(SFOpenMediaCommand *)self mediaMetadata];
  v5 = [v4 hash];
  v6 = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
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
    if ([(SFOpenMediaCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFOpenMediaCommand;
      if ([(SFCommand *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFOpenMediaCommand *)self mediaMetadata];
        v8 = [(SFOpenMediaCommand *)v6 mediaMetadata];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v9 = [(SFOpenMediaCommand *)self mediaMetadata];
        if (v9)
        {
          v3 = [(SFOpenMediaCommand *)self mediaMetadata];
          v10 = [(SFOpenMediaCommand *)v6 mediaMetadata];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = v10;
        }

        v12 = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
        v13 = [(SFOpenMediaCommand *)v6 clientSelectedBundleIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
        }

        else
        {
          v15 = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
          if (v15)
          {
            v16 = v15;
            v19 = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
            [(SFOpenMediaCommand *)v6 clientSelectedBundleIdentifier];
            v17 = v20 = v3;
            v11 = [v19 isEqual:v17];

            v3 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        v10 = v21;
        if (!v9)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFOpenMediaCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:a3];
  v5 = [(SFOpenMediaCommand *)self mediaMetadata];
  v6 = [v5 copy];
  [v4 setMediaMetadata:v6];

  v7 = [(SFOpenMediaCommand *)self clientSelectedBundleIdentifier];
  v8 = [v7 copy];
  [v4 setClientSelectedBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenMediaCommand alloc] initWithFacade:self];
  v3 = [(_SFPBOpenMediaCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenMediaCommand alloc] initWithFacade:self];
  v3 = [(_SFPBOpenMediaCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFOpenMediaCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFOpenMediaCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFOpenMediaCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 mediaMetadata];
    [(SFOpenMediaCommand *)v5 setMediaMetadata:v9];

    v10 = [(SFCommand *)v8 clientSelectedBundleIdentifier];
    [(SFOpenMediaCommand *)v5 setClientSelectedBundleIdentifier:v10];

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

@end