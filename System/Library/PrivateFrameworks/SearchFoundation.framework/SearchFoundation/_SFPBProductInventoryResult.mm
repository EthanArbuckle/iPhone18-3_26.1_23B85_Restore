@interface _SFPBProductInventoryResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBProductInventoryResult)initWithDictionary:(id)dictionary;
- (_SFPBProductInventoryResult)initWithFacade:(id)facade;
- (_SFPBProductInventoryResult)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addAvailability:(id)availability;
- (void)setAvailability:(id)availability;
- (void)setProductIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBProductInventoryResult

- (_SFPBProductInventoryResult)initWithFacade:(id)facade
{
  v24 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBProductInventoryResult *)self init];
  if (v5)
  {
    productIdentifier = [facadeCopy productIdentifier];

    if (productIdentifier)
    {
      productIdentifier2 = [facadeCopy productIdentifier];
      [(_SFPBProductInventoryResult *)v5 setProductIdentifier:productIdentifier2];
    }

    availability = [facadeCopy availability];
    if (availability)
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
    availability2 = [facadeCopy availability];
    v11 = [availability2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(availability2);
          }

          v15 = [[_SFPBProductInventory alloc] initWithFacade:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [availability2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(_SFPBProductInventoryResult *)v5 setAvailabilitys:v9];
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBProductInventoryResult)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = _SFPBProductInventoryResult;
  v5 = [(_SFPBProductInventoryResult *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"productIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBProductInventoryResult *)v5 setProductIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"availability"];
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

- (_SFPBProductInventoryResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBProductInventoryResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBProductInventoryResult *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_availabilitys count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"availability"];
  }

  if (self->_productIdentifier)
  {
    productIdentifier = [(_SFPBProductInventoryResult *)self productIdentifier];
    v13 = [productIdentifier copy];
    [dictionary setObject:v13 forKeyedSubscript:@"productIdentifier"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  productIdentifier = [(_SFPBProductInventoryResult *)self productIdentifier];
  productIdentifier2 = [equalCopy productIdentifier];
  if ((productIdentifier != 0) == (productIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  productIdentifier3 = [(_SFPBProductInventoryResult *)self productIdentifier];
  if (productIdentifier3)
  {
    v8 = productIdentifier3;
    productIdentifier4 = [(_SFPBProductInventoryResult *)self productIdentifier];
    productIdentifier5 = [equalCopy productIdentifier];
    v11 = [productIdentifier4 isEqual:productIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  productIdentifier = [(_SFPBProductInventoryResult *)self availabilitys];
  productIdentifier2 = [equalCopy availabilitys];
  if ((productIdentifier != 0) != (productIdentifier2 == 0))
  {
    availabilitys = [(_SFPBProductInventoryResult *)self availabilitys];
    if (!availabilitys)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = availabilitys;
    availabilitys2 = [(_SFPBProductInventoryResult *)self availabilitys];
    availabilitys3 = [equalCopy availabilitys];
    v16 = [availabilitys2 isEqual:availabilitys3];

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

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  productIdentifier = [(_SFPBProductInventoryResult *)self productIdentifier];
  if (productIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  availabilitys = [(_SFPBProductInventoryResult *)self availabilitys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [availabilitys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(availabilitys);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [availabilitys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addAvailability:(id)availability
{
  availabilityCopy = availability;
  availabilitys = self->_availabilitys;
  v8 = availabilityCopy;
  if (!availabilitys)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_availabilitys;
    self->_availabilitys = array;

    availabilityCopy = v8;
    availabilitys = self->_availabilitys;
  }

  [(NSArray *)availabilitys addObject:availabilityCopy];
}

- (void)setAvailability:(id)availability
{
  v4 = [availability copy];
  availabilitys = self->_availabilitys;
  self->_availabilitys = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setProductIdentifier:(id)identifier
{
  v4 = [identifier copy];
  productIdentifier = self->_productIdentifier;
  self->_productIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end