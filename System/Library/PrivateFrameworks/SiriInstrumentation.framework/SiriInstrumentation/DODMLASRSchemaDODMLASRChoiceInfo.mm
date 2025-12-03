@interface DODMLASRSchemaDODMLASRChoiceInfo
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRChoiceInfo)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRChoiceInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTokens:(id)tokens;
- (void)setHasAcousticCost:(BOOL)cost;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRChoiceInfo

- (DODMLASRSchemaDODMLASRChoiceInfo)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = DODMLASRSchemaDODMLASRChoiceInfo;
  v5 = [(DODMLASRSchemaDODMLASRChoiceInfo *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [DODMLASRSchemaDODMLASRTokenInfo alloc];
              v14 = [(DODMLASRSchemaDODMLASRTokenInfo *)v13 initWithDictionary:v12, v19];
              [(DODMLASRSchemaDODMLASRChoiceInfo *)v5 addTokens:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"graphCost", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(DODMLASRSchemaDODMLASRChoiceInfo *)v5 setGraphCost:?];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"acousticCost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(DODMLASRSchemaDODMLASRChoiceInfo *)v5 setAcousticCost:?];
    }

    v17 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRChoiceInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRChoiceInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRChoiceInfo *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASRChoiceInfo *)self acousticCost];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"acousticCost"];

    has = self->_has;
  }

  if (has)
  {
    v7 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASRChoiceInfo *)self graphCost];
    v8 = [v7 numberWithFloat:?];
    [dictionary setObject:v8 forKeyedSubscript:@"graphCost"];
  }

  if ([(NSArray *)self->_tokens count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_tokens;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"tokens"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_tokens hash];
  if (*&self->_has)
  {
    graphCost = self->_graphCost;
    if (graphCost >= 0.0)
    {
      v8 = graphCost;
    }

    else
    {
      v8 = -graphCost;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    acousticCost = self->_acousticCost;
    if (acousticCost >= 0.0)
    {
      v13 = acousticCost;
    }

    else
    {
      v13 = -acousticCost;
    }

    *v4.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v5, v4).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v11 += v14;
      }
    }

    else
    {
      v11 -= fabs(v14);
    }
  }

  else
  {
    v11 = 0;
  }

  return v6 ^ v3 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  tokens = [(DODMLASRSchemaDODMLASRChoiceInfo *)self tokens];
  tokens2 = [equalCopy tokens];
  v7 = tokens2;
  if ((tokens != 0) != (tokens2 == 0))
  {
    tokens3 = [(DODMLASRSchemaDODMLASRChoiceInfo *)self tokens];
    if (tokens3)
    {
      v9 = tokens3;
      tokens4 = [(DODMLASRSchemaDODMLASRChoiceInfo *)self tokens];
      tokens5 = [equalCopy tokens];
      v12 = [tokens4 isEqual:tokens5];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    has = self->_has;
    v14 = equalCopy[24];
    if ((*&has & 1) == (v14 & 1))
    {
      if (*&has)
      {
        graphCost = self->_graphCost;
        [equalCopy graphCost];
        if (graphCost != v16)
        {
          goto LABEL_15;
        }

        has = self->_has;
        v14 = equalCopy[24];
      }

      v17 = (*&has >> 1) & 1;
      if (v17 == ((v14 >> 1) & 1))
      {
        if (!v17 || (acousticCost = self->_acousticCost, [equalCopy acousticCost], acousticCost == v19))
        {
          v20 = 1;
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
  }

LABEL_15:
  v20 = 0;
LABEL_16:

  return v20;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_tokens;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }
}

- (void)setHasAcousticCost:(BOOL)cost
{
  if (cost)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addTokens:(id)tokens
{
  tokensCopy = tokens;
  tokens = self->_tokens;
  v8 = tokensCopy;
  if (!tokens)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tokens;
    self->_tokens = array;

    tokensCopy = v8;
    tokens = self->_tokens;
  }

  [(NSArray *)tokens addObject:tokensCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASRChoiceInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DODMLASRSchemaDODMLASRChoiceInfo *)self tokens:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(DODMLASRSchemaDODMLASRChoiceInfo *)self setTokens:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end