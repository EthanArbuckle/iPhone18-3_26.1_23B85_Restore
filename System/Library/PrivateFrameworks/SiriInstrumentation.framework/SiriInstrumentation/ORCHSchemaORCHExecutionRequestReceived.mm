@interface ORCHSchemaORCHExecutionRequestReceived
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHExecutionRequestReceived)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHExecutionRequestReceived)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCommandSource:(BOOL)source;
- (void)setHasExecutionForRSKE:(BOOL)e;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHExecutionRequestReceived

- (ORCHSchemaORCHExecutionRequestReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ORCHSchemaORCHExecutionRequestReceived;
  v5 = [(ORCHSchemaORCHExecutionRequestReceived *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"preExecutionDecision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHExecutionRequestReceived setPreExecutionDecision:](v5, "setPreExecutionDecision:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"executionForRSKE"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHExecutionRequestReceived setExecutionForRSKE:](v5, "setExecutionForRSKE:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"commandSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHExecutionRequestReceived setCommandSource:](v5, "setCommandSource:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHExecutionRequestReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHExecutionRequestReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHExecutionRequestReceived *)self dictionaryRepresentation];
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
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHExecutionRequestReceived executionForRSKE](self, "executionForRSKE")}];
    [dictionary setObject:v7 forKeyedSubscript:@"executionForRSKE"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v8 = [(ORCHSchemaORCHExecutionRequestReceived *)self preExecutionDecision]- 1;
    if (v8 > 9)
    {
      v9 = @"ORCHPREEXECUTIONDECISION_UNKNOWN";
    }

    else
    {
      v9 = off_1E78DEB80[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"preExecutionDecision"];
    goto LABEL_14;
  }

  v5 = [(ORCHSchemaORCHExecutionRequestReceived *)self commandSource]- 1;
  if (v5 > 2)
  {
    v6 = @"ORCHRSKESOURCE_UNKNOWN";
  }

  else
  {
    v6 = off_1E78DEB68[v5];
  }

  [dictionary setObject:v6 forKeyedSubscript:@"commandSource"];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (has)
  {
    goto LABEL_10;
  }

LABEL_14:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_preExecutionDecision;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_executionForRSKE;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_commandSource;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    preExecutionDecision = self->_preExecutionDecision;
    if (preExecutionDecision != [equalCopy preExecutionDecision])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    executionForRSKE = self->_executionForRSKE;
    if (executionForRSKE == [equalCopy executionForRSKE])
    {
      has = self->_has;
      v6 = equalCopy[20];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    commandSource = self->_commandSource;
    if (commandSource != [equalCopy commandSource])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
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
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasCommandSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasExecutionForRSKE:(BOOL)e
{
  if (e)
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