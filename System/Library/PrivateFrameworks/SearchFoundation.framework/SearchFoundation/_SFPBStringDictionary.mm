@interface _SFPBStringDictionary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBStringDictionary)initWithDictionary:(id)dictionary;
- (_SFPBStringDictionary)initWithJSON:(id)n;
- (_SFPBStringDictionary)initWithNSDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
- (void)addKeyValues:(id)values;
- (void)setKeyValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation _SFPBStringDictionary

- (_SFPBStringDictionary)initWithNSDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = _SFPBStringDictionary;
  v5 = [(_SFPBStringDictionary *)&v21 init];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = dictionaryCopy;
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

- (_SFPBStringDictionary)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = _SFPBStringDictionary;
  v5 = [(_SFPBStringDictionary *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"keyValues"];
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

- (_SFPBStringDictionary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBStringDictionary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBStringDictionary *)self dictionaryRepresentation];
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
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_keyValues count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"keyValues"];
  }

  v12 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    keyValues = [(_SFPBStringDictionary *)self keyValues];
    keyValues2 = [equalCopy keyValues];
    v7 = keyValues2;
    if ((keyValues != 0) != (keyValues2 == 0))
    {
      keyValues3 = [(_SFPBStringDictionary *)self keyValues];
      if (!keyValues3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = keyValues3;
      keyValues4 = [(_SFPBStringDictionary *)self keyValues];
      keyValues5 = [equalCopy keyValues];
      v12 = [keyValues4 isEqual:keyValues5];

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

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  keyValues = [(_SFPBStringDictionary *)self keyValues];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [keyValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(keyValues);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [keyValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addKeyValues:(id)values
{
  valuesCopy = values;
  keyValues = self->_keyValues;
  v8 = valuesCopy;
  if (!keyValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_keyValues;
    self->_keyValues = array;

    valuesCopy = v8;
    keyValues = self->_keyValues;
  }

  [(NSArray *)keyValues addObject:valuesCopy];
}

- (void)setKeyValues:(id)values
{
  v4 = [values copy];
  keyValues = self->_keyValues;
  self->_keyValues = v4;

  MEMORY[0x1EEE66BB8]();
}

@end