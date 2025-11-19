@interface SFFillToolPersonParameterCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFillToolPersonParameterCommand)initWithCoder:(id)a3;
- (SFFillToolPersonParameterCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFFillToolPersonParameterCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFFillToolPersonParameterCommand;
  v3 = [(SFCommand *)&v9 hash];
  v4 = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
  v5 = [v4 hash];
  v6 = [(SFFillToolPersonParameterCommand *)self person];
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
    if ([(SFFillToolPersonParameterCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFFillToolPersonParameterCommand;
      if ([(SFCommand *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
        v8 = [(SFFillToolPersonParameterCommand *)v6 encodedTypedValue];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v9 = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
        if (v9)
        {
          v3 = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
          v10 = [(SFFillToolPersonParameterCommand *)v6 encodedTypedValue];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = v10;
        }

        v12 = [(SFFillToolPersonParameterCommand *)self person];
        v13 = [(SFFillToolPersonParameterCommand *)v6 person];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
        }

        else
        {
          v15 = [(SFFillToolPersonParameterCommand *)self person];
          if (v15)
          {
            v16 = v15;
            v19 = [(SFFillToolPersonParameterCommand *)self person];
            [(SFFillToolPersonParameterCommand *)v6 person];
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
  v10.super_class = SFFillToolPersonParameterCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:a3];
  v5 = [(SFFillToolPersonParameterCommand *)self encodedTypedValue];
  v6 = [v5 copy];
  [v4 setEncodedTypedValue:v6];

  v7 = [(SFFillToolPersonParameterCommand *)self person];
  v8 = [v7 copy];
  [v4 setPerson:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFillToolPersonParameterCommand alloc] initWithFacade:self];
  v3 = [(_SFPBFillToolPersonParameterCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFillToolPersonParameterCommand alloc] initWithFacade:self];
  v3 = [(_SFPBFillToolPersonParameterCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFFillToolPersonParameterCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFFillToolPersonParameterCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFFillToolPersonParameterCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 encodedTypedValue];
    [(SFFillToolPersonParameterCommand *)v5 setEncodedTypedValue:v9];

    v10 = [(SFCommand *)v8 person];
    [(SFFillToolPersonParameterCommand *)v5 setPerson:v10];

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

- (SFFillToolPersonParameterCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFFillToolPersonParameterCommand;
  v5 = [(SFFillToolPersonParameterCommand *)&v14 init];
  if (v5)
  {
    v6 = [v4 encodedTypedValue];

    if (v6)
    {
      v7 = [v4 encodedTypedValue];
      [(SFFillToolPersonParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [v4 person];

    if (v8)
    {
      v9 = [SFPerson alloc];
      v10 = [v4 person];
      v11 = [(SFPerson *)v9 initWithProtobuf:v10];
      [(SFFillToolPersonParameterCommand *)v5 setPerson:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end