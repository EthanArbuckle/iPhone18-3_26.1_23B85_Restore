@interface ASRSchemaASRContextualEntityRetrievalStarted
- (ASRSchemaASRContextualEntityRetrievalStarted)initWithDictionary:(id)dictionary;
- (ASRSchemaASRContextualEntityRetrievalStarted)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)enabledTasksAtIndex:(unint64_t)index;
- (int)rejectedContextTypesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addEnabledTasks:(int)tasks;
- (void)addRejectedContextTypes:(int)types;
- (void)addRejectedEntityTypes:(id)types;
- (void)setHasMaxEntityChars:(BOOL)chars;
- (void)setHasMaxEntityWords:(BOOL)words;
- (void)setHasRequestTask:(BOOL)task;
- (void)setHasRetrievalTimeout:(BOOL)timeout;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRContextualEntityRetrievalStarted

- (ASRSchemaASRContextualEntityRetrievalStarted)initWithDictionary:(id)dictionary
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v53.receiver = self;
  v53.super_class = ASRSchemaASRContextualEntityRetrievalStarted;
  v5 = [(ASRSchemaASRContextualEntityRetrievalStarted *)&v53 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"maxEnrolled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityRetrievalStarted setMaxEnrolled:](v5, "setMaxEnrolled:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"retrievalTimeout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(ASRSchemaASRContextualEntityRetrievalStarted *)v5 setRetrievalTimeout:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"maxEntityChars"];
    objc_opt_class();
    v40 = v8;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityRetrievalStarted setMaxEntityChars:](v5, "setMaxEntityChars:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"maxEntityWords"];
    objc_opt_class();
    v39 = v9;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityRetrievalStarted setMaxEntityWords:](v5, "setMaxEntityWords:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"enabledTasks"];
    objc_opt_class();
    v38 = v10;
    if (objc_opt_isKindOfClass())
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v50;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v50 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v49 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRContextualEntityRetrievalStarted addEnabledTasks:](v5, "addEnabledTasks:", [v16 intValue]);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v49 objects:v56 count:16];
        }

        while (v13);
      }
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"requestTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityRetrievalStarted setRequestTask:](v5, "setRequestTask:", [v17 intValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"rejectedContextTypes"];
    objc_opt_class();
    v36 = v18;
    v37 = v17;
    if (objc_opt_isKindOfClass())
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v46;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v46 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v45 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRContextualEntityRetrievalStarted addRejectedContextTypes:](v5, "addRejectedContextTypes:", [v24 intValue]);
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v21);
      }

      v18 = v36;
      v17 = v37;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"rejectedEntityTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v7;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v42;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v42 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v41 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [[QDSchemaQDEntityType alloc] initWithDictionary:v31];
              [(ASRSchemaASRContextualEntityRetrievalStarted *)v5 addRejectedEntityTypes:v32];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
        }

        while (v28);
      }

      v7 = v35;
      v18 = v36;
      v17 = v37;
    }

    v33 = v5;
  }

  return v5;
}

- (ASRSchemaASRContextualEntityRetrievalStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRContextualEntityRetrievalStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRContextualEntityRetrievalStarted *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_enabledTasks count])
  {
    enabledTasks = [(ASRSchemaASRContextualEntityRetrievalStarted *)self enabledTasks];
    v5 = [enabledTasks copy];
    [dictionary setObject:v5 forKeyedSubscript:@"enabledTasks"];
  }

  has = self->_has;
  if (has)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRContextualEntityRetrievalStarted maxEnrolled](self, "maxEnrolled")}];
    [dictionary setObject:v21 forKeyedSubscript:@"maxEnrolled"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRContextualEntityRetrievalStarted maxEntityChars](self, "maxEntityChars")}];
  [dictionary setObject:v22 forKeyedSubscript:@"maxEntityChars"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRContextualEntityRetrievalStarted maxEntityWords](self, "maxEntityWords")}];
    [dictionary setObject:v7 forKeyedSubscript:@"maxEntityWords"];
  }

