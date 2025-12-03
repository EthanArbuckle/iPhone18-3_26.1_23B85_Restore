@interface IFTSchemaIFTContextPrewarmCompleted
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTContextPrewarmCompleted)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTContextPrewarmCompleted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTContextPrewarmCompleted

- (IFTSchemaIFTContextPrewarmCompleted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTContextPrewarmCompleted;
  v5 = [(IFTSchemaIFTContextPrewarmCompleted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originatingPrewarmRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IFTSchemaIFTContextPrewarmCompleted *)v5 setOriginatingPrewarmRequestId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTContextPrewarmCompleted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTContextPrewarmCompleted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTContextPrewarmCompleted *)self dictionaryRepresentation];
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
  if (self->_originatingPrewarmRequestId)
  {
    originatingPrewarmRequestId = [(IFTSchemaIFTContextPrewarmCompleted *)self originatingPrewarmRequestId];
    dictionaryRepresentation = [originatingPrewarmRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originatingPrewarmRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originatingPrewarmRequestId"];
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
    originatingPrewarmRequestId = [(IFTSchemaIFTContextPrewarmCompleted *)self originatingPrewarmRequestId];
    originatingPrewarmRequestId2 = [equalCopy originatingPrewarmRequestId];
    v7 = originatingPrewarmRequestId2;
    if ((originatingPrewarmRequestId != 0) != (originatingPrewarmRequestId2 == 0))
    {
      originatingPrewarmRequestId3 = [(IFTSchemaIFTContextPrewarmCompleted *)self originatingPrewarmRequestId];
      if (!originatingPrewarmRequestId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = originatingPrewarmRequestId3;
      originatingPrewarmRequestId4 = [(IFTSchemaIFTContextPrewarmCompleted *)self originatingPrewarmRequestId];
      originatingPrewarmRequestId5 = [equalCopy originatingPrewarmRequestId];
      v12 = [originatingPrewarmRequestId4 isEqual:originatingPrewarmRequestId5];

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
  originatingPrewarmRequestId = [(IFTSchemaIFTContextPrewarmCompleted *)self originatingPrewarmRequestId];

  if (originatingPrewarmRequestId)
  {
    originatingPrewarmRequestId2 = [(IFTSchemaIFTContextPrewarmCompleted *)self originatingPrewarmRequestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTContextPrewarmCompleted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTContextPrewarmCompleted *)self originatingPrewarmRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTContextPrewarmCompleted *)self deleteOriginatingPrewarmRequestId];
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