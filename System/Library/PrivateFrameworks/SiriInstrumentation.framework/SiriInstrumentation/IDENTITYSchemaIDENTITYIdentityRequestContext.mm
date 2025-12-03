@interface IDENTITYSchemaIDENTITYIdentityRequestContext
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYIdentityRequestContext)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYIdentityRequestContext)initWithJSON:(id)n;
- (IDENTITYSchemaIDENTITYIdentityRequestFailed)failed;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteFailed;
- (void)setFailed:(id)failed;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYIdentityRequestContext

- (IDENTITYSchemaIDENTITYIdentityRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IDENTITYSchemaIDENTITYIdentityRequestContext;
  v5 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IDENTITYSchemaIDENTITYIdentityRequestFailed alloc] initWithDictionary:v6];
      [(IDENTITYSchemaIDENTITYIdentityRequestContext *)v5 setFailed:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYIdentityRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self dictionaryRepresentation];
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
  if (self->_failed)
  {
    failed = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
    dictionaryRepresentation = [failed dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"failed"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"failed"];
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
    whichContextevent = self->_whichContextevent;
    if (whichContextevent == [equalCopy whichContextevent])
    {
      failed = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
      failed2 = [equalCopy failed];
      v8 = failed2;
      if ((failed != 0) != (failed2 == 0))
      {
        failed3 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
        if (!failed3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = failed3;
        failed4 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
        failed5 = [equalCopy failed];
        v13 = [failed4 isEqual:failed5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  failed = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];

  if (failed)
  {
    failed2 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYIdentityRequestFailed)failed
{
  if (self->_whichContextevent == 103)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailed:(id)failed
{
  v3 = 103;
  if (!failed)
  {
    v3 = 0;
  }

  self->_whichContextevent = v3;
  objc_storeStrong(&self->_failed, failed);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYIdentityRequestContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self deleteFailed];
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