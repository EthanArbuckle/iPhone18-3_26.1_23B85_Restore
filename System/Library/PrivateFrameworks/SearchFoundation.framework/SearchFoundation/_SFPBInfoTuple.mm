@interface _SFPBInfoTuple
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBInfoTuple)initWithDictionary:(id)dictionary;
- (_SFPBInfoTuple)initWithFacade:(id)facade;
- (_SFPBInfoTuple)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addValues:(id)values;
- (void)setKey:(id)key;
- (void)setShowMoreString:(id)string;
- (void)setValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation _SFPBInfoTuple

- (_SFPBInfoTuple)initWithFacade:(id)facade
{
  v26 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBInfoTuple *)self init];
  if (v5)
  {
    v6 = [facadeCopy key];

    if (v6)
    {
      v7 = [facadeCopy key];
      [(_SFPBInfoTuple *)v5 setKey:v7];
    }

    values = [facadeCopy values];
    if (values)
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
    values2 = [facadeCopy values];
    v11 = [values2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(values2);
          }

          v15 = [[_SFPBCommandButtonItem alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [values2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [(_SFPBInfoTuple *)v5 setValues:v9];
    if ([facadeCopy hasInitiallyVisibleValues])
    {
      -[_SFPBInfoTuple setInitiallyVisibleValues:](v5, "setInitiallyVisibleValues:", [facadeCopy initiallyVisibleValues]);
    }

    showMoreString = [facadeCopy showMoreString];

    if (showMoreString)
    {
      showMoreString2 = [facadeCopy showMoreString];
      [(_SFPBInfoTuple *)v5 setShowMoreString:showMoreString2];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBInfoTuple)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = _SFPBInfoTuple;
  v5 = [(_SFPBInfoTuple *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBInfoTuple *)v5 setKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"values"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBCommandButtonItem alloc] initWithDictionary:v14];
              [(_SFPBInfoTuple *)v5 addValues:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v11);
      }

      v6 = v22;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"initiallyVisibleValues"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBInfoTuple setInitiallyVisibleValues:](v5, "setInitiallyVisibleValues:", [v16 unsignedIntValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"showMoreString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBInfoTuple *)v5 setShowMoreString:v18];
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBInfoTuple)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBInfoTuple *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBInfoTuple *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_initiallyVisibleValues)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBInfoTuple initiallyVisibleValues](self, "initiallyVisibleValues")}];
    [dictionary setObject:v4 forKeyedSubscript:@"initiallyVisibleValues"];
  }

  if (self->_key)
  {
    v5 = [(_SFPBInfoTuple *)self key];
    v6 = [v5 copy];
    [dictionary setObject:v6 forKeyedSubscript:@"key"];
  }

  if (self->_showMoreString)
  {
    showMoreString = [(_SFPBInfoTuple *)self showMoreString];
    v8 = [showMoreString copy];
    [dictionary setObject:v8 forKeyedSubscript:@"showMoreString"];
  }

  if ([(NSArray *)self->_values count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = self->_values;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"values"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSArray *)self->_values hash];
  v5 = 2654435761 * self->_initiallyVisibleValues;
  return v4 ^ v3 ^ [(NSString *)self->_showMoreString hash]^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  values = [(_SFPBInfoTuple *)self key];
  values2 = [equalCopy key];
  if ((values != 0) == (values2 == 0))
  {
    goto LABEL_17;
  }

  v7 = [(_SFPBInfoTuple *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBInfoTuple *)self key];
    v10 = [equalCopy key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  values = [(_SFPBInfoTuple *)self values];
  values2 = [equalCopy values];
  if ((values != 0) == (values2 == 0))
  {
    goto LABEL_17;
  }

  values3 = [(_SFPBInfoTuple *)self values];
  if (values3)
  {
    v13 = values3;
    values4 = [(_SFPBInfoTuple *)self values];
    values5 = [equalCopy values];
    v16 = [values4 isEqual:values5];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  initiallyVisibleValues = self->_initiallyVisibleValues;
  if (initiallyVisibleValues != [equalCopy initiallyVisibleValues])
  {
    goto LABEL_18;
  }

  values = [(_SFPBInfoTuple *)self showMoreString];
  values2 = [equalCopy showMoreString];
  if ((values != 0) == (values2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  showMoreString = [(_SFPBInfoTuple *)self showMoreString];
  if (!showMoreString)
  {

LABEL_21:
    v23 = 1;
    goto LABEL_19;
  }

  v19 = showMoreString;
  showMoreString2 = [(_SFPBInfoTuple *)self showMoreString];
  showMoreString3 = [equalCopy showMoreString];
  v22 = [showMoreString2 isEqual:showMoreString3];

  if (v22)
  {
    goto LABEL_21;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = [(_SFPBInfoTuple *)self key];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  values = [(_SFPBInfoTuple *)self values];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [values countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(values);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [values countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([(_SFPBInfoTuple *)self initiallyVisibleValues])
  {
    PBDataWriterWriteUint32Field();
  }

  showMoreString = [(_SFPBInfoTuple *)self showMoreString];
  if (showMoreString)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setShowMoreString:(id)string
{
  v4 = [string copy];
  showMoreString = self->_showMoreString;
  self->_showMoreString = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addValues:(id)values
{
  valuesCopy = values;
  values = self->_values;
  v8 = valuesCopy;
  if (!values)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_values;
    self->_values = array;

    valuesCopy = v8;
    values = self->_values;
  }

  [(NSArray *)values addObject:valuesCopy];
}

- (void)setValues:(id)values
{
  v4 = [values copy];
  values = self->_values;
  self->_values = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setKey:(id)key
{
  v4 = [key copy];
  key = self->_key;
  self->_key = v4;

  MEMORY[0x1EEE66BB8]();
}

@end