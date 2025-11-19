@interface POMMESSchemaPOMMESPegasusSearchQuery
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusSearchQuery)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESPegasusSearchQuery)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUserSpan:(id)a3;
- (void)setHasHasAudioQueueStateInfo:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESPegasusSearchQuery

- (POMMESSchemaPOMMESPegasusSearchQuery)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = POMMESSchemaPOMMESPegasusSearchQuery;
  v5 = [(POMMESSchemaPOMMESPegasusSearchQuery *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"hasRewrittenUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusSearchQuery setHasRewrittenUtterances:](v5, "setHasRewrittenUtterances:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"userSpan"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[POMMESSchemaPOMMESPegasusSearchQueryUserSpan alloc] initWithDictionary:v13];
              [(POMMESSchemaPOMMESPegasusSearchQuery *)v5 addUserSpan:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v10);
      }

      v6 = v20;
    }

    v15 = [v4 objectForKeyedSubscript:@"hasAudioQueueStateInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusSearchQuery setHasAudioQueueStateInfo:](v5, "setHasAudioQueueStateInfo:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"ampUserState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[POMMESSchemaPOMMESPegasusSearchQueryAmpUserState alloc] initWithDictionary:v16];
      [(POMMESSchemaPOMMESPegasusSearchQuery *)v5 setAmpUserState:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusSearchQuery)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusSearchQuery *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_ampUserState)
  {
    v4 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"ampUserState"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"ampUserState"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusSearchQuery hasAudioQueueStateInfo](self, "hasAudioQueueStateInfo")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasAudioQueueStateInfo"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusSearchQuery hasRewrittenUtterances](self, "hasRewrittenUtterances")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasRewrittenUtterances"];
  }

  if ([(NSArray *)self->_userSpans count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_userSpans;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"userSpan"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_hasRewrittenUtterances;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_userSpans hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_hasAudioQueueStateInfo;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(POMMESSchemaPOMMESPegasusSearchQueryAmpUserState *)self->_ampUserState hash];
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
    hasRewrittenUtterances = self->_hasRewrittenUtterances;
    if (hasRewrittenUtterances != [v4 hasRewrittenUtterances])
    {
      goto LABEL_18;
    }
  }

  v6 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self userSpans];
  v7 = [v4 userSpans];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self userSpans];
  if (v8)
  {
    v9 = v8;
    v10 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self userSpans];
    v11 = [v4 userSpans];
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
    hasAudioQueueStateInfo = self->_hasAudioQueueStateInfo;
    if (hasAudioQueueStateInfo != [v4 hasAudioQueueStateInfo])
    {
      goto LABEL_18;
    }
  }

  v6 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
  v7 = [v4 ampUserState];
  if ((v6 != 0) != (v7 == 0))
  {
    v15 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
    if (!v15)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = v15;
    v17 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
    v18 = [v4 ampUserState];
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
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_userSpans;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v10 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];

  if (v10)
  {
    v11 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasHasAudioQueueStateInfo:(BOOL)a3
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

- (void)addUserSpan:(id)a3
{
  v4 = a3;
  userSpans = self->_userSpans;
  v8 = v4;
  if (!userSpans)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_userSpans;
    self->_userSpans = v6;

    v4 = v8;
    userSpans = self->_userSpans;
  }

  [(NSArray *)userSpans addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = POMMESSchemaPOMMESPegasusSearchQuery;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self userSpans:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(POMMESSchemaPOMMESPegasusSearchQuery *)self setUserSpans:v7];

  v8 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
  {
    [(POMMESSchemaPOMMESPegasusSearchQuery *)self deleteAmpUserState];
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