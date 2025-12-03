@interface SISchemaTypeToSiriInvocationContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaTypeToSiriInvocationContext)initWithDictionary:(id)dictionary;
- (SISchemaTypeToSiriInvocationContext)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaTypeToSiriInvocationContext

- (SISchemaTypeToSiriInvocationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaTypeToSiriInvocationContext;
  v5 = [(SISchemaTypeToSiriInvocationContext *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"backgroundAppBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaTypeToSiriInvocationContext *)v5 setBackgroundAppBundleId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaTypeToSiriInvocationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaTypeToSiriInvocationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaTypeToSiriInvocationContext *)self dictionaryRepresentation];
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
  if (self->_backgroundAppBundleId)
  {
    backgroundAppBundleId = [(SISchemaTypeToSiriInvocationContext *)self backgroundAppBundleId];
    v5 = [backgroundAppBundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"backgroundAppBundleId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    backgroundAppBundleId = [(SISchemaTypeToSiriInvocationContext *)self backgroundAppBundleId];
    backgroundAppBundleId2 = [equalCopy backgroundAppBundleId];
    v7 = backgroundAppBundleId2;
    if ((backgroundAppBundleId != 0) != (backgroundAppBundleId2 == 0))
    {
      backgroundAppBundleId3 = [(SISchemaTypeToSiriInvocationContext *)self backgroundAppBundleId];
      if (!backgroundAppBundleId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = backgroundAppBundleId3;
      backgroundAppBundleId4 = [(SISchemaTypeToSiriInvocationContext *)self backgroundAppBundleId];
      backgroundAppBundleId5 = [equalCopy backgroundAppBundleId];
      v12 = [backgroundAppBundleId4 isEqual:backgroundAppBundleId5];

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
  backgroundAppBundleId = [(SISchemaTypeToSiriInvocationContext *)self backgroundAppBundleId];

  if (backgroundAppBundleId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = SISchemaTypeToSiriInvocationContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(SISchemaTypeToSiriInvocationContext *)self deleteBackgroundAppBundleId];
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