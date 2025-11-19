@interface SFTableAlignmentSchema
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTableAlignmentSchema)initWithCoder:(id)a3;
- (SFTableAlignmentSchema)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTableAlignmentSchema

- (unint64_t)hash
{
  v3 = [(SFTableAlignmentSchema *)self tableColumnAlignment];
  v4 = [v3 hash];
  v5 = [(SFTableAlignmentSchema *)self metadata];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    if ([(SFTableAlignmentSchema *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFTableAlignmentSchema *)self tableColumnAlignment];
      v8 = [(SFTableAlignmentSchema *)v6 tableColumnAlignment];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(SFTableAlignmentSchema *)self tableColumnAlignment];
      if (v9)
      {
        v3 = [(SFTableAlignmentSchema *)self tableColumnAlignment];
        v10 = [(SFTableAlignmentSchema *)v6 tableColumnAlignment];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(SFTableAlignmentSchema *)self metadata];
      v13 = [(SFTableAlignmentSchema *)v6 metadata];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(SFTableAlignmentSchema *)self metadata];
        if (v15)
        {
          v16 = v15;
          v19 = [(SFTableAlignmentSchema *)self metadata];
          [(SFTableAlignmentSchema *)v6 metadata];
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
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFTableAlignmentSchema *)self tableColumnAlignment];
  v6 = [v5 copy];
  [v4 setTableColumnAlignment:v6];

  v7 = [(SFTableAlignmentSchema *)self metadata];
  v8 = [v7 copy];
  [v4 setMetadata:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTableAlignmentSchema alloc] initWithFacade:self];
  v3 = [(_SFPBTableAlignmentSchema *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTableAlignmentSchema alloc] initWithFacade:self];
  v3 = [(_SFPBTableAlignmentSchema *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBTableAlignmentSchema alloc] initWithFacade:self];
  v5 = [(_SFPBTableAlignmentSchema *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFTableAlignmentSchema)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTableAlignmentSchema alloc] initWithData:v5];
  v7 = [(SFTableAlignmentSchema *)self initWithProtobuf:v6];

  return v7;
}

- (SFTableAlignmentSchema)initWithProtobuf:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SFTableAlignmentSchema;
  v5 = [(SFTableAlignmentSchema *)&v24 init];
  if (v5)
  {
    v6 = [v4 tableColumnAlignments];
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
    v8 = [v4 tableColumnAlignments];
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

          v13 = [[SFTableColumnAlignment alloc] initWithProtobuf:*(*(&v20 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    [(SFTableAlignmentSchema *)v5 setTableColumnAlignment:v7];
    v14 = [v4 metadata];

    if (v14)
    {
      v15 = [v4 metadata];
      v16 = _SFPBStringDictionaryHandwrittenTranslator(v15);
      [(SFTableAlignmentSchema *)v5 setMetadata:v16];
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

@end