@interface FLOWSchemaFLOWDomainExecutionMetadata
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWDomainExecutionMetadata)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWDomainExecutionMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWDomainExecutionMetadata

- (FLOWSchemaFLOWDomainExecutionMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWSchemaFLOWDomainExecutionMetadata;
  v5 = [(FLOWSchemaFLOWDomainExecutionMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"domainExecutionAppIntentBundleID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWDomainExecutionMetadata *)v5 setDomainExecutionAppIntentBundleID:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWDomainExecutionMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWDomainExecutionMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWDomainExecutionMetadata *)self dictionaryRepresentation];
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
  if (self->_domainExecutionAppIntentBundleID)
  {
    domainExecutionAppIntentBundleID = [(FLOWSchemaFLOWDomainExecutionMetadata *)self domainExecutionAppIntentBundleID];
    v5 = [domainExecutionAppIntentBundleID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"domainExecutionAppIntentBundleID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    domainExecutionAppIntentBundleID = [(FLOWSchemaFLOWDomainExecutionMetadata *)self domainExecutionAppIntentBundleID];
    domainExecutionAppIntentBundleID2 = [equalCopy domainExecutionAppIntentBundleID];
    v7 = domainExecutionAppIntentBundleID2;
    if ((domainExecutionAppIntentBundleID != 0) != (domainExecutionAppIntentBundleID2 == 0))
    {
      domainExecutionAppIntentBundleID3 = [(FLOWSchemaFLOWDomainExecutionMetadata *)self domainExecutionAppIntentBundleID];
      if (!domainExecutionAppIntentBundleID3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = domainExecutionAppIntentBundleID3;
      domainExecutionAppIntentBundleID4 = [(FLOWSchemaFLOWDomainExecutionMetadata *)self domainExecutionAppIntentBundleID];
      domainExecutionAppIntentBundleID5 = [equalCopy domainExecutionAppIntentBundleID];
      v12 = [domainExecutionAppIntentBundleID4 isEqual:domainExecutionAppIntentBundleID5];

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
  domainExecutionAppIntentBundleID = [(FLOWSchemaFLOWDomainExecutionMetadata *)self domainExecutionAppIntentBundleID];

  if (domainExecutionAppIntentBundleID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = FLOWSchemaFLOWDomainExecutionMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(FLOWSchemaFLOWDomainExecutionMetadata *)self deleteDomainExecutionAppIntentBundleID];
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