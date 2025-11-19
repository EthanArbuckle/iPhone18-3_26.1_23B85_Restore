@interface USOSchemaUSONodeDataTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSONodeDataTier1)initWithDictionary:(id)a3;
- (USOSchemaUSONodeDataTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNormalizedStringPayloads:(id)a3;
- (void)setHasIntegerPayload:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSONodeDataTier1

- (USOSchemaUSONodeDataTier1)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = USOSchemaUSONodeDataTier1;
  v5 = [(USOSchemaUSONodeDataTier1 *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSONodeDataTier1 setIndex:](v5, "setIndex:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"stringPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(USOSchemaUSONodeDataTier1 *)v5 setStringPayload:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"integerPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSONodeDataTier1 setIntegerPayload:](v5, "setIntegerPayload:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"normalizedStringPayloads"];
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

- (USOSchemaUSONodeDataTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSONodeDataTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSONodeDataTier1 *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSONodeDataTier1 index](self, "index")}];
    [v3 setObject:v5 forKeyedSubscript:@"index"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSchemaUSONodeDataTier1 integerPayload](self, "integerPayload")}];
    [v3 setObject:v6 forKeyedSubscript:@"integerPayload"];
  }

  if (self->_normalizedStringPayloads)
  {
    v7 = [(USOSchemaUSONodeDataTier1 *)self normalizedStringPayloads];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"normalizedStringPayloads"];
  }

  if (self->_stringPayload)
  {
    v9 = [(USOSchemaUSONodeDataTier1 *)self stringPayload];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"stringPayload"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    index = self->_index;
    if (index != [v4 index])
    {
      goto LABEL_18;
    }
  }

  v6 = [(USOSchemaUSONodeDataTier1 *)self stringPayload];
  v7 = [v4 stringPayload];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(USOSchemaUSONodeDataTier1 *)self stringPayload];
  if (v8)
  {
    v9 = v8;
    v10 = [(USOSchemaUSONodeDataTier1 *)self stringPayload];
    v11 = [v4 stringPayload];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((v4[40] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    integerPayload = self->_integerPayload;
    if (integerPayload != [v4 integerPayload])
    {
      goto LABEL_18;
    }
  }

  v6 = [(USOSchemaUSONodeDataTier1 *)self normalizedStringPayloads];
  v7 = [v4 normalizedStringPayloads];
  if ((v6 != 0) != (v7 == 0))
  {
    v15 = [(USOSchemaUSONodeDataTier1 *)self normalizedStringPayloads];
    if (!v15)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = v15;
    v17 = [(USOSchemaUSONodeDataTier1 *)self normalizedStringPayloads];
    v18 = [v4 normalizedStringPayloads];
    v19 = [v17 isEqual:v18];

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

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(USOSchemaUSONodeDataTier1 *)self stringPayload];

  if (v5)
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

- (void)addNormalizedStringPayloads:(id)a3
{
  v4 = a3;
  normalizedStringPayloads = self->_normalizedStringPayloads;
  v8 = v4;
  if (!normalizedStringPayloads)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_normalizedStringPayloads;
    self->_normalizedStringPayloads = v6;

    v4 = v8;
    normalizedStringPayloads = self->_normalizedStringPayloads;
  }

  [(NSArray *)normalizedStringPayloads addObject:v4];
}

- (void)setHasIntegerPayload:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = USOSchemaUSONodeDataTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(USOSchemaUSONodeDataTier1 *)self deleteStringPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteIntegerPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteNormalizedStringPayloads];
  }

  if ([v4 isConditionSet:4])
  {
    [(USOSchemaUSONodeDataTier1 *)self deleteStringPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteIntegerPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteNormalizedStringPayloads];
  }

  if ([v4 isConditionSet:5])
  {
    [(USOSchemaUSONodeDataTier1 *)self deleteStringPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteIntegerPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteNormalizedStringPayloads];
  }

  if ([v4 isConditionSet:6])
  {
    [(USOSchemaUSONodeDataTier1 *)self deleteStringPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteIntegerPayload];
    [(USOSchemaUSONodeDataTier1 *)self deleteNormalizedStringPayloads];
  }

  if ([v4 isConditionSet:7])
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