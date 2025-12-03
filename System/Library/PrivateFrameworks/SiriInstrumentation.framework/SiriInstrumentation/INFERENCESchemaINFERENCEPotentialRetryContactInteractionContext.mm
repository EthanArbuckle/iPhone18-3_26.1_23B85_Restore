@interface INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasInteractionDurationInSecBucket:(BOOL)bucket;
- (void)setHasIsExactMatchPriorSiriContactDisplayName:(BOOL)name;
- (void)setHasIsExactMatchPriorSiriContactFamilyName:(BOOL)name;
- (void)setHasIsExactMatchPriorSiriContactHandleValue:(BOOL)value;
- (void)setHasIsExactMatchPriorSiriContactId:(BOOL)id;
- (void)setHasPotentialRetryIntervalInSecBucket:(BOOL)bucket;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext

- (INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext;
  v5 = [(INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isExactMatchPriorSiriContactGivenName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactGivenName:](v5, "setIsExactMatchPriorSiriContactGivenName:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isExactMatchPriorSiriContactFamilyName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactFamilyName:](v5, "setIsExactMatchPriorSiriContactFamilyName:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isExactMatchPriorSiriContactDisplayName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactDisplayName:](v5, "setIsExactMatchPriorSiriContactDisplayName:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isExactMatchPriorSiriContactId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactId:](v5, "setIsExactMatchPriorSiriContactId:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isExactMatchPriorSiriContactHandleValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setIsExactMatchPriorSiriContactHandleValue:](v5, "setIsExactMatchPriorSiriContactHandleValue:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"interactionDurationInSecBucket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setInteractionDurationInSecBucket:](v5, "setInteractionDurationInSecBucket:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"potentialRetryIntervalInSecBucket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext setPotentialRetryIntervalInSecBucket:](v5, "setPotentialRetryIntervalInSecBucket:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext interactionDurationInSecBucket](self, "interactionDurationInSecBucket")}];
    [dictionary setObject:v7 forKeyedSubscript:@"interactionDurationInSecBucket"];

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
  [dictionary setObject:v8 forKeyedSubscript:@"isExactMatchPriorSiriContactDisplayName"];

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
  [dictionary setObject:v9 forKeyedSubscript:@"isExactMatchPriorSiriContactFamilyName"];

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
  [dictionary setObject:v10 forKeyedSubscript:@"isExactMatchPriorSiriContactGivenName"];

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
  [dictionary setObject:v11 forKeyedSubscript:@"isExactMatchPriorSiriContactHandleValue"];

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
  [dictionary setObject:v12 forKeyedSubscript:@"isExactMatchPriorSiriContactId"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext potentialRetryIntervalInSecBucket](self, "potentialRetryIntervalInSecBucket")}];
    [dictionary setObject:v5 forKeyedSubscript:@"potentialRetryIntervalInSecBucket"];
  }

LABEL_9:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (*&has)
  {
    isExactMatchPriorSiriContactGivenName = self->_isExactMatchPriorSiriContactGivenName;
    if (isExactMatchPriorSiriContactGivenName != [equalCopy isExactMatchPriorSiriContactGivenName])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_30;
  }

  if (v8)
  {
    isExactMatchPriorSiriContactFamilyName = self->_isExactMatchPriorSiriContactFamilyName;
    if (isExactMatchPriorSiriContactFamilyName != [equalCopy isExactMatchPriorSiriContactFamilyName])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_30;
  }

  if (v10)
  {
    isExactMatchPriorSiriContactDisplayName = self->_isExactMatchPriorSiriContactDisplayName;
    if (isExactMatchPriorSiriContactDisplayName != [equalCopy isExactMatchPriorSiriContactDisplayName])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_30;
  }

  if (v12)
  {
    isExactMatchPriorSiriContactId = self->_isExactMatchPriorSiriContactId;
    if (isExactMatchPriorSiriContactId != [equalCopy isExactMatchPriorSiriContactId])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_30;
  }

  if (v14)
  {
    isExactMatchPriorSiriContactHandleValue = self->_isExactMatchPriorSiriContactHandleValue;
    if (isExactMatchPriorSiriContactHandleValue != [equalCopy isExactMatchPriorSiriContactHandleValue])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_30;
  }

  if (v16)
  {
    interactionDurationInSecBucket = self->_interactionDurationInSecBucket;
    if (interactionDurationInSecBucket == [equalCopy interactionDurationInSecBucket])
    {
      has = self->_has;
      v6 = equalCopy[24];
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
    if (potentialRetryIntervalInSecBucket != [equalCopy potentialRetryIntervalInSecBucket])
    {
      goto LABEL_30;
    }
  }

  v20 = 1;
LABEL_31:

  return v20;
}

- (void)writeTo:(id)to
{
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

- (void)setHasPotentialRetryIntervalInSecBucket:(BOOL)bucket
{
  if (bucket)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasInteractionDurationInSecBucket:(BOOL)bucket
{
  if (bucket)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsExactMatchPriorSiriContactHandleValue:(BOOL)value
{
  if (value)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsExactMatchPriorSiriContactId:(BOOL)id
{
  if (id)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsExactMatchPriorSiriContactDisplayName:(BOOL)name
{
  if (name)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsExactMatchPriorSiriContactFamilyName:(BOOL)name
{
  if (name)
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