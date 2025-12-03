@interface QDSchemaQDSpanMatchedEntity
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDSpanMatchedEntity)initWithDictionary:(id)dictionary;
- (QDSchemaQDSpanMatchedEntity)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMatches:(id)matches;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDSpanMatchedEntity

- (QDSchemaQDSpanMatchedEntity)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = QDSchemaQDSpanMatchedEntity;
  v5 = [(QDSchemaQDSpanMatchedEntity *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sessionScopedUniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(QDSchemaQDSpanMatchedEntity *)v5 setSessionScopedUniqueId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"valueType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[QDSchemaQDEntityType alloc] initWithDictionary:v8];
      [(QDSchemaQDSpanMatchedEntity *)v5 setValueType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"matches"];
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

    v18 = [dictionaryCopy objectForKeyedSubscript:{@"dataProtectionClass", v21, v22, v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDSpanMatchedEntity setDataProtectionClass:](v5, "setDataProtectionClass:", [v18 intValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (QDSchemaQDSpanMatchedEntity)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDSpanMatchedEntity *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDSpanMatchedEntity *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKeyedSubscript:@"dataProtectionClass"];
  }

  if ([(NSArray *)self->_matches count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"matches"];
  }

  if (self->_sessionScopedUniqueId)
  {
    sessionScopedUniqueId = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
    dictionaryRepresentation2 = [sessionScopedUniqueId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"sessionScopedUniqueId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"sessionScopedUniqueId"];
    }
  }

  if (self->_valueType)
  {
    valueType = [(QDSchemaQDSpanMatchedEntity *)self valueType];
    dictionaryRepresentation3 = [valueType dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"valueType"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"valueType"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v21];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  sessionScopedUniqueId = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
  sessionScopedUniqueId2 = [equalCopy sessionScopedUniqueId];
  if ((sessionScopedUniqueId != 0) == (sessionScopedUniqueId2 == 0))
  {
    goto LABEL_16;
  }

  sessionScopedUniqueId3 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
  if (sessionScopedUniqueId3)
  {
    v8 = sessionScopedUniqueId3;
    sessionScopedUniqueId4 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
    sessionScopedUniqueId5 = [equalCopy sessionScopedUniqueId];
    v11 = [sessionScopedUniqueId4 isEqual:sessionScopedUniqueId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  sessionScopedUniqueId = [(QDSchemaQDSpanMatchedEntity *)self valueType];
  sessionScopedUniqueId2 = [equalCopy valueType];
  if ((sessionScopedUniqueId != 0) == (sessionScopedUniqueId2 == 0))
  {
    goto LABEL_16;
  }

  valueType = [(QDSchemaQDSpanMatchedEntity *)self valueType];
  if (valueType)
  {
    v13 = valueType;
    valueType2 = [(QDSchemaQDSpanMatchedEntity *)self valueType];
    valueType3 = [equalCopy valueType];
    v16 = [valueType2 isEqual:valueType3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  sessionScopedUniqueId = [(QDSchemaQDSpanMatchedEntity *)self matches];
  sessionScopedUniqueId2 = [equalCopy matches];
  if ((sessionScopedUniqueId != 0) == (sessionScopedUniqueId2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  matches = [(QDSchemaQDSpanMatchedEntity *)self matches];
  if (matches)
  {
    v18 = matches;
    matches2 = [(QDSchemaQDSpanMatchedEntity *)self matches];
    matches3 = [equalCopy matches];
    v21 = [matches2 isEqual:matches3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (dataProtectionClass = self->_dataProtectionClass, dataProtectionClass == [equalCopy dataProtectionClass]))
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

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  sessionScopedUniqueId = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];

  if (sessionScopedUniqueId)
  {
    sessionScopedUniqueId2 = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
    PBDataWriterWriteSubmessage();
  }

  valueType = [(QDSchemaQDSpanMatchedEntity *)self valueType];

  if (valueType)
  {
    valueType2 = [(QDSchemaQDSpanMatchedEntity *)self valueType];
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

- (void)addMatches:(id)matches
{
  matchesCopy = matches;
  matches = self->_matches;
  v8 = matchesCopy;
  if (!matches)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matches;
    self->_matches = array;

    matchesCopy = v8;
    matches = self->_matches;
  }

  [(NSArray *)matches addObject:matchesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = QDSchemaQDSpanMatchedEntity;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  sessionScopedUniqueId = [(QDSchemaQDSpanMatchedEntity *)self sessionScopedUniqueId];
  v7 = [sessionScopedUniqueId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(QDSchemaQDSpanMatchedEntity *)self deleteSessionScopedUniqueId];
  }

  valueType = [(QDSchemaQDSpanMatchedEntity *)self valueType];
  v10 = [valueType applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(QDSchemaQDSpanMatchedEntity *)self deleteValueType];
  }

  matches = [(QDSchemaQDSpanMatchedEntity *)self matches];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:matches underConditions:policyCopy];
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