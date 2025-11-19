@interface ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded
- (ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded)initWithDictionary:(id)a3;
- (ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded

- (ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded;
  v5 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"totalNumEntitiesReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded setTotalNumEntitiesReceived:](v5, "setTotalNumEntitiesReceived:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"entityCleanupMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics alloc] initWithDictionary:v7];
      [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)v5 setEntityCleanupMetrics:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"entityExtractionMetrics"];
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

- (ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self dictionaryRepresentation];
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
  if (self->_entityCleanupMetrics)
  {
    v4 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"entityCleanupMetrics"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"entityCleanupMetrics"];
    }
  }

  if (self->_entityExtractionMetrics)
  {
    v7 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"entityExtractionMetrics"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"entityExtractionMetrics"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded totalNumEntitiesReceived](self, "totalNumEntitiesReceived")}];
    [v3 setObject:v10 forKeyedSubscript:@"totalNumEntitiesReceived"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    totalNumEntitiesReceived = self->_totalNumEntitiesReceived;
    if (totalNumEntitiesReceived != [v4 totalNumEntitiesReceived])
    {
      goto LABEL_15;
    }
  }

  v6 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
  v7 = [v4 entityCleanupMetrics];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
  if (v8)
  {
    v9 = v8;
    v10 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
    v11 = [v4 entityCleanupMetrics];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
  v7 = [v4 entityExtractionMetrics];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
    v16 = [v4 entityExtractionMetrics];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];

  if (v4)
  {
    v5 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];

  v7 = v9;
  if (v6)
  {
    v8 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityCleanupMetrics];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self deleteEntityCleanupMetrics];
  }

  v9 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateEnded *)self entityExtractionMetrics];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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