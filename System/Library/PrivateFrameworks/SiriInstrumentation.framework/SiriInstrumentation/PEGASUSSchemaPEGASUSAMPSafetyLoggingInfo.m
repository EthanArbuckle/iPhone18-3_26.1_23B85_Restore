@interface PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPegasusSafetyScores:(id)a3;
- (void)setHasHasSafetyMessage:(BOOL)a3;
- (void)setHasPegasusSafetyStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo

- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo;
  v5 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isSearchNoResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo setIsSearchNoResults:](v5, "setIsSearchNoResults:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"hasSafetyMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo setHasSafetyMessage:](v5, "setHasSafetyMessage:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"pegasusSafetyStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo setPegasusSafetyStatus:](v5, "setPegasusSafetyStatus:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"pegasusSafetyScores"];
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

    v17 = [v4 objectForKeyedSubscript:@"modelVersion"];
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

- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo hasSafetyMessage](self, "hasSafetyMessage")}];
    [v3 setObject:v5 forKeyedSubscript:@"hasSafetyMessage"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo isSearchNoResults](self, "isSearchNoResults")}];
    [v3 setObject:v6 forKeyedSubscript:@"isSearchNoResults"];
  }

  if (self->_modelVersion)
  {
    v7 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"modelVersion"];
  }

  if ([(NSArray *)self->_pegasusSafetyScores count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
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

          v15 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"pegasusSafetyScores"];
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

    [v3 setObject:v18 forKeyedSubscript:@"pegasusSafetyStatus"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    isSearchNoResults = self->_isSearchNoResults;
    if (isSearchNoResults != [v4 isSearchNoResults])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      hasSafetyMessage = self->_hasSafetyMessage;
      if (hasSafetyMessage != [v4 hasSafetyMessage])
      {
        goto LABEL_23;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_23;
    }

    if (v10)
    {
      pegasusSafetyStatus = self->_pegasusSafetyStatus;
      if (pegasusSafetyStatus != [v4 pegasusSafetyStatus])
      {
        goto LABEL_23;
      }
    }

    v12 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self pegasusSafetyScores];
    v13 = [v4 pegasusSafetyScores];
    if ((v12 != 0) == (v13 == 0))
    {
      goto LABEL_22;
    }

    v14 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self pegasusSafetyScores];
    if (v14)
    {
      v15 = v14;
      v16 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self pegasusSafetyScores];
      v17 = [v4 pegasusSafetyScores];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v12 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];
    v13 = [v4 modelVersion];
    if ((v12 != 0) != (v13 == 0))
    {
      v19 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];
      if (!v19)
      {

LABEL_26:
        v24 = 1;
        goto LABEL_24;
      }

      v20 = v19;
      v21 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];
      v22 = [v4 modelVersion];
      v23 = [v21 isEqual:v22];

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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self modelVersion];

  if (v11)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addPegasusSafetyScores:(id)a3
{
  v4 = a3;
  pegasusSafetyScores = self->_pegasusSafetyScores;
  v8 = v4;
  if (!pegasusSafetyScores)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pegasusSafetyScores;
    self->_pegasusSafetyScores = v6;

    v4 = v8;
    pegasusSafetyScores = self->_pegasusSafetyScores;
  }

  [(NSArray *)pegasusSafetyScores addObject:v4];
}

- (void)setHasPegasusSafetyStatus:(BOOL)a3
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

- (void)setHasHasSafetyMessage:(BOOL)a3
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
  v9.super_class = PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self pegasusSafetyScores:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

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