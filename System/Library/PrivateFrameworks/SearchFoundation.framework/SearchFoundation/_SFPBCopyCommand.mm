@interface _SFPBCopyCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCopyCommand)initWithDictionary:(id)a3;
- (_SFPBCopyCommand)initWithFacade:(id)a3;
- (_SFPBCopyCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)addCopyableItems:(id)a3;
- (void)setCopyableItems:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCopyCommand

- (_SFPBCopyCommand)initWithFacade:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCopyCommand *)self init];
  if (v5)
  {
    v6 = [v4 copyableItem];

    if (v6)
    {
      v7 = [_SFPBCopyItem alloc];
      v8 = [v4 copyableItem];
      v9 = [(_SFPBCopyItem *)v7 initWithFacade:v8];
      [(_SFPBCopyCommand *)v5 setCopyableItem:v9];
    }

    v10 = [v4 copyableItems];
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
    v12 = [v4 copyableItems];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

          v17 = [[_SFPBCopyItem alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    [(_SFPBCopyCommand *)v5 setCopyableItems:v11];
    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCopyCommand)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _SFPBCopyCommand;
  v5 = [(_SFPBCopyCommand *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"copyableItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCopyItem alloc] initWithDictionary:v6];
      [(_SFPBCopyCommand *)v5 setCopyableItem:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"copyableItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBCopyItem alloc] initWithDictionary:v14];
              [(_SFPBCopyCommand *)v5 addCopyableItems:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCopyCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCopyCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCopyCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_copyableItem)
  {
    v4 = [(_SFPBCopyCommand *)self copyableItem];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"copyableItem"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"copyableItem"];
    }
  }

  if ([(NSArray *)self->_copyableItems count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_copyableItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"copyableItems"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBCopyCommand *)self copyableItem];
  v6 = [v4 copyableItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBCopyCommand *)self copyableItem];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCopyCommand *)self copyableItem];
    v10 = [v4 copyableItem];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCopyCommand *)self copyableItems];
  v6 = [v4 copyableItems];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBCopyCommand *)self copyableItems];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBCopyCommand *)self copyableItems];
    v15 = [v4 copyableItems];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCopyCommand *)self copyableItem];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBCopyCommand *)self copyableItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addCopyableItems:(id)a3
{
  v4 = a3;
  copyableItems = self->_copyableItems;
  v8 = v4;
  if (!copyableItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_copyableItems;
    self->_copyableItems = v6;

    v4 = v8;
    copyableItems = self->_copyableItems;
  }

  [(NSArray *)copyableItems addObject:v4];
}

- (void)setCopyableItems:(id)a3
{
  v4 = [a3 copy];
  copyableItems = self->_copyableItems;
  self->_copyableItems = v4;

  MEMORY[0x1EEE66BB8]();
}

@end