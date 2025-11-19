@interface _SFPBInfoTuple
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBInfoTuple)initWithDictionary:(id)a3;
- (_SFPBInfoTuple)initWithFacade:(id)a3;
- (_SFPBInfoTuple)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addValues:(id)a3;
- (void)setKey:(id)a3;
- (void)setShowMoreString:(id)a3;
- (void)setValues:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBInfoTuple

- (_SFPBInfoTuple)initWithFacade:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBInfoTuple *)self init];
  if (v5)
  {
    v6 = [v4 key];

    if (v6)
    {
      v7 = [v4 key];
      [(_SFPBInfoTuple *)v5 setKey:v7];
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
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

          v15 = [[_SFPBCommandButtonItem alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [(_SFPBInfoTuple *)v5 setValues:v9];
    if ([v4 hasInitiallyVisibleValues])
    {
      -[_SFPBInfoTuple setInitiallyVisibleValues:](v5, "setInitiallyVisibleValues:", [v4 initiallyVisibleValues]);
    }

    v16 = [v4 showMoreString];

    if (v16)
    {
      v17 = [v4 showMoreString];
      [(_SFPBInfoTuple *)v5 setShowMoreString:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBInfoTuple)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _SFPBInfoTuple;
  v5 = [(_SFPBInfoTuple *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBInfoTuple *)v5 setKey:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"values"];
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

    v16 = [v4 objectForKeyedSubscript:@"initiallyVisibleValues"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBInfoTuple setInitiallyVisibleValues:](v5, "setInitiallyVisibleValues:", [v16 unsignedIntValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"showMoreString"];
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

- (_SFPBInfoTuple)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBInfoTuple *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBInfoTuple *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_initiallyVisibleValues)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBInfoTuple initiallyVisibleValues](self, "initiallyVisibleValues")}];
    [v3 setObject:v4 forKeyedSubscript:@"initiallyVisibleValues"];
  }

  if (self->_key)
  {
    v5 = [(_SFPBInfoTuple *)self key];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"key"];
  }

  if (self->_showMoreString)
  {
    v7 = [(_SFPBInfoTuple *)self showMoreString];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"showMoreString"];
  }

  if ([(NSArray *)self->_values count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
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

          v15 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"values"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSArray *)self->_values hash];
  v5 = 2654435761 * self->_initiallyVisibleValues;
  return v4 ^ v3 ^ [(NSString *)self->_showMoreString hash]^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = [(_SFPBInfoTuple *)self key];
  v6 = [v4 key];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_17;
  }

  v7 = [(_SFPBInfoTuple *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBInfoTuple *)self key];
    v10 = [v4 key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = [(_SFPBInfoTuple *)self values];
  v6 = [v4 values];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_17;
  }

  v12 = [(_SFPBInfoTuple *)self values];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBInfoTuple *)self values];
    v15 = [v4 values];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  initiallyVisibleValues = self->_initiallyVisibleValues;
  if (initiallyVisibleValues != [v4 initiallyVisibleValues])
  {
    goto LABEL_18;
  }

  v5 = [(_SFPBInfoTuple *)self showMoreString];
  v6 = [v4 showMoreString];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v18 = [(_SFPBInfoTuple *)self showMoreString];
  if (!v18)
  {

LABEL_21:
    v23 = 1;
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [(_SFPBInfoTuple *)self showMoreString];
  v21 = [v4 showMoreString];
  v22 = [v20 isEqual:v21];

  if (v22)
  {
    goto LABEL_21;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBInfoTuple *)self key];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBInfoTuple *)self values];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([(_SFPBInfoTuple *)self initiallyVisibleValues])
  {
    PBDataWriterWriteUint32Field();
  }

  v12 = [(_SFPBInfoTuple *)self showMoreString];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setShowMoreString:(id)a3
{
  v4 = [a3 copy];
  showMoreString = self->_showMoreString;
  self->_showMoreString = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addValues:(id)a3
{
  v4 = a3;
  values = self->_values;
  v8 = v4;
  if (!values)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_values;
    self->_values = v6;

    v4 = v8;
    values = self->_values;
  }

  [(NSArray *)values addObject:v4];
}

- (void)setValues:(id)a3
{
  v4 = [a3 copy];
  values = self->_values;
  self->_values = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setKey:(id)a3
{
  v4 = [a3 copy];
  key = self->_key;
  self->_key = v4;

  MEMORY[0x1EEE66BB8]();
}

@end