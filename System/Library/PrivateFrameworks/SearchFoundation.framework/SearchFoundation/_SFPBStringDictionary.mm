@interface _SFPBStringDictionary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBStringDictionary)initWithDictionary:(id)a3;
- (_SFPBStringDictionary)initWithJSON:(id)a3;
- (_SFPBStringDictionary)initWithNSDictionary:(id)a3;
- (id)dictionaryRepresentation;
- (void)addKeyValues:(id)a3;
- (void)setKeyValues:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBStringDictionary

- (_SFPBStringDictionary)initWithNSDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _SFPBStringDictionary;
  v5 = [(_SFPBStringDictionary *)&v21 init];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v12 = objc_alloc_init(_SFPBKeyValueTuple);
          [(_SFPBKeyValueTuple *)v12 setKey:v11, v17];
          v13 = [v6 objectForKeyedSubscript:v11];
          [(_SFPBKeyValueTuple *)v12 setValue:v13];

          [(_SFPBStringDictionary *)v5 addKeyValues:v12];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBStringDictionary)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _SFPBStringDictionary;
  v5 = [(_SFPBStringDictionary *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"keyValues"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [_SFPBKeyValueTuple alloc];
              v14 = [(_SFPBKeyValueTuple *)v13 initWithDictionary:v12, v18];
              [(_SFPBStringDictionary *)v5 addKeyValues:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v15 = v5;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBStringDictionary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBStringDictionary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBStringDictionary *)self dictionaryRepresentation];
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
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_keyValues count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_keyValues;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"keyValues"];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBStringDictionary *)self keyValues];
    v6 = [v4 keyValues];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBStringDictionary *)self keyValues];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBStringDictionary *)self keyValues];
      v11 = [v4 keyValues];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBStringDictionary *)self keyValues];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addKeyValues:(id)a3
{
  v4 = a3;
  keyValues = self->_keyValues;
  v8 = v4;
  if (!keyValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_keyValues;
    self->_keyValues = v6;

    v4 = v8;
    keyValues = self->_keyValues;
  }

  [(NSArray *)keyValues addObject:v4];
}

- (void)setKeyValues:(id)a3
{
  v4 = [a3 copy];
  keyValues = self->_keyValues;
  self->_keyValues = v4;

  MEMORY[0x1EEE66BB8]();
}

@end