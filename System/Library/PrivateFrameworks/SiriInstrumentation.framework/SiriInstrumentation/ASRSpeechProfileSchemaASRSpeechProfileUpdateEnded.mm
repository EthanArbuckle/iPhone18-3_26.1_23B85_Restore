@interface ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded
- (ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded)initWithDictionary:(id)dictionary;
- (ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded

- (ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded;
  v5 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"totalNumEntitiesReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded setTotalNumEntitiesReceived:](v5, "setTotalNumEntitiesReceived:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"entityCleanupMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics alloc] initWithDictionary:v7];
      [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)v5 setEntityCleanupMetrics:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"entityExtractionMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics alloc] initWithDictionary:v9];
      [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)v5 setEntityExtractionMetrics:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self dictionaryRepresentation];
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
  if (self->_entityCleanupMetrics)
  {
    entityCleanupMetrics = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
    dictionaryRepresentation = [entityCleanupMetrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityCleanupMetrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entityCleanupMetrics"];
    }
  }

  if (self->_entityExtractionMetrics)
  {
    entityExtractionMetrics = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
    dictionaryRepresentation2 = [entityExtractionMetrics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entityExtractionMetrics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"entityExtractionMetrics"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded totalNumEntitiesReceived](self, "totalNumEntitiesReceived")}];
    [dictionary setObject:v10 forKeyedSubscript:@"totalNumEntitiesReceived"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_totalNumEntitiesReceived;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics *)self->_entityCleanupMetrics hash]^ v3;
  return v4 ^ [(ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics *)self->_entityExtractionMetrics hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    totalNumEntitiesReceived = self->_totalNumEntitiesReceived;
    if (totalNumEntitiesReceived != [equalCopy totalNumEntitiesReceived])
    {
      goto LABEL_15;
    }
  }

  entityCleanupMetrics = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
  entityCleanupMetrics2 = [equalCopy entityCleanupMetrics];
  if ((entityCleanupMetrics != 0) == (entityCleanupMetrics2 == 0))
  {
    goto LABEL_14;
  }

  entityCleanupMetrics3 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
  if (entityCleanupMetrics3)
  {
    v9 = entityCleanupMetrics3;
    entityCleanupMetrics4 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
    entityCleanupMetrics5 = [equalCopy entityCleanupMetrics];
    v12 = [entityCleanupMetrics4 isEqual:entityCleanupMetrics5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  entityCleanupMetrics = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
  entityCleanupMetrics2 = [equalCopy entityExtractionMetrics];
  if ((entityCleanupMetrics != 0) != (entityCleanupMetrics2 == 0))
  {
    entityExtractionMetrics = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
    if (!entityExtractionMetrics)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = entityExtractionMetrics;
    entityExtractionMetrics2 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
    entityExtractionMetrics3 = [equalCopy entityExtractionMetrics];
    v17 = [entityExtractionMetrics2 isEqual:entityExtractionMetrics3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  entityCleanupMetrics = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];

  if (entityCleanupMetrics)
  {
    entityCleanupMetrics2 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
    PBDataWriterWriteSubmessage();
  }

  entityExtractionMetrics = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];

  v7 = toCopy;
  if (entityExtractionMetrics)
  {
    entityExtractionMetrics2 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  entityCleanupMetrics = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
  v7 = [entityCleanupMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self deleteEntityCleanupMetrics];
  }

  entityExtractionMetrics = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
  v10 = [entityExtractionMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self deleteEntityExtractionMetrics];
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