LABEL_7:
  if ([(NSArray *)self->_rejectedContextTypes count])
  {
    rejectedContextTypes = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedContextTypes];
    v9 = [rejectedContextTypes copy];
    [dictionary setObject:v9 forKeyedSubscript:@"rejectedContextTypes"];
  }

  if ([(NSArray *)self->_rejectedEntityTypes count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = self->_rejectedEntityTypes;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"rejectedEntityTypes"];
  }

  v18 = self->_has;
  if ((v18 & 0x10) != 0)
  {
    v19 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self requestTask]- 1;
    if (v19 > 0xF)
    {
      v20 = @"ASRTASKHINT_UNKNOWN";
    }

    else
    {
      v20 = off_1E78D1BF0[v19];
    }

    [dictionary setObject:v20 forKeyedSubscript:@"requestTask"];
    v18 = self->_has;
  }

  if ((v18 & 2) != 0)
  {
    v23 = MEMORY[0x1E696AD98];
    [(ASRSchemaASRContextualEntityRetrievalStarted *)self retrievalTimeout];
    v24 = [v23 numberWithDouble:?];
    [dictionary setObject:v24 forKeyedSubscript:@"retrievalTimeout"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_maxEnrolled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  retrievalTimeout = self->_retrievalTimeout;
  if (retrievalTimeout < 0.0)
  {
    retrievalTimeout = -retrievalTimeout;
  }

  *v2.i64 = floor(retrievalTimeout + 0.5);
  v7 = (retrievalTimeout - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_maxEntityChars;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_11:
      v11 = 2654435761 * self->_maxEntityWords;
      goto LABEL_14;
    }
  }

  v11 = 0;
LABEL_14:
  v12 = [(NSArray *)self->_enabledTasks hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v13 = 2654435761 * self->_requestTask;
  }

  else
  {
    v13 = 0;
  }

  v14 = v9 ^ v5 ^ v10 ^ v11 ^ v13 ^ v12;
  v15 = [(NSArray *)self->_rejectedContextTypes hash];
  return v14 ^ v15 ^ [(NSArray *)self->_rejectedEntityTypes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  has = self->_has;
  v6 = equalCopy[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_35;
  }

  if (*&has)
  {
    maxEnrolled = self->_maxEnrolled;
    if (maxEnrolled != [equalCopy maxEnrolled])
    {
      goto LABEL_35;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      retrievalTimeout = self->_retrievalTimeout;
      [equalCopy retrievalTimeout];
      if (retrievalTimeout != v10)
      {
        goto LABEL_35;
      }

      has = self->_has;
      v6 = equalCopy[64];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        maxEntityChars = self->_maxEntityChars;
        if (maxEntityChars != [equalCopy maxEntityChars])
        {
          goto LABEL_35;
        }

        has = self->_has;
        v6 = equalCopy[64];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 != ((v6 >> 3) & 1))
      {
        goto LABEL_35;
      }

      if (v13)
      {
        maxEntityWords = self->_maxEntityWords;
        if (maxEntityWords != [equalCopy maxEntityWords])
        {
          goto LABEL_35;
        }
      }

      enabledTasks = [(ASRSchemaASRContextualEntityRetrievalStarted *)self enabledTasks];
      enabledTasks2 = [equalCopy enabledTasks];
      if ((enabledTasks != 0) == (enabledTasks2 == 0))
      {
        goto LABEL_34;
      }

      enabledTasks3 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self enabledTasks];
      if (enabledTasks3)
      {
        v18 = enabledTasks3;
        enabledTasks4 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self enabledTasks];
        enabledTasks5 = [equalCopy enabledTasks];
        v21 = [enabledTasks4 isEqual:enabledTasks5];

        if (!v21)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      v22 = (*&self->_has >> 4) & 1;
      if (v22 != ((equalCopy[64] >> 4) & 1))
      {
        goto LABEL_35;
      }

      if (v22)
      {
        requestTask = self->_requestTask;
        if (requestTask != [equalCopy requestTask])
        {
          goto LABEL_35;
        }
      }

      enabledTasks = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedContextTypes];
      enabledTasks2 = [equalCopy rejectedContextTypes];
      if ((enabledTasks != 0) == (enabledTasks2 == 0))
      {
        goto LABEL_34;
      }

      rejectedContextTypes = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedContextTypes];
      if (rejectedContextTypes)
      {
        v25 = rejectedContextTypes;
        rejectedContextTypes2 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedContextTypes];
        rejectedContextTypes3 = [equalCopy rejectedContextTypes];
        v28 = [rejectedContextTypes2 isEqual:rejectedContextTypes3];

        if (!v28)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      enabledTasks = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedEntityTypes];
      enabledTasks2 = [equalCopy rejectedEntityTypes];
      if ((enabledTasks != 0) != (enabledTasks2 == 0))
      {
        rejectedEntityTypes = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedEntityTypes];
        if (!rejectedEntityTypes)
        {

LABEL_38:
          v34 = 1;
          goto LABEL_36;
        }

        v30 = rejectedEntityTypes;
        rejectedEntityTypes2 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedEntityTypes];
        rejectedEntityTypes3 = [equalCopy rejectedEntityTypes];
        v33 = [rejectedEntityTypes2 isEqual:rejectedEntityTypes3];

        if (v33)
        {
          goto LABEL_38;
        }
      }

      else
      {
LABEL_34:
      }
    }
  }

LABEL_35:
  v34 = 0;
LABEL_36:

  return v34;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_32:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_enabledTasks;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v29 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_rejectedContextTypes;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v25 + 1) + 8 * j) intValue];
        PBDataWriterWriteInt32Field();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_rejectedEntityTypes;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)addRejectedEntityTypes:(id)types
{
  typesCopy = types;
  rejectedEntityTypes = self->_rejectedEntityTypes;
  v8 = typesCopy;
  if (!rejectedEntityTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_rejectedEntityTypes;
    self->_rejectedEntityTypes = array;

    typesCopy = v8;
    rejectedEntityTypes = self->_rejectedEntityTypes;
  }

  [(NSArray *)rejectedEntityTypes addObject:typesCopy];
}

- (int)rejectedContextTypesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_rejectedContextTypes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addRejectedContextTypes:(int)types
{
  v3 = *&types;
  rejectedContextTypes = self->_rejectedContextTypes;
  if (!rejectedContextTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_rejectedContextTypes;
    self->_rejectedContextTypes = array;

    rejectedContextTypes = self->_rejectedContextTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)rejectedContextTypes addObject:v8];
}

- (void)setHasRequestTask:(BOOL)task
{
  if (task)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)enabledTasksAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_enabledTasks objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addEnabledTasks:(int)tasks
{
  v3 = *&tasks;
  enabledTasks = self->_enabledTasks;
  if (!enabledTasks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_enabledTasks;
    self->_enabledTasks = array;

    enabledTasks = self->_enabledTasks;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)enabledTasks addObject:v8];
}

- (void)setHasMaxEntityWords:(BOOL)words
{
  if (words)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMaxEntityChars:(BOOL)chars
{
  if (chars)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRetrievalTimeout:(BOOL)timeout
{
  if (timeout)
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
  v9.receiver = self;
  v9.super_class = ASRSchemaASRContextualEntityRetrievalStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedEntityTypes:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(ASRSchemaASRContextualEntityRetrievalStarted *)self setRejectedEntityTypes:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end