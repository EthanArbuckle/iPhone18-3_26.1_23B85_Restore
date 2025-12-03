@interface ASRSchemaASREnded
- (ASRSchemaASREnded)initWithDictionary:(id)dictionary;
- (ASRSchemaASREnded)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASREnded

- (ASRSchemaASREnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ASRSchemaASREnded;
  v5 = [(ASRSchemaASREnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"metrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRRecognitionMetrics alloc] initWithDictionary:v6];
      [(ASRSchemaASREnded *)v5 setMetrics:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ASRSchemaASREnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASREnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASREnded *)self dictionaryRepresentation];
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
    metrics = [(ASRSchemaASREnded *)self metrics];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    metrics = [(ASRSchemaASREnded *)self metrics];
    metrics2 = [equalCopy metrics];
    v7 = metrics2;
    if ((metrics != 0) != (metrics2 == 0))
    {
      metrics3 = [(ASRSchemaASREnded *)self metrics];
      if (!metrics3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = metrics3;
      metrics4 = [(ASRSchemaASREnded *)self metrics];
      metrics5 = [equalCopy metrics];
      v12 = [metrics4 isEqual:metrics5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  metrics = [(ASRSchemaASREnded *)self metrics];

  if (metrics)
  {
    metrics2 = [(ASRSchemaASREnded *)self metrics];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASREnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASREnded *)self metrics:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASREnded *)self deleteMetrics];
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