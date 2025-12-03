@interface IFTSchemaIFTExecutionPreconditionEvaluatorRequest
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTExecutionPreconditionEvaluatorRequest)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTExecutionPreconditionEvaluatorRequest)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTExecutionPreconditionEvaluatorRequest

- (IFTSchemaIFTExecutionPreconditionEvaluatorRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTExecutionPreconditionEvaluatorRequest;
  v5 = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"request"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTExecutionPreconditionEvaluatorRequestActionRequest alloc] initWithDictionary:v6];
      [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)v5 setRequest:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTExecutionPreconditionEvaluatorRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self dictionaryRepresentation];
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
  if (self->_request)
  {
    request = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self request];
    dictionaryRepresentation = [request dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"request"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"request"];
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
    request = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self request];
    request2 = [equalCopy request];
    v7 = request2;
    if ((request != 0) != (request2 == 0))
    {
      request3 = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self request];
      if (!request3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = request3;
      request4 = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self request];
      request5 = [equalCopy request];
      v12 = [request4 isEqual:request5];

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
  request = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self request];

  if (request)
  {
    request2 = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self request];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTExecutionPreconditionEvaluatorRequest;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self request:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self deleteRequest];
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