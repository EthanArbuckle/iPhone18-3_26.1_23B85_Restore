@interface PFAPreprocessorExecutionEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAPreprocessorExecutionEnded)initWithDictionary:(id)dictionary;
- (PFAPreprocessorExecutionEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PFAPreprocessorExecutionEnded

- (PFAPreprocessorExecutionEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PFAPreprocessorExecutionEnded;
  v5 = [(PFAPreprocessorExecutionEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"preprocessorExecutionMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PFAPreprocessorExecutionMetrics alloc] initWithDictionary:v6];
      [(PFAPreprocessorExecutionEnded *)v5 setPreprocessorExecutionMetrics:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PFAPreprocessorExecutionEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAPreprocessorExecutionEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAPreprocessorExecutionEnded *)self dictionaryRepresentation];
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
  if (self->_preprocessorExecutionMetrics)
  {
    preprocessorExecutionMetrics = [(PFAPreprocessorExecutionEnded *)self preprocessorExecutionMetrics];
    dictionaryRepresentation = [preprocessorExecutionMetrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"preprocessorExecutionMetrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"preprocessorExecutionMetrics"];
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
    preprocessorExecutionMetrics = [(PFAPreprocessorExecutionEnded *)self preprocessorExecutionMetrics];
    preprocessorExecutionMetrics2 = [equalCopy preprocessorExecutionMetrics];
    v7 = preprocessorExecutionMetrics2;
    if ((preprocessorExecutionMetrics != 0) != (preprocessorExecutionMetrics2 == 0))
    {
      preprocessorExecutionMetrics3 = [(PFAPreprocessorExecutionEnded *)self preprocessorExecutionMetrics];
      if (!preprocessorExecutionMetrics3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = preprocessorExecutionMetrics3;
      preprocessorExecutionMetrics4 = [(PFAPreprocessorExecutionEnded *)self preprocessorExecutionMetrics];
      preprocessorExecutionMetrics5 = [equalCopy preprocessorExecutionMetrics];
      v12 = [preprocessorExecutionMetrics4 isEqual:preprocessorExecutionMetrics5];

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
  preprocessorExecutionMetrics = [(PFAPreprocessorExecutionEnded *)self preprocessorExecutionMetrics];

  if (preprocessorExecutionMetrics)
  {
    preprocessorExecutionMetrics2 = [(PFAPreprocessorExecutionEnded *)self preprocessorExecutionMetrics];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PFAPreprocessorExecutionEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PFAPreprocessorExecutionEnded *)self preprocessorExecutionMetrics:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PFAPreprocessorExecutionEnded *)self deletePreprocessorExecutionMetrics];
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