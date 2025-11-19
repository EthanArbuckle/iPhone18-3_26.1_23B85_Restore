@interface INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasInteractionDurationInSecBucket:(BOOL)a3;
- (void)setHasIsExactMatchPriorSiriContactDisplayName:(BOOL)a3;
- (void)setHasIsExactMatchPriorSiriContactFamilyName:(BOOL)a3;
- (void)setHasIsExactMatchPriorSiriContactHandleValue:(BOOL)a3;
- (void)setHasIsExactMatchPriorSiriContactId:(BOOL)a3;
- (void)setHasPotentialRetryIntervalInSecBucket:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext

- (INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext;
  v5 = [(INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isExactMatchPriorSiriContactGivenName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactGivenName:](v5, "setIsExactMatchPriorSiriContactGivenName:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isExactMatchPriorSiriContactFamilyName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactFamilyName:](v5, "setIsExactMatchPriorSiriContactFamilyName:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isExactMatchPriorSiriContactDisplayName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactDisplayName:](v5, "setIsExactMatchPriorSiriContactDisplayName:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isExactMatchPriorSiriContactId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactId:](v5, "setIsExactMatchPriorSiriContactId:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isExactMatchPriorSiriContactHandleValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactHandleValue:](v5, "setIsExactMatchPriorSiriContactHandleValue:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"interactionDurationInSecBucket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setInteractionDurationInSecBucket:](v5, "setInteractionDurationInSecBucket:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"potentialRetryIntervalInSecBucket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setPotentialRetryIntervalInSecBucket:](v5, "setPotentialRetryIntervalInSecBucket:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext interactionDurationInSecBucket](self, "interactionDurationInSecBucket")}];
    [v3 setObject:v7 forKeyedSubscript:@"interactionDurationInSecBucket"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext isExactMatchPriorSiriContactDisplayName](self, "isExactMatchPriorSiriContactDisplayName")}];
  [v3 setObject:v8 forKeyedSubscript:@"isExactMatchPriorSiriContactDisplayName"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext isExactMatchPriorSiriContactFamilyName](self, "isExactMatchPriorSiriContactFamilyName")}];
  [v3 setObject:v9 forKeyedSubscript:@"isExactMatchPriorSiriContactFamilyName"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext isExactMatchPriorSiriContactGivenName](self, "isExactMatchPriorSiriContactGivenName")}];
  [v3 setObject:v10 forKeyedSubscript:@"isExactMatchPriorSiriContactGivenName"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext isExactMatchPriorSiriContactHandleValue](self, "isExactMatchPriorSiriContactHandleValue")}];
  [v3 setObject:v11 forKeyedSubscript:@"isExactMatchPriorSiriContactHandleValue"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext isExactMatchPriorSiriContactId](self, "isExactMatchPriorSiriContactId")}];
  [v3 setObject:v12 forKeyedSubscript:@"isExactMatchPriorSiriContactId"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext potentialRetryIntervalInSecBucket](self, "potentialRetryIntervalInSecBucket")}];
    [v3 setObject:v5 forKeyedSubscript:@"potentialRetryIntervalInSecBucket"];
  }

LABEL_9:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isExactMatchPriorSiriContactGivenName;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isExactMatchPriorSiriContactFamilyName;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isExactMatchPriorSiriContactDisplayName;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_isExactMatchPriorSiriContactId;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_isExactMatchPriorSiriContactHandleValue;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_interactionDurationInSecBucket;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_potentialRetryIntervalInSecBucket;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (*&has)
  {
    isExactMatchPriorSiriContactGivenName = self->_isExactMatchPriorSiriContactGivenName;
    if (isExactMatchPriorSiriContactGivenName != [v4 isExactMatchPriorSiriContactGivenName])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_30;
  }

  if (v8)
  {
    isExactMatchPriorSiriContactFamilyName = self->_isExactMatchPriorSiriContactFamilyName;
    if (isExactMatchPriorSiriContactFamilyName != [v4 isExactMatchPriorSiriContactFamilyName])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_30;
  }

  if (v10)
  {
    isExactMatchPriorSiriContactDisplayName = self->_isExactMatchPriorSiriContactDisplayName;
    if (isExactMatchPriorSiriContactDisplayName != [v4 isExactMatchPriorSiriContactDisplayName])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_30;
  }

  if (v12)
  {
    isExactMatchPriorSiriContactId = self->_isExactMatchPriorSiriContactId;
    if (isExactMatchPriorSiriContactId != [v4 isExactMatchPriorSiriContactId])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_30;
  }

  if (v14)
  {
    isExactMatchPriorSiriContactHandleValue = self->_isExactMatchPriorSiriContactHandleValue;
    if (isExactMatchPriorSiriContactHandleValue != [v4 isExactMatchPriorSiriContactHandleValue])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_30;
  }

  if (v16)
  {
    interactionDurationInSecBucket = self->_interactionDurationInSecBucket;
    if (interactionDurationInSecBucket == [v4 interactionDurationInSecBucket])
    {
      has = self->_has;
      v6 = v4[24];
      goto LABEL_26;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

LABEL_26:
  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_30;
  }

  if (v18)
  {
    potentialRetryIntervalInSecBucket = self->_potentialRetryIntervalInSecBucket;
    if (potentialRetryIntervalInSecBucket != [v4 potentialRetryIntervalInSecBucket])
    {
      goto LABEL_30;
    }
  }

  v20 = 1;
LABEL_31:

  return v20;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)setHasPotentialRetryIntervalInSecBucket:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasInteractionDurationInSecBucket:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsExactMatchPriorSiriContactHandleValue:(BOOL)a3
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

- (void)setHasIsExactMatchPriorSiriContactId:(BOOL)a3
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

- (void)setHasIsExactMatchPriorSiriContactDisplayName:(BOOL)a3
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

- (void)setHasIsExactMatchPriorSiriContactFamilyName:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end