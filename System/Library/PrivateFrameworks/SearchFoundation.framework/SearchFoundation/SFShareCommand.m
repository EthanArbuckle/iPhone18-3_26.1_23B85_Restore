@interface SFShareCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShareCommand)initWithCoder:(id)a3;
- (SFShareCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFShareCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFShareCommand;
  v3 = [(SFCommand *)&v9 hash];
  v4 = [(SFShareCommand *)self shareItem];
  v5 = [v4 hash];
  v6 = [(SFShareCommand *)self shareItems];
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
    if ([(SFShareCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFShareCommand;
      if ([(SFCommand *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFShareCommand *)self shareItem];
        v8 = [(SFShareCommand *)v6 shareItem];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v9 = [(SFShareCommand *)self shareItem];
        if (v9)
        {
          v3 = [(SFShareCommand *)self shareItem];
          v10 = [(SFShareCommand *)v6 shareItem];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = v10;
        }

        v12 = [(SFShareCommand *)self shareItems];
        v13 = [(SFShareCommand *)v6 shareItems];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
        }

        else
        {
          v15 = [(SFShareCommand *)self shareItems];
          if (v15)
          {
            v16 = v15;
            v19 = [(SFShareCommand *)self shareItems];
            [(SFShareCommand *)v6 shareItems];
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
  v10.super_class = SFShareCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:a3];
  v5 = [(SFShareCommand *)self shareItem];
  v6 = [v5 copy];
  [v4 setShareItem:v6];

  v7 = [(SFShareCommand *)self shareItems];
  v8 = [v7 copy];
  [v4 setShareItems:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShareCommand alloc] initWithFacade:self];
  v3 = [(_SFPBShareCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShareCommand alloc] initWithFacade:self];
  v3 = [(_SFPBShareCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFShareCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFShareCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFShareCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 shareItem];
    [(SFShareCommand *)v5 setShareItem:v9];

    v10 = [(SFCommand *)v8 shareItems];
    [(SFShareCommand *)v5 setShareItems:v10];

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

- (SFShareCommand)initWithProtobuf:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SFShareCommand;
  v5 = [(SFShareCommand *)&v25 init];
  if (v5)
  {
    v6 = [v4 shareItem];

    if (v6)
    {
      v7 = [SFShareItem alloc];
      v8 = [v4 shareItem];
      v9 = [(SFShareItem *)v7 initWithProtobuf:v8];
      [(SFShareCommand *)v5 setShareItem:v9];
    }

    v10 = [v4 shareItems];
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v4 shareItems];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[SFShareItem alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    [(SFShareCommand *)v5 setShareItems:v11];
    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end