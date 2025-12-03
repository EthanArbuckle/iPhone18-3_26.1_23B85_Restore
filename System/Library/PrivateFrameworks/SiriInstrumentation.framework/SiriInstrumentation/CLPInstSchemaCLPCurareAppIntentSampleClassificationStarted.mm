@interface CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted;
  v5 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)v5 setOriginalRequestId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self dictionaryRepresentation];
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
  if (self->_originalRequestId)
  {
    originalRequestId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self originalRequestId];
    dictionaryRepresentation = [originalRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalRequestId"];
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
    originalRequestId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self originalRequestId];
    originalRequestId2 = [equalCopy originalRequestId];
    v7 = originalRequestId2;
    if ((originalRequestId != 0) != (originalRequestId2 == 0))
    {
      originalRequestId3 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self originalRequestId];
      if (!originalRequestId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = originalRequestId3;
      originalRequestId4 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self originalRequestId];
      originalRequestId5 = [equalCopy originalRequestId];
      v12 = [originalRequestId4 isEqual:originalRequestId5];

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
  originalRequestId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self originalRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self deleteOriginalRequestId];
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