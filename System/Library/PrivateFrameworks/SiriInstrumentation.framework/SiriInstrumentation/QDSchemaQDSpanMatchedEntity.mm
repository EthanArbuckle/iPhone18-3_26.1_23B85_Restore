@interface QDSchemaQDSpanMatchedEntity
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (QDSchemaQDSpanMatchedEntity)initWithDictionary:(id)a3;
- (QDSchemaQDSpanMatchedEntity)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMatches:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation QDSchemaQDSpanMatchedEntity

- (QDSchemaQDSpanMatchedEntity)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = QDSchemaQDSpanMatchedEntity;
  v5 = [(QDSchemaQDSpanMatchedEntity *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sessionScopedUniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(QDSchemaQDSpanMatchedEntity *)v5 setSessionScopedUniqueId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"valueType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[QDSchemaQDEntityType alloc] initWithDictionary:v8];
      [(QDSchemaQDSpanMatchedEntity *)v5 setValueType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"matches"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v8;
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[QDSchemaQDEntityMatch alloc] initWithDictionary:v16];
              [(QDSchemaQDSpanMatchedEntity *)v5 addMatches:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
      }

      v8 = v21;
    }

    v18 = [v4 objectForKeyedSubscript:{@"dataProtectionClass", v21, v22, v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDSpanMatchedEntity setDataProtectionClass:](v5, "setDataProtectionClass:", [v18 intValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (QDSchemaQDSpanMatchedEntity)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(QDSchemaQDSpanMatchedEntity *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(QDSchemaQDSpanMatchedEntity *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(QDSchemaQDSpanMatchedEntity *)self dataProtectionClass]- 1;
    if (v4 > 5)
    {
      v5 = @"QDDATAPROTECTIONCLASS_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E1820[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"dataProtectionClass"];
  }

  if ([(NSArray *)self->_matches count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_matches;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"matches"];
  }

  if (self->_sessionScopedUniqueId)
  {
    v14 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"sessionScopedUniqueId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"sessionScopedUniqueId"];
    }
  }

  if (self->_valueType)
  {
    v17 = [(QDSchemaQDSpanMatchedEntity *)self valueType];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"valueType"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"valueType"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v21];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_sessionScopedUniqueId hash];
  v4 = [(QDSchemaQDEntityType *)self->_valueType hash];
  v5 = [(NSArray *)self->_matches hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_dataProtectionClass;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
  v6 = [v4 sessionScopedUniqueId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
  if (v7)
  {
    v8 = v7;
    v9 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
    v10 = [v4 sessionScopedUniqueId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDSpanMatchedEntity *)self valueType];
  v6 = [v4 valueType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(QDSchemaQDSpanMatchedEntity *)self valueType];
  if (v12)
  {
    v13 = v12;
    v14 = [(QDSchemaQDSpanMatchedEntity *)self valueType];
    v15 = [v4 valueType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDSpanMatchedEntity *)self matches];
  v6 = [v4 matches];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(QDSchemaQDSpanMatchedEntity *)self matches];
  if (v17)
  {
    v18 = v17;
    v19 = [(QDSchemaQDSpanMatchedEntity *)self matches];
    v20 = [v4 matches];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (dataProtectionClass = self->_dataProtectionClass, dataProtectionClass == [v4 dataProtectionClass]))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];

  if (v5)
  {
    v6 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(QDSchemaQDSpanMatchedEntity *)self valueType];

  if (v7)
  {
    v8 = [(QDSchemaQDSpanMatchedEntity *)self valueType];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_matches;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addMatches:(id)a3
{
  v4 = a3;
  matches = self->_matches;
  v8 = v4;
  if (!matches)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_matches;
    self->_matches = v6;

    v4 = v8;
    matches = self->_matches;
  }

  [(NSArray *)matches addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = QDSchemaQDSpanMatchedEntity;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(QDSchemaQDSpanMatchedEntity *)self deleteSessionScopedUniqueId];
  }

  v9 = [(QDSchemaQDSpanMatchedEntity *)self valueType];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(QDSchemaQDSpanMatchedEntity *)self deleteValueType];
  }

  v12 = [(QDSchemaQDSpanMatchedEntity *)self matches];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(QDSchemaQDSpanMatchedEntity *)self setMatches:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end