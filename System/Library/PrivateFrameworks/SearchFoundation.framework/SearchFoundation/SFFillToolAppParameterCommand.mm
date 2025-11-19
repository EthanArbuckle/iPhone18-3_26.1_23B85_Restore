@interface SFFillToolAppParameterCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFillToolAppParameterCommand)initWithCoder:(id)a3;
- (SFFillToolAppParameterCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFFillToolAppParameterCommand

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFFillToolAppParameterCommand;
  v3 = [(SFCommand *)&v11 hash];
  v4 = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
  v5 = [v4 hash];
  v6 = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFFillToolAppParameterCommand *)self applicationPath];
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
    if ([(SFFillToolAppParameterCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFFillToolAppParameterCommand;
      if ([(SFCommand *)&v32 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
        v8 = [(SFFillToolAppParameterCommand *)v6 encodedTypedValue];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        v9 = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
        if (v9)
        {
          v3 = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
          v10 = [(SFFillToolAppParameterCommand *)v6 encodedTypedValue];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = v10;
        }

        v12 = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
        v13 = [(SFFillToolAppParameterCommand *)v6 bundleIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        v15 = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
        if (v15)
        {
          v25 = v12;
          v16 = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
          v27 = [(SFFillToolAppParameterCommand *)v6 bundleIdentifier];
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

        v17 = [(SFFillToolAppParameterCommand *)self applicationPath];
        v18 = [(SFFillToolAppParameterCommand *)v6 applicationPath];
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
          v19 = [(SFFillToolAppParameterCommand *)self applicationPath];
          v15 = v29;
          if (v19)
          {
            v23 = v19;
            v22 = [(SFFillToolAppParameterCommand *)self applicationPath];
            v20 = [(SFFillToolAppParameterCommand *)v6 applicationPath];
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
  v12.super_class = SFFillToolAppParameterCommand;
  v4 = [(SFCommand *)&v12 copyWithZone:a3];
  v5 = [(SFFillToolAppParameterCommand *)self encodedTypedValue];
  v6 = [v5 copy];
  [v4 setEncodedTypedValue:v6];

  v7 = [(SFFillToolAppParameterCommand *)self bundleIdentifier];
  v8 = [v7 copy];
  [v4 setBundleIdentifier:v8];

  v9 = [(SFFillToolAppParameterCommand *)self applicationPath];
  v10 = [v9 copy];
  [v4 setApplicationPath:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFillToolAppParameterCommand alloc] initWithFacade:self];
  v3 = [(_SFPBFillToolAppParameterCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFillToolAppParameterCommand alloc] initWithFacade:self];
  v3 = [(_SFPBFillToolAppParameterCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFFillToolAppParameterCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFFillToolAppParameterCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFFillToolAppParameterCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 encodedTypedValue];
    [(SFFillToolAppParameterCommand *)v5 setEncodedTypedValue:v9];

    v10 = [(SFCommand *)v8 bundleIdentifier];
    [(SFFillToolAppParameterCommand *)v5 setBundleIdentifier:v10];

    v11 = [(SFCommand *)v8 applicationPath];
    [(SFFillToolAppParameterCommand *)v5 setApplicationPath:v11];

    v12 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v12];

    v13 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v13];

    v14 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v14];

    v15 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v15];
  }

  return v5;
}

- (SFFillToolAppParameterCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFFillToolAppParameterCommand;
  v5 = [(SFFillToolAppParameterCommand *)&v14 init];
  if (v5)
  {
    v6 = [v4 encodedTypedValue];

    if (v6)
    {
      v7 = [v4 encodedTypedValue];
      [(SFFillToolAppParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [v4 bundleIdentifier];

    if (v8)
    {
      v9 = [v4 bundleIdentifier];
      [(SFFillToolAppParameterCommand *)v5 setBundleIdentifier:v9];
    }

    v10 = [v4 applicationPath];

    if (v10)
    {
      v11 = [v4 applicationPath];
      [(SFFillToolAppParameterCommand *)v5 setApplicationPath:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end