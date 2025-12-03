@interface POMMESSchemaPOMMESPegasusSearchQuery
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusSearchQuery)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESPegasusSearchQuery)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUserSpan:(id)span;
- (void)setHasHasAudioQueueStateInfo:(BOOL)info;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESPegasusSearchQuery

- (POMMESSchemaPOMMESPegasusSearchQuery)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = POMMESSchemaPOMMESPegasusSearchQuery;
  v5 = [(POMMESSchemaPOMMESPegasusSearchQuery *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hasRewrittenUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusSearchQuery setHasRewrittenUtterances:](v5, "setHasRewrittenUtterances:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"userSpan"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:@"hasAudioQueueStateInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusSearchQuery setHasAudioQueueStateInfo:](v5, "setHasAudioQueueStateInfo:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"ampUserState"];
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

- (POMMESSchemaPOMMESPegasusSearchQuery)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusSearchQuery *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESPegasusSearchQuery *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_ampUserState)
  {
    ampUserState = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
    dictionaryRepresentation = [ampUserState dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ampUserState"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ampUserState"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusSearchQuery hasAudioQueueStateInfo](self, "hasAudioQueueStateInfo")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasAudioQueueStateInfo"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusSearchQuery hasRewrittenUtterances](self, "hasRewrittenUtterances")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasRewrittenUtterances"];
  }

  if ([(NSArray *)self->_userSpans count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"userSpan"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
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
    hasRewrittenUtterances = self->_hasRewrittenUtterances;
    if (hasRewrittenUtterances != [equalCopy hasRewrittenUtterances])
    {
      goto LABEL_18;
    }
  }

  userSpans = [(POMMESSchemaPOMMESPegasusSearchQuery *)self userSpans];
  userSpans2 = [equalCopy userSpans];
  if ((userSpans != 0) == (userSpans2 == 0))
  {
    goto LABEL_17;
  }

  userSpans3 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self userSpans];
  if (userSpans3)
  {
    v9 = userSpans3;
    userSpans4 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self userSpans];
    userSpans5 = [equalCopy userSpans];
    v12 = [userSpans4 isEqual:userSpans5];

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
    hasAudioQueueStateInfo = self->_hasAudioQueueStateInfo;
    if (hasAudioQueueStateInfo != [equalCopy hasAudioQueueStateInfo])
    {
      goto LABEL_18;
    }
  }

  userSpans = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
  userSpans2 = [equalCopy ampUserState];
  if ((userSpans != 0) != (userSpans2 == 0))
  {
    ampUserState = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
    if (!ampUserState)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = ampUserState;
    ampUserState2 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
    ampUserState3 = [equalCopy ampUserState];
    v19 = [ampUserState2 isEqual:ampUserState3];

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
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  ampUserState = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];

  if (ampUserState)
  {
    ampUserState2 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasHasAudioQueueStateInfo:(BOOL)info
{
  if (info)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addUserSpan:(id)span
{
  spanCopy = span;
  userSpans = self->_userSpans;
  v8 = spanCopy;
  if (!userSpans)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_userSpans;
    self->_userSpans = array;

    spanCopy = v8;
    userSpans = self->_userSpans;
  }

  [(NSArray *)userSpans addObject:spanCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = POMMESSchemaPOMMESPegasusSearchQuery;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESPegasusSearchQuery *)self userSpans:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(POMMESSchemaPOMMESPegasusSearchQuery *)self setUserSpans:v7];

  ampUserState = [(POMMESSchemaPOMMESPegasusSearchQuery *)self ampUserState];
  v9 = [ampUserState applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
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