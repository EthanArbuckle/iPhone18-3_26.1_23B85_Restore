@interface PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPegasusSafetyScores:(id)scores;
- (void)setHasHasSafetyMessage:(BOOL)message;
- (void)setHasPegasusSafetyStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo

- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo;
  v5 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isSearchNoResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo setIsSearchNoResults:](v5, "setIsSearchNoResults:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"hasSafetyMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo setHasSafetyMessage:](v5, "setHasSafetyMessage:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pegasusSafetyStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo setPegasusSafetyStatus:](v5, "setPegasusSafetyStatus:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"pegasusSafetyScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v8;
      v22 = v7;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[PEGASUSSchemaPEGASUSSafetyScore alloc] initWithDictionary:v15];
              [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)v5 addPegasusSafetyScores:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v12);
      }

      v7 = v22;
      v8 = v21;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)v5 setModelVersion:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo hasSafetyMessage](self, "hasSafetyMessage")}];
    [dictionary setObject:v5 forKeyedSubscript:@"hasSafetyMessage"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo isSearchNoResults](self, "isSearchNoResults")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isSearchNoResults"];
  }

  if (self->_modelVersion)
  {
    modelVersion = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];
    v8 = [modelVersion copy];
    [dictionary setObject:v8 forKeyedSubscript:@"modelVersion"];
  }

  if ([(NSArray *)self->_pegasusSafetyScores count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_pegasusSafetyScores;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
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

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"pegasusSafetyScores"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v17 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self pegasusSafetyStatus]- 1;
    if (v17 > 4)
    {
      v18 = @"PEGASUSSAFETYSTATUS_UNKNOWN";
    }

    else
    {
      v18 = off_1E78DF668[v17];
    }

    [dictionary setObject:v18 forKeyedSubscript:@"pegasusSafetyStatus"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_isSearchNoResults;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_hasSafetyMessage;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_pegasusSafetyStatus;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSArray *)self->_pegasusSafetyScores hash];
  return v6 ^ [(NSString *)self->_modelVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    isSearchNoResults = self->_isSearchNoResults;
    if (isSearchNoResults != [equalCopy isSearchNoResults])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      hasSafetyMessage = self->_hasSafetyMessage;
      if (hasSafetyMessage != [equalCopy hasSafetyMessage])
      {
        goto LABEL_23;
      }

      has = self->_has;
      v6 = equalCopy[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_23;
    }

    if (v10)
    {
      pegasusSafetyStatus = self->_pegasusSafetyStatus;
      if (pegasusSafetyStatus != [equalCopy pegasusSafetyStatus])
      {
        goto LABEL_23;
      }
    }

    pegasusSafetyScores = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self pegasusSafetyScores];
    pegasusSafetyScores2 = [equalCopy pegasusSafetyScores];
    if ((pegasusSafetyScores != 0) == (pegasusSafetyScores2 == 0))
    {
      goto LABEL_22;
    }

    pegasusSafetyScores3 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self pegasusSafetyScores];
    if (pegasusSafetyScores3)
    {
      v15 = pegasusSafetyScores3;
      pegasusSafetyScores4 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self pegasusSafetyScores];
      pegasusSafetyScores5 = [equalCopy pegasusSafetyScores];
      v18 = [pegasusSafetyScores4 isEqual:pegasusSafetyScores5];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    pegasusSafetyScores = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];
    pegasusSafetyScores2 = [equalCopy modelVersion];
    if ((pegasusSafetyScores != 0) != (pegasusSafetyScores2 == 0))
    {
      modelVersion = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];
      if (!modelVersion)
      {

LABEL_26:
        v24 = 1;
        goto LABEL_24;
      }

      v20 = modelVersion;
      modelVersion2 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];
      modelVersion3 = [equalCopy modelVersion];
      v23 = [modelVersion2 isEqual:modelVersion3];

      if (v23)
      {
        goto LABEL_26;
      }
    }

    else
    {
LABEL_22:
    }
  }

LABEL_23:
  v24 = 0;
LABEL_24:

  return v24;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_pegasusSafetyScores;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  modelVersion = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];

  if (modelVersion)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addPegasusSafetyScores:(id)scores
{
  scoresCopy = scores;
  pegasusSafetyScores = self->_pegasusSafetyScores;
  v8 = scoresCopy;
  if (!pegasusSafetyScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pegasusSafetyScores;
    self->_pegasusSafetyScores = array;

    scoresCopy = v8;
    pegasusSafetyScores = self->_pegasusSafetyScores;
  }

  [(NSArray *)pegasusSafetyScores addObject:scoresCopy];
}

- (void)setHasPegasusSafetyStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHasSafetyMessage:(BOOL)message
{
  if (message)
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
  v9.super_class = PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self pegasusSafetyScores:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self setPegasusSafetyScores:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end