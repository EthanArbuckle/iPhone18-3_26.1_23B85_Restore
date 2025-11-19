@interface ASRSchemaASRContextualEntityRetrievalStarted
- (ASRSchemaASRContextualEntityRetrievalStarted)initWithDictionary:(id)a3;
- (ASRSchemaASRContextualEntityRetrievalStarted)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)enabledTasksAtIndex:(unint64_t)a3;
- (int)rejectedContextTypesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addEnabledTasks:(int)a3;
- (void)addRejectedContextTypes:(int)a3;
- (void)addRejectedEntityTypes:(id)a3;
- (void)setHasMaxEntityChars:(BOOL)a3;
- (void)setHasMaxEntityWords:(BOOL)a3;
- (void)setHasRequestTask:(BOOL)a3;
- (void)setHasRetrievalTimeout:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRContextualEntityRetrievalStarted

- (ASRSchemaASRContextualEntityRetrievalStarted)initWithDictionary:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v53.receiver = self;
  v53.super_class = ASRSchemaASRContextualEntityRetrievalStarted;
  v5 = [(ASRSchemaASRContextualEntityRetrievalStarted *)&v53 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"maxEnrolled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityRetrievalStarted setMaxEnrolled:](v5, "setMaxEnrolled:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"retrievalTimeout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(ASRSchemaASRContextualEntityRetrievalStarted *)v5 setRetrievalTimeout:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"maxEntityChars"];
    objc_opt_class();
    v40 = v8;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityRetrievalStarted setMaxEntityChars:](v5, "setMaxEntityChars:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"maxEntityWords"];
    objc_opt_class();
    v39 = v9;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityRetrievalStarted setMaxEntityWords:](v5, "setMaxEntityWords:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"enabledTasks"];
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

    v17 = [v4 objectForKeyedSubscript:@"requestTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityRetrievalStarted setRequestTask:](v5, "setRequestTask:", [v17 intValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"rejectedContextTypes"];
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

    v25 = [v4 objectForKeyedSubscript:@"rejectedEntityTypes"];
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

- (ASRSchemaASRContextualEntityRetrievalStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRContextualEntityRetrievalStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_enabledTasks count])
  {
    v4 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self enabledTasks];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"enabledTasks"];
  }

  has = self->_has;
  if (has)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRContextualEntityRetrievalStarted maxEnrolled](self, "maxEnrolled")}];
    [v3 setObject:v21 forKeyedSubscript:@"maxEnrolled"];

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
  [v3 setObject:v22 forKeyedSubscript:@"maxEntityChars"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRContextualEntityRetrievalStarted maxEntityWords](self, "maxEntityWords")}];
    [v3 setObject:v7 forKeyedSubscript:@"maxEntityWords"];
  }

LABEL_7:
  if ([(NSArray *)self->_rejectedContextTypes count])
  {
    v8 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedContextTypes];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"rejectedContextTypes"];
  }

  if ([(NSArray *)self->_rejectedEntityTypes count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
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

          v16 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"rejectedEntityTypes"];
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

    [v3 setObject:v20 forKeyedSubscript:@"requestTask"];
    v18 = self->_has;
  }

  if ((v18 & 2) != 0)
  {
    v23 = MEMORY[0x1E696AD98];
    [(ASRSchemaASRContextualEntityRetrievalStarted *)self retrievalTimeout];
    v24 = [v23 numberWithDouble:?];
    [v3 setObject:v24 forKeyedSubscript:@"retrievalTimeout"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  has = self->_has;
  v6 = v4[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_35;
  }

  if (*&has)
  {
    maxEnrolled = self->_maxEnrolled;
    if (maxEnrolled != [v4 maxEnrolled])
    {
      goto LABEL_35;
    }

    has = self->_has;
    v6 = v4[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      retrievalTimeout = self->_retrievalTimeout;
      [v4 retrievalTimeout];
      if (retrievalTimeout != v10)
      {
        goto LABEL_35;
      }

      has = self->_has;
      v6 = v4[64];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        maxEntityChars = self->_maxEntityChars;
        if (maxEntityChars != [v4 maxEntityChars])
        {
          goto LABEL_35;
        }

        has = self->_has;
        v6 = v4[64];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 != ((v6 >> 3) & 1))
      {
        goto LABEL_35;
      }

      if (v13)
      {
        maxEntityWords = self->_maxEntityWords;
        if (maxEntityWords != [v4 maxEntityWords])
        {
          goto LABEL_35;
        }
      }

      v15 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self enabledTasks];
      v16 = [v4 enabledTasks];
      if ((v15 != 0) == (v16 == 0))
      {
        goto LABEL_34;
      }

      v17 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self enabledTasks];
      if (v17)
      {
        v18 = v17;
        v19 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self enabledTasks];
        v20 = [v4 enabledTasks];
        v21 = [v19 isEqual:v20];

        if (!v21)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      v22 = (*&self->_has >> 4) & 1;
      if (v22 != ((v4[64] >> 4) & 1))
      {
        goto LABEL_35;
      }

      if (v22)
      {
        requestTask = self->_requestTask;
        if (requestTask != [v4 requestTask])
        {
          goto LABEL_35;
        }
      }

      v15 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedContextTypes];
      v16 = [v4 rejectedContextTypes];
      if ((v15 != 0) == (v16 == 0))
      {
        goto LABEL_34;
      }

      v24 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedContextTypes];
      if (v24)
      {
        v25 = v24;
        v26 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedContextTypes];
        v27 = [v4 rejectedContextTypes];
        v28 = [v26 isEqual:v27];

        if (!v28)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      v15 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedEntityTypes];
      v16 = [v4 rejectedEntityTypes];
      if ((v15 != 0) != (v16 == 0))
      {
        v29 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedEntityTypes];
        if (!v29)
        {

LABEL_38:
          v34 = 1;
          goto LABEL_36;
        }

        v30 = v29;
        v31 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedEntityTypes];
        v32 = [v4 rejectedEntityTypes];
        v33 = [v31 isEqual:v32];

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

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)addRejectedEntityTypes:(id)a3
{
  v4 = a3;
  rejectedEntityTypes = self->_rejectedEntityTypes;
  v8 = v4;
  if (!rejectedEntityTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_rejectedEntityTypes;
    self->_rejectedEntityTypes = v6;

    v4 = v8;
    rejectedEntityTypes = self->_rejectedEntityTypes;
  }

  [(NSArray *)rejectedEntityTypes addObject:v4];
}

- (int)rejectedContextTypesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_rejectedContextTypes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addRejectedContextTypes:(int)a3
{
  v3 = *&a3;
  rejectedContextTypes = self->_rejectedContextTypes;
  if (!rejectedContextTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_rejectedContextTypes;
    self->_rejectedContextTypes = v6;

    rejectedContextTypes = self->_rejectedContextTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)rejectedContextTypes addObject:v8];
}

- (void)setHasRequestTask:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)enabledTasksAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_enabledTasks objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addEnabledTasks:(int)a3
{
  v3 = *&a3;
  enabledTasks = self->_enabledTasks;
  if (!enabledTasks)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_enabledTasks;
    self->_enabledTasks = v6;

    enabledTasks = self->_enabledTasks;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)enabledTasks addObject:v8];
}

- (void)setHasMaxEntityWords:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMaxEntityChars:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRetrievalTimeout:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = ASRSchemaASRContextualEntityRetrievalStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRContextualEntityRetrievalStarted *)self rejectedEntityTypes:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

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