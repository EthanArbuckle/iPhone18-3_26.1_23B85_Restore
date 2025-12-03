@interface IFTSchemaIFTParameterQuery
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTParameterQuery)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTParameterQuery)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTParameterQuery

- (IFTSchemaIFTParameterQuery)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTParameterQuery;
  v5 = [(IFTSchemaIFTParameterQuery *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTActionParameterContext alloc] initWithDictionary:v6];
      [(IFTSchemaIFTParameterQuery *)v5 setContext:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterQuery)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterQuery *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTParameterQuery *)self dictionaryRepresentation];
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
  if (self->_context)
  {
    context = [(IFTSchemaIFTParameterQuery *)self context];
    dictionaryRepresentation = [context dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"context"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"context"];
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
    context = [(IFTSchemaIFTParameterQuery *)self context];
    context2 = [equalCopy context];
    v7 = context2;
    if ((context != 0) != (context2 == 0))
    {
      context3 = [(IFTSchemaIFTParameterQuery *)self context];
      if (!context3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = context3;
      context4 = [(IFTSchemaIFTParameterQuery *)self context];
      context5 = [equalCopy context];
      v12 = [context4 isEqual:context5];

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
  context = [(IFTSchemaIFTParameterQuery *)self context];

  if (context)
  {
    context2 = [(IFTSchemaIFTParameterQuery *)self context];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTParameterQuery;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTParameterQuery *)self context:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTParameterQuery *)self deleteContext];
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