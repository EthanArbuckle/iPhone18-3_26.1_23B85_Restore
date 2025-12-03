@interface ASRSchemaASRCancelled
- (ASRSchemaASRCancelled)initWithDictionary:(id)dictionary;
- (ASRSchemaASRCancelled)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRCancelled

- (ASRSchemaASRCancelled)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ASRSchemaASRCancelled;
  v5 = [(ASRSchemaASRCancelled *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRCancelled setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"metrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[ASRSchemaASRRecognitionMetrics alloc] initWithDictionary:v7];
      [(ASRSchemaASRCancelled *)v5 setMetrics:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (ASRSchemaASRCancelled)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRCancelled *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRCancelled *)self dictionaryRepresentation];
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
  if (self->_metrics)
  {
    metrics = [(ASRSchemaASRCancelled *)self metrics];
    dictionaryRepresentation = [metrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"metrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"metrics"];
    }
  }

  if (*&self->_has)
  {
    reason = [(ASRSchemaASRCancelled *)self reason];
    v8 = @"ASRCANCELREASON_UNKNOWN";
    if (reason == 2)
    {
      v8 = @"ASRCANCELREASON_RECOGNITION_CANCELLED";
    }

    if (reason == 3)
    {
      v9 = @"ASRCANCELREASON_RECOGNITION_REJECTED";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_reason;
  }

  else
  {
    v2 = 0;
  }

  return [(ASRSchemaASRRecognitionMetrics *)self->_metrics hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (reason = self->_reason, reason == [equalCopy reason]))
      {
        metrics = [(ASRSchemaASRCancelled *)self metrics];
        metrics2 = [equalCopy metrics];
        v8 = metrics2;
        if ((metrics != 0) != (metrics2 == 0))
        {
          metrics3 = [(ASRSchemaASRCancelled *)self metrics];
          if (!metrics3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = metrics3;
          metrics4 = [(ASRSchemaASRCancelled *)self metrics];
          metrics5 = [equalCopy metrics];
          v13 = [metrics4 isEqual:metrics5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  metrics = [(ASRSchemaASRCancelled *)self metrics];

  v5 = toCopy;
  if (metrics)
  {
    metrics2 = [(ASRSchemaASRCancelled *)self metrics];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRCancelled;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRCancelled *)self metrics:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASRCancelled *)self deleteMetrics];
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