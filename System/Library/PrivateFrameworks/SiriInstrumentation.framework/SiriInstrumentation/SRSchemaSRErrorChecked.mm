@interface SRSchemaSRErrorChecked
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SRSchemaSRErrorChecked)initWithDictionary:(id)dictionary;
- (SRSchemaSRErrorChecked)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SRSchemaSRErrorChecked

- (SRSchemaSRErrorChecked)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SRSchemaSRErrorChecked;
  v5 = [(SRSchemaSRErrorChecked *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"checkErrorResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SRSchemaSRCheckErrorResponse alloc] initWithDictionary:v6];
      [(SRSchemaSRErrorChecked *)v5 setCheckErrorResponse:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SRSchemaSRErrorChecked)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SRSchemaSRErrorChecked *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SRSchemaSRErrorChecked *)self dictionaryRepresentation];
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
  if (self->_checkErrorResponse)
  {
    checkErrorResponse = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
    dictionaryRepresentation = [checkErrorResponse dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"checkErrorResponse"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"checkErrorResponse"];
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
    checkErrorResponse = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
    checkErrorResponse2 = [equalCopy checkErrorResponse];
    v7 = checkErrorResponse2;
    if ((checkErrorResponse != 0) != (checkErrorResponse2 == 0))
    {
      checkErrorResponse3 = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
      if (!checkErrorResponse3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = checkErrorResponse3;
      checkErrorResponse4 = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
      checkErrorResponse5 = [equalCopy checkErrorResponse];
      v12 = [checkErrorResponse4 isEqual:checkErrorResponse5];

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
  checkErrorResponse = [(SRSchemaSRErrorChecked *)self checkErrorResponse];

  if (checkErrorResponse)
  {
    checkErrorResponse2 = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SRSchemaSRErrorChecked;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SRSchemaSRErrorChecked *)self checkErrorResponse:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SRSchemaSRErrorChecked *)self deleteCheckErrorResponse];
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