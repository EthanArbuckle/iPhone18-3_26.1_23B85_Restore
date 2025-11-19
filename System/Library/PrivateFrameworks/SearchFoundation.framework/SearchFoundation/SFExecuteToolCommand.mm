@interface SFExecuteToolCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFExecuteToolCommand)initWithCoder:(id)a3;
- (SFExecuteToolCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFExecuteToolCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFExecuteToolCommand;
  v3 = [(SFCommand *)&v9 hash];
  v4 = [(SFExecuteToolCommand *)self toolIdentifier];
  v5 = [v4 hash];
  v6 = [(SFExecuteToolCommand *)self toolInvocationData];
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
    if ([(SFExecuteToolCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFExecuteToolCommand;
      if ([(SFCommand *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFExecuteToolCommand *)self toolIdentifier];
        v8 = [(SFExecuteToolCommand *)v6 toolIdentifier];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v9 = [(SFExecuteToolCommand *)self toolIdentifier];
        if (v9)
        {
          v3 = [(SFExecuteToolCommand *)self toolIdentifier];
          v10 = [(SFExecuteToolCommand *)v6 toolIdentifier];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = v10;
        }

        v12 = [(SFExecuteToolCommand *)self toolInvocationData];
        v13 = [(SFExecuteToolCommand *)v6 toolInvocationData];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
        }

        else
        {
          v15 = [(SFExecuteToolCommand *)self toolInvocationData];
          if (v15)
          {
            v16 = v15;
            v19 = [(SFExecuteToolCommand *)self toolInvocationData];
            [(SFExecuteToolCommand *)v6 toolInvocationData];
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
  v10.super_class = SFExecuteToolCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:a3];
  v5 = [(SFExecuteToolCommand *)self toolIdentifier];
  v6 = [v5 copy];
  [v4 setToolIdentifier:v6];

  v7 = [(SFExecuteToolCommand *)self toolInvocationData];
  v8 = [v7 copy];
  [v4 setToolInvocationData:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBExecuteToolCommand alloc] initWithFacade:self];
  v3 = [(_SFPBExecuteToolCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBExecuteToolCommand alloc] initWithFacade:self];
  v3 = [(_SFPBExecuteToolCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFExecuteToolCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFExecuteToolCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFExecuteToolCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 toolIdentifier];
    [(SFExecuteToolCommand *)v5 setToolIdentifier:v9];

    v10 = [(SFCommand *)v8 toolInvocationData];
    [(SFExecuteToolCommand *)v5 setToolInvocationData:v10];

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

- (SFExecuteToolCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFExecuteToolCommand;
  v5 = [(SFExecuteToolCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 toolIdentifier];

    if (v6)
    {
      v7 = [v4 toolIdentifier];
      [(SFExecuteToolCommand *)v5 setToolIdentifier:v7];
    }

    v8 = [v4 toolInvocationData];

    if (v8)
    {
      v9 = [v4 toolInvocationData];
      [(SFExecuteToolCommand *)v5 setToolInvocationData:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end