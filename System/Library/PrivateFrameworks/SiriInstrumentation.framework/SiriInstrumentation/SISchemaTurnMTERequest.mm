@interface SISchemaTurnMTERequest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaTurnMTERequest)initWithDictionary:(id)dictionary;
- (SISchemaTurnMTERequest)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaTurnMTERequest

- (SISchemaTurnMTERequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaTurnMTERequest;
  v5 = [(SISchemaTurnMTERequest *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mteRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaTurnMTERequest *)v5 setMteRequestId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaTurnMTERequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaTurnMTERequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaTurnMTERequest *)self dictionaryRepresentation];
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
  if (self->_mteRequestId)
  {
    mteRequestId = [(SISchemaTurnMTERequest *)self mteRequestId];
    dictionaryRepresentation = [mteRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"mteRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"mteRequestId"];
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
    mteRequestId = [(SISchemaTurnMTERequest *)self mteRequestId];
    mteRequestId2 = [equalCopy mteRequestId];
    v7 = mteRequestId2;
    if ((mteRequestId != 0) != (mteRequestId2 == 0))
    {
      mteRequestId3 = [(SISchemaTurnMTERequest *)self mteRequestId];
      if (!mteRequestId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = mteRequestId3;
      mteRequestId4 = [(SISchemaTurnMTERequest *)self mteRequestId];
      mteRequestId5 = [equalCopy mteRequestId];
      v12 = [mteRequestId4 isEqual:mteRequestId5];

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
  mteRequestId = [(SISchemaTurnMTERequest *)self mteRequestId];

  if (mteRequestId)
  {
    mteRequestId2 = [(SISchemaTurnMTERequest *)self mteRequestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaTurnMTERequest;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaTurnMTERequest *)self mteRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaTurnMTERequest *)self deleteMteRequestId];
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