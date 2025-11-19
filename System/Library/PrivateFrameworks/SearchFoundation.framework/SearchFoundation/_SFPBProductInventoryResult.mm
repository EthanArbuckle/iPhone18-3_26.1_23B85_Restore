@interface _SFPBProductInventoryResult
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBProductInventoryResult)initWithDictionary:(id)a3;
- (_SFPBProductInventoryResult)initWithFacade:(id)a3;
- (_SFPBProductInventoryResult)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)addAvailability:(id)a3;
- (void)setAvailability:(id)a3;
- (void)setProductIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBProductInventoryResult

- (_SFPBProductInventoryResult)initWithFacade:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBProductInventoryResult *)self init];
  if (v5)
  {
    v6 = [v4 productIdentifier];

    if (v6)
    {
      v7 = [v4 productIdentifier];
      [(_SFPBProductInventoryResult *)v5 setProductIdentifier:v7];
    }

    v8 = [v4 availability];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v4 availability];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[_SFPBProductInventory alloc] initWithFacade:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(_SFPBProductInventoryResult *)v5 setAvailabilitys:v9];
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBProductInventoryResult)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _SFPBProductInventoryResult;
  v5 = [(_SFPBProductInventoryResult *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"productIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBProductInventoryResult *)v5 setProductIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"availability"];
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
              v15 = [[_SFPBProductInventory alloc] initWithDictionary:v14];
              [(_SFPBProductInventoryResult *)v5 addAvailability:v15];
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

- (_SFPBProductInventoryResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBProductInventoryResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBProductInventoryResult *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_availabilitys count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_availabilitys;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"availability"];
  }

  if (self->_productIdentifier)
  {
    v12 = [(_SFPBProductInventoryResult *)self productIdentifier];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"productIdentifier"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBProductInventoryResult *)self productIdentifier];
  v6 = [v4 productIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBProductInventoryResult *)self productIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBProductInventoryResult *)self productIdentifier];
    v10 = [v4 productIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBProductInventoryResult *)self availabilitys];
  v6 = [v4 availabilitys];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBProductInventoryResult *)self availabilitys];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBProductInventoryResult *)self availabilitys];
    v15 = [v4 availabilitys];
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
  v5 = [(_SFPBProductInventoryResult *)self productIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBProductInventoryResult *)self availabilitys];
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

- (void)addAvailability:(id)a3
{
  v4 = a3;
  availabilitys = self->_availabilitys;
  v8 = v4;
  if (!availabilitys)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_availabilitys;
    self->_availabilitys = v6;

    v4 = v8;
    availabilitys = self->_availabilitys;
  }

  [(NSArray *)availabilitys addObject:v4];
}

- (void)setAvailability:(id)a3
{
  v4 = [a3 copy];
  availabilitys = self->_availabilitys;
  self->_availabilitys = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setProductIdentifier:(id)a3
{
  v4 = [a3 copy];
  productIdentifier = self->_productIdentifier;
  self->_productIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end