@interface SFInfoTuple
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFInfoTuple)initWithCoder:(id)a3;
- (SFInfoTuple)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFInfoTuple

- (SFInfoTuple)initWithProtobuf:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SFInfoTuple;
  v5 = [(SFInfoTuple *)&v25 init];
  if (v5)
  {
    v6 = [v4 key];

    if (v6)
    {
      v7 = [v4 key];
      [(SFInfoTuple *)v5 setKey:v7];
    }

    v8 = [v4 values];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v4 values];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[SFCommandButtonItem alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    [(SFInfoTuple *)v5 setValues:v9];
    if ([v4 initiallyVisibleValues])
    {
      -[SFInfoTuple setInitiallyVisibleValues:](v5, "setInitiallyVisibleValues:", [v4 initiallyVisibleValues]);
    }

    v16 = [v4 showMoreString];

    if (v16)
    {
      v17 = [v4 showMoreString];
      [(SFInfoTuple *)v5 setShowMoreString:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFInfoTuple *)self key];
  v4 = [v3 hash];
  v5 = [(SFInfoTuple *)self values];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFInfoTuple *)self initiallyVisibleValues];
  v8 = [(SFInfoTuple *)self showMoreString];
  v9 = v7 ^ [v8 hash];

  return v6 ^ v9;
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
    if ([(SFInfoTuple *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFInfoTuple *)self key];
      v8 = [(SFInfoTuple *)v6 key];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(SFInfoTuple *)self key];
      if (v9)
      {
        v10 = [(SFInfoTuple *)self key];
        v3 = [(SFInfoTuple *)v6 key];
        if (![v10 isEqual:v3])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(SFInfoTuple *)self values];
      v13 = [(SFInfoTuple *)v6 values];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(SFInfoTuple *)self values];
      if (v15)
      {
        v26 = v3;
        v16 = [(SFInfoTuple *)self values];
        v28 = [(SFInfoTuple *)v6 values];
        v29 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v3 = v26;
          goto LABEL_25;
        }

        v30 = v15;
        v3 = v26;
      }

      else
      {
        v30 = 0;
      }

      v17 = [(SFInfoTuple *)self initiallyVisibleValues];
      if (v17 == [(SFInfoTuple *)v6 initiallyVisibleValues])
      {
        v18 = [(SFInfoTuple *)self showMoreString];
        v19 = [(SFInfoTuple *)v6 showMoreString];
        if ((v18 != 0) != (v19 == 0))
        {
          v25 = v19;
          v27 = v18;
          v20 = [(SFInfoTuple *)self showMoreString];
          if (v20)
          {
            v24 = v20;
            v23 = [(SFInfoTuple *)self showMoreString];
            v21 = [(SFInfoTuple *)v6 showMoreString];
            v11 = [v23 isEqual:v21];
          }

          else
          {

            v11 = 1;
          }

LABEL_24:
          v15 = v30;
          if (!v30)
          {
LABEL_26:

LABEL_27:
            v10 = v31;
            if (!v9)
            {
LABEL_29:

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_29;
          }

LABEL_25:

          goto LABEL_26;
        }
      }

      v11 = 0;
      goto LABEL_24;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFInfoTuple *)self key];
  v6 = [v5 copy];
  [v4 setKey:v6];

  v7 = [(SFInfoTuple *)self values];
  v8 = [v7 copy];
  [v4 setValues:v8];

  [v4 setInitiallyVisibleValues:{-[SFInfoTuple initiallyVisibleValues](self, "initiallyVisibleValues")}];
  v9 = [(SFInfoTuple *)self showMoreString];
  v10 = [v9 copy];
  [v4 setShowMoreString:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBInfoTuple alloc] initWithFacade:self];
  v3 = [(_SFPBInfoTuple *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBInfoTuple alloc] initWithFacade:self];
  v3 = [(_SFPBInfoTuple *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBInfoTuple alloc] initWithFacade:self];
  v5 = [(_SFPBInfoTuple *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFInfoTuple)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBInfoTuple alloc] initWithData:v5];
  v7 = [(SFInfoTuple *)self initWithProtobuf:v6];

  return v7;
}

@end