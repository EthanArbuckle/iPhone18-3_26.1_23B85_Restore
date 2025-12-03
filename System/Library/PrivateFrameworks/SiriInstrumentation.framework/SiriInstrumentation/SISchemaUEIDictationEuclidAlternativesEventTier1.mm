@interface SISchemaUEIDictationEuclidAlternativesEventTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUEIDictationEuclidAlternativesEventTier1)initWithDictionary:(id)dictionary;
- (SISchemaUEIDictationEuclidAlternativesEventTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUEIDictationEuclidAlternativesEventTier1

- (SISchemaUEIDictationEuclidAlternativesEventTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaUEIDictationEuclidAlternativesEventTier1;
  v5 = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"confusionPair"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaEuclidConfusionPair alloc] initWithDictionary:v6];
      [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)v5 setConfusionPair:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationEuclidAlternativesEventTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self dictionaryRepresentation];
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
  if (self->_confusionPair)
  {
    confusionPair = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self confusionPair];
    dictionaryRepresentation = [confusionPair dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"confusionPair"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"confusionPair"];
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
    confusionPair = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self confusionPair];
    confusionPair2 = [equalCopy confusionPair];
    v7 = confusionPair2;
    if ((confusionPair != 0) != (confusionPair2 == 0))
    {
      confusionPair3 = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self confusionPair];
      if (!confusionPair3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = confusionPair3;
      confusionPair4 = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self confusionPair];
      confusionPair5 = [equalCopy confusionPair];
      v12 = [confusionPair4 isEqual:confusionPair5];

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
  confusionPair = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self confusionPair];

  if (confusionPair)
  {
    confusionPair2 = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self confusionPair];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = SISchemaUEIDictationEuclidAlternativesEventTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self deleteConfusionPair];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self deleteConfusionPair];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self deleteConfusionPair];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self deleteConfusionPair];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self deleteConfusionPair];
  }

  confusionPair = [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self confusionPair];
  v7 = [confusionPair applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self deleteConfusionPair];
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