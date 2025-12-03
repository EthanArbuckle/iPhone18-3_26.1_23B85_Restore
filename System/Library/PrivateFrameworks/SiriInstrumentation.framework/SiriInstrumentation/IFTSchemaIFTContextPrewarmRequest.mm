@interface IFTSchemaIFTContextPrewarmRequest
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTContextPrewarmRequest)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTContextPrewarmRequest)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTContextPrewarmRequest

- (IFTSchemaIFTContextPrewarmRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTContextPrewarmRequest;
  v5 = [(IFTSchemaIFTContextPrewarmRequest *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"prewarmRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IFTSchemaIFTContextPrewarmRequest *)v5 setPrewarmRequestId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTContextPrewarmRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTContextPrewarmRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTContextPrewarmRequest *)self dictionaryRepresentation];
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
  if (self->_prewarmRequestId)
  {
    prewarmRequestId = [(IFTSchemaIFTContextPrewarmRequest *)self prewarmRequestId];
    dictionaryRepresentation = [prewarmRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"prewarmRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"prewarmRequestId"];
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
    prewarmRequestId = [(IFTSchemaIFTContextPrewarmRequest *)self prewarmRequestId];
    prewarmRequestId2 = [equalCopy prewarmRequestId];
    v7 = prewarmRequestId2;
    if ((prewarmRequestId != 0) != (prewarmRequestId2 == 0))
    {
      prewarmRequestId3 = [(IFTSchemaIFTContextPrewarmRequest *)self prewarmRequestId];
      if (!prewarmRequestId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = prewarmRequestId3;
      prewarmRequestId4 = [(IFTSchemaIFTContextPrewarmRequest *)self prewarmRequestId];
      prewarmRequestId5 = [equalCopy prewarmRequestId];
      v12 = [prewarmRequestId4 isEqual:prewarmRequestId5];

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
  prewarmRequestId = [(IFTSchemaIFTContextPrewarmRequest *)self prewarmRequestId];

  if (prewarmRequestId)
  {
    prewarmRequestId2 = [(IFTSchemaIFTContextPrewarmRequest *)self prewarmRequestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTContextPrewarmRequest;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTContextPrewarmRequest *)self prewarmRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTContextPrewarmRequest *)self deletePrewarmRequestId];
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