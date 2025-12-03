@interface JRSchemaUserHistory
- (BOOL)isEqual:(id)equal;
- (JRSchemaUserHistory)initWithDictionary:(id)dictionary;
- (JRSchemaUserHistory)initWithJSON:(id)n;
- (NSData)jsonData;
- (float)historicalContextAtIndex:(unint64_t)index;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHistoricalContext:(float)context;
- (void)addHistoricalLocationContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaUserHistory

- (JRSchemaUserHistory)initWithDictionary:(id)dictionary
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = JRSchemaUserHistory;
  v5 = [(JRSchemaUserHistory *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(JRSchemaUserHistory *)v5 setToolId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"historicalContext"];
    objc_opt_class();
    v28 = v6;
    v29 = dictionaryCopy;
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v35;
        do
        {
          v14 = 0;
          do
          {
            if (*v35 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v34 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 floatValue];
              [(JRSchemaUserHistory *)v5 addHistoricalContext:?];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v12);
      }

      v6 = v28;
      dictionaryCopy = v29;
      v8 = v9;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"historicalFeedback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(JRSchemaUserHistory *)v5 setHistoricalFeedback:?];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"historicalLocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v8;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        do
        {
          v22 = 0;
          do
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v30 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[JRSchemaHistoricalLocationContext alloc] initWithDictionary:v23];
              [(JRSchemaUserHistory *)v5 addHistoricalLocationContext:v24];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v20);
      }

      v6 = v28;
      dictionaryCopy = v29;
      v8 = v27;
    }

    v25 = v5;
  }

  return v5;
}

- (JRSchemaUserHistory)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaUserHistory *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaUserHistory *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_historicalContexts count])
  {
    historicalContexts = [(JRSchemaUserHistory *)self historicalContexts];
    v5 = [historicalContexts copy];
    [dictionary setObject:v5 forKeyedSubscript:@"historicalContext"];
  }

  if (*&self->_has)
  {
    v6 = MEMORY[0x1E696AD98];
    [(JRSchemaUserHistory *)self historicalFeedback];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"historicalFeedback"];
  }

  if ([(NSArray *)self->_historicalLocationContexts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_historicalLocationContexts;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
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

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"historicalLocationContext"];
  }

  if (self->_toolId)
  {
    toolId = [(JRSchemaUserHistory *)self toolId];
    dictionaryRepresentation2 = [toolId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"toolId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"toolId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v20];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_toolId hash];
  v4 = [(NSArray *)self->_historicalContexts hash];
  if (*&self->_has)
  {
    historicalFeedback = self->_historicalFeedback;
    if (historicalFeedback >= 0.0)
    {
      v9 = historicalFeedback;
    }

    else
    {
      v9 = -historicalFeedback;
    }

    *v5.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v7 += v10;
      }
    }

    else
    {
      v7 -= fabs(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7 ^ [(NSArray *)self->_historicalLocationContexts hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  toolId = [(JRSchemaUserHistory *)self toolId];
  toolId2 = [equalCopy toolId];
  if ((toolId != 0) == (toolId2 == 0))
  {
    goto LABEL_19;
  }

  toolId3 = [(JRSchemaUserHistory *)self toolId];
  if (toolId3)
  {
    v8 = toolId3;
    toolId4 = [(JRSchemaUserHistory *)self toolId];
    toolId5 = [equalCopy toolId];
    v11 = [toolId4 isEqual:toolId5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  toolId = [(JRSchemaUserHistory *)self historicalContexts];
  toolId2 = [equalCopy historicalContexts];
  if ((toolId != 0) == (toolId2 == 0))
  {
    goto LABEL_19;
  }

  historicalContexts = [(JRSchemaUserHistory *)self historicalContexts];
  if (historicalContexts)
  {
    v13 = historicalContexts;
    historicalContexts2 = [(JRSchemaUserHistory *)self historicalContexts];
    historicalContexts3 = [equalCopy historicalContexts];
    v16 = [historicalContexts2 isEqual:historicalContexts3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    historicalFeedback = self->_historicalFeedback;
    [equalCopy historicalFeedback];
    if (historicalFeedback != v18)
    {
      goto LABEL_20;
    }
  }

  toolId = [(JRSchemaUserHistory *)self historicalLocationContexts];
  toolId2 = [equalCopy historicalLocationContexts];
  if ((toolId != 0) != (toolId2 == 0))
  {
    historicalLocationContexts = [(JRSchemaUserHistory *)self historicalLocationContexts];
    if (!historicalLocationContexts)
    {

LABEL_23:
      v24 = 1;
      goto LABEL_21;
    }

    v20 = historicalLocationContexts;
    historicalLocationContexts2 = [(JRSchemaUserHistory *)self historicalLocationContexts];
    historicalLocationContexts3 = [equalCopy historicalLocationContexts];
    v23 = [historicalLocationContexts2 isEqual:historicalLocationContexts3];

    if (v23)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v24 = 0;
LABEL_21:

  return v24;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  toolId = [(JRSchemaUserHistory *)self toolId];

  if (toolId)
  {
    toolId2 = [(JRSchemaUserHistory *)self toolId];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_historicalContexts;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v21 + 1) + 8 * v11) floatValue];
        PBDataWriterWriteFloatField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_historicalLocationContexts;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addHistoricalLocationContext:(id)context
{
  contextCopy = context;
  historicalLocationContexts = self->_historicalLocationContexts;
  v8 = contextCopy;
  if (!historicalLocationContexts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_historicalLocationContexts;
    self->_historicalLocationContexts = array;

    contextCopy = v8;
    historicalLocationContexts = self->_historicalLocationContexts;
  }

  [(NSArray *)historicalLocationContexts addObject:contextCopy];
}

- (float)historicalContextAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_historicalContexts objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addHistoricalContext:(float)context
{
  historicalContexts = self->_historicalContexts;
  if (!historicalContexts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_historicalContexts;
    self->_historicalContexts = array;

    historicalContexts = self->_historicalContexts;
  }

  *&v8 = context;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)historicalContexts addObject:v9];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = JRSchemaUserHistory;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(JRSchemaUserHistory *)self deleteToolId];
  }

  toolId = [(JRSchemaUserHistory *)self toolId];
  v7 = [toolId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(JRSchemaUserHistory *)self deleteToolId];
  }

  historicalLocationContexts = [(JRSchemaUserHistory *)self historicalLocationContexts];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:historicalLocationContexts underConditions:policyCopy];
  [(JRSchemaUserHistory *)self setHistoricalLocationContexts:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end