@interface CAMSchemaCAMResponseGenerated
- (BOOL)isEqual:(id)equal;
- (CAMSchemaCAMResponseGenerated)initWithDictionary:(id)dictionary;
- (CAMSchemaCAMResponseGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation CAMSchemaCAMResponseGenerated

- (CAMSchemaCAMResponseGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CAMSchemaCAMResponseGenerated;
  v5 = [(CAMSchemaCAMResponseGenerated *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CAMSchemaCAMResponse alloc] initWithDictionary:v6];
      [(CAMSchemaCAMResponseGenerated *)v5 setResponse:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (CAMSchemaCAMResponseGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAMSchemaCAMResponseGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAMSchemaCAMResponseGenerated *)self dictionaryRepresentation];
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
  if (self->_response)
  {
    response = [(CAMSchemaCAMResponseGenerated *)self response];
    dictionaryRepresentation = [response dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"response"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"response"];
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
    response = [(CAMSchemaCAMResponseGenerated *)self response];
    response2 = [equalCopy response];
    v7 = response2;
    if ((response != 0) != (response2 == 0))
    {
      response3 = [(CAMSchemaCAMResponseGenerated *)self response];
      if (!response3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = response3;
      response4 = [(CAMSchemaCAMResponseGenerated *)self response];
      response5 = [equalCopy response];
      v12 = [response4 isEqual:response5];

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
  response = [(CAMSchemaCAMResponseGenerated *)self response];

  if (response)
  {
    response2 = [(CAMSchemaCAMResponseGenerated *)self response];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CAMSchemaCAMResponseGenerated;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CAMSchemaCAMResponseGenerated *)self response:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CAMSchemaCAMResponseGenerated *)self deleteResponse];
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