@interface USOSchemaUSONodeDataTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSONodeDataTier1)initWithDictionary:(id)dictionary;
- (USOSchemaUSONodeDataTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNormalizedStringPayloads:(id)payloads;
- (void)setHasIntegerPayload:(BOOL)payload;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSONodeDataTier1

- (USOSchemaUSONodeDataTier1)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = USOSchemaUSONodeDataTier1;
  v5 = [(USOSchemaUSONodeDataTier1 *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSONodeDataTier1 setIndex:](v5, "setIndex:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"stringPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(USOSchemaUSONodeDataTier1 *)v5 setStringPayload:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"integerPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSONodeDataTier1 setIntegerPayload:](v5, "setIntegerPayload:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"normalizedStringPayloads"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v7;
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 copy];
              [(USOSchemaUSONodeDataTier1 *)v5 addNormalizedStringPayloads:v17];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v7 = v20;
      v6 = v21;
    }

    v18 = v5;
  }

  return v5;
}

- (USOSchemaUSONodeDataTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSONodeDataTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSONodeDataTier1 *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSONodeDataTier1 index](self, "index")}];
    [dictionary setObject:v5 forKeyedSubscript:@"index"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSchemaUSONodeDataTier1 integerPayload](self, "integerPayload")}];
    [dictionary setObject:v6 forKeyedSubscript:@"integerPayload"];
  }

  if (self->_normalizedStringPayloads)
  {
    normalizedStringPayloads = [(USOSchemaUSONodeDataTier1 *)self normalizedStringPayloads];
    v8 = [normalizedStringPayloads copy];
    [dictionary setObject:v8 forKeyedSubscript:@"normalizedStringPayloads"];
  }

  if (self->_stringPayload)
  {
    stringPayload = [(USOSchemaUSONodeDataTier1 *)self stringPayload];
    v10 = [stringPayload copy];
    [dictionary setObject:v10 forKeyedSubscript:@"stringPayload"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_index;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_stringPayload hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_integerPayload;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_normalizedStringPayloads hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    index = self->_index;
    if (index != [equalCopy index])
    {
      goto LABEL_18;
    }
  }

  stringPayload = [(USOSchemaUSONodeDataTier1 *)self stringPayload];
  stringPayload2 = [equalCopy stringPayload];
  if ((stringPayload != 0) == (stringPayload2 == 0))
  {
    goto LABEL_17;
  }

  stringPayload3 = [(USOSchemaUSONodeDataTier1 *)self stringPayload];
  if (stringPayload3)
  {
    v9 = stringPayload3;
    stringPayload4 = [(USOSchemaUSONodeDataTier1 *)self stringPayload];
    stringPayload5 = [equalCopy stringPayload];
    v12 = [stringPayload4 isEqual:stringPayload5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((equalCopy[40] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    integerPayload = self->_integerPayload;
    if (integerPayload != [equalCopy integerPayload])
    {
      goto LABEL_18;
    }
  }

  stringPayload = [(USOSchemaUSONodeDataTier1 *)self normalizedStringPayloads];
  stringPayload2 = [equalCopy normalizedStringPayloads];
  if ((stringPayload != 0) != (stringPayload2 == 0))
  {
    normalizedStringPayloads = [(USOSchemaUSONodeDataTier1 *)self normalizedStringPayloads];
    if (!normalizedStringPayloads)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = normalizedStringPayloads;
    normalizedStringPayloads2 = [(USOSchemaUSONodeDataTier1 *)self normalizedStringPayloads];
    normalizedStringPayloads3 = [equalCopy normalizedStringPayloads];
    v19 = [normalizedStringPayloads2 isEqual:normalizedStringPayloads3];

    if (v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  stringPayload = [(USOSchemaUSONodeDataTier1 *)self stringPayload];

  if (stringPayload)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_normalizedStringPayloads;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addNormalizedStringPayloads:(id)payloads
{
  payloadsCopy = payloads;
  normalizedStringPayloads = self->_normalizedStringPayloads;
  v8 = payloadsCopy;
  if (!normalizedStringPayloads)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_normalizedStringPayloads;
    self->_normalizedStringPayloads = array;

    payloadsCopy = v8;
    normalizedStringPayloads = self->_normalizedStringPayloads;
  }

  [(NSArray *)normalizedStringPayloads addObject:payloadsCopy];
}

- (void)setHasIntegerPayload:(BOOL)payload
{
  if (payload)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = USOSchemaUSONodeDataTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(USOSchemaUSONodeDataTier1 *)self deleteStringPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteIntegerPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteNormalizedStringPayloads];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(USOSchemaUSONodeDataTier1 *)self deleteStringPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteIntegerPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteNormalizedStringPayloads];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(USOSchemaUSONodeDataTier1 *)self deleteStringPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteIntegerPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteNormalizedStringPayloads];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(USOSchemaUSONodeDataTier1 *)self deleteStringPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteIntegerPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteNormalizedStringPayloads];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(USOSchemaUSONodeDataTier1 *)self deleteStringPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteIntegerPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteNormalizedStringPayloads];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end