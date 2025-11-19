@interface PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPersonalizedItemInfo:(id)a3;
- (void)setHasIsPersonalizedSession:(BOOL)a3;
- (void)setHasIsPersonalizedSessionAffected:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo

- (PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo;
  v5 = [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isPersonalizationEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo setIsPersonalizationEligible:](v5, "setIsPersonalizationEligible:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isPersonalizedSession"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo setIsPersonalizedSession:](v5, "setIsPersonalizedSession:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isPersonalizedSessionAffected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo setIsPersonalizedSessionAffected:](v5, "setIsPersonalizedSessionAffected:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"personalizedItemInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v20 = v7;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[PEGASUSSchemaPEGASUSPersonalizedItemInfo alloc] initWithDictionary:v15];
              [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)v5 addPersonalizedItemInfo:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v12);
      }

      v7 = v20;
      v8 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo isPersonalizationEligible](self, "isPersonalizationEligible")}];
    [v3 setObject:v15 forKeyedSubscript:@"isPersonalizationEligible"];

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

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo isPersonalizedSession](self, "isPersonalizedSession")}];
  [v3 setObject:v16 forKeyedSubscript:@"isPersonalizedSession"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo isPersonalizedSessionAffected](self, "isPersonalizedSessionAffected")}];
    [v3 setObject:v5 forKeyedSubscript:@"isPersonalizedSessionAffected"];
  }

LABEL_5:
  if ([(NSArray *)self->_personalizedItemInfos count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_personalizedItemInfos;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"personalizedItemInfo"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v17];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSArray *)self->_personalizedItemInfos hash:v3];
  }

  v6 = 2654435761 * self->_isPersonalizationEligible;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_isPersonalizedSession;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_isPersonalizedSessionAffected;
  return v7 ^ v6 ^ v8 ^ [(NSArray *)self->_personalizedItemInfos hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    isPersonalizationEligible = self->_isPersonalizationEligible;
    if (isPersonalizationEligible != [v4 isPersonalizationEligible])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      isPersonalizedSession = self->_isPersonalizedSession;
      if (isPersonalizedSession != [v4 isPersonalizedSession])
      {
        goto LABEL_18;
      }

      has = self->_has;
      v6 = v4[24];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (!v10 || (isPersonalizedSessionAffected = self->_isPersonalizedSessionAffected, isPersonalizedSessionAffected == [v4 isPersonalizedSessionAffected]))
      {
        v12 = [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)self personalizedItemInfos];
        v13 = [v4 personalizedItemInfos];
        v14 = v13;
        if ((v12 != 0) != (v13 == 0))
        {
          v15 = [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)self personalizedItemInfos];
          if (!v15)
          {

LABEL_21:
            v20 = 1;
            goto LABEL_19;
          }

          v16 = v15;
          v17 = [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)self personalizedItemInfos];
          v18 = [v4 personalizedItemInfos];
          v19 = [v17 isEqual:v18];

          if (v19)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
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
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_personalizedItemInfos;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addPersonalizedItemInfo:(id)a3
{
  v4 = a3;
  personalizedItemInfos = self->_personalizedItemInfos;
  v8 = v4;
  if (!personalizedItemInfos)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_personalizedItemInfos;
    self->_personalizedItemInfos = v6;

    v4 = v8;
    personalizedItemInfos = self->_personalizedItemInfos;
  }

  [(NSArray *)personalizedItemInfos addObject:v4];
}

- (void)setHasIsPersonalizedSessionAffected:(BOOL)a3
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

- (void)setHasIsPersonalizedSession:(BOOL)a3
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
  v9.super_class = PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)self personalizedItemInfos:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)self setPersonalizedItemInfos:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end